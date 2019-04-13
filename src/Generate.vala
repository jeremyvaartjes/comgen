//                                                                              
//   _____                         _      _____                     _           
//  |     |___ _____ _____ ___ ___| |_   |   __|___ ___ ___ ___ ___| |_ ___ ___ 
//  |   --| . |     |     | -_|   |  _|  |  |  | -_|   | -_|  _| .'|  _| . |  _|
//  |_____|___|_|_|_|_|_|_|___|_|_|_|    |_____|___|_|_|___|_| |__,|_| |___|_|  
//                                                                              
//  
//                                                                 Version 1.1.0
//  
//                                            Jeremy Vaartjes <jeremy@vaartj.es>
//  
//  ============================================================================
//  
//  Copyright (C) 2019 Jeremy Vaartjes
//  
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//  
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//  
//  You should have received a copy of the GNU General Public License
//  along with this program.  If not, see <https://www.gnu.org/licenses/>.
//  
//  ============================================================================
//  

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

    public Generate(string headerText, string font, string version, string authors, string legal, Settings.CommentStyle type, ShowFlags flags) {
        string stderr;
	    int status;
        Process.spawn_command_line_sync ("figlet -f " + font + " \"" + headerText + "\"",
									out _output,
									out stderr,
									out status);
        //_output = Chars.modText(headerText);
        string[] lines = _output.split ("\n");
        lineWidth = 0;
        var lastLineSize = 0;
        var lastLineIndex = -1;
        foreach (unowned string str in lines) {
            if(str.length > lineWidth){
                lineWidth = str.length;
            }
            if(str.length != 0){
                lastLineSize = str.length;
                lastLineIndex++;
            }
        }
        var bottomLine = lastLineIndex;

        var done = false;
        while(!done){
            if(lastLineIndex > 0){
                if(lines[lastLineIndex - 1].length == lastLineSize){
                    lastLineIndex--;
                }else{
                    done = true;
                }
            }else{
                done = true;
            }
        }

        var showVersionInline = false;
        var showAuthorInline = false;

        var versionText = "Version " + version;
        if(lineWidth - lastLineSize - 2 >= versionText.length){
            showVersionInline = true;
        }

        string[] authorLines = authors.split ("\n");
        int maxAuthorLineSize = 0;
        foreach (unowned string str in authorLines) {
            if(str.length > maxAuthorLineSize){
                maxAuthorLineSize = str.length;
            }
        }
        if(lineWidth - lastLineSize - 2 >= maxAuthorLineSize){
            showAuthorInline = true;
        }

        if(ShowFlags.SHOWVERSION in flags && ShowFlags.SHOWAUTHORS in flags){
            if(showVersionInline && showAuthorInline){
                if(versionText.length < lineWidth - lastLineSize){
                    int versionTextLength = versionText.length;
                    for(int i = 0; i < lineWidth - lastLineSize - versionTextLength; i++){
                        versionText = " " + versionText;
                    }
                }
                lines[lastLineIndex] = lines[lastLineIndex] + versionText;
                lastLineIndex += 2;

                foreach (string str in authorLines) {
                    if(str != ""){
                        if(lastLineIndex < lines.length){
                            if(lastLineIndex == lines.length - 1){
                                int authorTextLength = str.length;
                                for(int i = 0; i < lineWidth - authorTextLength; i++){
                                    str = " " + str;
                                }
                            }else{
                                int authorTextLength = str.length;
                                for(int i = 0; i < lineWidth - lastLineSize - authorTextLength; i++){
                                    str = " " + str;
                                }
                            }
                            lines[lastLineIndex] = lines[lastLineIndex] + str;
                            lastLineIndex++;
                        }else{
                            if(str.length < lineWidth){
                                int authorTextLength = str.length;
                                for(int i = 0; i < lineWidth - authorTextLength; i++){
                                    str = " " + str;
                                }
                            }
                            lines += str;
                            lastLineIndex++;
                        }
                    }
                }
                _output = "";
                foreach (unowned string str in lines) {
                    if(str != ""){
                        _output += str + "\n";
                    }
                }
            }else if(showVersionInline){
                if(versionText.length < lineWidth - lastLineSize){
                    int versionTextLength = versionText.length;
                    for(int i = 0; i < lineWidth - lastLineSize - versionTextLength; i++){
                        versionText = " " + versionText;
                    }
                }
                lines[bottomLine] = lines[bottomLine] + versionText;
                _output = "";
                foreach (unowned string str in lines) {
                    if(str != ""){
                        _output += str + "\n";
                    }
                }

                foreach (string str in authorLines) {
                    if(str.length < lineWidth){
                        int authorTextLength = str.length;
                        for(int i = 0; i < lineWidth - authorTextLength; i++){
                            str = " " + str;
                        }
                    }
                    _output += "\n" + str;
                }
                _output += "\n";
            }else{
                if(versionText.length < lineWidth){
                    int versionTextLength = versionText.length;
                    for(int i = 0; i < lineWidth - versionTextLength; i++){
                        versionText = " " + versionText;
                    }
                }
                _output += "\n" + versionText + "\n";

                foreach (string str in authorLines) {
                    if(str.length < lineWidth){
                        int authorTextLength = str.length;
                        for(int i = 0; i < lineWidth - authorTextLength; i++){
                            str = " " + str;
                        }
                    }
                    _output += "\n" + str;
                }
                _output += "\n";
            }
        }else if(ShowFlags.SHOWVERSION in flags){
            if(showVersionInline){
                // inline version
                if(versionText.length < lineWidth - lastLineSize){
                    int versionTextLength = versionText.length;
                    for(int i = 0; i < lineWidth - lastLineSize - versionTextLength; i++){
                        versionText = " " + versionText;
                    }
                }
                lines[lastLineIndex] = lines[lastLineIndex] + versionText;
                _output = "";
                foreach (unowned string str in lines) {
                    if(str != ""){
                        _output += str + "\n";
                    }
                }
            }else{
                // normal version
                if(versionText.length < lineWidth){
                    int versionTextLength = versionText.length;
                    for(int i = 0; i < lineWidth - versionTextLength; i++){
                        versionText = " " + versionText;
                    }
                }
                _output += "\n" + versionText + "\n";
            }
        }else if(ShowFlags.SHOWAUTHORS in flags){
            if(showAuthorInline){
                foreach (string str in authorLines) {
                    if(str != ""){
                        if(lastLineIndex < lines.length){
                            if(lastLineIndex == lines.length - 1){
                                int authorTextLength = str.length;
                                for(int i = 0; i < lineWidth - authorTextLength; i++){
                                    str = " " + str;
                                }
                            }else{
                                int authorTextLength = str.length;
                                for(int i = 0; i < lineWidth - lastLineSize - authorTextLength; i++){
                                    str = " " + str;
                                }
                            }
                            lines[lastLineIndex] = lines[lastLineIndex] + str;
                            lastLineIndex++;
                        }else{
                            if(str.length < lineWidth){
                                int authorTextLength = str.length;
                                for(int i = 0; i < lineWidth - authorTextLength; i++){
                                    str = " " + str;
                                }
                            }
                            lines += str;
                            lastLineIndex++;
                        }
                    }
                }
                _output = "";
                foreach (unowned string str in lines) {
                    if(str != ""){
                        _output += str + "\n";
                    }
                }
            }else{
                // normal authors
                foreach (string str in authorLines) {
                    if(str.length < lineWidth){
                        int authorTextLength = str.length;
                        for(int i = 0; i < lineWidth - authorTextLength; i++){
                            str = " " + str;
                        }
                    }
                    _output += "\n" + str;
                }
                _output += "\n";
            }
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
