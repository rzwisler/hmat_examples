/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20170929 (64-bit version)
 * Copyright (c) 2000 - 2017 Intel Corporation
 * 
 * Disassembly of HMAT.aml, Mon Dec 18 17:21:38 2017
 *
 * ACPI Data Table [HMAT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

                                   Signature : "HMAT"    [Heterogeneous Memory Attributes Table]
                                Table Length : 00000158
                                    Revision : 01
                                    Checksum : F4
                                      Oem ID : "BOCHS "
                                Oem Table ID : "BXPCHMAT"
                                Oem Revision : 00000002
                             Asl Compiler ID : "INTL"
                       Asl Compiler Revision : 20170929
                                    Reserved : 00000000

                              Structure Type : 0000 [Memory Subystem Address Range]
                                    Reserved : 0000
                                      Length : 00000028
                       Flags (decoded below) : 0003
            Processor Proximity Domain Valid : 1
               Memory Proximity Domain Valid : 1
                            Reservation Hint : 0
                                   Reserved1 : 0000
                  Processor Proximity Domain : 00000000
                     Memory Proximity Domain : 00000000
                                   Reserved2 : 00000000
                 Physical Address Range Base : 0000000000000000
                 Physical Address Range Size : 00000000000A0000

                              Structure Type : 0000 [Memory Subystem Address Range]
                                    Reserved : 0000
                                      Length : 00000028
                       Flags (decoded below) : 0003
            Processor Proximity Domain Valid : 1
               Memory Proximity Domain Valid : 1
                            Reservation Hint : 0
                                   Reserved1 : 0000
                  Processor Proximity Domain : 00000000
                     Memory Proximity Domain : 00000000
                                   Reserved2 : 00000000
                 Physical Address Range Base : 0000000000100000
                 Physical Address Range Size : 00000000BFF00000

                              Structure Type : 0000 [Memory Subystem Address Range]
                                    Reserved : 0000
                                      Length : 00000028
                       Flags (decoded below) : 0003
            Processor Proximity Domain Valid : 1
               Memory Proximity Domain Valid : 1
                            Reservation Hint : 0
                                   Reserved1 : 0000
                  Processor Proximity Domain : 00000000
                     Memory Proximity Domain : 00000000
                                   Reserved2 : 00000000
                 Physical Address Range Base : 0000000100000000 /* 4 GiB */
                 Physical Address Range Size : 0000000100000000 /* 4 GiB */

                              Structure Type : 0000 [Memory Subystem Address Range]
                                    Reserved : 0000
                                      Length : 00000028
                       Flags (decoded below) : 0003
            Processor Proximity Domain Valid : 1
               Memory Proximity Domain Valid : 1
                            Reservation Hint : 0
                                   Reserved1 : 0000
                  Processor Proximity Domain : 00000001
                     Memory Proximity Domain : 00000001
                                   Reserved2 : 00000000
                 Physical Address Range Base : 0000000200000000 /* 8 GiB */
                 Physical Address Range Size : 0000000100000000 /* 4 GiB */

                              Structure Type : 0000 [Memory Subystem Address Range]
                                    Reserved : 0000
                                      Length : 00000028
                       Flags (decoded below) : 0003
            Processor Proximity Domain Valid : 1
               Memory Proximity Domain Valid : 1
                            Reservation Hint : 0
                                   Reserved1 : 0000
                  Processor Proximity Domain : 00000000
                     Memory Proximity Domain : 00000002
                                   Reserved2 : 00000000
                 Physical Address Range Base : 0000000300000000 /* 12 GiB */
                 Physical Address Range Size : 0000000100000000 /* 4 GiB */

                              Structure Type : 0000 [Memory Subystem Address Range]
                                    Reserved : 0000
                                      Length : 00000028
                       Flags (decoded below) : 0003
            Processor Proximity Domain Valid : 1
               Memory Proximity Domain Valid : 1
                            Reservation Hint : 0
                                   Reserved1 : 0000
                  Processor Proximity Domain : 00000001
                     Memory Proximity Domain : 00000003
                                   Reserved2 : 00000000
                 Physical Address Range Base : 0000000400000000 /* 16 GiB */
                 Physical Address Range Size : 0000000100000000 /*  4 GiB */

                              Structure Type : 0001 [System Locality Latency and Bandwidth Information]
                                    Reserved : 0000
                                      Length : 00000048
                       Flags (decoded below) : 00
                            Memory Hierarchy : 0
                                   Data Type : 00
                                   Reserved1 : 0000
                Initiator Proximity Domains # : 00000002
                  Target Proximity Domains # : 00000004
                                   Reserved2 : 00000000
                             Entry Base Unit : 0000000000000001
                Initiator Proximity Domain List : 00000000
                Initiator Proximity Domain List : 00000001
                Target Proximity Domain List : 00000000
                Target Proximity Domain List : 00000001
                Target Proximity Domain List : 00000002
                Target Proximity Domain List : 00000003
                                       Entry : 01F4
                                       Entry : 03E8
                                       Entry : 01F4
                                       Entry : 03E8
                                       Entry : 03E8
                                       Entry : 01F4
                                       Entry : 03E8
                                       Entry : 01F4

                              Structure Type : 0001 [System Locality Latency and Bandwidth Information]
                                    Reserved : 0000
                                      Length : 00000048
                       Flags (decoded below) : 00
                            Memory Hierarchy : 0
                                   Data Type : 03
                                   Reserved1 : 0000
                Initiator Proximity Domains # : 00000002
                  Target Proximity Domains # : 00000004
                                   Reserved2 : 00000000
                             Entry Base Unit : 0000000000000400
                Initiator Proximity Domain List : 00000000
                Initiator Proximity Domain List : 00000001
                Target Proximity Domain List : 00000000
                Target Proximity Domain List : 00000001
                Target Proximity Domain List : 00000002
                Target Proximity Domain List : 00000003
                                       Entry : 0190
                                       Entry : 012C
                                       Entry : 0320
                                       Entry : 012C
                                       Entry : 012C
                                       Entry : 0190
                                       Entry : 012C
                                       Entry : 0320
