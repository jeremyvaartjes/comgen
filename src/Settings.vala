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

public class Settings : Granite.Services.Settings {
    public enum CommentStyle {
        CPP = 0,
        CC = 1,
        BASH = 2,
        HTML = 3,
        ASSEMBLY = 4,
        MYSQL = 5,
        LUA = 6,
        VISUALBASIC = 7,
        PLAIN = 8
    }

    public CommentStyle comment_type { get; set; }
    public string version { get; set; }
    public bool show_version { get; set; }
    public string authors { get; set; }
    public bool show_authors { get; set; }
    public string legal { get; set; }
    public bool show_legal { get; set; }
    public string main_text { get; set; }

    public Settings ()  {
        base ("com.github.jeremyvaartjes.comgen.settings");
    }
}