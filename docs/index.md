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
|   X64   |    [DEBUGX64\_OVMF.fd](https://github.com/wolf606/latest-ovmf/releases/download/edk2-stable202405/EDK2-OVMF-X64-DEBUG.zip)    |    [RELEASEX64\_OVMF.fd](https://github.com/wolf606/latest-ovmf/releases/download/edk2-stable202405/EDK2-OVMF-X64-RELEASE.zip)    |
|   IA32  | [DEBUGIa32\_OVMF.fd](https://github.com/wolf606/latest-ovmf/releases/download/edk2-stable202405/EDK2-OVMF-IA32-DEBUG.zip) | [RELEASEIa32\_OVMF.fd](https://github.com/wolf606/latest-ovmf/releases/download/edk2-stable202405/EDK2-OVMF-IA32-RELEASE.zip) |

### UEFI Shell

|     GCC5    |                             DEBUG                             |                              RELEASE                              |
|:-----------:|:-------------------------------------------------------------:|:-----------------------------------------------------------------:|
|     X64     |         [DEBUGX64\_Shell.efi](https://github.com/wolf606/latest-ovmf/releases/download/edk2-stable202405/EDK2-Shell-X64-DEBUG.zip)         |         [RELEASEX64\_Shell.efi](https://github.com/wolf606/latest-ovmf/releases/download/edk2-stable202405/EDK2-Shell-X64-RELEASE.zip)         |
|     IA32    |        [DEBUGIA32\_Shell.efi](https://github.com/wolf606/latest-ovmf/releases/download/edk2-stable202405/EDK2-Shell-IA32-DEBUG.zip)        |        [RELEASEIA32\_Shell.efi](https://github.com/wolf606/latest-ovmf/releases/download/edk2-stable202405/EDK2-Shell-IA32-RELEASE.zip)        |

### UEFI images for QEMU from the Acidanthera UEFI Development Kit

|   GCC5  |                                                                              DEBUG                                                                              |                                                                                   RELEASE                                                                                   |
|:-------:|:---------------------------------------------------------------------------------------------------------------------------------------------------------------:|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
|   X64   |    [DEBUGX64\_OVMF.fd](https://github.com/wolf606/latest-ovmf/releases/download/AUDK-19fa914-master/AUDK-OVMF-X64-DEBUG.zip)    |    [RELEASEX64\_OVMF.fd](https://github.com/wolf606/latest-ovmf/releases/download/AUDK-19fa914-master/AUDK-OVMF-X64-RELEASE.zip)    |
|   IA32  | [DEBUGIa32\_OVMF.fd](https://github.com/wolf606/latest-ovmf/releases/download/AUDK-19fa914-master/AUDK-OVMF-IA32-DEBUG.zip) | [RELEASEIa32\_OVMF.fd](https://github.com/wolf606/latest-ovmf/releases/download/AUDK-19fa914-master/AUDK-OVMF-IA32-RELEASE.zip) |