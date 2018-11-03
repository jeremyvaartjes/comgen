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

const string LEGAL_GPL2 = _("Copyright (C) [yyyy] [name of copyright owner]\n\nThis program is free software: you can redistribute it and/or modify\nit under the terms of the GNU General Public License as published by\nthe Free Software Foundation, either version 2 of the License, or\n(at your option) any later version.\n\nThis program is distributed in the hope that it will be useful,\nbut WITHOUT ANY WARRANTY; without even the implied warranty of\nMERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\nGNU General Public License for more details.\n\nYou should have received a copy of the GNU General Public License\nalong with this program.  If not, see <https://www.gnu.org/licenses/>.");
const string LEGAL_GPL3 = _("Copyright (C) [yyyy] [name of copyright owner]\n\nThis program is free software: you can redistribute it and/or modify\nit under the terms of the GNU General Public License as published by\nthe Free Software Foundation, either version 3 of the License, or\n(at your option) any later version.\n\nThis program is distributed in the hope that it will be useful,\nbut WITHOUT ANY WARRANTY; without even the implied warranty of\nMERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\nGNU General Public License for more details.\n\nYou should have received a copy of the GNU General Public License\nalong with this program.  If not, see <https://www.gnu.org/licenses/>.");
const string LEGAL_APACHE2 = _("Copyright (C) [yyyy] [name of copyright owner]\n\nLicensed under the Apache License, Version 2.0 (the \"License\");\nyou may not use this file except in compliance with the License.\nYou may obtain a copy of the License at\n\n    http://www.apache.org/licenses/LICENSE-2.0\n\nUnless required by applicable law or agreed to in writing, software\ndistributed under the License is distributed on an \"AS IS\" BASIS,\nWITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\nSee the License for the specific language governing permissions and\nlimitations under the License.");
const string LEGAL_MIT = _("Copyright (C) [yyyy] [name of copyright owner]\n\nPermission is hereby granted, free of charge, to any person obtaining\na copy of this software and associated documentation files (the\n\"Software\"), to deal in the Software without restriction, including\nwithout limitation the rights to use, copy, modify, merge, publish,\ndistribute, sublicense, and/or sell copies of the Software, and to\npermit persons to whom the Software is furnished to do so, subject to\nthe following conditions:\n\nThe above copyright notice and this permission notice shall be\nincluded in all copies or substantial portions of the Software.\n\nTHE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND,\nEXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF\nMERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.\nIN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY\nCLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,\nTORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE\nSOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.");
const string LEGAL_BSD2 = _("Copyright (C) [yyyy] [name of copyright owner]\n\nRedistribution and use in source and binary forms, with or without\nmodification, are permitted provided that the following conditions\nare met:\n\n1. Redistributions of source code must retain the above copyright\nnotice, this list of conditions and the following disclaimer.\n\n2. Redistributions in binary form must reproduce the above copyright\nnotice, this list of conditions and the following disclaimer in the\ndocumentation and/or other materials provided with the distribution.\n\nTHIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS\n\"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT\nLIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR\nA PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT\nHOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,\nSPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT\nLIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,\nDATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY\nTHEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT\n(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE\nOF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.");
const string LEGAL_BSD3 = _("Copyright (C) [yyyy] [name of copyright owner]\n\nRedistribution and use in source and binary forms, with or without\nmodification, are permitted provided that the following conditions\nare met:\n\n1. Redistributions of source code must retain the above copyright\nnotice, this list of conditions and the following disclaimer.\n\n2. Redistributions in binary form must reproduce the above copyright\nnotice, this list of conditions and the following disclaimer in the\ndocumentation and/or other materials provided with the distribution.\n\n3. Neither the name of the copyright holder nor the names of its\ncontributors may be used to endorse or promote products derived from\nthis software without specific prior written permission.\n\nTHIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS\n\"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT\nLIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR\nA PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT\nHOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,\nSPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT\nLIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,\nDATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY\nTHEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT\n(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE\nOF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.");

