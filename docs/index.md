---
layout: default
---

# Unofficial EDK2 stable build

This repository provides unofficial
[tianocore/edk2](https://github.com/tianocore/edk2/releases)
stable builds.
It currently builds
[OVMF](https://github.com/tianocore/tianocore.github.io/wiki/OVMF)
for x64 and IA-32,
and
[UEFI Shell](https://github.com/tianocore/tianocore.github.io/wiki/Shell)
for x64 and IA-32.

## Pre-built binaries

### UEFI images for QEMU

|   GCC5  |                                                                              DEBUG                                                                              |                                                                                   RELEASE                                                                                   |
|:-------:|:---------------------------------------------------------------------------------------------------------------------------------------------------------------:|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
|   X64   |    [DEBUGX64\_OVMF.fd](bin/DEBUGX64_OVMF.fd)    |    [RELEASEX64\_OVMF.fd](bin/RELEASEX64_OVMF.fd)    |
|   IA32  | [DEBUGIa32\_OVMF.fd](bin/DEBUGIa32_OVMF.fd) | [RELEASEIa32\_OVMF.fd](bin/RELEASEIa32_OVMF.fd) |

### UEFI Shell

|     GCC5    |                             DEBUG                             |                              RELEASE                              |
|:-----------:|:-------------------------------------------------------------:|:-----------------------------------------------------------------:|
|     X64     |         [DEBUGX64\_Shell.efi](bin/DEBUGX64_Shell.efi)         |         [RELEASEX64\_Shell.efi](bin/RELEASEX64_Shell.efi)         |
|     IA32    |        [DEBUGIA32\_Shell.efi](bin/DEBUGIA32_Shell.efi)        |        [RELEASEIA32\_Shell.efi](bin/RELEASEIA32_Shell.efi)        |

