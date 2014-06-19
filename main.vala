//                                                                              
//   _____                         _      _____                     _           
//  |     |___ _____ _____ ___ ___| |_   |   __|___ ___ ___ ___ ___| |_ ___ ___ 
//  |   --| . |     |     | -_|   |  _|  |  |  | -_|   | -_|  _| .'|  _| . |  _|
//  |_____|___|_|_|_|_|_|_|___|_|_|_|    |_____|___|_|_|___|_| |__,|_| |___|_|  
//                                                                              
//                                                                 Version 0.1.0
//
//                                       Jeremy Vaartjes <me@jeremyvaartjes.com>
//
// =============================================================================
//
//  Comment Generator: generate styled comments for your code.
//  Copyright (C) 2014 Jeremy Vaartjes <me@jeremyvaartjes.com>
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
//  along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
// =============================================================================
//

Gtk.Window window;
string version;
bool showVersion;
string authors;
bool showAuthors;
string legal;
bool showLegal;

void settingsPanel(){
	var windowSettings = new Gtk.Window ();
	windowSettings.title = "Settings";
	windowSettings.set_border_width (12);
	windowSettings.set_position (Gtk.WindowPosition.CENTER);
	windowSettings.set_modal(true);
	windowSettings.set_transient_for (window);
	windowSettings.set_default_size (640, 480);

	var layoutSettings = new Gtk.Grid ();
	layoutSettings.set_row_spacing(8);

	var versionEntry = new Gtk.Entry();
	var versionCheck = new Gtk.CheckButton.with_label ("Show Version Text");
	versionCheck.toggled.connect (() => {
		if(versionCheck.active){
			versionEntry.set_sensitive(true);
		}else{
			versionEntry.set_sensitive(false);
		}
	});
	layoutSettings.attach (versionCheck, 0, 0, 2, 1);

	var versionLabel = new Gtk.Label("Version ");
	versionEntry.set_text(version);
	versionEntry.set_hexpand(true);
	layoutSettings.attach (versionLabel, 0, 1, 1, 1);
	layoutSettings.attach (versionEntry, 1, 1, 1, 1);
	versionEntry.set_sensitive(showVersion);
	if(showVersion == true){
		versionCheck.set_active(true);
	}else{
		versionCheck.set_active(false);
	}

	var authorsBox = new Gtk.TextView();
	var authorsCheck = new Gtk.CheckButton.with_label ("Show Authors");
	authorsCheck.toggled.connect (() => {
		if(authorsCheck.active){
			authorsBox.set_sensitive(true);
		}else{
			authorsBox.set_sensitive(false);
		}
	});
	layoutSettings.attach (authorsCheck, 0, 2, 2, 1);

	var authorsLabel = new Gtk.Label("Authors");
	authorsLabel.set_hexpand(true);
	authorsLabel.set_justify(Gtk.Justification.LEFT);
	authorsBox.buffer.text = authors;
	var scrollAreaAuth = new Gtk.ScrolledWindow (null, null);
	scrollAreaAuth.add(authorsBox);
	scrollAreaAuth.set_hexpand(true);
	scrollAreaAuth.set_vexpand(true);
	layoutSettings.attach (authorsLabel, 0, 3, 2, 1);
	layoutSettings.attach (scrollAreaAuth, 0, 4, 2, 1);
	authorsBox.set_sensitive(showAuthors);
	if(showAuthors == true){
		authorsCheck.set_active(true);
	}else{
		authorsCheck.set_active(false);
	}

	var legalBox = new Gtk.TextView();
	var legalCheck = new Gtk.CheckButton.with_label ("Show Legal Info");
	legalCheck.toggled.connect (() => {
		if(legalCheck.active){
			legalBox.set_sensitive(true);
		}else{
			legalBox.set_sensitive(false);
		}
	});
	layoutSettings.attach (legalCheck, 0, 5, 2, 1);

	var legalLabel = new Gtk.Label("Legal Info");
	legalLabel.set_hexpand(true);
	legalLabel.set_justify(Gtk.Justification.LEFT);
	legalBox.buffer.text = legal;
	var scrollAreaLegal = new Gtk.ScrolledWindow (null, null);
	scrollAreaLegal.add(legalBox);
	scrollAreaLegal.set_hexpand(true);
	scrollAreaLegal.set_vexpand(true);
	layoutSettings.attach (legalLabel, 0, 6, 2, 1);
	layoutSettings.attach (scrollAreaLegal, 0, 7, 2, 1);
	legalBox.set_sensitive(showLegal);
	if(showLegal == true){
		legalCheck.set_active(true);
	}else{
		legalCheck.set_active(false);
	}

	var saveButton = new Gtk.Button.with_label("Save");
	saveButton.clicked.connect (() => {
		if(versionCheck.active){
			showVersion = true;
		}else{
			showVersion = false;
		}
		if(authorsCheck.active){
			showAuthors = true;
		}else{
			showAuthors = false;
		}
		if(legalCheck.active){
			showLegal = true;
		}else{
			showLegal = false;
		}
		version = versionEntry.get_text();
		authors = authorsBox.buffer.text;
		legal = legalBox.buffer.text;
		windowSettings.destroy();
	});
	layoutSettings.attach(saveButton, 0, 8, 2, 1);

	windowSettings.add(layoutSettings);
	windowSettings.show_all();
}

