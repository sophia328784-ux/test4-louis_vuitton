package org.bouncycastle.pqc.crypto.falcon;

import defpackage.z81;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes5.dex */
class FalconKeyGen {
    private short[] REV10 = {0, 512, 256, 768, 128, 640, 384, 896, 64, 576, 320, 832, 192, 704, 448, 960, 32, 544, 288, 800, 160, 672, 416, 928, 96, 608, 352, 864, 224, 736, 480, 992, 16, 528, 272, 784, 144, 656, 400, 912, 80, 592, 336, 848, 208, 720, 464, 976, 48, 560, 304, 816, 176, 688, 432, 944, 112, 624, 368, 880, 240, 752, 496, 1008, 8, 520, 264, 776, 136, 648, 392, 904, 72, 584, 328, 840, 200, 712, 456, 968, 40, 552, 296, 808, 168, 680, 424, 936, 104, 616, 360, 872, 232, 744, 488, 1000, 24, 536, 280, 792, 152, 664, 408, 920, 88, 600, 344, 856, 216, 728, 472, 984, 56, 568, 312, 824, 184, 696, 440, 952, 120, 632, 376, 888, 248, 760, 504, 1016, 4, 516, 260, 772, 132, 644, 388, 900, 68, 580, 324, 836, 196, 708, 452, 964, 36, 548, 292, 804, 164, 676, 420, 932, 100, 612, 356, 868, 228, 740, 484, 996, 20, 532, 276, 788, 148, 660, 404, 916, 84, 596, 340, 852, 212, 724, 468, 980, 52, 564, 308, 820, 180, 692, 436, 948, 116, 628, 372, 884, 244, 756, 500, 1012, 12, 524, 268, 780, 140, 652, 396, 908, 76, 588, 332, 844, 204, 716, 460, 972, 44, 556, 300, 812, 172, 684, 428, 940, 108, 620, 364, 876, 236, 748, 492, 1004, 28, 540, 284, 796, 156, 668, 412, 924, 92, 604, 348, 860, 220, 732, 476, 988, 60, 572, 316, 828, 188, 700, 444, 956, 124, 636, 380, 892, 252, 764, 508, 1020, 2, 514, 258, 770, 130, 642, 386, 898, 66, 578, 322, 834, 194, 706, 450, 962, 34, 546, 290, 802, 162, 674, 418, 930, 98, 610, 354, 866, 226, 738, 482, 994, 18, 530, 274, 786, 146, 658, 402, 914, 82, 594, 338, 850, 210, 722, 466, 978, 50, 562, 306, 818, 178, 690, 434, 946, 114, 626, 370, 882, 242, 754, 498, 1010, 10, 522, 266, 778, 138, 650, 394, 906, 74, 586, 330, 842, 202, 714, 458, 970, 42, 554, 298, 810, 170, 682, 426, 938, 106, 618, 362, 874, 234, 746, 490, 1002, 26, 538, 282, 794, 154, 666, 410, 922, 90, 602, 346, 858, 218, 730, 474, 986, 58, 570, 314, 826, 186, 698, 442, 954, 122, 634, 378, 890, 250, 762, 506, 1018, 6, 518, 262, 774, 134, 646, 390, 902, 70, 582, 326, 838, 198, 710, 454, 966, 38, 550, 294, 806, 166, 678, 422, 934, 102, 614, 358, 870, 230, 742, 486, 998, 22, 534, 278, 790, 150, 662, 406, 918, 86, 598, 342, 854, 214, 726, 470, 982, 54, 566, 310, 822, 182, 694, 438, 950, 118, 630, 374, 886, 246, 758, 502, 1014, 14, 526, 270, 782, 142, 654, 398, 910, 78, 590, 334, 846, 206, 718, 462, 974, 46, 558, 302, 814, 174, 686, 430, 942, 110, 622, 366, 878, 238, 750, 494, 1006, 30, 542, 286, 798, 158, 670, 414, 926, 94, 606, 350, 862, 222, 734, 478, 990, 62, 574, 318, 830, 190, 702, 446, 958, 126, 638, 382, 894, 254, 766, 510, 1022, 1, 513, 257, 769, 129, 641, 385, 897, 65, 577, 321, 833, 193, 705, 449, 961, 33, 545, 289, 801, 161, 673, 417, 929, 97, 609, 353, 865, 225, 737, 481, 993, 17, 529, 273, 785, 145, 657, 401, 913, 81, 593, 337, 849, 209, 721, 465, 977, 49, 561, 305, 817, 177, 689, 433, 945, 113, 625, 369, 881, 241, 753, 497, 1009, 9, 521, 265, 777, 137, 649, 393, 905, 73, 585, 329, 841, 201, 713, 457, 969, 41, 553, 297, 809, 169, 681, 425, 937, 105, 617, 361, 873, 233, 745, 489, 1001, 25, 537, 281, 793, 153, 665, 409, 921, 89, 601, 345, 857, 217, 729, 473, 985, 57, 569, 313, 825, 185, 697, 441, 953, 121, 633, 377, 889, 249, 761, 505, 1017, 5, 517, 261, 773, 133, 645, 389, 901, 69, 581, 325, 837, 197, 709, 453, 965, 37, 549, 293, 805, 165, 677, 421, 933, 101, 613, 357, 869, 229, 741, 485, 997, 21, 533, 277, 789, 149, 661, 405, 917, 85, 597, 341, 853, 213, 725, 469, 981, 53, 565, 309, 821, 181, 693, 437, 949, 117, 629, 373, 885, 245, 757, 501, 1013, 13, 525, 269, 781, 141, 653, 397, 909, 77, 589, 333, 845, 205, 717, 461, 973, 45, 557, 301, 813, 173, 685, 429, 941, 109, 621, 365, 877, 237, 749, 493, 1005, 29, 541, 285, 797, 157, 669, 413, 925, 93, 605, 349, 861, 221, 733, 477, 989, 61, 573, 317, 829, 189, 701, 445, 957, 125, 637, 381, 893, 253, 765, 509, 1021, 3, 515, 259, 771, 131, 643, 387, 899, 67, 579, 323, 835, 195, 707, 451, 963, 35, 547, 291, 803, 163, 675, 419, 931, 99, 611, 355, 867, 227, 739, 483, 995, 19, 531, 275, 787, 147, 659, 403, 915, 83, 595, 339, 851, 211, 723, 467, 979, 51, 563, 307, 819, 179, 691, 435, 947, 115, 627, 371, 883, 243, 755, 499, 1011, 11, 523, 267, 779, 139, 651, 395, 907, 75, 587, 331, 843, 203, 715, 459, 971, 43, 555, 299, 811, 171, 683, 427, 939, 107, 619, 363, 875, 235, 747, 491, 1003, 27, 539, 283, 795, 155, 667, 411, 923, 91, 603, 347, 859, 219, 731, 475, 987, 59, 571, 315, 827, 187, 699, 443, 955, 123, 635, 379, 891, 251, 763, 507, 1019, 7, 519, 263, 775, 135, 647, 391, 903, 71, 583, 327, 839, 199, 711, 455, 967, 39, 551, 295, 807, 167, 679, 423, 935, 103, 615, 359, 871, 231, 743, 487, 999, 23, 535, 279, 791, 151, 663, 407, 919, 87, 599, 343, 855, 215, 727, 471, 983, 55, 567, 311, 823, 183, 695, 439, 951, 119, 631, 375, 887, 247, 759, 503, 1015, 15, 527, 271, 783, 143, 655, 399, 911, 79, 591, 335, 847, 207, 719, 463, 975, 47, 559, 303, 815, 175, 687, 431, 943, 111, 623, 367, 879, 239, 751, 495, 1007, 31, 543, 287, 799, 159, 671, 415, 927, 
    95, 607, 351, 863, 223, 735, 479, 991, 63, 575, 319, 831, 191, 703, 447, 959, 127, 639, 383, 895, 255, 767, 511, 1023};
    final long[] gauss_1024_12289 = {1283868770400643928L, 6416574995475331444L, 4078260278032692663L, 2353523259288686585L, 1227179971273316331L, 575931623374121527L, 242543240509105209L, 91437049221049666L, 30799446349977173L, 9255276791179340L, 2478152334826140L, 590642893610164L, 125206034929641L, 23590435911403L, 3948334035941L, 586753615614L, 77391054539L, 9056793210L, 940121950, 86539696, 7062824, 510971, 32764, 1862, 94, 4, 0};
    final int[] MAX_BL_SMALL = {1, 1, 2, 2, 4, 7, 14, 27, 53, 106, 209};
    final int[] MAX_BL_LARGE = {2, 2, 5, 7, 12, 21, 40, 78, 157, 308};
    final int[] bitlength_avg = {4, 11, 24, 50, 102, 202, 401, 794, 1577, 3138, 6308};
    final int[] bitlength_std = {0, 1, 1, 1, 1, 2, 4, 5, 8, 13, 25};
    final int DEPTH_INT_FG = 4;
    FPREngine fpr = new FPREngine();
    FalconSmallPrimeList primes = new FalconSmallPrimeList();
    FalconFFT fft = new FalconFFT();
    FalconCodec codec = new FalconCodec();
    FalconVrfy vrfy = new FalconVrfy();

    private static int mkn(int i2) {
        return 1 << i2;
    }

    private long toUnsignedLong(int i2) {
        return ((long) i2) & BodyPartID.bodyIdMax;
    }

    public long get_rng_u64(SHAKE256 shake256) {
        byte[] bArr = new byte[8];
        shake256.inner_shake256_extract(bArr, 0, 8);
        return ((((long) bArr[1]) & 255) << 8) | (((long) bArr[0]) & 255) | ((((long) bArr[2]) & 255) << 16) | ((((long) bArr[3]) & 255) << 24) | ((((long) bArr[4]) & 255) << 32) | ((((long) bArr[5]) & 255) << 40) | ((((long) bArr[6]) & 255) << 48) | ((((long) bArr[7]) & 255) << 56);
    }

    public void keygen(SHAKE256 shake256, byte[] bArr, int i2, byte[] bArr2, int i3, byte[] bArr3, int i4, byte[] bArr4, int i5, short[] sArr, int i6, int i7) {
        FalconKeyGen falconKeyGen;
        int i8;
        FPREngine fPREngine;
        int i9;
        short[] sArr2;
        int i10;
        int i11;
        byte b2;
        FalconKeyGen falconKeyGen2 = this;
        bArr = bArr;
        i2 = i2;
        bArr2 = bArr2;
        i3 = i3;
        int i12 = i7;
        int iMkn = mkn(i12);
        short[] sArr3 = sArr;
        while (true) {
            FalconFPR[] falconFPRArr = new FalconFPR[iMkn * 3];
            falconKeyGen2.poly_small_mkgauss(shake256, bArr, i2, i12);
            falconKeyGen2.poly_small_mkgauss(shake256, bArr2, i3, i12);
            int i13 = 1 << (falconKeyGen2.codec.max_fg_bits[i12] - 1);
            for (int i14 = 0; i14 < iMkn; i14++) {
                byte b3 = bArr[i2 + i14];
                if (b3 >= i13 || b3 <= (i11 = -i13) || (b2 = bArr2[i3 + i14]) >= i13 || b2 <= i11) {
                    i13 = -1;
                    break;
                }
            }
            if (i13 >= 0) {
                int iPoly_small_sqnorm = falconKeyGen2.poly_small_sqnorm(bArr, i2, i12);
                int iPoly_small_sqnorm2 = falconKeyGen2.poly_small_sqnorm(bArr2, i3, i12);
                if ((((long) ((-((iPoly_small_sqnorm | iPoly_small_sqnorm2) >>> 31)) | (iPoly_small_sqnorm + iPoly_small_sqnorm2))) & BodyPartID.bodyIdMax) < 16823) {
                    int i15 = iMkn + iMkn;
                    falconKeyGen2.poly_small_to_fp(falconFPRArr, 0, bArr, i2, i12);
                    int i16 = iMkn;
                    falconKeyGen2.poly_small_to_fp(falconFPRArr, i16, bArr2, i3, i12);
                    falconKeyGen = falconKeyGen2;
                    falconKeyGen.fft.FFT(falconFPRArr, 0, i12);
                    falconKeyGen.fft.FFT(falconFPRArr, i16, i12);
                    falconKeyGen.fft.poly_invnorm2_fft(falconFPRArr, i15, falconFPRArr, 0, falconFPRArr, i16, i7);
                    falconKeyGen.fft.poly_adj_fft(falconFPRArr, 0, i7);
                    falconKeyGen.fft.poly_adj_fft(falconFPRArr, i16, i7);
                    falconKeyGen.fft.poly_mulconst(falconFPRArr, 0, falconKeyGen.fpr.fpr_q, i7);
                    falconKeyGen.fft.poly_mulconst(falconFPRArr, i16, falconKeyGen.fpr.fpr_q, i7);
                    falconKeyGen.fft.poly_mul_autoadj_fft(falconFPRArr, 0, falconFPRArr, i15, i7);
                    i12 = i7;
                    falconKeyGen.fft.poly_mul_autoadj_fft(falconFPRArr, i16, falconFPRArr, i15, i12);
                    i8 = i16;
                    falconKeyGen.fft.iFFT(falconFPRArr, 0, i12);
                    falconKeyGen.fft.iFFT(falconFPRArr, i8, i12);
                    FalconFPR falconFPRFpr_add = falconKeyGen.fpr.fpr_zero;
                    int i17 = 0;
                    while (true) {
                        fPREngine = falconKeyGen.fpr;
                        if (i17 >= i8) {
                            break;
                        }
                        FalconFPR falconFPRFpr_add2 = fPREngine.fpr_add(falconFPRFpr_add, fPREngine.fpr_sqr(falconFPRArr[i17]));
                        FPREngine fPREngine2 = falconKeyGen.fpr;
                        falconFPRFpr_add = fPREngine2.fpr_add(falconFPRFpr_add2, fPREngine2.fpr_sqr(falconFPRArr[i8 + i17]));
                        i17++;
                    }
                    if (fPREngine.fpr_lt(falconFPRFpr_add, fPREngine.fpr_bnorm_max)) {
                        short[] sArr4 = new short[i8 * 2];
                        if (sArr3 == null) {
                            sArr2 = sArr4;
                            i9 = 0;
                            i10 = i8;
                        } else {
                            i9 = i6;
                            sArr2 = sArr3;
                            i10 = 0;
                        }
                        short[] sArr5 = sArr2;
                        if (falconKeyGen.vrfy.compute_public(sArr2, i9, bArr, i2, bArr2, i3, i12, sArr4, i10) != 0) {
                            if (falconKeyGen.solve_NTRU(i12, bArr3, i4, bArr4, i5, bArr, i2, bArr2, i3, (1 << (falconKeyGen.codec.max_FG_bits[i12] - 1)) - 1, new int[i12 > 2 ? i8 * 28 : i8 * 84], 0) != 0) {
                                return;
                            }
                        }
                        falconKeyGen2 = this;
                        i12 = i7;
                        iMkn = i8;
                        sArr3 = sArr5;
                    } else {
                        falconKeyGen2 = falconKeyGen;
                        iMkn = i8;
                    }
                }
            }
            falconKeyGen = falconKeyGen2;
            i8 = iMkn;
            falconKeyGen2 = falconKeyGen;
            iMkn = i8;
        }
    }

