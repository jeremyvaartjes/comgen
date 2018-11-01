# project name and programming language
project('com.github.jeremyvaartjes.comgen', 'vala', 'c')

i18n = import('i18n')
add_global_arguments('-DGETTEXT_PACKAGE="@0@"'.format (meson.project_name()), language:'c')

# Create a new executable, list the files we want to compile, list the dependencies we need, and install
executable(
    meson.project_name(),
    'src/main.vala',
    'src/Chars.vala',
    dependencies: [
        dependency('gtk+-3.0')
    ],
    install: true
)

subdir('data')
subdir('po')