public class MainWindow : Gtk.Window {
    Gtk.Entry commentEntry;
    Gtk.TextView copyArea;
    public Settings settings;
    Gtk.HeaderBar header;
    Gtk.Button copyBtn;
    Gtk.Paned mainPane;
    Gtk.Grid settingsEntries;
    Gtk.Label versionEntLabel;
    Gtk.Entry versionEntry;
    Gtk.Label authorsEntLabel;
    Gtk.TextView authorsBox;
    Gtk.ScrolledWindow scrollAreaAuth;
    Gtk.Label legalEntLabel;
    Gtk.TextView legalBox;
    Gtk.ScrolledWindow scrollAreaLegal;
    Gtk.Grid layoutSettings;
    Gtk.Label typeLabel;
    Gtk.ComboBoxText typeCombo;
    Gtk.CheckButton versionCheck;
    Gtk.CheckButton authorsCheck;
    Gtk.CheckButton legalCheck;
    Gtk.MenuButton settingsBtn;
    Gtk.Popover settingsPopover;
    Gtk.ScrolledWindow scrollArea;
    Gtk.Label legalTemplateLabel;
    Gtk.ComboBoxText legalTemplateCombo;
    Gtk.Button legalTemplateButton;

    public MainWindow (Gtk.Application app) {
        Object (application: app);

        settings = new Settings ();

        header = new Gtk.HeaderBar();
        commentEntry = new Gtk.Entry();
        copyBtn = new Gtk.Button.from_icon_name ("edit-copy", Gtk.IconSize.LARGE_TOOLBAR);
        mainPane = new Gtk.Paned(Gtk.Orientation.HORIZONTAL);
        settingsEntries = new Gtk.Grid ();
        versionEntLabel = new Gtk.Label(_("Version"));
        versionEntry = new Gtk.Entry();
        authorsEntLabel = new Gtk.Label(_("Authors"));
        authorsBox = new Gtk.TextView();
        scrollAreaAuth = new Gtk.ScrolledWindow (null, null);
        legalEntLabel = new Gtk.Label(_("Legal Info"));
        legalBox = new Gtk.TextView();
        scrollAreaLegal = new Gtk.ScrolledWindow (null, null);
        layoutSettings = new Gtk.Grid ();
        typeLabel = new Gtk.Label(_("Comment type"));
        typeCombo = new Gtk.ComboBoxText();
        versionCheck = new Gtk.CheckButton.with_label (_("Show Version"));
        authorsCheck = new Gtk.CheckButton.with_label (_("Show Authors"));
        legalCheck = new Gtk.CheckButton.with_label (_("Show Legal Info"));
        settingsBtn = new Gtk.MenuButton();
        settingsPopover = new Gtk.Popover(settingsBtn);
        scrollArea = new Gtk.ScrolledWindow (null, null);
        copyArea = new Gtk.TextView ();
        legalTemplateLabel = new Gtk.Label(_("Load a legal template"));
        legalTemplateCombo = new Gtk.ComboBoxText();
        legalTemplateButton = new Gtk.Button.with_label (_("Use"));

        commentEntry.text = settings.main_text;

        this.title = _("Comment Generator");
        this.set_position (Gtk.WindowPosition.CENTER);
        this.set_default_size (900, 500);

        commentEntry.set_hexpand(true);

        header.show_close_button = true;
        header.custom_title = commentEntry;
        this.set_titlebar(header);

        copyBtn.tooltip_text = _("Copy comment");
        copyBtn.clicked.connect (() => {
            var display = this.get_display ();
            var clipboard = Gtk.Clipboard.get_for_display (display, Gdk.SELECTION_CLIPBOARD);
            clipboard.set_text (copyArea.buffer.text, -1);
        });

        settingsEntries.row_spacing = 10;
        settingsEntries.column_spacing = 10;
        settingsEntries.margin = 10;
        
        versionEntLabel.xalign = 0;
        
        versionEntry.set_text(settings.version);
        versionEntry.set_hexpand(true);
        versionEntry.changed.connect(() => {
            settings.version = versionEntry.get_text();
            this.updateMainArea();
        });
        settingsEntries.attach (versionEntLabel, 0, 0, 2, 1);
        settingsEntries.attach (versionEntry, 0, 1, 2, 1);
        
        authorsEntLabel.xalign = 0;
        authorsBox.buffer.text = settings.authors;
        
        scrollAreaAuth.add(authorsBox);
        scrollAreaAuth.set_hexpand(true);
        scrollAreaAuth.set_vexpand(true);
        authorsBox.buffer.changed.connect(() => {
            settings.authors = authorsBox.buffer.text;
            this.updateMainArea();
        });
        settingsEntries.attach (authorsEntLabel, 0, 2, 2, 1);
        settingsEntries.attach (scrollAreaAuth, 0, 3, 2, 1);
        
        legalEntLabel.xalign = 0;
        
        legalBox.buffer.text = settings.legal;
        scrollAreaLegal.add(legalBox);
        scrollAreaLegal.set_hexpand(true);
        scrollAreaLegal.set_vexpand(true);
        legalBox.buffer.changed.connect(() => {
            settings.legal = legalBox.buffer.text;
            this.updateMainArea();
        });
        settingsEntries.attach (legalEntLabel, 0, 4, 2, 1);
        settingsEntries.attach (scrollAreaLegal, 0, 5, 2, 1);

        legalTemplateLabel.xalign = 0;
        legalTemplateCombo.append_text(_("GPL v2"));
        legalTemplateCombo.append_text(_("GPL v3"));
        legalTemplateCombo.append_text(_("Apache v2"));
        legalTemplateCombo.append_text(_("MIT"));
        legalTemplateCombo.append_text(_("BSD 3-Clause"));
        legalTemplateCombo.append_text(_("BSD 2-Clause"));
        legalTemplateCombo.active = 0;
        legalTemplateButton.clicked.connect(() => {
            switch (legalTemplateCombo.active) {
                case 0:
                    legalBox.buffer.text = LEGAL_GPL2;
                    break;
                case 1:
                    legalBox.buffer.text = LEGAL_GPL3;
                    break;
                case 2:
                    legalBox.buffer.text = LEGAL_APACHE2;
                    break;
                case 3:
                    legalBox.buffer.text = LEGAL_MIT;
                    break;
                case 4:
                    legalBox.buffer.text = LEGAL_BSD3;
                    break;
                case 5:
                    legalBox.buffer.text = LEGAL_BSD2;
                    break;
            }
        });
        settingsEntries.attach (legalTemplateLabel, 0, 6, 2, 1);
        settingsEntries.attach (legalTemplateCombo, 0, 7, 1, 1);
        settingsEntries.attach (legalTemplateButton, 1, 7, 1, 1);

        layoutSettings.row_spacing = 10;
        layoutSettings.column_spacing = 10;
        layoutSettings.margin = 10;

        typeCombo.append_text("// " + _("C++ style"));
        typeCombo.append_text("/* " + _("C style") + " */");
        typeCombo.append_text("# " + _("Bash style"));
        typeCombo.append_text("<!-- " + _("HTML style") + " -->");
        typeCombo.append_text("; " + _("Assembly style"));
        typeCombo.append_text("-- " + _("MySQL style"));
        typeCombo.append_text("--[[ " + _("Lua block style") + " --]]");
        typeCombo.append_text("' " + _("Visual Basic style"));
        typeCombo.append_text(_("Plain text"));
        typeCombo.changed.connect(() => {
            switch (typeCombo.active) {
                case 0:
                    settings.comment_type = Settings.CommentStyle.CPP;
                    break;
                case 1:
                    settings.comment_type = Settings.CommentStyle.CC;
                    break;
                case 2:
                    settings.comment_type = Settings.CommentStyle.BASH;
                    break;
                case 3:
                    settings.comment_type = Settings.CommentStyle.HTML;
                    break;
                case 4:
                    settings.comment_type = Settings.CommentStyle.ASSEMBLY;
                    break;
                case 5:
                    settings.comment_type = Settings.CommentStyle.MYSQL;
                    break;
                case 6:
                    settings.comment_type = Settings.CommentStyle.LUA;
                    break;
                case 7:
                    settings.comment_type = Settings.CommentStyle.VISUALBASIC;
                    break;
                case 8:
                    settings.comment_type = Settings.CommentStyle.PLAIN;
                    break;
            }
            this.updateMainArea();
        });
        typeCombo.active = settings.comment_type;
        layoutSettings.attach (typeLabel, 0, 0, 1, 1);
        layoutSettings.attach (typeCombo, 1, 0, 1, 1);

        versionCheck.toggled.connect (() => {
            settings.show_version = versionCheck.active;
            this.updateMainArea();
            if(settings.show_version || settings.show_authors || settings.show_legal){
                settingsEntries.visible = true;
            }else{
                settingsEntries.visible = false;
            }
            versionEntLabel.visible = settings.show_version;
            versionEntry.visible = settings.show_version;
        });
        if(settings.show_version == true){
            versionCheck.set_active(true);
        }else{
            versionCheck.set_active(false);
        }
        layoutSettings.attach (versionCheck, 0, 1, 2, 1);

        authorsCheck.toggled.connect (() => {
            settings.show_authors = authorsCheck.active;
            this.updateMainArea();
            if(settings.show_version || settings.show_authors || settings.show_legal){
                settingsEntries.visible = true;
            }else{
                settingsEntries.visible = false;
            }
            authorsEntLabel.visible = settings.show_authors;
            authorsBox.visible = settings.show_authors;
        });
        if(settings.show_authors == true){
            authorsCheck.set_active(true);
        }else{
            authorsCheck.set_active(false);
        }
        layoutSettings.attach (authorsCheck, 0, 2, 2, 1);

        legalCheck.toggled.connect (() => {
            settings.show_legal = legalCheck.active;
            this.updateMainArea();
            if(settings.show_version || settings.show_authors || settings.show_legal){
                settingsEntries.visible = true;
            }else{
                settingsEntries.visible = false;
            }
            legalEntLabel.visible = settings.show_legal;
            legalBox.visible = settings.show_legal;
        });
        if(settings.show_legal == true){
            legalCheck.set_active(true);
        }else{
            legalCheck.set_active(false);
        }
        layoutSettings.attach (legalCheck, 0, 3, 2, 1);

        settingsPopover.add(layoutSettings);
        settingsBtn.image = new Gtk.Image.from_icon_name ("open-menu", Gtk.IconSize.LARGE_TOOLBAR);
        settingsBtn.popover = settingsPopover;
        layoutSettings.show_all();

        header.pack_end(settingsBtn);
        header.pack_end (copyBtn);

        copyArea.set_editable(false);
        copyArea.monospace = true;
        scrollArea.add (copyArea);
        scrollArea.set_hexpand(true);
        scrollArea.set_vexpand(true);

        mainPane.add1(scrollArea);
        mainPane.add2(settingsEntries);
        mainPane.position = 520;

        commentEntry.changed.connect (() => {
            this.updateMainArea();
        });

        this.add(mainPane);
        this.show_all ();

        if(settings.show_version || settings.show_authors || settings.show_legal){
            settingsEntries.visible = true;
        }else{
            settingsEntries.visible = false;
        }

        versionEntLabel.visible = settings.show_version;
        versionEntry.visible = settings.show_version;
        authorsEntLabel.visible = settings.show_authors;
        authorsBox.visible = settings.show_authors;
        legalEntLabel.visible = settings.show_legal;
        legalBox.visible = settings.show_legal;
    }

    private void updateMainArea(){
        ShowFlags flags = ShowFlags.SHOWDEFAULT;
        
        if(settings.show_version){
            flags = flags | ShowFlags.SHOWVERSION;
        }

        if(settings.show_authors){
            flags = flags | ShowFlags.SHOWAUTHORS;
        }

        if(settings.show_legal){
            flags = flags | ShowFlags.SHOWLEGAL;
        }

        settings.main_text = commentEntry.get_text();

        var gen = new Generate(commentEntry.get_text(), settings.version, settings.authors, settings.legal, settings.comment_type, flags);
        copyArea.buffer.text = gen.output;
    }
}