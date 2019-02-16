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

public class ComgenApp : Gtk.Application {
    MainWindow window;

    public ComgenApp () {
        Object (
            application_id: "com.github.jeremyvaartjes.comgen",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        window = new MainWindow (this);
    }

    public static int main (string[] args) {
        var app = new ComgenApp ();
        return app.run (args);
    }
}