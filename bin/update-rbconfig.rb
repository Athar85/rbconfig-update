#!/usr/bin/ruby -p
BEGIN {
  if ARGV.empty?
    abort <<MSG
usage: #$0 path/to/rbconfig.rb

this script adds:
  LIBRUBY_SONAME:  soname of ruby shared library
  SOEXT:           shared library file suffix
and updates:
  LIBURYB_SO:      to use $(SOEXT)
  LIBRUBY_ALIASES: to use $(LIBRUBY_SONAME)
MSG
  end
  if ARGV[0] == '--standard'
    require 'rbconfig'
    ARGV[0] = $".find {|n| File.basename(n) == 'rbconfig.rb'}
  end
  $-i = ".bak"
}
case
when $_.sub!(/^(\s*CONFIG\["LIBRUBY_SO"\]\s*=\s*".*\.)((?!\d)\w+)/, '\1$(SOEXT)')
  soext = $2
when $_.sub!(/^((\s*CONFIG\["LIBRUBY_)ALIASES("\]\s*=\s*"))([^\s"]+)/, '\1$(LIBRUBY_SONAME)')
  $_ += "#{$2}SONAME#{$3}#{$4}\"\n"
when soext && /^(\s*CONFIG)\["DLEXT"\](\s*=\s*)/ =~ $_
  $_ += "#{$1}[\"SOEXT\"]#{$2}#{soext.dump}\n"
end
