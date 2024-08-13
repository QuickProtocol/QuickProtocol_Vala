project('quickprotocol-tcp', ['c','vala'])
sources = [

]

dependencys = [
  dependency('glib-2.0'),
  dependency('gobject-2.0'),
  subproject('quickprotocol-core').get_variable('deps'),
]

includeDirs = include_directories('./')
lib = shared_library(
  'quickprotocol-tcp',
  sources,
  dependencies: dependencys,
  vala_args: '--target-glib=2.58',
  install : true)

deps = declare_dependency(
  dependencies: dependencys,
  include_directories : includeDirs,
  link_with : lib)