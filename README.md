# rbconfig-update
This gem updates `RbConfig::CONFIG` information.


## adds
* `LIBRUBY_SONAME`:  soname of ruby shared library
* `SOEXT`:           shared library file suffix

## updates

* `LIBURYB_SO`:      to use `$(SOEXT)`
* `LIBRUBY_ALIASES`: to use `$(LIBRUBY_SONAME)`
