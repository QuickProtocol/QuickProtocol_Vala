project('quickprotocol', ['c', 'vala'])

executable('quickprotocol',
  'main.vala',
  dependencies : [
    subproject('quickprotocol-core').get_variable('deps'),
    subproject('quickprotocol-tcp').get_variable('deps'),
  ],
  install : true)

