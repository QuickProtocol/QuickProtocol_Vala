project('quickprotocol-core', ['c','vala'])
sources = [
  'IQpSerializer.vala',
  'IQpCommandRequest.vala',
  'QpConsts.vala',
  'QpCommandInfo.vala',
  'QpNoticeInfo.vala',
  'QpPackageType.vala',
  'QpInstruction.vala',
  'AbstractQpSerializer.vala',
  'Commands/Connect/Response.vala',
  'Commands/Connect/Request.vala',
  'Commands/Authenticate/Response.vala',
  'Commands/Authenticate/Request.vala',
  'Base.vala',
]

dependencys = [
  dependency('glib-2.0'),
  dependency('gobject-2.0'),
  dependency('json-glib-1.0'),
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