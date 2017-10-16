# rbconfig-update
This gem updates `RbConfig::CONFIG` information.

## How to use

### Update `rbconfig.rb` file itself

Once you update the file, you don't have to keep this gem installed.

* Run `ruby bin/update-rbconfig.rb --standard`

  You may need to prefix by `sudo`, to modify the system-wide
  `rbconfig.rb` file.

* Or run `ruby bin/update-rbconfig.rb /path/to/rbconfig.rb`

  You can modify arbitrary `rbconfig.rb` script files other than the
  standard path.

### Update the content on the fly

If you don't want to, or can't, modify the standard file, load
`rbconfig/update` by:

* Add `require 'rbconfig/update'` to your source.
* Or add `-rrbconfig/update` to `RUBYOPT` environment variable.

## What will be chaned

### To be added

* `LIBRUBY_SONAME`  soname of ruby shared library
* `SOEXT`           shared library file suffix

### To be updated

* `LIBURYB_SO`      to use `$(SOEXT)`
* `LIBRUBY_ALIASES` to use `$(LIBRUBY_SONAME)`