    public void make_fg(int[] iArr, int i2, byte[] bArr, int i3, byte[] bArr2, int i4, int i5, int i6, int i7) {
        int iMkn = mkn(i5);
        int i8 = i2 + iMkn;
        FalconSmallPrime[] falconSmallPrimeArr = FalconSmallPrimeList.PRIMES;
        int i9 = falconSmallPrimeArr[0].p;
        for (int i10 = 0; i10 < iMkn; i10++) {
            iArr[i2 + i10] = modp_set(bArr[i3 + i10], i9);
            iArr[i8 + i10] = modp_set(bArr2[i4 + i10], i9);
        }
        if (i6 != 0 || i7 == 0) {
            int i11 = 0;
            while (i11 < i6) {
                int i12 = i11 + 1;
                make_fg_step(iArr, i2, i5 - i11, i11, i11 != 0 ? 1 : 0, (i12 < i6 || i7 != 0) ? 1 : 0);
                i11 = i12;
            }
            return;
        }
        int i13 = falconSmallPrimeArr[0].p;
        int iModp_ninv31 = modp_ninv31(i13);
        int i14 = i8 + iMkn;
        modp_mkgm2(iArr, i14, iArr, iMkn + i14, i5, falconSmallPrimeArr[0].g, i13, iModp_ninv31);
        modp_NTT2(iArr, i2, iArr, i14, i5, i13, iModp_ninv31);
        modp_NTT2(iArr, i8, iArr, i14, i5, i13, iModp_ninv31);
    }

    public void make_fg_step(int[] iArr, int i2, int i3, int i4, int i5, int i6) {
        int i7;
        int i8;
        int i9;
        int i10;
        FalconKeyGen falconKeyGen;
        int i11;
        int i12;
        FalconKeyGen falconKeyGen2;
        int i13;
        int i14;
        FalconKeyGen falconKeyGen3 = this;
        int[] iArr2 = iArr;
        boolean z = true;
        int i15 = 1 << i3;
        int i16 = i15 >> 1;
        int[] iArr3 = falconKeyGen3.MAX_BL_SMALL;
        int i17 = iArr3[i4];
        int i18 = iArr3[i4 + 1];
        FalconSmallPrime[] falconSmallPrimeArr = FalconSmallPrimeList.PRIMES;
        int i19 = i16 * i18;
        int i20 = i2 + i19;
        int i21 = i20 + i19;
        int i22 = i15 * i17;
        int i23 = i21 + i22;
        int i24 = i23 + i22;
        int i25 = i24 + i15;
        int i26 = i25 + i15;
        System.arraycopy(iArr2, i2, iArr2, i21, i15 * 2 * i17);
        int i27 = 0;
        while (i27 < i17) {
            int i28 = falconSmallPrimeArr[i27].p;
            int iModp_ninv31 = falconKeyGen3.modp_ninv31(i28);
            int iModp_R2 = falconKeyGen3.modp_R2(i28, iModp_ninv31);
            boolean z2 = z;
            int i29 = i27;
            int i30 = i21;
            int i31 = i24;
            int i32 = i25;
            falconKeyGen3.modp_mkgm2(iArr2, i31, iArr, i32, i3, falconSmallPrimeArr[i27].g, i28, iModp_ninv31);
            int i33 = i30 + i29;
            int i34 = 0;
            int i35 = i33;
            while (i34 < i15) {
                iArr[i26 + i34] = iArr[i35];
                i34++;
                i35 += i17;
            }
            if (i5 == 0) {
                int i36 = i26;
                falconKeyGen = this;
                falconKeyGen.modp_NTT2(iArr, i36, iArr, i31, i3, i28, iModp_ninv31);
                i9 = i36;
                i10 = iModp_ninv31;
                i28 = i28;
            } else {
                i9 = i26;
                i10 = iModp_ninv31;
                falconKeyGen = this;
            }
            int i37 = i2 + i29;
            int i38 = 0;
            int i39 = i37;
            while (i38 < i16) {
                int i40 = i9 + (i38 << 1);
                iArr[i39] = falconKeyGen.modp_montymul(falconKeyGen.modp_montymul(iArr[i40], iArr[i40 + 1], i28, i10), iModp_R2, i28, i10);
                i38++;
                i39 += i18;
            }
            if (i5 != 0) {
                int i41 = i17;
                falconKeyGen.modp_iNTT2_ext(iArr, i33, i41, iArr, i32, i3, i28, i10);
                i11 = i41;
            } else {
                i11 = i17;
            }
            int i42 = i23 + i29;
            int i43 = 0;
            int i44 = i42;
            while (i43 < i15) {
                iArr[i9 + i43] = iArr[i44];
                i43++;
                i44 += i11;
            }
            if (i5 == 0) {
                int i45 = i28;
                int i46 = i10;
                falconKeyGen2 = this;
                falconKeyGen2.modp_NTT2(iArr, i9, iArr, i31, i3, i45, i46);
                i12 = i46;
                i28 = i45;
            } else {
                i12 = i10;
                falconKeyGen2 = this;
            }
            int i47 = i20 + i29;
            int i48 = 0;
            int i49 = i47;
            while (i48 < i16) {
                int i50 = i9 + (i48 << 1);
                iArr[i49] = falconKeyGen2.modp_montymul(falconKeyGen2.modp_montymul(iArr[i50], iArr[i50 + 1], i28, i12), iModp_R2, i28, i12);
                i48++;
                i49 += i18;
            }
            if (i5 != 0) {
                i13 = r8;
                falconKeyGen2.modp_iNTT2_ext(iArr, i42, i11, iArr, i13, i3, i28, i12);
            } else {
                i13 = r8;
            }
            int i51 = i11;
            if (i6 == 0) {
                int i52 = i3 - 1;
                int i53 = i18;
                modp_iNTT2_ext(iArr, i37, i53, iArr, i13, i52, i28, i12);
                modp_iNTT2_ext(iArr, i47, i53, iArr, i13, i52, i28, i12);
                i14 = i53;
            } else {
                i14 = i18;
            }
            i27 = i29 + 1;
            falconKeyGen3 = this;
            iArr2 = iArr;
            i21 = i30;
            i25 = i13;
            i24 = i31;
            z = z2;
            i26 = i9;
            i18 = i14;
            i17 = i51;
        }
        int i54 = i17;
        int i55 = i18;
        int i56 = i26;
        int i57 = i21;
        int i58 = i24;
        int i59 = i25;
        FalconKeyGen falconKeyGen4 = this;
        falconKeyGen4.zint_rebuild_CRT(iArr, i21, i54, i54, i15, falconSmallPrimeArr, 1, iArr, i58);
        falconKeyGen4.zint_rebuild_CRT(iArr, i23, i54, i54, i15, falconSmallPrimeArr, 1, iArr, i58);
        int i60 = i58;
        int i61 = i54;
        while (i61 < i55) {
            int i62 = falconSmallPrimeArr[i61].p;
            int iModp_ninv32 = falconKeyGen4.modp_ninv31(i62);
            int iModp_R3 = falconKeyGen4.modp_R2(i62, iModp_ninv32);
            int iModp_Rx = falconKeyGen4.modp_Rx(i54, i62, iModp_ninv32, iModp_R3);
            int i63 = iModp_R3;
            int i64 = i60;
            int i65 = i59;
            int i66 = i61;
            falconKeyGen4.modp_mkgm2(iArr, i64, iArr, i65, i3, falconSmallPrimeArr[i61].g, i62, iModp_ninv32);
            int i67 = i57;
            int i68 = 0;
            while (i68 < i15) {
                int i69 = i62;
                int i70 = i54;
                int i71 = iModp_Rx;
                int i72 = i63;
                int iZint_mod_small_signed = zint_mod_small_signed(iArr, i67, i70, i69, iModp_ninv32, i72, i71);
                i62 = i69;
                iArr[i56 + i68] = iZint_mod_small_signed;
                i68++;
                i67 += i70;
                i54 = i70;
                iModp_Rx = i71;
                i63 = i72;
            }
            int i73 = iModp_Rx;
            int i74 = i63;
            int i75 = i54;
            FalconKeyGen falconKeyGen5 = this;
            int i76 = i74;
            int i77 = i62;
            falconKeyGen5.modp_NTT2(iArr, i56, iArr, i64, i3, i77, iModp_ninv32);
            int i78 = i77;
            int i79 = i2 + i66;
            int i80 = i79;
            int i81 = 0;
            while (i81 < i16) {
                int i82 = i56 + (i81 << 1);
                iArr[i80] = falconKeyGen5.modp_montymul(falconKeyGen5.modp_montymul(iArr[i82], iArr[i82 + 1], i78, iModp_ninv32), i76, i78, iModp_ninv32);
                i81++;
                i80 += i55;
            }
            int i83 = i23;
            int i84 = 0;
            while (i84 < i15) {
                int i85 = i78;
                int i86 = i76;
                int i87 = i75;
                int i88 = i73;
                int iZint_mod_small_signed2 = falconKeyGen5.zint_mod_small_signed(iArr, i83, i87, i85, iModp_ninv32, i86, i88);
                i78 = i85;
                iArr[i56 + i84] = iZint_mod_small_signed2;
                i84++;
                i83 += i87;
                i76 = i86;
                i75 = i87;
                i73 = i88;
                falconKeyGen5 = this;
            }
            int i89 = i75;
            int i90 = i78;
            modp_NTT2(iArr, i56, iArr, i64, i3, i90, iModp_ninv32);
            int i91 = i20 + i66;
            int i92 = 0;
            int i93 = i91;
            while (i92 < i16) {
                int i94 = i56 + (i92 << 1);
                iArr[i93] = modp_montymul(modp_montymul(iArr[i94], iArr[i94 + 1], i90, iModp_ninv32), i76, i90, iModp_ninv32);
                i92++;
                i93 += i55;
            }
            if (i6 == 0) {
                int i95 = i3 - 1;
                i7 = i55;
                i8 = i65;
                modp_iNTT2_ext(iArr, i79, i7, iArr, i8, i95, i90, iModp_ninv32);
                modp_iNTT2_ext(iArr, i91, i7, iArr, i8, i95, i90, iModp_ninv32);
            } else {
                i7 = i55;
                i8 = i65;
            }
            i61 = i66 + 1;
            falconKeyGen4 = this;
            i55 = i7;
            i59 = i8;
            i60 = i64;
            i54 = i89;
        }
    }

    public int mkgauss(SHAKE256 shake256, int i2) {
        int i3 = 1 << (10 - i2);
        int i4 = 0;
        for (int i5 = 0; i5 < i3; i5++) {
            long j2 = get_rng_u64(shake256);
            int i6 = (int) (j2 >>> 63);
            int i7 = (int) (((j2 & Long.MAX_VALUE) - this.gauss_1024_12289[0]) >>> 63);
            long j3 = Long.MAX_VALUE & get_rng_u64(shake256);
            int i8 = 1;
            int i9 = 0;
            while (true) {
                long[] jArr = this.gauss_1024_12289;
                if (i8 < jArr.length) {
                    int i10 = ((int) ((j3 - jArr[i8]) >>> 63)) ^ 1;
                    i9 |= (-((i7 ^ 1) & i10)) & i8;
                    i7 |= i10;
                    i8++;
                }
            }
            i4 += ((-i6) ^ i9) + i6;
        }
        return i4;
    }

