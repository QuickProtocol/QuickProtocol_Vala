project('quickprotocol', ['c', 'vala'])

libquickprotocol_core_proj = subproject('quickprotocol-core')
libquickprotocol_core_dep = libquickprotocol_core_proj.get_variable('libquickprotocol_core_dep')

executable('quickprotocol',
  'main.vala',
  dependencies : libquickprotocol_core_dep,
  install : true)

