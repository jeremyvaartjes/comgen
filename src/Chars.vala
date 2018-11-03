/*
 *                                                                              
 *   _____                         _      _____                     _           
 *  |     |___ _____ _____ ___ ___| |_   |   __|___ ___ ___ ___ ___| |_ ___ ___ 
 *  |   --| . |     |     | -_|   |  _|  |  |  | -_|   | -_|  _| .'|  _| . |  _|
 *  |_____|___|_|_|_|_|_|_|___|_|_|_|    |_____|___|_|_|___|_| |__,|_| |___|_|  
 *                                                                              
 *                                                                 Version 1.0.0
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

public class Chars{
    public static string modText(string text){
        string lines[6];
        for(int i = 0; i < 6; i++){
            lines[i] = "";
        }

        for(var i = 0; i < text.length; i++){
            switch(text[i]){
                case ' ':
                    lines[0] = lines[0] + "  ";
                    lines[1] = lines[1] + "  ";
                    lines[2] = lines[2] + "  ";
                    lines[3] = lines[3] + "  ";
                    lines[4] = lines[4] + "  ";
                    lines[5] = lines[5] + "  ";
                    break;
                case '!':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[1].substring(0, lines[1].length - 1);
                        temp = temp + "|";
                        lines[1] = temp;
                        temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + "|";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "__ ";
                    lines[1] = lines[1] + "  |";
                    lines[2] = lines[2] + "  |";
                    lines[3] = lines[3] + "__|";
                    lines[4] = lines[4] + "__|";
                    lines[5] = lines[5] + "   ";
                    break;
                case '"':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[1].substring(0, lines[1].length - 1);
                        temp = temp + "|";
                        lines[1] = temp;
                        temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + "|";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + " ";
                        lines[4] = lines[4] + " ";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "_ _ ";
                    lines[1] = lines[1] + " | |";
                    lines[2] = lines[2] + "_|_|";
                    lines[3] = lines[3] + "    ";
                    lines[4] = lines[4] + "    ";
                    lines[5] = lines[5] + "    ";
                    break;
                case '\'':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[1].substring(0, lines[1].length - 1);
                        temp = temp + "|";
                        lines[1] = temp;
                        temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + "|";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + " ";
                        lines[4] = lines[4] + " ";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "_ ";
                    lines[1] = lines[1] + " |";
                    lines[2] = lines[2] + "_|";
                    lines[3] = lines[3] + "  ";
                    lines[4] = lines[4] + "  ";
                    lines[5] = lines[5] + "  ";
                    break;
                case '(':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "  _ ";
                    lines[1] = lines[1] + "_|_|";
                    lines[2] = lines[2] + " |  ";
                    lines[3] = lines[3] + " |  ";
                    lines[4] = lines[4] + "_|_ ";
                    lines[5] = lines[5] + " |_|";
                    break;
                case ')':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[1].substring(0, lines[1].length - 1);
                        temp = temp + "|";
                        lines[1] = temp;
                        temp = lines[5].substring(0, lines[5].length - 1);
                        temp = temp + "|";
                        lines[5] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + "|";
                        lines[2] = lines[2] + " ";
                        lines[3] = lines[3] + " ";
                        lines[4] = lines[4] + " ";
                        lines[5] = lines[5] + "|";
                    }

                    lines[0] = lines[0] + "_   ";
                    lines[1] = lines[1] + "_|_ ";
                    lines[2] = lines[2] + " | |";
                    lines[3] = lines[3] + " | |";
                    lines[4] = lines[4] + "_|_|";
                    lines[5] = lines[5] + "_|  ";
                    break;
                case '[':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[1].substring(0, lines[1].length - 1);
                        temp = temp + "|";
                        lines[1] = temp;
                        temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                        temp = lines[5].substring(0, lines[5].length - 1);
                        temp = temp + "|";
                        lines[5] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + "|";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + "|";
                    }

                    lines[0] = lines[0] + "___ ";
                    lines[1] = lines[1] + "  _|";
                    lines[2] = lines[2] + " |  ";
                    lines[3] = lines[3] + " |  ";
                    lines[4] = lines[4] + " |_ ";
                    lines[5] = lines[5] + "___|";
                    break;
                case ']':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[1].substring(0, lines[1].length - 1);
                        temp = temp + "|";
                        lines[1] = temp;
                        temp = lines[5].substring(0, lines[5].length - 1);
                        temp = temp + "|";
                        lines[5] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + "|";
                        lines[2] = lines[2] + " ";
                        lines[3] = lines[3] + " ";
                        lines[4] = lines[4] + " ";
                        lines[5] = lines[5] + "|";
                    }

                    lines[0] = lines[0] + "___ ";
                    lines[1] = lines[1] + "_  |";
                    lines[2] = lines[2] + " | |";
                    lines[3] = lines[3] + " | |";
                    lines[4] = lines[4] + "_| |";
                    lines[5] = lines[5] + "___|";
                    break;
                case '{':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + " ";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + " ";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "  ___ ";
                    lines[1] = lines[1] + " |  _|";
                    lines[2] = lines[2] + "_| |  ";
                    lines[3] = lines[3] + "_  |  ";
                    lines[4] = lines[4] + " | |_ ";
                    lines[5] = lines[5] + " |___|";
                    break;
                case '}':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[1].substring(0, lines[1].length - 1);
                        temp = temp + "|";
                        lines[1] = temp;
                        temp = lines[5].substring(0, lines[5].length - 1);
                        temp = temp + "|";
                        lines[5] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + "|";
                        lines[2] = lines[2] + " ";
                        lines[3] = lines[3] + " ";
                        lines[4] = lines[4] + " ";
                        lines[5] = lines[5] + "|";
                    }

                    lines[0] = lines[0] + "___   ";
                    lines[1] = lines[1] + "_  |  ";
                    lines[2] = lines[2] + " | |_ ";
                    lines[3] = lines[3] + " |  _|";
                    lines[4] = lines[4] + "_| |  ";
                    lines[5] = lines[5] + "___|  ";
                    break;
                case '.':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + " ";
                        lines[3] = lines[3] + " ";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "  ";
                    lines[1] = lines[1] + "  ";
                    lines[2] = lines[2] + "  ";
                    lines[3] = lines[3] + "_ ";
                    lines[4] = lines[4] + "_|";
                    lines[5] = lines[5] + "  ";
                    break;
                case ',':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                        temp = lines[5].substring(0, lines[5].length - 1);
                        temp = temp + "|";
                        lines[5] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + " ";
                        lines[3] = lines[3] + " ";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + "|";
                    }

                    lines[0] = lines[0] + "  ";
                    lines[1] = lines[1] + "  ";
                    lines[2] = lines[2] + "  ";
                    lines[3] = lines[3] + "_ ";
                    lines[4] = lines[4] + " |";
                    lines[5] = lines[5] + "_|";
                    break;
                case ':':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + " ";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "  ";
                    lines[1] = lines[1] + "_ ";
                    lines[2] = lines[2] + "_|";
                    lines[3] = lines[3] + "_ ";
                    lines[4] = lines[4] + "_|";
                    lines[5] = lines[5] + "  ";
                    break;
                case ';':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                        temp = lines[5].substring(0, lines[5].length - 1);
                        temp = temp + "|";
                        lines[5] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + " ";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + "|";
                    }

                    lines[0] = lines[0] + "  ";
                    lines[1] = lines[1] + "_ ";
                    lines[2] = lines[2] + "_|";
                    lines[3] = lines[3] + "_ ";
                    lines[4] = lines[4] + " |";
                    lines[5] = lines[5] + "_|";
                    break;
                case '#':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + " ";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "  _ _   ";
                    lines[1] = lines[1] + "_| | |_ ";
                    lines[2] = lines[2] + "_     _|";
                    lines[3] = lines[3] + "_     _|";
                    lines[4] = lines[4] + " |_|_|  ";
                    lines[5] = lines[5] + "        ";
                    break;
                case '$':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "  _   ";
                    lines[1] = lines[1] + "_| |_ ";
                    lines[2] = lines[2] + "   __|";
                    lines[3] = lines[3] + "__   |";
                    lines[4] = lines[4] + "_   _|";
                    lines[5] = lines[5] + " |_|  ";
                    break;
                case '%':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "      ";
                    lines[1] = lines[1] + "__ __ ";
                    lines[2] = lines[2] + "__|  |";
                    lines[3] = lines[3] + "   __|";
                    lines[4] = lines[4] + "__|__|";
                    lines[5] = lines[5] + "      ";
                    break;
                case '&':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "  _   ";
                    lines[1] = lines[1] + "_| |_ ";
                    lines[2] = lines[2] + "   __|";
                    lines[3] = lines[3] + "   __|";
                    lines[4] = lines[4] + "_   _|";
                    lines[5] = lines[5] + " |_|  ";
                    break;
                case '+':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + " ";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + " ";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "      ";
                    lines[1] = lines[1] + "  _   ";
                    lines[2] = lines[2] + "_| |_ ";
                    lines[3] = lines[3] + "_   _|";
                    lines[4] = lines[4] + " |_|  ";
                    lines[5] = lines[5] + "      ";
                    break;
                case '-':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + " ";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + " ";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "    ";
                    lines[1] = lines[1] + "    ";
                    lines[2] = lines[2] + "___ ";
                    lines[3] = lines[3] + "___|";
                    lines[4] = lines[4] + "    ";
                    lines[5] = lines[5] + "    ";
                    break;
                case '=':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + " ";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "      ";
                    lines[1] = lines[1] + "      ";
                    lines[2] = lines[2] + "_____ ";
                    lines[3] = lines[3] + "_____|";
                    lines[4] = lines[4] + "_____|";
                    lines[5] = lines[5] + "      ";
                    break;
                case '|':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[1].substring(0, lines[1].length - 1);
                        temp = temp + "|";
                        lines[1] = temp;
                        temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                        temp = lines[5].substring(0, lines[5].length - 1);
                        temp = temp + "|";
                        lines[5] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + "|";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + "|";
                    }

                    lines[0] = lines[0] + "_ ";
                    lines[1] = lines[1] + " |";
                    lines[2] = lines[2] + " |";
                    lines[3] = lines[3] + " |";
                    lines[4] = lines[4] + " |";
                    lines[5] = lines[5] + "_|";
                    break;
                case '_':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[5].substring(0, lines[5].length - 1);
                        temp = temp + "|";
                        lines[5] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + " ";
                        lines[3] = lines[3] + " ";
                        lines[4] = lines[4] + " ";
                        lines[5] = lines[5] + "|";
                    }

                    lines[0] = lines[0] + "      ";
                    lines[1] = lines[1] + "      ";
                    lines[2] = lines[2] + "      ";
                    lines[3] = lines[3] + "      ";
                    lines[4] = lines[4] + "_____ ";
                    lines[5] = lines[5] + "_____|";
                    break;
                case '?':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[1].substring(0, lines[1].length - 1);
                        temp = temp + "|";
                        lines[1] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + "|";
                        lines[2] = lines[2] + " ";
                        lines[3] = lines[3] + " ";
                        lines[4] = lines[4] + " ";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "_____ ";
                    lines[1] = lines[1] + "___  |";
                    lines[2] = lines[2] + " |  _|";
                    lines[3] = lines[3] + " |_|  ";
                    lines[4] = lines[4] + " |_|  ";
                    lines[5] = lines[5] + "      ";
                    break;
                case '@':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "      ";
                    lines[1] = lines[1] + "_____ ";
                    lines[2] = lines[2] + "  __ |";
                    lines[3] = lines[3] + " |___|";
                    lines[4] = lines[4] + "_____|";
                    lines[5] = lines[5] + "      ";
                    break;
                case '/':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + " ";
                        lines[3] = lines[3] + " ";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "    ";
                    lines[1] = lines[1] + "  _ ";
                    lines[2] = lines[2] + " / |";
                    lines[3] = lines[3] + "/ / ";
                    lines[4] = lines[4] + "_/  ";
                    lines[5] = lines[5] + "    ";
                    break;
                case '\\':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + " ";
                        lines[4] = lines[4] + " ";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "    ";
                    lines[1] = lines[1] + "_   ";
                    lines[2] = lines[2] + " \\  ";
                    lines[3] = lines[3] + "\\ \\ ";
                    lines[4] = lines[4] + " \\_|";
                    lines[5] = lines[5] + "    ";
                    break;
                case '`':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "___ ";
                    lines[1] = lines[1] + "_  |";
                    lines[2] = lines[2] + " |_|";
                    lines[3] = lines[3] + "    ";
                    lines[4] = lines[4] + "    ";
                    lines[5] = lines[5] + "    ";
                    break;
                case '~':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[1].substring(0, lines[1].length - 1);
                        temp = temp + "|";
                        lines[1] = temp;
                        temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + "|";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + " ";
                        lines[4] = lines[4] + " ";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "_____ ";
                    lines[1] = lines[1] + "   | |";
                    lines[2] = lines[2] + "_|___|";
                    lines[3] = lines[3] + "      ";
                    lines[4] = lines[4] + "      ";
                    lines[5] = lines[5] + "      ";
                    break;
                case '^':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[1].substring(0, lines[1].length - 1);
                        temp = temp + "|";
                        lines[1] = temp;
                        temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + "|";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + " ";
                        lines[4] = lines[4] + " ";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "_____ ";
                    lines[1] = lines[1] + "  _  |";
                    lines[2] = lines[2] + "_| |_|";
                    lines[3] = lines[3] + "      ";
                    lines[4] = lines[4] + "      ";
                    lines[5] = lines[5] + "      ";
                    break;
                case '*':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "      ";
                    lines[1] = lines[1] + "_____ ";
                    lines[2] = lines[2] + " | | |";
                    lines[3] = lines[3] + "-   -|";
                    lines[4] = lines[4] + "_|_|_|";
                    lines[5] = lines[5] + "      ";
                    break;
                case '<':
                    lines[0] = lines[0] + "   __";
                    lines[1] = lines[1] + "  / /";
                    lines[2] = lines[2] + " / / ";
                    lines[3] = lines[3] + "< <  ";
                    lines[4] = lines[4] + " \\ \\ ";
                    lines[5] = lines[5] + "  \\_\\";
                    break;
                case '>':
                    lines[0] = lines[0] + "__   ";
                    lines[1] = lines[1] + "\\ \\  ";
                    lines[2] = lines[2] + " \\ \\ ";
                    lines[3] = lines[3] + "  > >";
                    lines[4] = lines[4] + " / / ";
                    lines[5] = lines[5] + "/_/  ";
                    break;
                case '0':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "    ";
                    lines[1] = lines[1] + "___ ";
                    lines[2] = lines[2] + "   |";
                    lines[3] = lines[3] + " | |";
                    lines[4] = lines[4] + "___|";
                    lines[5] = lines[5] + "    ";
                    break;
                case '1':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + " ";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "      ";
                    lines[1] = lines[1] + "___   ";
                    lines[2] = lines[2] + "_  |  ";
                    lines[3] = lines[3] + "_| |_ ";
                    lines[4] = lines[4] + "_____|";
                    lines[5] = lines[5] + "      ";
                    break;
                case '2':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "    ";
                    lines[1] = lines[1] + "___ ";
                    lines[2] = lines[2] + "_  |";
                    lines[3] = lines[3] + "  _|";
                    lines[4] = lines[4] + "___|";
                    lines[5] = lines[5] + "    ";
                    break;
                case '3':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "    ";
                    lines[1] = lines[1] + "___ ";
                    lines[2] = lines[2] + "_  |";
                    lines[3] = lines[3] + "_  |";
                    lines[4] = lines[4] + "___|";
                    lines[5] = lines[5] + "    ";
                    break;
                case '4':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + " ";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "    ";
                    lines[1] = lines[1] + "___ ";
                    lines[2] = lines[2] + " | |";
                    lines[3] = lines[3] + "_  |";
                    lines[4] = lines[4] + " |_|";
                    lines[5] = lines[5] + "    ";
                    break;
                case '5':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "    ";
                    lines[1] = lines[1] + "___ ";
                    lines[2] = lines[2] + "  _|";
                    lines[3] = lines[3] + "_  |";
                    lines[4] = lines[4] + "___|";
                    lines[5] = lines[5] + "    ";
                    break;
                case '6':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "    ";
                    lines[1] = lines[1] + "___ ";
                    lines[2] = lines[2] + "  _|";
                    lines[3] = lines[3] + " . |";
                    lines[4] = lines[4] + "___|";
                    lines[5] = lines[5] + "    ";
                    break;
                case '7':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + " ";
                        lines[4] = lines[4] + " ";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "    ";
                    lines[1] = lines[1] + "___ ";
                    lines[2] = lines[2] + "_  |";
                    lines[3] = lines[3] + " | |";
                    lines[4] = lines[4] + " |_|";
                    lines[5] = lines[5] + "    ";
                    break;
                case '8':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "    ";
                    lines[1] = lines[1] + "___ ";
                    lines[2] = lines[2] + " . |";
                    lines[3] = lines[3] + " . |";
                    lines[4] = lines[4] + "___|";
                    lines[5] = lines[5] + "    ";
                    break;
                case '9':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "    ";
                    lines[1] = lines[1] + "___ ";
                    lines[2] = lines[2] + " . |";
                    lines[3] = lines[3] + "_  |";
                    lines[4] = lines[4] + "___|";
                    lines[5] = lines[5] + "    ";
                    break;
                case 'A':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "      ";
                    lines[1] = lines[1] + "_____ ";
                    lines[2] = lines[2] + "  _  |";
                    lines[3] = lines[3] + "     |";
                    lines[4] = lines[4] + "__|__|";
                    lines[5] = lines[5] + "      ";
                    break;
                case 'B':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "      ";
                    lines[1] = lines[1] + "_____ ";
                    lines[2] = lines[2] + " __  |";
                    lines[3] = lines[3] + " __ -|";
                    lines[4] = lines[4] + "_____|";
                    lines[5] = lines[5] + "      ";
                    break;
                case 'C':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "      ";
                    lines[1] = lines[1] + "_____ ";
                    lines[2] = lines[2] + "     |";
                    lines[3] = lines[3] + "   --|";
                    lines[4] = lines[4] + "_____|";
                    lines[5] = lines[5] + "      ";
                    break;
                case 'D':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "      ";
                    lines[1] = lines[1] + "____  ";
                    lines[2] = lines[2] + "    \\ ";
                    lines[3] = lines[3] + "  |  |";
                    lines[4] = lines[4] + "____/ ";
                    lines[5] = lines[5] + "      ";
                    break;
                case 'E':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "      ";
                    lines[1] = lines[1] + "_____ ";
                    lines[2] = lines[2] + "   __|";
                    lines[3] = lines[3] + "   __|";
                    lines[4] = lines[4] + "_____|";
                    lines[5] = lines[5] + "      ";
                    break;
                case 'F':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "      ";
                    lines[1] = lines[1] + "_____ ";
                    lines[2] = lines[2] + "   __|";
                    lines[3] = lines[3] + "   __|";
                    lines[4] = lines[4] + "__|   ";
                    lines[5] = lines[5] + "      ";
                    break;
                case 'G':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "      ";
                    lines[1] = lines[1] + "_____ ";
                    lines[2] = lines[2] + "   __|";
                    lines[3] = lines[3] + "  |  |";
                    lines[4] = lines[4] + "_____|";
                    lines[5] = lines[5] + "      ";
                    break;
                case 'H':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "      ";
                    lines[1] = lines[1] + "__ __ ";
                    lines[2] = lines[2] + "  |  |";
                    lines[3] = lines[3] + "     |";
                    lines[4] = lines[4] + "__|__|";
                    lines[5] = lines[5] + "      ";
                    break;
                case 'I':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "      ";
                    lines[1] = lines[1] + "_____ ";
                    lines[2] = lines[2] + "     |";
                    lines[3] = lines[3] + "-   -|";
                    lines[4] = lines[4] + "_____|";
                    lines[5] = lines[5] + "      ";
                    break;
                case 'J':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + " ";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "      ";
                    lines[1] = lines[1] + "   __ ";
                    lines[2] = lines[2] + "__|  |";
                    lines[3] = lines[3] + "  |  |";
                    lines[4] = lines[4] + "_____|";
                    lines[5] = lines[5] + "      ";
                    break;
                case 'K':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "      ";
                    lines[1] = lines[1] + "__ __ ";
                    lines[2] = lines[2] + "  |  |";
                    lines[3] = lines[3] + "    -|";
                    lines[4] = lines[4] + "__|__|";
                    lines[5] = lines[5] + "      ";
                    break;
                case 'L':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "      ";
                    lines[1] = lines[1] + "__    ";
                    lines[2] = lines[2] + "  |   ";
                    lines[3] = lines[3] + "  |__ ";
                    lines[4] = lines[4] + "_____|";
                    lines[5] = lines[5] + "      ";
                    break;
                case 'M':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "      ";
                    lines[1] = lines[1] + "_____ ";
                    lines[2] = lines[2] + "     |";
                    lines[3] = lines[3] + " | | |";
                    lines[4] = lines[4] + "_|_|_|";
                    lines[5] = lines[5] + "      ";
                    break;
                case 'N':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "      ";
                    lines[1] = lines[1] + "___ _ ";
                    lines[2] = lines[2] + "   | |";
                    lines[3] = lines[3] + " | | |";
                    lines[4] = lines[4] + "_|___|";
                    lines[5] = lines[5] + "      ";
                    break;
                case 'O':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "      ";
                    lines[1] = lines[1] + "_____ ";
                    lines[2] = lines[2] + "     |";
                    lines[3] = lines[3] + "  |  |";
                    lines[4] = lines[4] + "_____|";
                    lines[5] = lines[5] + "      ";
                    break;
                case 'P':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "      ";
                    lines[1] = lines[1] + "_____ ";
                    lines[2] = lines[2] + "  _  |";
                    lines[3] = lines[3] + "   __|";
                    lines[4] = lines[4] + "__|   ";
                    lines[5] = lines[5] + "      ";
                    break;
                case 'Q':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "      ";
                    lines[1] = lines[1] + "_____ ";
                    lines[2] = lines[2] + "     |";
                    lines[3] = lines[3] + "  |  |";
                    lines[4] = lines[4] + "__  _|";
                    lines[5] = lines[5] + "  |__|";
                    break;
                case 'R':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "      ";
                    lines[1] = lines[1] + "_____ ";
                    lines[2] = lines[2] + " __  |";
                    lines[3] = lines[3] + "    -|";
                    lines[4] = lines[4] + "__|__|";
                    lines[5] = lines[5] + "      ";
                    break;
                case 'S':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "      ";
                    lines[1] = lines[1] + "_____ ";
                    lines[2] = lines[2] + "   __|";
                    lines[3] = lines[3] + "__   |";
                    lines[4] = lines[4] + "_____|";
                    lines[5] = lines[5] + "      ";
                    break;
                case 'T':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + " ";
                        lines[4] = lines[4] + " ";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "      ";
                    lines[1] = lines[1] + "_____ ";
                    lines[2] = lines[2] + "_   _|";
                    lines[3] = lines[3] + " | |  ";
                    lines[4] = lines[4] + " |_|  ";
                    lines[5] = lines[5] + "      ";
                    break;
                case 'U':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "      ";
                    lines[1] = lines[1] + "_____ ";
                    lines[2] = lines[2] + "  |  |";
                    lines[3] = lines[3] + "  |  |";
                    lines[4] = lines[4] + "_____|";
                    lines[5] = lines[5] + "      ";
                    break;
                case 'V':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + " ";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "      ";
                    lines[1] = lines[1] + "_____ ";
                    lines[2] = lines[2] + "  |  |";
                    lines[3] = lines[3] + "  |  |";
                    lines[4] = lines[4] + "\\___/ ";
                    lines[5] = lines[5] + "      ";
                    break;
                case 'W':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "      ";
                    lines[1] = lines[1] + "_ _ _ ";
                    lines[2] = lines[2] + " | | |";
                    lines[3] = lines[3] + " | | |";
                    lines[4] = lines[4] + "_____|";
                    lines[5] = lines[5] + "      ";
                    break;
                case 'X':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "      ";
                    lines[1] = lines[1] + "__ __ ";
                    lines[2] = lines[2] + "  |  |";
                    lines[3] = lines[3] + "-   -|";
                    lines[4] = lines[4] + "__|__|";
                    lines[5] = lines[5] + "      ";
                    break;
                case 'Y':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + " ";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "      ";
                    lines[1] = lines[1] + "__ __ ";
                    lines[2] = lines[2] + "  |  |";
                    lines[3] = lines[3] + "_   _|";
                    lines[4] = lines[4] + " |_|  ";
                    lines[5] = lines[5] + "      ";
                    break;
                case 'Z':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "      ";
                    lines[1] = lines[1] + "_____ ";
                    lines[2] = lines[2] + "__   |";
                    lines[3] = lines[3] + "   __|";
                    lines[4] = lines[4] + "_____|";
                    lines[5] = lines[5] + "      ";
                    break;
                case 'a':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + " ";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "    ";
                    lines[1] = lines[1] + "    ";
                    lines[2] = lines[2] + "___ ";
                    lines[3] = lines[3] + " .'|";
                    lines[4] = lines[4] + "__,|";
                    lines[5] = lines[5] + "    ";
                    break;
                case 'b':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "    ";
                    lines[1] = lines[1] + "_   ";
                    lines[2] = lines[2] + " |_ ";
                    lines[3] = lines[3] + " . |";
                    lines[4] = lines[4] + "___|";
                    lines[5] = lines[5] + "    ";
                    break;
                case 'c':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + " ";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "    ";
                    lines[1] = lines[1] + "    ";
                    lines[2] = lines[2] + "___ ";
                    lines[3] = lines[3] + "  _|";
                    lines[4] = lines[4] + "___|";
                    lines[5] = lines[5] + "    ";
                    break;
                case 'd':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + " ";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "    ";
                    lines[1] = lines[1] + "  _ ";
                    lines[2] = lines[2] + "_| |";
                    lines[3] = lines[3] + " . |";
                    lines[4] = lines[4] + "___|";
                    lines[5] = lines[5] + "    ";
                    break;
                case 'e':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + " ";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "    ";
                    lines[1] = lines[1] + "    ";
                    lines[2] = lines[2] + "___ ";
                    lines[3] = lines[3] + " -_|";
                    lines[4] = lines[4] + "___|";
                    lines[5] = lines[5] + "    ";
                    break;
                case 'f':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "    ";
                    lines[1] = lines[1] + "___ ";
                    lines[2] = lines[2] + "  _|";
                    lines[3] = lines[3] + "  _|";
                    lines[4] = lines[4] + "_|  ";
                    lines[5] = lines[5] + "    ";
                    break;
                case 'g':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                        temp = lines[5].substring(0, lines[5].length - 1);
                        temp = temp + "|";
                        lines[5] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + " ";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + "|";
                    }

                    lines[0] = lines[0] + "    ";
                    lines[1] = lines[1] + "    ";
                    lines[2] = lines[2] + "___ ";
                    lines[3] = lines[3] + " . |";
                    lines[4] = lines[4] + "_  |";
                    lines[5] = lines[5] + "___|";
                    break;
                case 'h':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "    ";
                    lines[1] = lines[1] + "_   ";
                    lines[2] = lines[2] + " |_ ";
                    lines[3] = lines[3] + "   |";
                    lines[4] = lines[4] + "_|_|";
                    lines[5] = lines[5] + "    ";
                    break;
                case 'i':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "  ";
                    lines[1] = lines[1] + "_ ";
                    lines[2] = lines[2] + "_|";
                    lines[3] = lines[3] + " |";
                    lines[4] = lines[4] + "_|";
                    lines[5] = lines[5] + "  ";
                    break;
                case 'j':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[5].substring(0, lines[5].length - 1);
                        temp = temp + "|";
                        lines[5] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + " ";
                        lines[3] = lines[3] + " ";
                        lines[4] = lines[4] + " ";
                        lines[5] = lines[5] + "|";
                    }

                    lines[0] = lines[0] + "    ";
                    lines[1] = lines[1] + "  _ ";
                    lines[2] = lines[2] + " |_|";
                    lines[3] = lines[3] + " | |";
                    lines[4] = lines[4] + "_| |";
                    lines[5] = lines[5] + "___|";
                    break;
                case 'k':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "    ";
                    lines[1] = lines[1] + "_   ";
                    lines[2] = lines[2] + " |_ ";
                    lines[3] = lines[3] + " '_|";
                    lines[4] = lines[4] + "_,_|";
                    lines[5] = lines[5] + "    ";
                    break;
                case 'l':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "  ";
                    lines[1] = lines[1] + "_ ";
                    lines[2] = lines[2] + " |";
                    lines[3] = lines[3] + " |";
                    lines[4] = lines[4] + "_|";
                    lines[5] = lines[5] + "  ";
                    break;
                case 'm':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + " ";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "      ";
                    lines[1] = lines[1] + "      ";
                    lines[2] = lines[2] + "_____ ";
                    lines[3] = lines[3] + "     |";
                    lines[4] = lines[4] + "_|_|_|";
                    lines[5] = lines[5] + "      ";
                    break;
                case 'n':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + " ";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "    ";
                    lines[1] = lines[1] + "    ";
                    lines[2] = lines[2] + "___ ";
                    lines[3] = lines[3] + "   |";
                    lines[4] = lines[4] + "_|_|";
                    lines[5] = lines[5] + "    ";
                    break;
                case 'o':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + " ";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "    ";
                    lines[1] = lines[1] + "    ";
                    lines[2] = lines[2] + "___ ";
                    lines[3] = lines[3] + " . |";
                    lines[4] = lines[4] + "___|";
                    lines[5] = lines[5] + "    ";
                    break;
                case 'p':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                        temp = lines[5].substring(0, lines[5].length - 1);
                        temp = temp + "|";
                        lines[5] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + " ";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + "|";
                    }

                    lines[0] = lines[0] + "    ";
                    lines[1] = lines[1] + "    ";
                    lines[2] = lines[2] + "___ ";
                    lines[3] = lines[3] + " . |";
                    lines[4] = lines[4] + "  _|";
                    lines[5] = lines[5] + "_|  ";
                    break;
                case 'q':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + " ";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "    ";
                    lines[1] = lines[1] + "    ";
                    lines[2] = lines[2] + "___ ";
                    lines[3] = lines[3] + " . |";
                    lines[4] = lines[4] + "_  |";
                    lines[5] = lines[5] + " |_|";
                    break;
                case 'r':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + " ";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "    ";
                    lines[1] = lines[1] + "    ";
                    lines[2] = lines[2] + "___ ";
                    lines[3] = lines[3] + "  _|";
                    lines[4] = lines[4] + "_|  ";
                    lines[5] = lines[5] + "    ";
                    break;
                case 's':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + " ";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "    ";
                    lines[1] = lines[1] + "    ";
                    lines[2] = lines[2] + "___ ";
                    lines[3] = lines[3] + "_ -|";
                    lines[4] = lines[4] + "___|";
                    lines[5] = lines[5] + "    ";
                    break;
                case 't':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[2].substring(0, lines[2].length - 1);
                        temp = temp + "|";
                        lines[2] = temp;
                        temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + "|";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "    ";
                    lines[1] = lines[1] + "_   ";
                    lines[2] = lines[2] + " |_ ";
                    lines[3] = lines[3] + "  _|";
                    lines[4] = lines[4] + "_|  ";
                    lines[5] = lines[5] + "    ";
                    break;
                case 'u':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + " ";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "    ";
                    lines[1] = lines[1] + "    ";
                    lines[2] = lines[2] + "_ _ ";
                    lines[3] = lines[3] + " | |";
                    lines[4] = lines[4] + "___|";
                    lines[5] = lines[5] + "    ";
                    break;
                case 'v':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + " ";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + " ";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "    ";
                    lines[1] = lines[1] + "    ";
                    lines[2] = lines[2] + "_ _ ";
                    lines[3] = lines[3] + " | |";
                    lines[4] = lines[4] + "\\_/ ";
                    lines[5] = lines[5] + "    ";
                    break;
                case 'w':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + " ";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "      ";
                    lines[1] = lines[1] + "      ";
                    lines[2] = lines[2] + "_ _ _ ";
                    lines[3] = lines[3] + " | | |";
                    lines[4] = lines[4] + "_____|";
                    lines[5] = lines[5] + "      ";
                    break;
                case 'x':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + " ";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "    ";
                    lines[1] = lines[1] + "    ";
                    lines[2] = lines[2] + "_ _ ";
                    lines[3] = lines[3] + "_'_|";
                    lines[4] = lines[4] + "_,_|";
                    lines[5] = lines[5] + "    ";
                    break;
                case 'y':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                        temp = lines[5].substring(0, lines[5].length - 1);
                        temp = temp + "|";
                        lines[5] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + " ";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + "|";
                    }

                    lines[0] = lines[0] + "    ";
                    lines[1] = lines[1] + "    ";
                    lines[2] = lines[2] + "_ _ ";
                    lines[3] = lines[3] + " | |";
                    lines[4] = lines[4] + "_  |";
                    lines[5] = lines[5] + "___|";
                    break;
                case 'z':
                    if(i != 0 && text[i-1] != ' ' && text[i-1] != '<' && text[i-1] != '>'){
                        string temp = lines[3].substring(0, lines[3].length - 1);
                        temp = temp + "|";
                        lines[3] = temp;
                        temp = lines[4].substring(0, lines[4].length - 1);
                        temp = temp + "|";
                        lines[4] = temp;
                    }else{
                        lines[0] = lines[0] + " ";
                        lines[1] = lines[1] + " ";
                        lines[2] = lines[2] + " ";
                        lines[3] = lines[3] + "|";
                        lines[4] = lines[4] + "|";
                        lines[5] = lines[5] + " ";
                    }

                    lines[0] = lines[0] + "    ";
                    lines[1] = lines[1] + "    ";
                    lines[2] = lines[2] + "___ ";
                    lines[3] = lines[3] + "- _|";
                    lines[4] = lines[4] + "___|";
                    lines[5] = lines[5] + "    ";
                    break;
            }
        }
        string newText = lines[0] + "\n" + lines[1] + "\n" + lines[2] + "\n" + lines[3] + "\n" + lines[4] + "\n" + lines[5];
        return newText;
    }
}