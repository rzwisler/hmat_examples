/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20170929 (64-bit version)
 * Copyright (c) 2000 - 2017 Intel Corporation
 * 
 * Disassembly of SRAT, Tue Dec 19 13:57:28 2017
 *
 * ACPI Data Table [SRAT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "SRAT"    [System Resource Affinity Table]
[004h 0004   4]                 Table Length : 000000F0
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : 73
[00Ah 0010   6]                       Oem ID : "BOCHS "
[010h 0016   8]                 Oem Table ID : "BXPCSRAT"
[018h 0024   4]                 Oem Revision : 00000002
[01Ch 0028   4]              Asl Compiler ID : "BXPC"
[020h 0032   4]        Asl Compiler Revision : 00000001

[024h 0036   4]               Table Revision : 00000001
[028h 0040   8]                     Reserved : 0000000000000000

[030h 0048   1]                Subtable Type : 00 [Processor Local APIC/SAPIC Affinity]
[031h 0049   1]                       Length : 10

[032h 0050   1]      Proximity Domain Low(8) : 00
[033h 0051   1]                      Apic ID : 00
[034h 0052   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
[038h 0056   1]              Local Sapic EID : 00
[039h 0057   3]    Proximity Domain High(24) : 000000
[03Ch 0060   4]                 Clock Domain : 00000000

[040h 0064   1]                Subtable Type : 00 [Processor Local APIC/SAPIC Affinity]
[041h 0065   1]                       Length : 10

[042h 0066   1]      Proximity Domain Low(8) : 01
[043h 0067   1]                      Apic ID : 01
[044h 0068   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
[048h 0072   1]              Local Sapic EID : 00
[049h 0073   3]    Proximity Domain High(24) : 000000
[04Ch 0076   4]                 Clock Domain : 00000000

/* Begin modified memory affinity tables */

                               Subtable Type : 01 [Memory Affinity]
                                      Length : 28

                            Proximity Domain : 00000002
                                   Reserved1 : 0000
                                Base Address : 0000000000000000
                              Address Length : 00000000000A0000
                                   Reserved2 : 00000000
                       Flags (decoded below) : 00000001
                                     Enabled : 1
                               Hot Pluggable : 0
                                Non-Volatile : 0
                                   Reserved3 : 0000000000000000

                               Subtable Type : 01 [Memory Affinity]
                                      Length : 28

                            Proximity Domain : 00000002
                                   Reserved1 : 0000
                                Base Address : 0000000000100000
                              Address Length : 00000000BFF00000
                                   Reserved2 : 00000000
                       Flags (decoded below) : 00000001
                                     Enabled : 1
                               Hot Pluggable : 0
                                Non-Volatile : 0
                                   Reserved3 : 0000000000000000

                               Subtable Type : 01 [Memory Affinity]
                                      Length : 28
                            Proximity Domain : 00000002
                                   Reserved1 : 0000
                                Base Address : 0000000100000000 /* 4 GiB */
                              Address Length : 0000000100000000 /* 4 GiB */
                                   Reserved2 : 00000000
                       Flags (decoded below) : 00000001
                                     Enabled : 1
                               Hot Pluggable : 0
                                Non-Volatile : 0
                                   Reserved3 : 0000000000000000

                               Subtable Type : 01 [Memory Affinity]
                                      Length : 28
                            Proximity Domain : 00000003
                                   Reserved1 : 0000
                                Base Address : 0000000200000000 /* 8 GiB */
                              Address Length : 0000000100000000 /* 4 GiB */
                                   Reserved2 : 00000000
                       Flags (decoded below) : 00000001
                                     Enabled : 1
                               Hot Pluggable : 0
                                Non-Volatile : 0
                                   Reserved3 : 0000000000000000

                               Subtable Type : 01 [Memory Affinity]
                                      Length : 28
                            Proximity Domain : 00000004
                                   Reserved1 : 0000
                                Base Address : 0000000300000000 /* 12 GiB */
                              Address Length : 0000000100000000 /* 4 GiB */
                                   Reserved2 : 00000000
                       Flags (decoded below) : 00000001
                                     Enabled : 1
                               Hot Pluggable : 0
                                Non-Volatile : 0
                                   Reserved3 : 0000000000000000

                               Subtable Type : 01 [Memory Affinity]
                                      Length : 28
                            Proximity Domain : 00000005
                                   Reserved1 : 0000
                                Base Address : 0000000400000000 /* 16 GiB */
                              Address Length : 0000000100000000 /*  4 GiB */
                                   Reserved2 : 00000000
                       Flags (decoded below) : 00000001
                                     Enabled : 1
                               Hot Pluggable : 0
                                Non-Volatile : 0
                                   Reserved3 : 0000000000000000
