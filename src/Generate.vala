/*
 *                                                                              
 *   _____                         _      _____                     _           
 *  |     |___ _____ _____ ___ ___| |_   |   __|___ ___ ___ ___ ___| |_ ___ ___ 
 *  |   --| . |     |     | -_|   |  _|  |  |  | -_|   | -_|  _| .'|  _| . |  _|
 *  |_____|___|_|_|_|_|_|_|___|_|_|_|    |_____|___|_|_|___|_| |__,|_| |___|_|  
 *                                                                              
 *                                                                 Version 1.0.1
 *  
 *                                            Jeremy Vaartjes <jeremy@vaartj.es>
 *  
 *  ============================================================================
 *  
 *  Copyright (C) 2018 Jeremy Vaartjes
 *  
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *  
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *  
 *  You should have received a copy of the GNU General Public License
 *  along with this program.  If not, see <https://www.gnu.org/licenses/>.
 *  
 *  ============================================================================
 *  
 */

[Flags]
public enum ShowFlags {
    SHOWVERSION,
    SHOWAUTHORS,
    SHOWLEGAL,
    SHOWDEFAULT
}

public class Generate {
    private string _output;
    public string output { get { return _output; } }
    private int lineWidth;

    public Generate(string headerText, string version, string authors, string legal, Settings.CommentStyle type, ShowFlags flags) {
        _output = Chars.modText(headerText);
        lineWidth = _output.length / 6;

        if(ShowFlags.SHOWVERSION in flags){
            _output += this.version(version, type);
        }

        if(ShowFlags.SHOWAUTHORS in flags){
            _output += this.authors(authors, type);
        }

        if(ShowFlags.SHOWLEGAL in flags){
            _output += this.legal(legal, type);
        }

        _output = addCommentTags(_output, type);
    }

    private string addCommentTags(string text, Settings.CommentStyle type){
        var result = text;

        if(type == Settings.CommentStyle.CPP){
            result = "//  " + result;
            result = result.replace("\n", "\n//  ");
        }else if(type == Settings.CommentStyle.CC){
            result = "/*\n" + result;
            result = result.replace("\n", "\n *  ");
            result += "\n */";
        }else if(type == Settings.CommentStyle.BASH){
            result = "#  " + result;
            result = result.replace("\n", "\n#  ");
        }else if(type == Settings.CommentStyle.HTML){
            result = "<!--\n" + result;
            result = result.replace("\n", "\n ");
            result += "\n-->";
        }else if(type == Settings.CommentStyle.ASSEMBLY){
            result = ";  " + result;
            result = result.replace("\n", "\n;  ");
        }else if(type == Settings.CommentStyle.MYSQL){
            result = "--  " + result;
            result = result.replace("\n", "\n--  ");
        }else if(type == Settings.CommentStyle.LUA){
            result = "--[[\n" + result;
            result = result.replace("\n", "\n ");
            result += "\n--]]";
        }else if(type == Settings.CommentStyle.VISUALBASIC){
            result = "'  " + result;
            result = result.replace("\n", "\n'  ");
        }

        return result;
    }

    private string version(string version, Settings.CommentStyle type){
        string versionText = "Version " + version;
        if(versionText.length < lineWidth){
            int versionTextLength = versionText.length;
            for(int i = 0; i < lineWidth - versionTextLength; i++){
                versionText = " " + versionText;
            }
        }
        versionText = "\n" + versionText + "\n";

        return versionText;
    }

    private string authors(string authors, Settings.CommentStyle type){
        string authorsText = authors;
        int pos = 0;
        int lineCounter = 1;
        while(pos < authorsText.last_index_of_char('\n')){
            pos = authorsText.index_of_char('\n', pos + 1);
            lineCounter++;
        }
        string newAuthorsText = "";
        pos = 0;
        for(int i = 0; i < lineCounter; i++){
            if(i != 0){
                newAuthorsText = newAuthorsText + "\n";
            }

            string line = authorsText.substring(pos, authorsText.index_of_char('\n', pos) - pos);
            if(line.length < lineWidth){
                int lineLength = line.length;
                for(int i2 = 0; i2 < lineWidth - lineLength; i2++){
                    line = " " + line;
                }
            }
            
            newAuthorsText = newAuthorsText + line;
            pos = authorsText.index_of_char('\n', pos) + 1;
        }

        newAuthorsText = "\n" + newAuthorsText + "\n";

        return newAuthorsText;
    }

    private string legal(string legal, Settings.CommentStyle type){
        string legalText = legal;
        int pos = 0;
        int lineCounter = 1;
        while(pos < legalText.last_index_of_char('\n')){
            pos = legalText.index_of_char('\n', pos + 1);
            lineCounter++;
        }
        string newLegalText = "";
        
        for(int i = 0; i < lineWidth; i++){
            newLegalText = newLegalText + "=";
        }

        newLegalText += "\n\n";

        pos = 0;
        for(int i = 0; i < lineCounter; i++){
            if(i != 0){
                newLegalText = newLegalText + "\n";
            }

            newLegalText = newLegalText + legalText.substring(pos, legalText.index_of_char('\n', pos) - pos);
            pos = legalText.index_of_char('\n', pos) + 1;
        }

        newLegalText = newLegalText + "\n\n";

        for(int i = 0; i < lineWidth; i++){
            newLegalText = newLegalText + "=";
        }

        newLegalText = "\n" + newLegalText + "\n";

        return newLegalText;
    }
}
