[![Build Status](https://travis-ci.com/jeremyvaartjes/comgen.svg?branch=master)](https://travis-ci.com/jeremyvaartjes/comgen)

![Comgen Icon](https://raw.githubusercontent.com/jeremyvaartjes/comgen/master/comgen.png)
comgen
======

Comment Generator: generate styled comments for your code.

[![Get it on AppCenter](https://appcenter.elementary.io/badge.svg)](https://appcenter.elementary.io/com.github.jeremyvaartjes.comgen)﻿

![comgen Screenshot](https://raw.githubusercontent.com/jeremyvaartjes/comgen/master/data/screenshot-3.png)

How to use it
=============
For a plain heading, just type in some text and an ascii-art styled heading comment will be produced.

If you click on the settings button you can add things like version number, code authors and copyright information.
In settings you can now also change what comment style is used. The currently available comment styles are:
- `// C++`
- `/* C */`
- `# Bash`
- `<!-- HTML -->`
- `; Assembly`
- `-- MySQL`
- `--[[ Lua --]]`
- `' Visual Basic`

Developing and Building
=======================

If you want to hack on and build Comgen yourself, you'll need the following dependencies:

* libgtk-3-dev
* meson
* valac

Run `meson build` to configure the build environment and run `ninja test` to build and run automated tests

```
meson build --prefix=/usr
cd build
ninja test
```

To install, use `ninja install`, then execute with `com.github.jeremyvaartjes.comgen`

```
sudo ninja install
com.github.jeremyvaartjes.comgen
```

To run the program you will need the following dependencies:

* figlet
