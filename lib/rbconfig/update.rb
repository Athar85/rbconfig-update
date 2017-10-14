require 'rbconfig'

module RbConfig
  conf = CONFIG
  mkconf = MAKEFILE_CONFIG
  so = ["LIBRUBY_SO"]
  if so
    name = "SOEXT"
    soext = conf[name] ||= so[/\.((?!\d)\w+)(?=(?:\.\d+)*)\z/, 1]
    mkconf[name] ||= soext
  end
  name = "LIBRUBY_SONAME"
  first = /\S+/
  conf[name] ||= conf[name][first]
  mkconf[name] ||= mkconf[name][first]
end
