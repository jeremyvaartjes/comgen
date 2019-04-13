# project name and programming language
project('com.github.jeremyvaartjes.comgen', 'vala', 'c')

i18n = import('i18n')
add_global_arguments('-DGETTEXT_PACKAGE="@0@"'.format (meson.project_name()), language:'c')

# Create a new executable, list the files we want to compile, list the dependencies we need, and install
executable(
    meson.project_name(),
    'src/Application.vala',
    'src/MainWindow.vala',
    'src/Settings.vala',
    'src/Generate.vala',
    dependencies: [
        dependency('gtk+-3.0'),
        dependency('granite')
    ],
    install: true
)

subdir('data')
subdir('po')

figlet_files = [
    'contributed/rectangles.flf',
    'contributed/isometric1.flf',
    'contributed/isometric2.flf',
    'contributed/isometric3.flf',
    'contributed/isometric4.flf',
    'contributed/larry3d.flf',
    'contributed/ogre.flf',
    'contributed/graffiti.flf',
    'contributed/drpepper.flf',
    'contributed/double.flf',
    'contributed/doom.flf',
    'contributed/rounded.flf',
    'contributed/speed.flf',
]
foreach f : figlet_files
    install_data(
        join_paths('figlet-fonts', f),
        install_dir: join_paths(get_option('datadir'), 'figlet')
    )
endforeach

meson.add_install_script('meson/post_install.py')
