# HMAT Examples

This repo contains a set of example HMAT and SRAT ACPI tables that can be used to simulate various hardware configurations.  Check out the [ACPI 6.2 specification](http://www.uefi.org/sites/default/files/resources/ACPI_6_2.pdf) for more details on the HMAT and SRAT tables.

## Linux Kernel Configuration

The examples provides in this repo are intended as a test vehicle for my patches adding HMAT support to the Linux kernel.  The most recent version of these patches can be found here:

https://lists.01.org/pipermail/linux-nvdimm/2017-December/013571.html

To be able to override the HMAT ACPI table you'll also need this patch from Dan Williams:

https://lists.01.org/pipermail/linux-nvdimm/2017-December/013545.html

You can find a git tree with both of these patches here:

https://git.kernel.org/pub/scm/linux/kernel/git/zwisler/linux.git/log/?h=hmat_v3_hmat_override

## System Configuration

The ACPI tables provided in this repo were created using a simulated QEMU environment.  They can be modified to work in any environment, but when getting started it is probably easiest to just duplicate my base config.

My base configuration is a QEMU guest that was run with the following options:
```
/usr/bin/qemu-system-x86_64
  <my VM file>
  -m 19G
  -smp 2,sockets=2,maxcpus=2
  -numa node,nodeid=0
  -numa node,nodeid=1
  -numa cpu,node-id=0,socket-id=0
  -numa cpu,node-id=1,socket-id=1
  -machine pc,accel=kvm
  -enable-kvm
  -serial stdio
  -display none
```
This creates a VM with two CPU NUMA nodes and with 19 GiB of memory.  By modifying the SRAT and HMAT tables we can divide this memory in various ways, assign it to new memory-only NUMA nodes and associate those nodes with either of the CPUs.  I chose 19 GiB of memory because it made the hex math work out well when dividing the memory into nodes.  Check out the individual SRAT and HMAT tables in the examples for details.

Once you have your guest VM running I'd recommend comparing the default SRAT your system creates to the default SRAT on my system:
```
# cp /sys/firmware/acpi/tables/SRAT .
# iasl SRAT

Intel ACPI Component Architecture
ASL+ Optimizing Compiler/Disassembler version 20170929
Copyright (c) 2000 - 2017 Intel Corporation

File appears to be binary: found 287 non-ASCII characters, disassembling
Binary file appears to be a valid ACPI table, disassembling
Input file SRAT, Length 0x140 (320) bytes
ACPI: SRAT 0x0000000000000000 000140 (v01 BOCHS  BXPCSRAT 00000002 INTL 20170929)
Acpi Data Table [SRAT] decoded
Formatted output:  SRAT.dsl - 7616 bytes
```
Then compare the resulting SRAT.dsl file with the [SRAT.dsl](/SRAT.dsl) provided in the root of this repo.  If the memory regions in your setup have different physical addresses then you will need to modify the SRAT and HMAT tables in the examples accordingly.

These examples were created using QEMU 2.10.1, though I would bet they will work with other versions as well.

## Creating the Sample Configurations

The sample HMAT and SRAT ACPI tables for each example configuration are provided in text format which can be compiled using iasl.  This procedure is documented here: https://www.kernel.org/doc/Documentation/acpi/initrd_table_override.txt

For the purposes of these examples you only need to override the SRAT and HMAT tables.  I did this with the following commands:

```
# cd config_1
# mkdir -p kernel/firmware/acpi
# iasl *dsl

Intel ACPI Component Architecture
ASL+ Optimizing Compiler/Disassembler version 20170929
Copyright (c) 2000 - 2017 Intel Corporation

Table Input:   HMAT.dsl - 158 lines, 8250 bytes, 138 fields
Binary Output: HMAT.aml - 424 bytes

Compilation complete. 0 Errors, 0 Warnings, 0 Remarks
Table Input:   SRAT.dsl - 128 lines, 6179 bytes, 101 fields
Binary Output: SRAT.aml - 320 bytes

Compilation complete. 0 Errors, 0 Warnings, 0 Remarks
# cp *aml kernel/firmware/acpi
# find kernel | cpio -c -o > /boot/custom_initramfs
3 blocks
# cat /boot/initramfs-$(uname -r).img >> /boot/custom_initramfs
```
Then configure grub2 to boot using the new /boot/custom_initramfs and reboot.

Each sample configuration contains its own README file which describes the layout of its NUMA nodes and how those nodes are related.

## Disclaimer

The sample configurations and performance numbers in this repo are made up an don't reflect any current or future products.  They are purely for testing purposes and were chosen because the hex math worked out nicely.
