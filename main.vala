//                                                                              
//   _____                         _      _____                     _           
//  |     |___ _____ _____ ___ ___| |_   |   __|___ ___ ___ ___ ___| |_ ___ ___ 
//  |   --| . |     |     | -_|   |  _|  |  |  | -_|   | -_|  _| .'|  _| . |  _|
//  |_____|___|_|_|_|_|_|_|___|_|_|_|    |_____|___|_|_|___|_| |__,|_| |___|_|  
//                                                                              
//                                                                 Version 0.2.6
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
int type;
string version;
bool showVersion;
string authors;
bool showAuthors;
string legal;
bool showLegal;

Gtk.Entry commentEntry;
Gtk.TextView copyArea;

void updateMainArea(){
	string headingText = Chars.modText(commentEntry.get_text(), type);
	int lineWidth = headingText.length / 6;
	if(type == 3){
		headingText = "<!--\n" + headingText;
	}
	string versionText = "Version " + version;
	if(versionText.length < (lineWidth - 4) && (type == 0 || type == 1)){
		int versionTextLength = versionText.length;
		for(int i = 0; i < lineWidth - 4 - versionTextLength; i++){
			versionText = " " + versionText;
		}
	}else if(versionText.length < (lineWidth - 3) && (type == 2 || type == 4)){
		int versionTextLength = versionText.length;
		for(int i = 0; i < lineWidth - 3 - versionTextLength; i++){
			versionText = " " + versionText;
		}
	}else if(versionText.length < (lineWidth - 2) && type == 3){
		int versionTextLength = versionText.length;
		for(int i = 0; i < lineWidth - 2 - versionTextLength; i++){
			versionText = " " + versionText;
		}
	}
	if(type == 0){
		versionText = "//  " + versionText;
	}else if(type == 1){
		versionText = " *  " + versionText;
	}else if(type == 2){
		versionText = "#  " + versionText;
	}else if(type == 3){
		versionText = "  " + versionText;
	}else if(type == 4){
		versionText = ";  " + versionText;
	}

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
		if(line.length < (lineWidth - 4) && (type == 0 || type == 1)){
			int lineLength = line.length;
			for(int i2 = 0; i2 < lineWidth - 4 - lineLength; i2++){
				line = " " + line;
			}
		}else if(line.length < (lineWidth - 3) && (type == 2 || type == 4)){
			int lineLength = line.length;
			for(int i2 = 0; i2 < lineWidth - 3 - lineLength; i2++){
				line = " " + line;
			}
		}else if(line.length < (lineWidth - 2) && type == 3){
			int lineLength = line.length;
			for(int i2 = 0; i2 < lineWidth - 2 - lineLength; i2++){
				line = " " + line;
			}
		}
		if(type == 0){
			newAuthorsText = newAuthorsText + "//  " + line;
		}else if(type == 1){
			newAuthorsText = newAuthorsText + " *  " + line;
		}else if(type == 2){
			newAuthorsText = newAuthorsText + "#  " + line;
		}else if(type == 3){
			newAuthorsText = newAuthorsText + "  " + line;
		}else if(type == 4){
			newAuthorsText = newAuthorsText + ";  " + line;
		}
		pos = authorsText.index_of_char('\n', pos) + 1;
	}

	string legalText = legal;
	pos = 0;
	lineCounter = 1;
	while(pos < legalText.last_index_of_char('\n')){
		pos = legalText.index_of_char('\n', pos + 1);
		lineCounter++;
	}
	string newLegalText = "";
	if(type == 0){
		newLegalText = "// ";
	}else if(type == 1){
		newLegalText = " * ";
	}else if(type == 2){
		newLegalText = "# ";
	}else if(type == 3){
		newLegalText = " ";
	}else if(type == 4){
		newLegalText = "; ";
	}
	if(type == 0 || type == 1){
		for(int i = 0; i < lineWidth - 3; i++){
			newLegalText = newLegalText + "=";
		}
	}else if(type == 2 || type == 4){
		for(int i = 0; i < lineWidth - 2; i++){
			newLegalText = newLegalText + "=";
		}
	}else if(type == 3){
		for(int i = 0; i < lineWidth - 1; i++){
			newLegalText = newLegalText + "=";
		}
	}
	if(type == 0){
		newLegalText = newLegalText + "\n//\n";
	}else if(type == 1){
		newLegalText = newLegalText + "\n *\n";
	}else if(type == 2){
		newLegalText = newLegalText + "\n#\n";
	}else if(type == 3){
		newLegalText = newLegalText + "\n  \n";
	}else if(type == 4){
		newLegalText = newLegalText + "\n;\n";
	}
	pos = 0;
	for(int i = 0; i < lineCounter; i++){
		if(i != 0){
			newLegalText = newLegalText + "\n";
		}

		if(type == 0){
			newLegalText = newLegalText + "//  " + legalText.substring(pos, legalText.index_of_char('\n', pos) - pos);
		}else if(type == 1){
			newLegalText = newLegalText + " *  " + legalText.substring(pos, legalText.index_of_char('\n', pos) - pos);
		}else if(type == 2){
			newLegalText = newLegalText + "#  " + legalText.substring(pos, legalText.index_of_char('\n', pos) - pos);
		}else if(type == 3){
			newLegalText = newLegalText + "  " + legalText.substring(pos, legalText.index_of_char('\n', pos) - pos);
		}else if(type == 4){
			newLegalText = newLegalText + ";  " + legalText.substring(pos, legalText.index_of_char('\n', pos) - pos);
		}
		pos = legalText.index_of_char('\n', pos) + 1;
	}
	if(type == 0){
		newLegalText = newLegalText + "\n//\n// ";
	}else if(type == 1){
		newLegalText = newLegalText + "\n *\n * ";
	}else if(type == 2){
		newLegalText = newLegalText + "\n#\n# ";
	}else if(type == 3){
		newLegalText = newLegalText + "\n  \n ";
	}else if(type == 4){
		newLegalText = newLegalText + "\n;\n; ";
	}
	if(type == 0 || type == 1){
		for(int i = 0; i < lineWidth - 3; i++){
			newLegalText = newLegalText + "=";
		}
	}else if(type == 2 || type == 4){
		for(int i = 0; i < lineWidth - 2; i++){
			newLegalText = newLegalText + "=";
		}
	}else if(type == 3){
		for(int i = 0; i < lineWidth - 1; i++){
			newLegalText = newLegalText + "=";
		}
	}
	
	string footer = "";
	if(showVersion == true){
		footer = footer + "\n" + versionText + "\n";
		if(type == 0){
			footer = footer + "//";
		}else if(type == 1){
			footer = footer + " *";
		}else if(type == 2){
			footer = footer + "#";
		}else if(type == 3){
			footer = footer + "  ";
		}else if(type == 4){
			footer = footer + ";";
		}
	}
	if(showAuthors == true){
		footer = footer + "\n" + newAuthorsText + "\n";
		if(type == 0){
			footer = footer + "//";
		}else if(type == 1){
			footer = footer + " *";
		}else if(type == 2){
			footer = footer + "#";
		}else if(type == 3){
			footer = footer + "  ";
		}else if(type == 4){
			footer = footer + ";";
		}
	}
	if(showLegal == true){
		footer = footer + "\n" + newLegalText + "\n";
		if(type == 0){
			footer = footer + "//";
		}else if(type == 1){
			footer = footer + " *";
		}else if(type == 2){
			footer = footer + "#";
		}else if(type == 3){
			footer = footer + "  ";
		}else if(type == 4){
			footer = footer + ";";
		}
	}
	if(type == 1){
		footer = footer + "\n */";
	}else if(type == 3){
		footer = footer + "\n-->";
	}
	copyArea.buffer.text = headingText + footer;
}

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

	var typeLabel = new Gtk.Label("Comment type ");
	var typeCombo = new Gtk.ComboBoxText();
	typeCombo.append_text("// C++ style");
	typeCombo.append_text("/* C style */");
	typeCombo.append_text("# Bash style");
	typeCombo.append_text("<!-- HTML style -->");
	typeCombo.append_text("; Assembly style");
	typeCombo.active = type;
	layoutSettings.attach (typeLabel, 0, 0, 1, 1);
	layoutSettings.attach (typeCombo, 1, 0, 1, 1);

	var versionEntry = new Gtk.Entry();
	var versionCheck = new Gtk.CheckButton.with_label ("Show Version Text");
	versionCheck.toggled.connect (() => {
		if(versionCheck.active){
			versionEntry.set_sensitive(true);
		}else{
			versionEntry.set_sensitive(false);
		}
	});
	layoutSettings.attach (versionCheck, 0, 1, 2, 1);

	var versionLabel = new Gtk.Label("Version");
	versionEntry.set_text(version);
	versionEntry.set_hexpand(true);
	layoutSettings.attach (versionLabel, 0, 2, 1, 1);
	layoutSettings.attach (versionEntry, 1, 2, 1, 1);
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
	layoutSettings.attach (authorsCheck, 0, 3, 2, 1);

	var authorsLabel = new Gtk.Label("Authors");
	authorsBox.buffer.text = authors;
	var scrollAreaAuth = new Gtk.ScrolledWindow (null, null);
	scrollAreaAuth.add(authorsBox);
	scrollAreaAuth.set_hexpand(true);
	scrollAreaAuth.set_vexpand(true);
	layoutSettings.attach (authorsLabel, 0, 4, 2, 1);
	layoutSettings.attach (scrollAreaAuth, 0, 5, 2, 1);
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
	layoutSettings.attach (legalCheck, 0, 6, 2, 1);

	var legalLabel = new Gtk.Label("Legal Info");
	legalLabel.set_hexpand(true);
	legalLabel.set_justify(Gtk.Justification.LEFT);
	legalBox.buffer.text = legal;
	var scrollAreaLegal = new Gtk.ScrolledWindow (null, null);
	scrollAreaLegal.add(legalBox);
	scrollAreaLegal.set_hexpand(true);
	scrollAreaLegal.set_vexpand(true);
	layoutSettings.attach (legalLabel, 0, 7, 2, 1);
	layoutSettings.attach (scrollAreaLegal, 0, 8, 2, 1);
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
		type = typeCombo.active;
		version = versionEntry.get_text();
		authors = authorsBox.buffer.text;
		legal = legalBox.buffer.text;
		windowSettings.destroy();
		updateMainArea();
	});
	layoutSettings.attach(saveButton, 0, 9, 2, 1);

	windowSettings.add(layoutSettings);
	windowSettings.show_all();
}

int main (string[] args) {
	type = 0;
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
	window.set_default_size (520, 340);
	window.destroy.connect (Gtk.main_quit);

	var layout = new Gtk.Grid ();

	commentEntry = new Gtk.Entry();
	commentEntry.set_hexpand(true);
	layout.attach (commentEntry, 0, 0, 2, 1);

	var scrollArea = new Gtk.ScrolledWindow (null, null);
	var mono_font = Pango.FontDescription.from_string("monospace");
	copyArea = new Gtk.TextView ();
	copyArea.set_editable(false);
	copyArea.override_font(mono_font);
	scrollArea.add (copyArea);
	scrollArea.set_hexpand(true);
	scrollArea.set_vexpand(true);
	layout.attach (scrollArea, 0, 1, 2, 1);

	commentEntry.changed.connect (() => {
		updateMainArea();
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