int main (string[] args) {
	version = "0.0.1";
	showVersion = false;
	authors = "John Doe <john.doe@gmail.com>";
	showAuthors = false;
	legal = "Copyright YYYY John Doe";
	showLegal = false;

	Gtk.init (ref args);

	window = new Gtk.Window ();
	window.title = "Comment Generator";
	window.set_position (Gtk.WindowPosition.CENTER);
	window.set_default_size (480, 240);
	window.destroy.connect (Gtk.main_quit);

	var layout = new Gtk.Grid ();

	var commentEntry = new Gtk.Entry();
	commentEntry.set_hexpand(true);
	layout.attach (commentEntry, 0, 0, 2, 1);

	var scrollArea = new Gtk.ScrolledWindow (null, null);
	var mono_font = Pango.FontDescription.from_string("monospace");
	var copyArea = new Gtk.TextView ();
	copyArea.set_editable(false);
	copyArea.override_font(mono_font);
	scrollArea.add (copyArea);
	scrollArea.set_hexpand(true);
	scrollArea.set_vexpand(true);
	layout.attach (scrollArea, 0, 1, 2, 1);

	commentEntry.activate.connect (() => {
		string headingText = Chars.modText(commentEntry.get_text());
		int lineWidth = headingText.length / 6;
		string versionText = "Version " + version;
		if(versionText.length < (lineWidth - 4)){
			int versionTextLength = versionText.length;
			for(int i = 0; i < lineWidth - 4 - versionTextLength; i++){
				versionText = " " + versionText;
			}
		}
		versionText = "//  " + versionText;

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
			if(line.length < (lineWidth - 4)){
				int lineLength = line.length;
				for(int i2 = 0; i2 < lineWidth - 4 - lineLength; i2++){
					line = " " + line;
				}
			}
			newAuthorsText = newAuthorsText + "//  " + line;
			pos = authorsText.index_of_char('\n', pos) + 1;
		}

		string legalText = legal;
		pos = 0;
		lineCounter = 1;
		while(pos < legalText.last_index_of_char('\n')){
			pos = legalText.index_of_char('\n', pos + 1);
			lineCounter++;
		}
		string newLegalText = "// ";
		for(int i = 0; i < lineWidth - 3; i++){
			newLegalText = newLegalText + "=";
		}
		newLegalText = newLegalText + "\n//\n";
		pos = 0;
		for(int i = 0; i < lineCounter; i++){
			if(i != 0){
				newLegalText = newLegalText + "\n";
			}

			newLegalText = newLegalText + "//  " + legalText.substring(pos, legalText.index_of_char('\n', pos) - pos);
			pos = legalText.index_of_char('\n', pos) + 1;
		}
		newLegalText = newLegalText + "\n//\n// ";
		for(int i = 0; i < lineWidth - 3; i++){
			newLegalText = newLegalText + "=";
		}

		string footer = "";
		if(showVersion == true){
			footer = footer + "\n" + versionText + "\n//";
		}
		if(showAuthors == true){
			footer = footer + "\n" + newAuthorsText + "\n//";
		}
		if(showLegal == true){
			footer = footer + "\n" + newLegalText + "\n//";
		}
		copyArea.buffer.text = headingText + footer;
	});

	var copyBtn = new Gtk.Button.with_label ("Copy Comment");
	copyBtn.set_hexpand(true);
	copyBtn.clicked.connect (() => {
		var display = window.get_display ();
		var clipboard = Gtk.Clipboard.get_for_display (display, Gdk.SELECTION_CLIPBOARD);
		clipboard.set_text (copyArea.buffer.text, -1);
	});
	layout.attach (copyBtn, 0, 2, 1, 1);

	var settingsBtn = new Gtk.Button();
	settingsBtn.set_image (new Gtk.Image.from_icon_name("document-properties", Gtk.IconSize.LARGE_TOOLBAR));
	settingsBtn.clicked.connect (() => {
		// show settings panel
		settingsPanel();
	});
	layout.attach (settingsBtn, 1, 2, 1, 1);

	window.add(layout);
	window.show_all ();

	Gtk.main ();
	return 0;
}