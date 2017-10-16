# rbconfig-update
This gem updates `RbConfig::CONFIG` information.




## What will be chaned

### To be added

* `LIBRUBY_SONAME`  soname of ruby shared library
* `SOEXT`           shared library file suffix

### To be updated

* `LIBURYB_SO`      to use `$(SOEXT)`
* `LIBRUBY_ALIASES` to use `$(LIBRUBY_SONAME)`
