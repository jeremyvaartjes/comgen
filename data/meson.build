icon_sizes = ['48', '64', '128']

foreach i : icon_sizes
    install_data(
        join_paths('icons', i, meson.project_name() + '.svg'),
        install_dir: join_paths(get_option('datadir'), 'icons', 'hicolor', i + 'x' + i, 'apps')
    )
    install_data(
        join_paths('icons', i, meson.project_name() + '.svg'),
        install_dir: join_paths(get_option('datadir'), 'icons', 'hicolor', i + 'x' + i + '@2', 'apps')
    )
endforeach

install_data(
    meson.project_name() + '.gschema.xml',
    install_dir: join_paths(get_option('prefix'), get_option('datadir'), 'glib-2.0', 'schemas')
)

i18n.merge_file(
    input: meson.project_name() + '.desktop.in',
    output: meson.project_name() + '.desktop',
    po_dir: join_paths(meson.source_root(), 'po', 'extra'),
    type: 'desktop',
    install: true,
    install_dir: join_paths(get_option('datadir'), 'applications')
)

i18n.merge_file(
    input: meson.project_name() + '.appdata.xml.in',
    output: meson.project_name() + '.appdata.xml',
    po_dir: join_paths(meson.source_root(), 'po', 'extra'),
    install: true,
    install_dir: join_paths(get_option('datadir'), 'metainfo')
)

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
