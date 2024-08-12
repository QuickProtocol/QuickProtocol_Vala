project('quickprotocol-core', ['c','vala'])
quickprotocol_core_sources = [
  'MyLib.vala',
]
quickprotocol_core_dependencys = [
  dependency('glib-2.0'),
  dependency('gobject-2.0'),
]
inc = include_directories(meson.current_build_dir())
libquickprotocol_core = shared_library(
  'quickprotocol-core',
  quickprotocol_core_sources,
  dependencies: quickprotocol_core_dependencys,
  vala_args: '--target-glib=2.58',
  install : true)

libquickprotocol_core_dep = declare_dependency(
  dependencies: quickprotocol_core_dependencys,
  include_directories : inc,
  link_with : libquickprotocol_core)