    public void modp_NTT2(int[] iArr, int i2, int[] iArr2, int i3, int i4, int i5, int i6) {
        modp_NTT2_ext(iArr, i2, 1, iArr2, i3, i4, i5, i6);
    }

    public void modp_NTT2_ext(int[] iArr, int i2, int i3, int[] iArr2, int i4, int i5, int i6, int i7) {
        if (i5 == 0) {
            return;
        }
        int iMkn = mkn(i5);
        int i8 = 1;
        int i9 = iMkn;
        while (i8 < iMkn) {
            int i10 = i9 >> 1;
            int i11 = 0;
            int i12 = 0;
            while (i11 < i8) {
                int i13 = iArr2[i4 + i8 + i11];
                int i14 = (i12 * i3) + i2;
                int i15 = (i10 * i3) + i14;
                int i16 = 0;
                while (i16 < i10) {
                    int i17 = iArr[i14];
                    int iModp_montymul = modp_montymul(iArr[i15], i13, i6, i7);
                    iArr[i14] = modp_add(i17, iModp_montymul, i6);
                    iArr[i15] = modp_sub(i17, iModp_montymul, i6);
                    i16++;
                    i14 += i3;
                    i15 += i3;
                }
                i11++;
                i12 += i9;
            }
            i8 <<= 1;
            i9 = i10;
        }
    }

    public int modp_R(int i2) {
        return Integer.MIN_VALUE - i2;
    }

    public int modp_R2(int i2, int i3) {
        int iModp_R = modp_R(i2);
        int iModp_add = modp_add(iModp_R, iModp_R, i2);
        int iModp_montymul = modp_montymul(iModp_add, iModp_add, i2, i3);
        int iModp_montymul2 = modp_montymul(iModp_montymul, iModp_montymul, i2, i3);
        int iModp_montymul3 = modp_montymul(iModp_montymul2, iModp_montymul2, i2, i3);
        int iModp_montymul4 = modp_montymul(iModp_montymul3, iModp_montymul3, i2, i3);
        int iModp_montymul5 = modp_montymul(iModp_montymul4, iModp_montymul4, i2, i3);
        return (iModp_montymul5 + (i2 & (-(iModp_montymul5 & 1)))) >>> 1;
    }

    public int modp_Rx(int i2, int i3, int i4, int i5) {
        int i6 = i2 - 1;
        int iModp_R = modp_R(i3);
        int i7 = 0;
        while (true) {
            int i8 = 1 << i7;
            if (i8 > i6) {
                return iModp_R;
            }
            if ((i8 & i6) != 0) {
                iModp_R = modp_montymul(iModp_R, i5, i3, i4);
            }
            i5 = modp_montymul(i5, i5, i3, i4);
            i7++;
        }
    }

    public int modp_add(int i2, int i3, int i4) {
        int i5 = (i2 + i3) - i4;
        return i5 + ((-(i5 >>> 31)) & i4);
    }

    public int modp_div(int i2, int i3, int i4, int i5, int i6) {
        int i7 = i4 - 2;
        for (int i8 = 30; i8 >= 0; i8--) {
            int iModp_montymul = modp_montymul(i6, i6, i4, i5);
            i6 = iModp_montymul ^ ((-(1 & (i7 >>> i8))) & (modp_montymul(iModp_montymul, i3, i4, i5) ^ iModp_montymul));
        }
        return modp_montymul(i2, modp_montymul(i6, 1, i4, i5), i4, i5);
    }

    public void modp_iNTT2(int[] iArr, int i2, int[] iArr2, int i3, int i4, int i5, int i6) {
        modp_iNTT2_ext(iArr, i2, 1, iArr2, i3, i4, i5, i6);
    }

    public void modp_iNTT2_ext(int[] iArr, int i2, int i3, int[] iArr2, int i4, int i5, int i6, int i7) {
        int i8;
        if (i5 == 0) {
            return;
        }
        int iMkn = mkn(i5);
        int i9 = 1;
        int i10 = iMkn;
        int i11 = 1;
        while (true) {
            i8 = 0;
            if (i10 <= i9) {
                break;
            }
            i10 >>= 1;
            int i12 = i11 << 1;
            int i13 = 0;
            int i14 = 0;
            while (i13 < i10) {
                int i15 = iArr2[i4 + i10 + i13];
                int i16 = (i14 * i3) + i2;
                int i17 = (i11 * i3) + i16;
                int i18 = 0;
                while (i18 < i11) {
                    int i19 = iArr[i16];
                    int i20 = i9;
                    int i21 = iArr[i17];
                    iArr[i16] = modp_add(i19, i21, i6);
                    iArr[i17] = modp_montymul(modp_sub(i19, i21, i6), i15, i6, i7);
                    i18++;
                    i16 += i3;
                    i17 += i3;
                    i9 = i20;
                }
                i13++;
                i14 += i12;
            }
            i11 = i12;
        }
        int i22 = i9 << (31 - i5);
        int i23 = i2;
        while (i8 < iMkn) {
            iArr[i23] = modp_montymul(iArr[i23], i22, i6, i7);
            i8++;
            i23 += i3;
        }
    }

    public void modp_mkgm2(int[] iArr, int i2, int[] iArr2, int i3, int i4, int i5, int i6, int i7) {
        int iMkn = mkn(i4);
        int iModp_R2 = modp_R2(i6, i7);
        int iModp_montymul = modp_montymul(i5, iModp_R2, i6, i7);
        for (int i8 = i4; i8 < 10; i8++) {
            iModp_montymul = modp_montymul(iModp_montymul, iModp_montymul, i6, i7);
        }
        int iModp_div = modp_div(iModp_R2, iModp_montymul, i6, i7, modp_R(i6));
        int i9 = 10 - i4;
        int iModp_R = modp_R(i6);
        int iModp_montymul2 = iModp_R;
        for (int i10 = 0; i10 < iMkn; i10++) {
            short s = this.REV10[i10 << i9];
            iArr[i2 + s] = iModp_R;
            iArr2[i3 + s] = iModp_montymul2;
            iModp_R = modp_montymul(iModp_R, iModp_montymul, i6, i7);
            iModp_montymul2 = modp_montymul(iModp_montymul2, iModp_div, i6, i7);
        }
    }

    public int modp_montymul(int i2, int i3, int i4, int i5) {
        long unsignedLong = toUnsignedLong(i2) * toUnsignedLong(i3);
        int unsignedLong2 = ((int) (((((((long) i5) * unsignedLong) & toUnsignedLong(Integer.MAX_VALUE)) * ((long) i4)) + unsignedLong) >>> 31)) - i4;
        return unsignedLong2 + ((-(unsignedLong2 >>> 31)) & i4);
    }

    public int modp_ninv31(int i2) {
        int i3 = 2 - i2;
        int i4 = (2 - (i2 * i3)) * i3;
        int i5 = (2 - (i2 * i4)) * i4;
        int i6 = (2 - (i2 * i5)) * i5;
        return (-((2 - (i2 * i6)) * i6)) & Integer.MAX_VALUE;
    }

    public int modp_norm(int i2, int i3) {
        return i2 - ((((i2 - ((i3 + 1) >>> 1)) >>> 31) - 1) & i3);
    }

    public void modp_poly_rec_res(int[] iArr, int i2, int i3, int i4, int i5, int i6) {
        int i7 = 1 << (i3 - 1);
        for (int i8 = 0; i8 < i7; i8++) {
            int i9 = (i8 << 1) + i2;
            iArr[i2 + i8] = modp_montymul(modp_montymul(iArr[i9], iArr[i9 + 1], i4, i5), i6, i4, i5);
        }
    }

    public int modp_set(int i2, int i3) {
        return i2 + ((-(i2 >>> 31)) & i3);
    }

    public int modp_sub(int i2, int i3, int i4) {
        int i5 = i2 - i3;
        return i5 + ((-(i5 >>> 31)) & i4);
    }

    public void poly_big_to_fp(FalconFPR[] falconFPRArr, int i2, int[] iArr, int i3, int i4, int i5, int i6) {
        int iMkn = mkn(i6);
        if (i4 == 0) {
            for (int i7 = 0; i7 < iMkn; i7++) {
                falconFPRArr[i2 + i7] = this.fpr.fpr_zero;
            }
            return;
        }
        int i8 = i3;
        int i9 = 0;
        while (i9 < iMkn) {
            int i10 = -(iArr[(i8 + i4) - 1] >>> 30);
            int i11 = i10 >>> 1;
            int i12 = i10 & 1;
            FPREngine fPREngine = this.fpr;
            FalconFPR falconFPRFpr_add = fPREngine.fpr_zero;
            FalconFPR falconFPRFpr_mul = fPREngine.fpr_one;
            int i13 = 0;
            while (i13 < i4) {
                int i14 = (iArr[i8 + i13] ^ i11) + i12;
                i12 = i14 >>> 31;
                int i15 = i14 & Integer.MAX_VALUE;
                FPREngine fPREngine2 = this.fpr;
                falconFPRFpr_add = fPREngine2.fpr_add(falconFPRFpr_add, fPREngine2.fpr_mul(fPREngine2.fpr_of(i15 - ((i15 << 1) & i10)), falconFPRFpr_mul));
                i13++;
                FPREngine fPREngine3 = this.fpr;
                falconFPRFpr_mul = fPREngine3.fpr_mul(falconFPRFpr_mul, fPREngine3.fpr_ptwo31);
            }
            falconFPRArr[i2 + i9] = falconFPRFpr_add;
            i9++;
            i8 += i5;
        }
    }

    public int poly_big_to_small(byte[] bArr, int i2, int[] iArr, int i3, int i4, int i5) {
        int iMkn = mkn(i5);
        for (int i6 = 0; i6 < iMkn; i6++) {
            int iZint_one_to_plain = zint_one_to_plain(iArr, i3 + i6);
            if (iZint_one_to_plain < (-i4) || iZint_one_to_plain > i4) {
                return 0;
            }
            bArr[i2 + i6] = (byte) iZint_one_to_plain;
        }
        return 1;
    }

    public void poly_small_mkgauss(SHAKE256 shake256, byte[] bArr, int i2, int i3) {
        int iMkgauss;
        int iMkn = mkn(i3);
        int i4 = 0;
        for (int i5 = 0; i5 < iMkn; i5++) {
            while (true) {
                iMkgauss = mkgauss(shake256, i3);
                if (iMkgauss >= -127 && iMkgauss <= 127) {
                    if (i5 == iMkn - 1) {
                        if (((iMkgauss & 1) ^ i4) != 0) {
                            break;
                        }
                    } else {
                        i4 ^= iMkgauss & 1;
                        break;
                    }
                }
            }
            bArr[i2 + i5] = (byte) iMkgauss;
        }
    }

