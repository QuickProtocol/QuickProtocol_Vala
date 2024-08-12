project('quickprotocol-core', ['c','vala'])
sources = [
  'MyLib.vala',
]

dependencys = [
  dependency('glib-2.0'),
  dependency('gobject-2.0'),
]
includeDirs = include_directories('./')
lib = shared_library(
  'quickprotocol-core',
  sources,
  dependencies: dependencys,
  vala_args: '--target-glib=2.58',
  install : true)

deps = declare_dependency(
  dependencies: dependencys,
  include_directories : includeDirs,
  link_with : lib)