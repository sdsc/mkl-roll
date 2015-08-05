# SDSC "mkl" roll

The mkl-roll is deprecated and has been replaced by the [intel-roll](https://github.com/sdsc/intel-roll), built with ROLLNAME=mkl.

## Overview

This roll bundles the installation of Intel(r) Math Kernel Libraries which are
part of the Intel® Composer XE Suite.

For more information about the Intel MKL please visit the
<a>official web page</a>

## Requirements

To build/install this roll you must have root access to a Rocks development
machine (e.g., a frontend or development appliance).

In addition, non-SDSC users must also place a `tar.gz` bundle of the Intel(r) installation source provided by Intel(r) in the `src/intel-compilers` directory. That file should be named to match the pattern listed in `src/intel/version.mk` and the `version.mk` file should be edited appropriately.


## Dependencies

None.


## Building

To build the mkl-roll, execute these instructions on a Rocks development
machine (e.g., a frontend or development appliance):

```shell
% make 2>&1 | tee build.log
% grep "RPM build error" build.log
```

If nothing is returned from the grep command then the roll should have been
created as... `mkl-*.iso`. If you built the roll on a Rocks frontend then
proceed to the installation step. If you built the roll on a Rocks development
appliance you need to copy the roll to your Rocks frontend before continuing
with installation.


## Installation

To install, execute these instructions on a Rocks frontend:

```shell
% rocks add roll *.iso
% rocks enable roll mkl
% cd /export/rocks/install
% rocks create distro
% rocks run roll mkl | bash
```

In addition to the software itself, the roll installs mkl environment
module files in:

```shell
/opt/modulefiles/applications/mkl
```


## Testing

The mkl-roll includes a test script which can be run to verify proper
installation of the mkl-roll documentation, binaries and module files. To
run the test scripts execute the following command(s):

```shell
% /root/rolltests/mkl.t 
```