    public int poly_small_sqnorm(byte[] bArr, int i2, int i3) {
        int iMkn = mkn(i3);
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < iMkn; i6++) {
            byte b2 = bArr[i2 + i6];
            i4 += b2 * b2;
            i5 |= i4;
        }
        return (-(i5 >>> 31)) | i4;
    }

    public void poly_small_to_fp(FalconFPR[] falconFPRArr, int i2, byte[] bArr, int i3, int i4) {
        int iMkn = mkn(i4);
        for (int i5 = 0; i5 < iMkn; i5++) {
            falconFPRArr[i2 + i5] = this.fpr.fpr_of(bArr[i3 + i5]);
        }
    }

    public void poly_sub_scaled(int[] iArr, int i2, int i3, int i4, int[] iArr2, int i5, int i6, int i7, int[] iArr3, int i8, int i9, int i10, int i11) {
        int iMkn = mkn(i11);
        for (int i12 = 0; i12 < iMkn; i12++) {
            int i13 = i5;
            int i14 = -iArr3[i8 + i12];
            int i15 = (i12 * i4) + i2;
            for (int i16 = 0; i16 < iMkn; i16++) {
                zint_add_scaled_mul_small(iArr, i15, i3, iArr2, i13, i6, i14, i9, i10);
                if (i12 + i16 == iMkn - 1) {
                    i15 = i2;
                    i14 = -i14;
                } else {
                    i15 += i4;
                }
                i13 += i7;
            }
        }
    }

    public void poly_sub_scaled_ntt(int[] iArr, int i2, int i3, int i4, int[] iArr2, int i5, int i6, int i7, int[] iArr3, int i8, int i9, int i10, int i11, int[] iArr4, int i12) {
        int i13 = i6;
        int iMkn = mkn(i11);
        int i14 = i13 + 1;
        int iMkn2 = i12 + mkn(i11);
        int iMkn3 = iMkn2 + mkn(i11);
        int i15 = (iMkn * i14) + iMkn3;
        FalconSmallPrime[] falconSmallPrimeArr = FalconSmallPrimeList.PRIMES;
        int i16 = 0;
        int i17 = 0;
        while (i17 < i14) {
            int i18 = falconSmallPrimeArr[i17].p;
            int iModp_ninv31 = modp_ninv31(i18);
            int iModp_R2 = modp_R2(i18, iModp_ninv31);
            int iModp_Rx = modp_Rx(i13, i18, iModp_ninv31, iModp_R2);
            int i19 = i17;
            modp_mkgm2(iArr4, i12, iArr4, iMkn2, i11, falconSmallPrimeArr[i17].g, i18, iModp_ninv31);
            int i20 = iMkn2;
            for (int i21 = 0; i21 < iMkn; i21++) {
                iArr4[i15 + i21] = modp_set(iArr3[i8 + i21], i18);
            }
            int i22 = i15;
            modp_NTT2(iArr4, i22, iArr4, i12, i11, i18, iModp_ninv31);
            int i23 = i18;
            int i24 = iMkn3 + i19;
            int i25 = i5;
            int i26 = i24;
            int i27 = 0;
            while (i27 < iMkn) {
                int i28 = i23;
                int i29 = iModp_ninv31;
                int i30 = iModp_Rx;
                int iZint_mod_small_signed = zint_mod_small_signed(iArr2, i25, i6, i28, i29, iModp_R2, i30);
                i23 = i28;
                iArr4[i26] = iZint_mod_small_signed;
                i25 += i7;
                i26 += i14;
                iModp_Rx = i30;
                i27++;
                iModp_ninv31 = i29;
            }
            int i31 = i14;
            modp_NTT2_ext(iArr4, i24, i31, iArr4, i12, i11, i23, iModp_ninv31);
            int i32 = 0;
            while (i32 < iMkn) {
                iArr4[i24] = modp_montymul(modp_montymul(iArr4[i22 + i32], iArr4[i24], i23, iModp_ninv31), iModp_R2, i23, iModp_ninv31);
                i32++;
                i24 += i31;
            }
            modp_iNTT2_ext(iArr4, i24, i31, iArr4, i20, i11, i23, iModp_ninv31);
            i17 = i19 + 1;
            i14 = i31;
            i15 = i22;
            iMkn2 = i20;
            i13 = i6;
        }
        int i33 = i14;
        zint_rebuild_CRT(iArr4, iMkn3, i33, i33, iMkn, falconSmallPrimeArr, 1, iArr4, i15);
        int i34 = iMkn3;
        int i35 = i2;
        while (i16 < iMkn) {
            int i36 = i33;
            zint_sub_scaled(iArr, i35, i3, iArr4, i34, i36, i9, i10);
            i33 = i36;
            i16++;
            i35 += i4;
            i34 += i33;
        }
    }

    public int solve_NTRU(int i2, byte[] bArr, int i3, byte[] bArr2, int i4, byte[] bArr3, int i5, byte[] bArr4, int i6, int i7, int[] iArr, int i8) {
        byte[] bArr5;
        int i9;
        int iMkn = mkn(i2);
        if (solve_NTRU_deepest(i2, bArr3, i5, bArr4, i6, iArr, i8) == 0) {
            return 0;
        }
        int i10 = i2;
        if (i10 > 2) {
            int i11 = i2;
            while (true) {
                int i12 = i11 - 1;
                if (i11 <= 2) {
                    if (solve_NTRU_binary_depth1(i2, bArr3, i5, bArr4, i6, iArr, i8) != 0 && solve_NTRU_binary_depth0(i2, bArr3, i5, bArr4, i6, iArr, i8) != 0) {
                        break;
                    }
                    return 0;
                }
                if (solve_NTRU_intermediate(i2, bArr3, i5, bArr4, i6, i12, iArr, i8) == 0) {
                    return 0;
                }
                i11 = i12;
            }
        } else {
            int i13 = i10;
            while (true) {
                int i14 = i13 - 1;
                if (i13 <= 0) {
                    break;
                }
                if (solve_NTRU_intermediate(i10, bArr3, i5, bArr4, i6, i14, iArr, i8) == 0) {
                    return 0;
                }
                i10 = i2;
                i13 = i14;
            }
        }
        if (bArr2 == null) {
            bArr5 = new byte[iMkn];
            i9 = 0;
        } else {
            bArr5 = bArr2;
            i9 = i4;
        }
        if (poly_big_to_small(bArr, i3, iArr, i8, i7, i2) != 0) {
            int i15 = i8 + iMkn;
            byte[] bArr6 = bArr5;
            int i16 = i9;
            if (poly_big_to_small(bArr6, i16, iArr, i15, i7, i2) != 0) {
                int i17 = i15 + iMkn;
                int i18 = i17 + iMkn;
                int i19 = i18 + iMkn;
                FalconSmallPrime[] falconSmallPrimeArr = FalconSmallPrimeList.PRIMES;
                int i20 = falconSmallPrimeArr[0].p;
                int iModp_ninv31 = modp_ninv31(i20);
                modp_mkgm2(iArr, i19, iArr, i8, i2, falconSmallPrimeArr[0].g, i20, iModp_ninv31);
                for (int i21 = 0; i21 < iMkn; i21++) {
                    iArr[i8 + i21] = modp_set(bArr6[i16 + i21], i20);
                }
                for (int i22 = 0; i22 < iMkn; i22++) {
                    iArr[i15 + i22] = modp_set(bArr3[i5 + i22], i20);
                    iArr[i17 + i22] = modp_set(bArr4[i6 + i22], i20);
                    iArr[i18 + i22] = modp_set(bArr[i3 + i22], i20);
                }
                modp_NTT2(iArr, i15, iArr, i19, i2, i20, iModp_ninv31);
                modp_NTT2(iArr, i17, iArr, i19, i2, i20, iModp_ninv31);
                modp_NTT2(iArr, i18, iArr, i19, i2, i20, iModp_ninv31);
                modp_NTT2(iArr, i8, iArr, i19, i2, i20, iModp_ninv31);
                int iModp_montymul = modp_montymul(12289, 1, i20, iModp_ninv31);
                for (int i23 = 0; i23 < iMkn; i23++) {
                    if (modp_sub(modp_montymul(iArr[i15 + i23], iArr[i8 + i23], i20, iModp_ninv31), modp_montymul(iArr[i17 + i23], iArr[i18 + i23], i20, iModp_ninv31), i20) != iModp_montymul) {
                        return 0;
                    }
                }
                return 1;
            }
        }
        return 0;
    }

    public int solve_NTRU_binary_depth0(int i2, byte[] bArr, int i3, byte[] bArr2, int i4, int[] iArr, int i5) {
        int i6 = 1;
        int i7 = 1 << i2;
        int i8 = i7 >> 1;
        FalconSmallPrime[] falconSmallPrimeArr = FalconSmallPrimeList.PRIMES;
        int i9 = 0;
        int i10 = falconSmallPrimeArr[0].p;
        int iModp_ninv31 = modp_ninv31(i10);
        int iModp_R2 = modp_R2(i10, iModp_ninv31);
        int i11 = i5 + i8;
        int i12 = i11 + i8;
        int i13 = i12 + i7;
        int i14 = i13 + i7;
        int i15 = i14 + i7;
        modp_mkgm2(iArr, i14, iArr, i15, i2, falconSmallPrimeArr[0].g, i10, iModp_ninv31);
        for (int i16 = 0; i16 < i8; i16++) {
            int i17 = i5 + i16;
            iArr[i17] = modp_set(zint_one_to_plain(iArr, i17), i10);
            int i18 = i11 + i16;
            iArr[i18] = modp_set(zint_one_to_plain(iArr, i18), i10);
        }
        int i19 = i2 - 1;
        modp_NTT2(iArr, i5, iArr, i14, i19, i10, iModp_ninv31);
        modp_NTT2(iArr, i11, iArr, i14, i19, i10, iModp_ninv31);
        for (int i20 = 0; i20 < i7; i20++) {
            iArr[i12 + i20] = modp_set(bArr[i3 + i20], i10);
            iArr[i13 + i20] = modp_set(bArr2[i4 + i20], i10);
        }
        modp_NTT2(iArr, i12, iArr, i14, i2, i10, iModp_ninv31);
        modp_NTT2(iArr, i13, iArr, i14, i2, i10, iModp_ninv31);
        int i21 = 0;
        while (i21 < i7) {
            int i22 = i12 + i21;
            int i23 = iArr[i22];
            int i24 = i22 + 1;
            int i25 = iArr[i24];
            int i26 = i13 + i21;
            int i27 = i6;
            int i28 = iArr[i26];
            int i29 = i26 + 1;
            int i30 = i9;
            int i31 = iArr[i29];
            int i32 = i21 >> 1;
            int i33 = i21;
            int iModp_montymul = modp_montymul(iArr[i5 + i32], iModp_R2, i10, iModp_ninv31);
            int iModp_montymul2 = modp_montymul(iArr[i11 + i32], iModp_R2, i10, iModp_ninv31);
            iArr[i22] = modp_montymul(i31, iModp_montymul, i10, iModp_ninv31);
            iArr[i24] = modp_montymul(i28, iModp_montymul, i10, iModp_ninv31);
            iArr[i26] = modp_montymul(i25, iModp_montymul2, i10, iModp_ninv31);
            iArr[i29] = modp_montymul(i23, iModp_montymul2, i10, iModp_ninv31);
            i21 = i33 + 2;
            i6 = i27;
            i9 = i30;
        }
        int i34 = i6;
        int i35 = i9;
        modp_iNTT2(iArr, i12, iArr, i15, i2, i10, iModp_ninv31);
        modp_iNTT2(iArr, i13, iArr, i15, i2, i10, iModp_ninv31);
        int i36 = i5 + i7;
        int i37 = i36 + i7;
        System.arraycopy(iArr, i12, iArr, i5, i7 * 2);
        int i38 = i37 + i7;
        int i39 = i38 + i7;
        int i40 = i39 + i7;
        int i41 = i40 + i7;
        modp_mkgm2(iArr, i37, iArr, i38, i2, FalconSmallPrimeList.PRIMES[i35].g, i10, iModp_ninv31);
        modp_NTT2(iArr, i5, iArr, i37, i2, i10, iModp_ninv31);
        modp_NTT2(iArr, i36, iArr, i37, i2, i10, iModp_ninv31);
        int iModp_set = modp_set(bArr[i3], i10);
        iArr[i41] = iModp_set;
        iArr[i40] = iModp_set;
        for (int i42 = i34; i42 < i7; i42++) {
            int i43 = i3 + i42;
            iArr[i40 + i42] = modp_set(bArr[i43], i10);
            iArr[(i41 + i7) - i42] = modp_set(-bArr[i43], i10);
        }
        modp_NTT2(iArr, i40, iArr, i37, i2, i10, iModp_ninv31);
        modp_NTT2(iArr, i41, iArr, i37, i2, i10, iModp_ninv31);
        for (int i44 = i35; i44 < i7; i44++) {
            int iModp_montymul3 = modp_montymul(iArr[i41 + i44], iModp_R2, i10, iModp_ninv31);
            iArr[i38 + i44] = modp_montymul(iModp_montymul3, iArr[i5 + i44], i10, iModp_ninv31);
            iArr[i39 + i44] = modp_montymul(iModp_montymul3, iArr[i40 + i44], i10, iModp_ninv31);
        }
        int iModp_set2 = modp_set(bArr2[i4], i10);
        iArr[i41] = iModp_set2;
        iArr[i40] = iModp_set2;
        for (int i45 = i34; i45 < i7; i45++) {
            int i46 = i4 + i45;
            iArr[i40 + i45] = modp_set(bArr2[i46], i10);
            iArr[(i41 + i7) - i45] = modp_set(-bArr2[i46], i10);
        }
        modp_NTT2(iArr, i40, iArr, i37, i2, i10, iModp_ninv31);
        modp_NTT2(iArr, i41, iArr, i37, i2, i10, iModp_ninv31);
        for (int i47 = i35; i47 < i7; i47++) {
            int iModp_montymul4 = modp_montymul(iArr[i41 + i47], iModp_R2, i10, iModp_ninv31);
            int i48 = i38 + i47;
            iArr[i48] = modp_add(iArr[i48], modp_montymul(iModp_montymul4, iArr[i36 + i47], i10, iModp_ninv31), i10);
            int i49 = i39 + i47;
            iArr[i49] = modp_add(iArr[i49], modp_montymul(iModp_montymul4, iArr[i40 + i47], i10, iModp_ninv31), i10);
        }
        int i50 = iModp_ninv31;
        modp_mkgm2(iArr, i37, iArr, i40, i2, FalconSmallPrimeList.PRIMES[i35].g, i10, i50);
        modp_iNTT2(iArr, i38, iArr, i40, i2, i10, i50);
        modp_iNTT2(iArr, i39, iArr, i40, i2, i10, i50);
        for (int i51 = i35; i51 < i7; i51++) {
            int i52 = i38 + i51;
            iArr[i37 + i51] = modp_norm(iArr[i52], i10);
            iArr[i52] = modp_norm(iArr[i39 + i51], i10);
        }
        FalconFPR[] falconFPRArr = new FalconFPR[i7 * 3];
        int i53 = i7 + i7;
        for (int i54 = i35; i54 < i7; i54++) {
            falconFPRArr[i53 + i54] = this.fpr.fpr_of(iArr[i38 + i54]);
        }
        this.fft.FFT(falconFPRArr, i53, i2);
        System.arraycopy(falconFPRArr, i53, falconFPRArr, i7, i8);
        int i55 = i7 + i8;
        int i56 = i35;
        while (i56 < i7) {
            falconFPRArr[i55 + i56] = this.fpr.fpr_of(iArr[i37 + i56]);
            i56++;
            i36 = i36;
            i50 = i50;
        }
        int i57 = i50;
        int i58 = i36;
        this.fft.FFT(falconFPRArr, i55, i2);
        this.fft.poly_div_autoadj_fft(falconFPRArr, i55, falconFPRArr, i7, i2);
        this.fft.iFFT(falconFPRArr, i55, i2);
        for (int i59 = i35; i59 < i7; i59++) {
            iArr[i37 + i59] = modp_set((int) this.fpr.fpr_rint(falconFPRArr[i55 + i59]), i10);
        }
        modp_mkgm2(iArr, i38, iArr, i39, i2, FalconSmallPrimeList.PRIMES[i35].g, i10, i57);
        for (int i60 = i35; i60 < i7; i60++) {
            iArr[i40 + i60] = modp_set(bArr[i3 + i60], i10);
            iArr[i41 + i60] = modp_set(bArr2[i4 + i60], i10);
        }
        modp_NTT2(iArr, i37, iArr, i38, i2, i10, i57);
        modp_NTT2(iArr, i40, iArr, i38, i2, i10, i57);
        modp_NTT2(iArr, i41, iArr, i38, i2, i10, i57);
        for (int i61 = i35; i61 < i7; i61++) {
            int iModp_montymul5 = modp_montymul(iArr[i37 + i61], iModp_R2, i10, i57);
            int i62 = i5 + i61;
            iArr[i62] = modp_sub(iArr[i62], modp_montymul(iModp_montymul5, iArr[i40 + i61], i10, i57), i10);
            int i63 = i58 + i61;
            iArr[i63] = modp_sub(iArr[i63], modp_montymul(iModp_montymul5, iArr[i41 + i61], i10, i57), i10);
        }
        modp_iNTT2(iArr, i5, iArr, i39, i2, i10, i57);
        modp_iNTT2(iArr, i58, iArr, i39, i2, i10, i57);
        for (int i64 = i35; i64 < i7; i64++) {
            int i65 = i5 + i64;
            iArr[i65] = modp_norm(iArr[i65], i10);
            int i66 = i58 + i64;
            iArr[i66] = modp_norm(iArr[i66], i10);
        }
        return i34;
    }

    public int solve_NTRU_binary_depth1(int i2, byte[] bArr, int i3, byte[] bArr2, int i4, int[] iArr, int i5) {
        int i6;
        FalconKeyGen falconKeyGen = this;
        int i7 = 1;
        int i8 = 1 << i2;
        int i9 = i2 - 1;
        int i10 = 1 << i9;
        int i11 = i10 >> 1;
        int[] iArr2 = falconKeyGen.MAX_BL_SMALL;
        int i12 = iArr2[1];
        int i13 = iArr2[2];
        int i14 = falconKeyGen.MAX_BL_LARGE[1];
        int i15 = i13 * i11;
        int i16 = i5 + i15;
        int i17 = i16 + i15;
        int i18 = i14 * i10;
        int i19 = i17 + i18;
        int i20 = 0;
        int i21 = 0;
        while (i21 < i14) {
            int i22 = FalconSmallPrimeList.PRIMES[i21].p;
            int i23 = i20;
            int iModp_ninv31 = falconKeyGen.modp_ninv31(i22);
            int i24 = i21;
            int iModp_R2 = falconKeyGen.modp_R2(i22, iModp_ninv31);
            int i25 = i19;
            int iModp_Rx = falconKeyGen.modp_Rx(i13, i22, iModp_ninv31, iModp_R2);
            int i26 = i17 + i24;
            int i27 = i25 + i24;
            int i28 = i18;
            int i29 = i5;
            int i30 = i7;
            int i31 = i16;
            int i32 = i23;
            while (i32 < i11) {
                int i33 = i29;
                iArr[i26] = falconKeyGen.zint_mod_small_signed(iArr, i29, i13, i22, iModp_ninv31, iModp_R2, iModp_Rx);
                falconKeyGen = this;
                int i34 = i31;
                iArr[i27] = falconKeyGen.zint_mod_small_signed(iArr, i34, i13, i22, iModp_ninv31, iModp_R2, iModp_Rx);
                i26 += i14;
                i27 += i14;
                i31 = i34 + i13;
                i29 = i33 + i13;
                i25 = i25;
                i11 = i11;
                i24 = i24;
                i17 = i17;
                i32++;
                i28 = i28;
                i12 = i12;
            }
            i21 = i24 + 1;
            i17 = i17;
            i19 = i25;
            i18 = i28;
            i12 = i12;
            i11 = i11;
            i7 = i30;
            i20 = 0;
        }
        int i35 = i7;
        int i36 = i11;
        int i37 = i12;
        int i38 = i17;
        int i39 = i18;
        int[] iArr3 = iArr;
        System.arraycopy(iArr3, i38, iArr3, i5, i39);
        int i40 = i5 + i39;
        System.arraycopy(iArr3, i19, iArr3, i40, i39);
        int i41 = i40 + i39;
        int i42 = i37 * i10;
        int i43 = i41 + i42;
        int i44 = i43 + i42;
        int i45 = 0;
        while (i45 < i14) {
            FalconSmallPrime[] falconSmallPrimeArr = FalconSmallPrimeList.PRIMES;
            int i46 = falconSmallPrimeArr[i45].p;
            int iModp_ninv32 = falconKeyGen.modp_ninv31(i46);
            int iModp_R3 = falconKeyGen.modp_R2(i46, iModp_ninv32);
            int i47 = i45;
            int i48 = i44;
            int i49 = i48 + i8;
            int i50 = i49 + i10;
            int i51 = i50 + i8;
            int i52 = i14;
            falconKeyGen.modp_mkgm2(iArr3, i48, iArr, i49, i2, falconSmallPrimeArr[i47].g, i46, iModp_ninv32);
            for (int i53 = 0; i53 < i8; i53++) {
                i6 = i46;
                iArr[i50 + i53] = falconKeyGen.modp_set(bArr[i3 + i53], i6);
                iArr[i51 + i53] = falconKeyGen.modp_set(bArr2[i4 + i53], i6);
            }
            i6 = i46;
            falconKeyGen.modp_NTT2(iArr, i50, iArr, i48, i2, i6, iModp_ninv32);
            modp_NTT2(iArr, i51, iArr, i48, i2, i6, iModp_ninv32);
            int i54 = i48;
            int i55 = i2;
            while (i55 > i9) {
                int i56 = i6;
                int i57 = iModp_R3;
                int i58 = i50;
                modp_poly_rec_res(iArr, i58, i55, i56, iModp_ninv32, i57);
                modp_poly_rec_res(iArr, i51, i55, i56, iModp_ninv32, i57);
                i6 = i56;
                i55--;
                i50 = i58;
                i54 = i54;
                iModp_R3 = i57;
            }
            int i59 = iModp_R3;
            int i60 = i54;
            int i61 = i60 + i10;
            System.arraycopy(iArr, i49, iArr, i61, i10);
            int i62 = i61 + i10;
            System.arraycopy(iArr, i50, iArr, i62, i10);
            int i63 = i62 + i10;
            System.arraycopy(iArr, i51, iArr, i63, i10);
            int i64 = i63 + i10;
            int i65 = i64 + i36;
            int i66 = i5 + i47;
            int i67 = i40 + i47;
            int i68 = i36;
            int i69 = i40;
            int i70 = i66;
            int i71 = i67;
            int i72 = 0;
            while (i72 < i68) {
                iArr[i64 + i72] = iArr[i70];
                iArr[i65 + i72] = iArr[i71];
                i72++;
                i70 += i52;
                i71 += i52;
            }
            int i73 = i2 - 2;
            modp_NTT2(iArr, i64, iArr, i60, i73, i6, iModp_ninv32);
            int i74 = i65;
            modp_NTT2(iArr, i74, iArr, i60, i73, i6, iModp_ninv32);
            int i75 = i66;
            int i76 = i67;
            int i77 = 0;
            while (i77 < i68) {
                int i78 = i77 << 1;
                int i79 = i62 + i78;
                int i80 = i75;
                int i81 = iArr[i79];
                int i82 = i74;
                int i83 = iArr[i79 + 1];
                int i84 = i63 + i78;
                int i85 = i76;
                int i86 = iArr[i84];
                int i87 = iArr[i84 + 1];
                int i88 = i77;
                int iModp_montymul = modp_montymul(iArr[i64 + i77], i59, i6, iModp_ninv32);
                int i89 = i8;
                int iModp_montymul2 = modp_montymul(iArr[i82 + i88], i59, i6, iModp_ninv32);
                iArr[i80] = modp_montymul(i87, iModp_montymul, i6, iModp_ninv32);
                iArr[i80 + i52] = modp_montymul(i86, iModp_montymul, i6, iModp_ninv32);
                iArr[i85] = modp_montymul(i83, iModp_montymul2, i6, iModp_ninv32);
                iArr[i85 + i52] = modp_montymul(i81, iModp_montymul2, i6, iModp_ninv32);
                i77 = i88 + 1;
                int i90 = i52 << 1;
                i76 = i85 + i90;
                i75 = i80 + i90;
                i74 = i82;
                i8 = i89;
            }
            int i91 = i8;
            int i92 = i6;
            int i93 = i9;
            modp_iNTT2_ext(iArr, i66, i52, iArr, i61, i93, i92, iModp_ninv32);
            modp_iNTT2_ext(iArr, i67, i52, iArr, i61, i93, i92, iModp_ninv32);
            int i94 = i37;
            if (i47 < i94) {
                modp_iNTT2(iArr, i62, iArr, i61, i93, i92, iModp_ninv32);
                modp_iNTT2(iArr, i63, iArr, i61, i93, i92, iModp_ninv32);
                int i95 = i41 + i47;
                int i96 = i43 + i47;
                int i97 = 0;
                while (i97 < i10) {
                    iArr[i95] = iArr[i62 + i97];
                    iArr[i96] = iArr[i63 + i97];
                    i97++;
                    i95 += i94;
                    i96 += i94;
                }
            }
            i45 = i47 + 1;
            i36 = i68;
            i40 = i69;
            falconKeyGen = this;
            iArr3 = iArr;
            i37 = i94;
            i44 = i60;
            i14 = i52;
            i9 = i93;
            i8 = i91;
        }
        int i98 = i44;
        int i99 = i14;
        int i100 = i9;
        int i101 = i37;
        int i102 = i10 << 1;
        FalconSmallPrime[] falconSmallPrimeArr2 = FalconSmallPrimeList.PRIMES;
        zint_rebuild_CRT(iArr, i5, i99, i99, i102, falconSmallPrimeArr2, 1, iArr, i98);
        zint_rebuild_CRT(iArr, i41, i101, i101, i102, falconSmallPrimeArr2, 1, iArr, i98);
        FalconFPR[] falconFPRArr = new FalconFPR[i10];
        FalconFPR[] falconFPRArr2 = new FalconFPR[i10];
        poly_big_to_fp(falconFPRArr, 0, iArr, i5, i99, i99, i100);
        poly_big_to_fp(falconFPRArr2, 0, iArr, i40, i99, i99, i100);
        System.arraycopy(iArr, i41, iArr, i5, i101 * 2 * i10);
        FalconFPR[] falconFPRArr3 = new FalconFPR[i10];
        FalconFPR[] falconFPRArr4 = new FalconFPR[i10];
        poly_big_to_fp(falconFPRArr3, 0, iArr, i5, i101, i101, i100);
        poly_big_to_fp(falconFPRArr4, 0, iArr, i5 + i42, i101, i101, i100);
        this.fft.FFT(falconFPRArr, 0, i100);
        this.fft.FFT(falconFPRArr2, 0, i100);
        this.fft.FFT(falconFPRArr3, 0, i100);
        this.fft.FFT(falconFPRArr4, 0, i100);
        FalconFPR[] falconFPRArr5 = new FalconFPR[i10];
        FalconFPR[] falconFPRArr6 = new FalconFPR[i36];
        this.fft.poly_add_muladj_fft(falconFPRArr5, 0, falconFPRArr, 0, falconFPRArr2, 0, falconFPRArr3, 0, falconFPRArr4, 0, i100);
        this.fft.poly_invnorm2_fft(falconFPRArr6, 0, falconFPRArr3, 0, falconFPRArr4, 0, i100);
        this.fft.poly_mul_autoadj_fft(falconFPRArr5, 0, falconFPRArr6, 0, i100);
        this.fft.iFFT(falconFPRArr5, 0, i100);
        for (int i103 = 0; i103 < i10; i103++) {
            FalconFPR falconFPR = falconFPRArr5[i103];
            FPREngine fPREngine = this.fpr;
            if (!fPREngine.fpr_lt(falconFPR, fPREngine.fpr_ptwo63m1)) {
                return 0;
            }
            FPREngine fPREngine2 = this.fpr;
            if (!fPREngine2.fpr_lt(fPREngine2.fpr_mtwo63m1, falconFPR)) {
                return 0;
            }
            FPREngine fPREngine3 = this.fpr;
            falconFPRArr5[i103] = fPREngine3.fpr_of(fPREngine3.fpr_rint(falconFPR));
        }
        this.fft.FFT(falconFPRArr5, 0, i100);
        this.fft.poly_mul_fft(falconFPRArr3, 0, falconFPRArr5, 0, i100);
        this.fft.poly_mul_fft(falconFPRArr4, 0, falconFPRArr5, 0, i100);
        this.fft.poly_sub(falconFPRArr, 0, falconFPRArr3, 0, i100);
        this.fft.poly_sub(falconFPRArr2, 0, falconFPRArr4, 0, i100);
        this.fft.iFFT(falconFPRArr, 0, i100);
        this.fft.iFFT(falconFPRArr2, 0, i100);
        int i104 = i5 + i10;
        for (int i105 = 0; i105 < i10; i105++) {
            iArr[i5 + i105] = (int) this.fpr.fpr_rint(falconFPRArr[i105]);
            iArr[i104 + i105] = (int) this.fpr.fpr_rint(falconFPRArr2[i105]);
        }
        return i35;
    }

    public int solve_NTRU_deepest(int i2, byte[] bArr, int i3, byte[] bArr2, int i4, int[] iArr, int i5) {
        int i6 = this.MAX_BL_SMALL[i2];
        FalconSmallPrime[] falconSmallPrimeArr = FalconSmallPrimeList.PRIMES;
        int i7 = i5 + i6;
        int i8 = i7 + i6;
        int i9 = i8 + i6;
        int i10 = i9 + i6;
        make_fg(iArr, i8, bArr, i3, bArr2, i4, i2, i2, 0);
        zint_rebuild_CRT(iArr, i8, i6, i6, 2, falconSmallPrimeArr, 0, iArr, i10);
        return (zint_bezout(iArr, i7, iArr, i5, iArr, i8, iArr, i9, i6, iArr, i10) != 0 && zint_mul_small(iArr, i5, i6, 12289) == 0 && zint_mul_small(iArr, i7, i6, 12289) == 0) ? 1 : 0;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0493 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:74:0x0495  */
    /* JADX WARN: Code duplicated, block: B:76:0x049f  */
    /* JADX WARN: Code duplicated, block: B:78:0x04ad A[LOOP:11: B:77:0x04ab->B:78:0x04ad, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:81:0x04c2 A[LOOP:12: B:80:0x04c0->B:81:0x04c2, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:83:0x04cf  */
    /* JADX WARN: Code duplicated, block: B:87:0x04da A[LOOP:13: B:85:0x04d6->B:87:0x04da, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:89:0x04e3  */
    /* JADX WARN: Code duplicated, block: B:91:0x04e9  */
    /* JADX WARN: Code duplicated, block: B:92:0x04ec  */
    public int solve_NTRU_intermediate(int i2, byte[] bArr, int i3, byte[] bArr2, int i4, int i5, int[] iArr, int i6) {
        FalconFPR falconFPRFpr_sqr;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int[] iArr2;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        FalconSmallPrime[] falconSmallPrimeArr;
        int i28;
        int i29;
        int i30;
        int i31;
        int i32;
        int i33;
        int i34;
        int i35;
        int i36;
        int i37;
        int i38;
        FalconKeyGen falconKeyGen = this;
        int i39 = i2 - i5;
        int i40 = 1 << i39;
        int i41 = i40 >> 1;
        int[] iArr3 = falconKeyGen.MAX_BL_SMALL;
        int i42 = iArr3[i5];
        int i43 = iArr3[i5 + 1];
        int i44 = falconKeyGen.MAX_BL_LARGE[i5];
        FalconSmallPrime[] falconSmallPrimeArr2 = FalconSmallPrimeList.PRIMES;
        int i45 = i43 * i41;
        int i46 = i6 + i45 + i45;
        int[] iArr4 = iArr;
        int i47 = i40;
        int i48 = i44;
        falconKeyGen.make_fg(iArr4, i46, bArr, i3, bArr2, i4, i2, i5, 1);
        int i49 = i47 * i48;
        int i50 = i6 + i49;
        int i51 = i50 + i49;
        System.arraycopy(iArr4, i46, iArr4, i51, i47 * 2 * i42);
        int i52 = i42 * i47;
        int i53 = i51 + i52;
        int i54 = i53 + i52;
        System.arraycopy(iArr4, i6, iArr4, i54, i41 * 2 * i43);
        int i55 = i54 + i45;
        int i56 = 0;
        int i57 = 0;
        while (i57 < i48) {
            int i58 = falconSmallPrimeArr2[i57].p;
            int iModp_ninv31 = falconKeyGen.modp_ninv31(i58);
            int iModp_R2 = falconKeyGen.modp_R2(i58, iModp_ninv31);
            int iModp_Rx = falconKeyGen.modp_Rx(i43, i58, iModp_ninv31, iModp_R2);
            int i59 = i6 + i57;
            int i60 = i50 + i57;
            int i61 = i56;
            int i62 = i51;
            int i63 = i55;
            int i64 = i61;
            int i65 = i54;
            while (true) {
                i36 = i61;
                i37 = i57;
                i38 = i43;
                if (i64 < i41) {
                    int i66 = i65;
                    iArr[i59] = falconKeyGen.zint_mod_small_signed(iArr4, i65, i38, i58, iModp_ninv31, iModp_R2, iModp_Rx);
                    falconKeyGen = this;
                    int i67 = i63;
                    iArr[i60] = falconKeyGen.zint_mod_small_signed(iArr, i67, i38, i58, iModp_ninv31, iModp_R2, iModp_Rx);
                    i64++;
                    int i68 = i66 + i38;
                    i63 = i67 + i38;
                    i59 += i48;
                    i60 += i48;
                    i43 = i38;
                    i57 = i37;
                    i61 = i36;
                    i65 = i68;
                    iArr4 = iArr;
                }
            }
            i51 = i62;
            i56 = i36;
            i43 = i38;
            i57 = i37 + 1;
            iArr4 = iArr;
        }
        int i69 = i51;
        int i70 = i56;
        while (i70 < i48) {
            int i71 = falconSmallPrimeArr2[i70].p;
            int iModp_ninv32 = falconKeyGen.modp_ninv31(i71);
            int iModp_R3 = falconKeyGen.modp_R2(i71, iModp_ninv32);
            if (i70 == i42) {
                i27 = i42;
                FalconSmallPrime[] falconSmallPrimeArr3 = falconSmallPrimeArr2;
                int i72 = i47;
                int i73 = i69;
                falconKeyGen.zint_rebuild_CRT(iArr, i73, i27, i42, i72, falconSmallPrimeArr3, 1, iArr, i54);
                i29 = i73;
                zint_rebuild_CRT(iArr, i53, i27, i27, i72, falconSmallPrimeArr3, 1, iArr, i54);
                falconSmallPrimeArr = falconSmallPrimeArr3;
                i28 = i72;
            } else {
                i27 = i42;
                falconSmallPrimeArr = falconSmallPrimeArr2;
                i28 = i47;
                i29 = i69;
            }
            int i74 = i54 + i28;
            int i75 = i74 + i28;
            int i76 = i75 + i28;
            int i77 = i54;
            int i78 = i39;
            int i79 = iModp_ninv32;
            int i80 = i27;
            int i81 = i71;
            modp_mkgm2(iArr, i77, iArr, i74, i78, falconSmallPrimeArr[i70].g, i81, i79);
            if (i70 < i80) {
                int i82 = i29 + i70;
                int i83 = i53 + i70;
                int i84 = i82;
                int i85 = i83;
                int i86 = 0;
                while (i86 < i28) {
                    iArr[i75 + i86] = iArr[i84];
                    iArr[i76 + i86] = iArr[i85];
                    i86++;
                    i84 += i80;
                    i85 += i80;
                }
                modp_iNTT2_ext(iArr, i82, i80, iArr, i74, i78, i81, i79);
                modp_iNTT2_ext(iArr, i83, i80, iArr, i74, i78, i81, i79);
                i30 = i74;
                i35 = i79;
                i31 = i77;
                i32 = i75;
                i33 = i76;
                i34 = i78;
            } else {
                FalconKeyGen falconKeyGen2 = this;
                i30 = i74;
                int i87 = i81;
                int iModp_Rx2 = falconKeyGen2.modp_Rx(i80, i87, i79, iModp_R3);
                int i88 = i29;
                int i89 = i53;
                int i90 = 0;
                while (i90 < i28) {
                    int i91 = i87;
                    int i92 = i79;
                    int i93 = iModp_R3;
                    int i94 = i90;
                    int iZint_mod_small_signed = falconKeyGen2.zint_mod_small_signed(iArr, i88, i80, i91, i92, i93, iModp_Rx2);
                    int i95 = i88;
                    int i96 = iModp_Rx2;
                    iArr[i75 + i90] = iZint_mod_small_signed;
                    int i97 = i89;
                    iArr[i76 + i94] = zint_mod_small_signed(iArr, i97, i80, i91, i92, i93, i96);
                    i90 = i94 + 1;
                    i89 = i97 + i80;
                    i88 = i95 + i80;
                    i79 = i92;
                    iModp_R3 = i93;
                    i87 = i91;
                    iModp_Rx2 = i96;
                    falconKeyGen2 = this;
                }
                int i98 = i87;
                int i99 = i79;
                i31 = i77;
                i80 = i80;
                modp_NTT2(iArr, i75, iArr, i31, i78, i98, i99);
                i32 = i75;
                modp_NTT2(iArr, i76, iArr, i31, i78, i98, i99);
                i33 = i76;
                i34 = i78;
                i35 = i99;
                i81 = i98;
            }
            int i100 = i33 + i28;
            int i101 = i100 + i41;
            int i102 = i6 + i70;
            int i103 = i50 + i70;
            int i104 = i102;
            int i105 = i103;
            int i106 = 0;
            while (i106 < i41) {
                iArr[i100 + i106] = iArr[i104];
                iArr[i101 + i106] = iArr[i105];
                i106++;
                i104 += i48;
                i105 += i48;
            }
            int i107 = i81;
            int i108 = i35;
            int i109 = i34 - 1;
            modp_NTT2(iArr, i100, iArr, i31, i109, i107, i108);
            int i110 = i101;
            modp_NTT2(iArr, i110, iArr, i31, i109, i107, i108);
            int i111 = i28;
            i54 = i31;
            int i112 = i102;
            int i113 = i103;
            int i114 = 0;
            while (i114 < i41) {
                int i115 = i114 << 1;
                int i116 = i32 + i115;
                int i117 = i114;
                int i118 = iArr[i116];
                int i119 = i110;
                int i120 = iArr[i116 + 1];
                int i121 = i33 + i115;
                int i122 = i112;
                int i123 = iArr[i121];
                int i124 = iArr[i121 + 1];
                int i125 = i113;
                int iModp_montymul = modp_montymul(iArr[i100 + i117], iModp_R3, i107, i108);
                int i126 = i34;
                int iModp_montymul2 = modp_montymul(iArr[i119 + i117], iModp_R3, i107, i108);
                iArr[i122] = modp_montymul(i124, iModp_montymul, i107, i108);
                iArr[i122 + i48] = modp_montymul(i123, iModp_montymul, i107, i108);
                iArr[i125] = modp_montymul(i120, iModp_montymul2, i107, i108);
                iArr[i125 + i48] = modp_montymul(i118, iModp_montymul2, i107, i108);
                i114 = i117 + 1;
                int i127 = i48 << 1;
                i112 = i122 + i127;
                i113 = i125 + i127;
                i110 = i119;
                i34 = i126;
            }
            int i128 = i34;
            int i129 = i30;
            modp_iNTT2_ext(iArr, i102, i48, iArr, i129, i128, i107, i108);
            falconKeyGen = this;
            falconKeyGen.modp_iNTT2_ext(iArr, i103, i48, iArr, i129, i128, i107, i108);
            i70++;
            i42 = i80;
            i69 = i29;
            falconSmallPrimeArr2 = falconSmallPrimeArr;
            i47 = i111;
            i39 = i128;
        }
        int i130 = i39;
        int i131 = i42;
        FalconSmallPrime[] falconSmallPrimeArr4 = falconSmallPrimeArr2;
        int i132 = i47;
        int i133 = i69;
        int i134 = i5;
        zint_rebuild_CRT(iArr, i6, i48, i48, i132, falconSmallPrimeArr4, 1, iArr, i54);
        zint_rebuild_CRT(iArr, i50, i48, i48, i132, falconSmallPrimeArr4, 1, iArr, i54);
        int i135 = i50;
        int i136 = i132;
        FalconFPR[] falconFPRArr = new FalconFPR[i136];
        FalconFPR[] falconFPRArr2 = new FalconFPR[i136];
        FalconFPR[] falconFPRArr3 = new FalconFPR[i136];
        FalconFPR[] falconFPRArr4 = new FalconFPR[i41];
        FalconFPR[] falconFPRArr5 = new FalconFPR[i136];
        int i137 = i54;
        int[] iArr5 = new int[i136];
        int i138 = i131 > 10 ? 10 : i131;
        int i139 = (i133 + i131) - i138;
        FalconFPR[] falconFPRArr6 = falconFPRArr;
        poly_big_to_fp(falconFPRArr2, 0, iArr, i139, i138, i131, i130);
        int i140 = i138;
        poly_big_to_fp(falconFPRArr3, 0, iArr, (i53 + i131) - i140, i140, i131, i130);
        int i141 = i131;
        int i142 = (i141 - i140) * 31;
        int i143 = this.bitlength_avg[i134];
        int i144 = this.bitlength_std[i134];
        int i145 = i143 - (i144 * 6);
        int i146 = (i144 * 6) + i143;
        this.fft.FFT(falconFPRArr2, 0, i130);
        this.fft.FFT(falconFPRArr3, 0, i130);
        FalconKeyGen falconKeyGen3 = this;
        this.fft.poly_invnorm2_fft(falconFPRArr4, 0, falconFPRArr2, 0, falconFPRArr3, 0, i130);
        FalconFPR[] falconFPRArr7 = falconFPRArr2;
        FalconFPR[] falconFPRArr8 = falconFPRArr3;
        int i147 = i130;
        falconKeyGen3.fft.poly_adj_fft(falconFPRArr7, 0, i147);
        falconKeyGen3.fft.poly_adj_fft(falconFPRArr8, 0, i147);
        int i148 = i48 * 31;
        int i149 = i148 - i145;
        int i150 = i48;
        int i151 = 10;
        while (true) {
            int i152 = i147;
            int i153 = i150 > i151 ? i151 : i150;
            int i154 = i151;
            FalconKeyGen falconKeyGen4 = falconKeyGen3;
            FalconFPR[] falconFPRArr9 = falconFPRArr7;
            int i155 = i48;
            FalconFPR[] falconFPRArr10 = falconFPRArr8;
            FalconFPR[] falconFPRArr11 = falconFPRArr5;
            int i156 = i148;
            falconKeyGen4.poly_big_to_fp(falconFPRArr11, 0, iArr, (i6 + i150) - i153, i153, i155, i152);
            int i157 = i153;
            FalconFPR[] falconFPRArr12 = falconFPRArr6;
            poly_big_to_fp(falconFPRArr12, 0, iArr, (i135 + i150) - i157, i157, i155, i152);
            this.fft.FFT(falconFPRArr11, 0, i152);
            this.fft.FFT(falconFPRArr12, 0, i152);
            this.fft.poly_mul_fft(falconFPRArr11, 0, falconFPRArr9, 0, i152);
            this.fft.poly_mul_fft(falconFPRArr12, 0, falconFPRArr10, 0, i152);
            this.fft.poly_add(falconFPRArr12, 0, falconFPRArr11, 0, i152);
            this.fft.poly_mul_autoadj_fft(falconFPRArr12, 0, falconFPRArr4, 0, i152);
            this.fft.iFFT(falconFPRArr12, 0, i152);
            int i158 = (i149 - ((i150 - i153) * 31)) + i142;
            FPREngine fPREngine = this.fpr;
            if (i158 < 0) {
                i158 = -i158;
                falconFPRFpr_sqr = fPREngine.fpr_two;
            } else {
                falconFPRFpr_sqr = fPREngine.fpr_onehalf;
            }
            FalconFPR falconFPRFpr_mul = this.fpr.fpr_one;
            while (i158 != 0) {
                if ((i158 & 1) != 0) {
                    falconFPRFpr_mul = this.fpr.fpr_mul(falconFPRFpr_mul, falconFPRFpr_sqr);
                }
                i158 >>= 1;
                falconFPRFpr_sqr = this.fpr.fpr_sqr(falconFPRFpr_sqr);
            }
            for (int i159 = 0; i159 < i136; i159++) {
                FalconFPR falconFPRFpr_mul2 = this.fpr.fpr_mul(falconFPRArr12[i159], falconFPRFpr_mul);
                FPREngine fPREngine2 = this.fpr;
                if (!fPREngine2.fpr_lt(fPREngine2.fpr_mtwo31m1, falconFPRFpr_mul2)) {
                    return 0;
                }
                FPREngine fPREngine3 = this.fpr;
                if (!fPREngine3.fpr_lt(falconFPRFpr_mul2, fPREngine3.fpr_ptwo31m1)) {
                    return 0;
                }
                iArr5[i159] = (int) this.fpr.fpr_rint(falconFPRFpr_mul2);
            }
            int i160 = i149 / 31;
            int i161 = i150;
            int i162 = i149 % 31;
            if (i134 <= 4) {
                int i163 = i133;
                i10 = i154;
                i7 = i155;
                int i164 = i141;
                i8 = i136;
                poly_sub_scaled_ntt(iArr, i6, i161, i7, iArr, i163, i164, i141, iArr5, 0, i160, i162, i152, iArr, i137);
                i9 = i163;
                i11 = i152;
                i12 = i135;
                iArr5 = iArr5;
                i13 = i164;
                i14 = i161;
                iArr2 = iArr;
                poly_sub_scaled_ntt(iArr2, i12, i14, i7, iArr, i53, i13, i164, iArr5, 0, i160, i162, i11, iArr, i137);
            } else {
                i7 = i155;
                i8 = i136;
                int i165 = i141;
                i9 = i133;
                i10 = i154;
                poly_sub_scaled(iArr, i6, i161, i7, iArr, i9, i165, i165, iArr5, 0, i160, i162, i152);
                i11 = i152;
                i12 = i135;
                i13 = i165;
                i14 = i161;
                iArr2 = iArr;
                poly_sub_scaled(iArr2, i12, i14, i7, iArr, i53, i13, i165, iArr5, 0, i160, i162, i11);
            }
            int i166 = i14;
            int i167 = i13;
            i147 = i11;
            int i168 = i149 + i146;
            int i169 = i168 + 10;
            if (i169 < i156) {
                if (i166 * 31 >= i168 + 41) {
                    i150 = i166 - 1;
                }
                if (i149 <= 0) {
                    if (i150 < i167) {
                        i19 = i6;
                        i20 = i12;
                        i21 = 0;
                        i15 = i8;
                        while (i21 < i15) {
                            i22 = (-(iArr2[(i19 + i150) - 1] >>> 30)) >>> 1;
                            for (i23 = i150; i23 < i167; i23++) {
                                iArr2[i19 + i23] = i22;
                            }
                            i24 = (-(iArr2[(i20 + i150) - 1] >>> 30)) >>> 1;
                            for (i25 = i150; i25 < i167; i25++) {
                                iArr2[i20 + i25] = i24;
                            }
                            i21++;
                            i19 += i7;
                            i20 += i7;
                        }
                    } else {
                        i15 = i8;
                    }
                    i16 = i6;
                    i17 = i16;
                    i18 = 0;
                    while (i18 < (i15 << 1)) {
                        System.arraycopy(iArr2, i16, iArr2, i17, i167);
                        i18++;
                        i17 += i167;
                        i16 += i7;
                    }
                    return 1;
                }
                i136 = i8;
                i26 = i149 - 25;
                if (i26 < 0) {
                    i149 = 0;
                } else {
                    i149 = i26;
                }
                falconKeyGen3 = this;
                i134 = i5;
                i135 = i12;
                i48 = i7;
                falconFPRArr6 = falconFPRArr12;
                i151 = i10;
                i133 = i9;
                falconFPRArr7 = falconFPRArr9;
                falconFPRArr8 = falconFPRArr10;
                falconFPRArr5 = falconFPRArr11;
                i141 = i167;
                i148 = i169;
            } else {
                i169 = i156;
            }
            i150 = i166;
            if (i149 <= 0) {
                if (i150 < i167) {
                    i19 = i6;
                    i20 = i12;
                    i21 = 0;
                    i15 = i8;
                    while (i21 < i15) {
                        i22 = (-(iArr2[(i19 + i150) - 1] >>> 30)) >>> 1;
                        while (i23 < i167) {
                            iArr2[i19 + i23] = i22;
                        }
                        i24 = (-(iArr2[(i20 + i150) - 1] >>> 30)) >>> 1;
                        while (i25 < i167) {
                            iArr2[i20 + i25] = i24;
                        }
                        i21++;
                        i19 += i7;
                        i20 += i7;
                    }
                } else {
                    i15 = i8;
                }
                i16 = i6;
                i17 = i16;
                i18 = 0;
                while (i18 < (i15 << 1)) {
                    System.arraycopy(iArr2, i16, iArr2, i17, i167);
                    i18++;
                    i17 += i167;
                    i16 += i7;
                }
                return 1;
            }
            i136 = i8;
            i26 = i149 - 25;
            if (i26 < 0) {
                i149 = 0;
            } else {
                i149 = i26;
            }
            falconKeyGen3 = this;
            i134 = i5;
            i135 = i12;
            i48 = i7;
            falconFPRArr6 = falconFPRArr12;
            i151 = i10;
            i133 = i9;
            falconFPRArr7 = falconFPRArr9;
            falconFPRArr8 = falconFPRArr10;
            falconFPRArr5 = falconFPRArr11;
            i141 = i167;
            i148 = i169;
        }
    }

    public void zint_add_mul_small(int[] iArr, int i2, int[] iArr2, int i3, int i4, int i5) {
        int i6 = 0;
        for (int i7 = 0; i7 < i4; i7++) {
            int i8 = i2 + i7;
            long unsignedLong = (toUnsignedLong(iArr2[i3 + i7]) * toUnsignedLong(i5)) + toUnsignedLong(iArr[i8]) + toUnsignedLong(i6);
            iArr[i8] = ((int) unsignedLong) & Integer.MAX_VALUE;
            i6 = (int) (unsignedLong >>> 31);
        }
        iArr[i2 + i4] = i6;
    }

    public void zint_add_scaled_mul_small(int[] iArr, int i2, int i3, int[] iArr2, int i4, int i5, int i6, int i7, int i8) {
        if (i5 == 0) {
            return;
        }
        int i9 = (-(iArr2[(i4 + i5) - 1] >>> 30)) >>> 1;
        int i10 = 0;
        int i11 = i7;
        int i12 = 0;
        while (i11 < i3) {
            int i13 = i11 - i7;
            int i14 = i13 < i5 ? iArr2[i4 + i13] : i9;
            int i15 = i2 + i11;
            long unsignedLong = (toUnsignedLong(i10 | ((i14 << i8) & Integer.MAX_VALUE)) * ((long) i6)) + toUnsignedLong(iArr[i15]) + ((long) i12);
            iArr[i15] = ((int) unsignedLong) & Integer.MAX_VALUE;
            i12 = (int) (unsignedLong >>> 31);
            i11++;
            i10 = i14 >>> (31 - i8);
        }
    }

    public int zint_bezout(int[] iArr, int i2, int[] iArr2, int i3, int[] iArr3, int i4, int[] iArr4, int i5, int i6, int[] iArr5, int i7) {
        FalconKeyGen falconKeyGen = this;
        int i8 = i6;
        int[] iArr6 = iArr5;
        if (i8 == 0) {
            return 0;
        }
        int i9 = i7 + i8;
        int i10 = i9 + i8;
        int i11 = i10 + i8;
        int iModp_ninv31 = falconKeyGen.modp_ninv31(iArr3[i4]);
        int iModp_ninv32 = falconKeyGen.modp_ninv31(iArr4[i5]);
        System.arraycopy(iArr3, i4, iArr6, i10, i8);
        System.arraycopy(iArr4, i5, iArr6, i11, i8);
        iArr[i2] = 1;
        iArr2[i3] = 0;
        for (int i12 = 1; i12 < i8; i12++) {
            iArr[i2 + i12] = 0;
            iArr2[i3 + i12] = 0;
        }
        System.arraycopy(iArr4, i5, iArr6, i7, i8);
        System.arraycopy(iArr3, i4, iArr6, i9, i8);
        iArr6[i9] = iArr6[i9] - 1;
        int i13 = 30;
        int i14 = (i8 * 62) + 30;
        while (i14 >= i13) {
            int i15 = -1;
            int i16 = i8;
            int i17 = -1;
            int i18 = 0;
            int i19 = 0;
            int i20 = 0;
            int i21 = 0;
            while (true) {
                int i22 = i16 - 1;
                if (i16 <= 0) {
                    break;
                }
                int i23 = iArr6[i10 + i22];
                int i24 = iArr6[i11 + i22];
                i19 ^= (i19 ^ i23) & i17;
                i18 ^= (i18 ^ i23) & i15;
                i21 ^= (i21 ^ i24) & i17;
                i20 ^= (i20 ^ i24) & i15;
                int i25 = ((((i23 | i24) + Integer.MAX_VALUE) >>> 31) - 1) & i17;
                int i26 = i17;
                i17 = i25;
                i15 = i26;
                i16 = i22;
            }
            int i27 = ~i15;
            int i28 = i19 & i27;
            long unsignedLong = (falconKeyGen.toUnsignedLong(i28) << 31) + falconKeyGen.toUnsignedLong(i18 | (i19 & i15));
            long unsignedLong2 = (falconKeyGen.toUnsignedLong(i21 & i27) << 31) + falconKeyGen.toUnsignedLong(i20 | (i21 & i15));
            int i29 = iArr6[i10];
            int i30 = iArr6[i11];
            long j2 = 0;
            int i31 = i10;
            int i32 = 0;
            long j3 = 0;
            long j4 = 1;
            long j5 = 1;
            for (int i33 = 31; i32 < i33; i33 = 31) {
                long j6 = unsignedLong2 - unsignedLong;
                int i34 = i32;
                int i35 = (int) ((j6 ^ ((unsignedLong ^ unsignedLong2) & (unsignedLong ^ j6))) >>> 63);
                int i36 = (i29 >> i34) & 1;
                int i37 = i36 & (i30 >> i34) & 1;
                int i38 = i37 & i35;
                int i39 = i37 & (~i35);
                int i40 = i38 | (i36 ^ 1);
                int i41 = i29 - ((-i38) & i30);
                long j7 = unsignedLong - ((-falconKeyGen.toUnsignedLong(i38)) & unsignedLong2);
                long j8 = -i38;
                long j9 = j4 - (j3 & j8);
                long j10 = j2 - (j5 & j8);
                int i42 = i30 - ((-i39) & i41);
                long j11 = unsignedLong2 - (j7 & (-falconKeyGen.toUnsignedLong(i39)));
                long j12 = -i39;
                long j13 = j3 - (j9 & j12);
                long j14 = j5 - (j10 & j12);
                i29 = i41 + ((i40 - 1) & i41);
                long j15 = i40;
                long j16 = j15 - 1;
                j4 = j9 + (j9 & j16);
                j2 = j10 + (j10 & j16);
                unsignedLong = j7 ^ ((j7 ^ (j7 >> 1)) & (-falconKeyGen.toUnsignedLong(i40)));
                i30 = i42 + ((-i40) & i42);
                long j17 = -j15;
                j3 = j13 + (j13 & j17);
                j5 = j14 + (j14 & j17);
                unsignedLong2 = j11 ^ (((j11 >> 1) ^ j11) & (falconKeyGen.toUnsignedLong(i40) - 1));
                i32 = i34 + 1;
                i9 = i9;
            }
            int i43 = i9;
            int i44 = i11;
            long j18 = j2;
            long j19 = j3;
            long j20 = j5;
            int iZint_co_reduce = falconKeyGen.zint_co_reduce(iArr5, i31, iArr5, i44, i6, j4, j18, j19, j20);
            long j21 = -(iZint_co_reduce & 1);
            long j22 = j4 - ((j4 + j4) & j21);
            long j23 = j18 - ((j18 + j18) & j21);
            long j24 = -(iZint_co_reduce >>> 1);
            long j25 = j19 - ((j19 + j19) & j24);
            long j26 = j20 - ((j20 + j20) & j24);
            falconKeyGen = this;
            iArr6 = iArr5;
            int i45 = iModp_ninv32;
            i8 = i6;
            falconKeyGen.zint_co_reduce_mod(iArr, i2, iArr6, i7, iArr4, i5, i8, i45, j22, j23, j25, j26);
            int i46 = iModp_ninv31;
            falconKeyGen.zint_co_reduce_mod(iArr2, i3, iArr6, i43, iArr3, i4, i8, i46, j22, j23, j25, j26);
            i14 -= 30;
            iModp_ninv32 = i45;
            i13 = 30;
            i10 = i31;
            i9 = i43;
            iModp_ninv31 = i46;
            i11 = i44;
        }
        int i47 = i10;
        int i48 = iArr5[i47] ^ 1;
        for (int i49 = 1; i49 < i8; i49++) {
            i48 |= iArr5[i47 + i49];
        }
        return (1 - ((i48 | (-i48)) >>> 31)) & iArr3[i4] & iArr4[i5];
    }

    public int zint_co_reduce(int[] iArr, int i2, int[] iArr2, int i3, int i4, long j2, long j3, long j4, long j5) {
        long j6 = 0;
        int i5 = 0;
        long j7 = 0;
        while (i5 < i4) {
            int i6 = i2 + i5;
            int i7 = i3 + i5;
            long j8 = iArr[i6];
            long j9 = iArr2[i7];
            long jC = z81.c(j9, j3, j8 * j2, j7);
            int i8 = i5;
            long jC2 = z81.c(j9, j5, j8 * j4, j6);
            if (i8 > 0) {
                iArr[i6 - 1] = ((int) jC) & Integer.MAX_VALUE;
                iArr2[i7 - 1] = ((int) jC2) & Integer.MAX_VALUE;
            }
            j6 = jC2 >> 31;
            i5 = i8 + 1;
            j7 = jC >> 31;
        }
        long j10 = j6;
        long j11 = j7;
        iArr[(i2 + i4) - 1] = (int) j11;
        iArr2[(i3 + i4) - 1] = (int) j10;
        int i9 = (int) (j11 >>> 63);
        int i10 = (int) (j10 >>> 63);
        zint_negate(iArr, i2, i4, i9);
        zint_negate(iArr2, i3, i4, i10);
        return (i10 << 1) | i9;
    }

    public void zint_co_reduce_mod(int[] iArr, int i2, int[] iArr2, int i3, int[] iArr3, int i4, int i5, int i6, long j2, long j3, long j4, long j5) {
        long j6 = j2;
        int i7 = iArr[i2];
        int i8 = iArr2[i3];
        int i9 = Integer.MAX_VALUE;
        int i10 = (((((int) j3) * i8) + (((int) j6) * i7)) * i6) & Integer.MAX_VALUE;
        int i11 = (((i8 * ((int) j5)) + (i7 * ((int) j4))) * i6) & Integer.MAX_VALUE;
        int i12 = 0;
        long j7 = 0;
        long j8 = 0;
        while (i12 < i5) {
            int i13 = i2 + i12;
            int i14 = i3 + i12;
            int i15 = i9;
            int i16 = i12;
            long j9 = iArr[i13];
            long j10 = iArr2[i14];
            int i17 = i4 + i16;
            long jC = z81.c(iArr3[i17], toUnsignedLong(i10), (j10 * j3) + (j9 * j6), j7);
            long jC2 = z81.c(iArr3[i17], toUnsignedLong(i11), (j10 * j5) + (j9 * j4), j8);
            if (i16 > 0) {
                iArr[i13 - 1] = ((int) jC) & i15;
                iArr2[i14 - 1] = ((int) jC2) & i15;
            }
            j7 = jC >> 31;
            j8 = jC2 >> 31;
            i12 = i16 + 1;
            j6 = j2;
            i9 = i15;
        }
        long j11 = j7;
        long j12 = j8;
        iArr[(i2 + i5) - 1] = (int) j11;
        iArr2[(i3 + i5) - 1] = (int) j12;
        zint_finish_mod(iArr, i2, i5, iArr3, i4, (int) (j11 >>> 63));
        zint_finish_mod(iArr2, i3, i5, iArr3, i4, (int) (j12 >>> 63));
    }

    public void zint_finish_mod(int[] iArr, int i2, int i3, int[] iArr2, int i4, int i5) {
        int i6 = 0;
        for (int i7 = 0; i7 < i3; i7++) {
            i6 = ((iArr[i2 + i7] - iArr2[i4 + i7]) - i6) >>> 31;
        }
        int i8 = (-i5) >>> 1;
        int i9 = -((1 - i6) | i5);
        for (int i10 = 0; i10 < i3; i10++) {
            int i11 = i2 + i10;
            int i12 = (iArr[i11] - ((iArr2[i4 + i10] ^ i8) & i9)) - i5;
            iArr[i11] = Integer.MAX_VALUE & i12;
            i5 = i12 >>> 31;
        }
    }

    public int zint_mod_small_signed(int[] iArr, int i2, int i3, int i4, int i5, int i6, int i7) {
        if (i3 == 0) {
            return 0;
        }
        return modp_sub(zint_mod_small_unsigned(iArr, i2, i3, i4, i5, i6), (-(iArr[(i2 + i3) - 1] >>> 30)) & i7, i4);
    }

    public int zint_mod_small_unsigned(int[] iArr, int i2, int i3, int i4, int i5, int i6) {
        int iModp_add = 0;
        while (true) {
            int i7 = i3 - 1;
            if (i3 <= 0) {
                return iModp_add;
            }
            int iModp_montymul = modp_montymul(iModp_add, i6, i4, i5);
            int i8 = iArr[i2 + i7] - i4;
            iModp_add = modp_add(iModp_montymul, i8 + ((-(i8 >>> 31)) & i4), i4);
            i3 = i7;
        }
    }

    public int zint_mul_small(int[] iArr, int i2, int i3, int i4) {
        int i5 = 0;
        for (int i6 = 0; i6 < i3; i6++) {
            int i7 = i2 + i6;
            long unsignedLong = (toUnsignedLong(iArr[i7]) * toUnsignedLong(i4)) + ((long) i5);
            iArr[i7] = ((int) unsignedLong) & Integer.MAX_VALUE;
            i5 = (int) (unsignedLong >> 31);
        }
        return i5;
    }

    public void zint_negate(int[] iArr, int i2, int i3, int i4) {
        int i5 = (-i4) >>> 1;
        for (int i6 = 0; i6 < i3; i6++) {
            int i7 = i2 + i6;
            int i8 = (iArr[i7] ^ i5) + i4;
            iArr[i7] = Integer.MAX_VALUE & i8;
            i4 = i8 >>> 31;
        }
    }

    public void zint_norm_zero(int[] iArr, int i2, int[] iArr2, int i3, int i4) {
        int i5 = 0;
        int i6 = i4;
        int i7 = 0;
        while (true) {
            int i8 = i6 - 1;
            if (i6 <= 0) {
                zint_sub(iArr, i2, iArr2, i3, i4, i5 >>> 31);
                return;
            }
            int i9 = iArr[i2 + i8];
            int i10 = iArr2[i3 + i8];
            int i11 = ((i7 << 30) | (i10 >>> 1)) - i9;
            i5 |= ((-(i11 >>> 31)) | ((-i11) >>> 31)) & ((i5 & 1) - 1);
            i6 = i8;
            i7 = i10 & 1;
        }
    }

    public int zint_one_to_plain(int[] iArr, int i2) {
        int i3 = iArr[i2];
        return i3 | ((1073741824 & i3) << 1);
    }

    public void zint_rebuild_CRT(int[] iArr, int i2, int i3, int i4, int i5, FalconSmallPrime[] falconSmallPrimeArr, int i6, int[] iArr2, int i7) {
        FalconKeyGen falconKeyGen = this;
        int i8 = 0;
        iArr2[i7] = falconSmallPrimeArr[0].p;
        int i9 = 1;
        int i10 = i3;
        while (true) {
            int i11 = i9;
            if (i11 >= i10) {
                break;
            }
            FalconSmallPrime falconSmallPrime = falconSmallPrimeArr[i11];
            int i12 = falconSmallPrime.p;
            int i13 = falconSmallPrime.s;
            int iModp_ninv31 = falconKeyGen.modp_ninv31(i12);
            int iModp_R2 = falconKeyGen.modp_R2(i12, iModp_ninv31);
            int i14 = i2;
            int i15 = 0;
            while (i15 < i5) {
                int i16 = i12;
                int i17 = iModp_ninv31;
                int i18 = iModp_R2;
                int iModp_montymul = falconKeyGen.modp_montymul(i13, falconKeyGen.modp_sub(iArr[i14 + i11], falconKeyGen.zint_mod_small_unsigned(iArr, i14, i11, i12, iModp_ninv31, iModp_R2), i16), i16, i17);
                int i19 = i11;
                falconKeyGen.zint_add_mul_small(iArr, i14, iArr2, i7, i19, iModp_montymul);
                i15++;
                i14 += i4;
                i11 = i19;
                i12 = i16;
                iModp_ninv31 = i17;
                iModp_R2 = i18;
            }
            int i20 = i11;
            iArr2[i7 + i20] = falconKeyGen.zint_mul_small(iArr2, i7, i20, i12);
            i9 = i20 + 1;
        }
        if (i6 != 0) {
            int i21 = i2;
            while (i8 < i5) {
                falconKeyGen.zint_norm_zero(iArr, i21, iArr2, i7, i10);
                i8++;
                i21 += i4;
                falconKeyGen = this;
                i10 = i3;
            }
        }
    }

    public int zint_sub(int[] iArr, int i2, int[] iArr2, int i3, int i4, int i5) {
        int i6 = -i5;
        int i7 = 0;
        for (int i8 = 0; i8 < i4; i8++) {
            int i9 = i2 + i8;
            int i10 = iArr[i9];
            int i11 = (i10 - iArr2[i3 + i8]) - i7;
            i7 = i11 >>> 31;
            iArr[i9] = i10 ^ (((i11 & Integer.MAX_VALUE) ^ i10) & i6);
        }
        return i7;
    }

    public void zint_sub_scaled(int[] iArr, int i2, int i3, int[] iArr2, int i4, int i5, int i6, int i7) {
        if (i5 == 0) {
            return;
        }
        int i8 = (-(iArr2[(i4 + i5) - 1] >>> 30)) >>> 1;
        int i9 = 0;
        int i10 = i6;
        int i11 = 0;
        while (i10 < i3) {
            int i12 = i10 - i6;
            int i13 = i12 < i5 ? iArr2[i12 + i4] : i8;
            int i14 = i2 + i10;
            int i15 = (iArr[i14] - (i9 | ((i13 << i7) & Integer.MAX_VALUE))) - i11;
            iArr[i14] = i15 & Integer.MAX_VALUE;
            i11 = i15 >>> 31;
            i10++;
            i9 = i13 >>> (31 - i7);
        }
    }
}
