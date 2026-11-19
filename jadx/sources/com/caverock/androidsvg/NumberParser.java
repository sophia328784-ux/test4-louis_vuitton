package com.caverock.androidsvg;

import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes2.dex */
class NumberParser {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float[] f25146b = {1.0f, 10.0f, 100.0f, 1000.0f, 10000.0f, 100000.0f, 1000000.0f, 1.0E7f, 1.0E8f, 1.0E9f, 1.0E10f, 9.9999998E10f, 1.0E12f, 9.9999998E12f, 1.0E14f, 9.9999999E14f, 1.00000003E16f, 9.9999998E16f, 9.9999998E17f, 1.0E19f, 1.0E20f, 1.0E21f, 1.0E22f, 1.0E23f, 1.0E24f, 1.0E25f, 1.0E26f, 1.0E27f, 1.0E28f, 1.0E29f, 1.0E30f, 1.0E31f, 1.0E32f, 1.0E33f, 1.0E34f, 1.0E35f, 1.0E36f, 1.0E37f, 1.0E38f};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final float[] f25147c = {1.0f, 0.1f, 0.01f, 0.001f, 1.0E-4f, 1.0E-5f, 1.0E-6f, 1.0E-7f, 1.0E-8f, 1.0E-9f, 1.0E-10f, 1.0E-11f, 1.0E-12f, 1.0E-13f, 1.0E-14f, 1.0E-15f, 1.0E-16f, 1.0E-17f, 1.0E-18f, 1.0E-19f, 1.0E-20f, 1.0E-21f, 1.0E-22f, 1.0E-23f, 1.0E-24f, 1.0E-25f, 1.0E-26f, 1.0E-27f, 1.0E-28f, 1.0E-29f, 1.0E-30f, 1.0E-31f, 1.0E-32f, 1.0E-33f, 1.0E-34f, 1.0E-35f, 1.0E-36f, 1.0E-37f, 1.0E-38f};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f25148a;

    /* JADX WARN: Code duplicated, block: B:107:0x008a A[EDGE_INSN: B:107:0x008a->B:42:0x008a BREAK  A[LOOP:0: B:13:0x0034->B:41:0x0083], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:118:0x0101 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:15:0x0043  */
    /* JADX WARN: Code duplicated, block: B:17:0x0049 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:18:0x004b  */
    /* JADX WARN: Code duplicated, block: B:19:0x004e  */
    /* JADX WARN: Code duplicated, block: B:20:0x0051  */
    /* JADX WARN: Code duplicated, block: B:47:0x0095 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:48:0x0097 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:49:0x0098  */
    /* JADX WARN: Code duplicated, block: B:51:0x009c  */
    /* JADX WARN: Code duplicated, block: B:60:0x00b8 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:61:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:63:0x00bf A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:64:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:65:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:66:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:68:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:69:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:72:0x00de  */
    /* JADX WARN: Code duplicated, block: B:75:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:84:0x0105 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:85:0x0106 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:86:0x0108  */
    /* JADX WARN: Code duplicated, block: B:87:0x010a  */
    public final float a(int i2, int i3, String str) {
        boolean z;
        int i4;
        int i5;
        int i6;
        boolean z2;
        int i7;
        int i8;
        int i9;
        int i10;
        float f2;
        char cCharAt;
        int i11;
        char cCharAt2;
        boolean z3;
        boolean z4;
        int i12;
        int i13;
        int i14;
        char cCharAt3;
        char cCharAt4;
        this.f25148a = i2;
        if (i2 >= i3) {
            return Float.NaN;
        }
        char cCharAt5 = str.charAt(i2);
        if (cCharAt5 != '+') {
            if (cCharAt5 != '-') {
                z = false;
            } else {
                z = true;
            }
            int i15 = this.f25148a;
            long j2 = 0;
            i4 = 0;
            i5 = 0;
            i6 = 0;
            z2 = false;
            i7 = 0;
            while (true) {
                i8 = this.f25148a;
                if (i8 >= i3) {
                    break;
                }
                cCharAt4 = str.charAt(i8);
                if (cCharAt4 != '0') {
                    if (i4 == 0) {
                        i6++;
                    } else {
                        i5++;
                    }
                } else if (cCharAt4 < '1' && cCharAt4 <= '9') {
                    int i16 = i4 + i5;
                    while (i5 > 0) {
                        if (j2 > 922337203685477580L) {
                            return Float.NaN;
                        }
                        j2 *= 10;
                        i5--;
                    }
                    if (j2 > 922337203685477580L) {
                        return Float.NaN;
                    }
                    j2 = (j2 * 10) + ((long) (cCharAt4 - '0'));
                    i4 = i16 + 1;
                    if (j2 < 0) {
                        return Float.NaN;
                    }
                } else {
                    if (cCharAt4 != '.' || z2) {
                        break;
                    }
                    i7 = this.f25148a - i15;
                    z2 = true;
                }
                this.f25148a++;
            }
            if (!z2 && this.f25148a == i7 + 1) {
                return Float.NaN;
            }
            if (i4 == 0) {
                if (i6 == 0) {
                    return Float.NaN;
                }
                i4 = 1;
            }
            if (z2) {
                i5 = (i7 - i6) - i4;
            }
            i9 = this.f25148a;
            if (i9 < i3 && ((cCharAt = str.charAt(i9)) == 'E' || cCharAt == 'e')) {
                i11 = this.f25148a + 1;
                this.f25148a = i11;
                if (i11 == i3) {
                    return Float.NaN;
                }
                cCharAt2 = str.charAt(i11);
                if (cCharAt2 != '+') {
                    if (cCharAt2 != '-') {
                        switch (cCharAt2) {
                            case '0':
                            case '1':
                            case '2':
                            case EACTags.TRANSACTION_DATE /* 51 */:
                            case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                            case EACTags.SEX /* 53 */:
                            case EACTags.CURRENCY_EXPONENT /* 54 */:
                            case '7':
                            case '8':
                            case '9':
                                z3 = false;
                                z4 = false;
                                break;
                            default:
                                this.f25148a--;
                                z4 = true;
                                z3 = false;
                                break;
                        }
                    } else {
                        z3 = true;
                    }
                    if (!z4) {
                        i12 = this.f25148a;
                        i13 = 0;
                        while (true) {
                            i14 = this.f25148a;
                            if (i14 >= i3 && (cCharAt3 = str.charAt(i14)) >= '0' && cCharAt3 <= '9') {
                                if (i13 > 922337203685477580L) {
                                    return Float.NaN;
                                }
                                i13 = (i13 * 10) + (cCharAt3 - '0');
                                this.f25148a++;
                            }
                        }
                        if (this.f25148a == i12) {
                            return Float.NaN;
                        }
                        if (z3) {
                            i5 -= i13;
                        } else {
                            i5 += i13;
                        }
                    }
                } else {
                    z3 = false;
                }
                this.f25148a++;
                z4 = false;
                if (!z4) {
                    i12 = this.f25148a;
                    i13 = 0;
                    while (true) {
                        i14 = this.f25148a;
                        if (i14 >= i3) {
                        }
                        i13 = (i13 * 10) + (cCharAt3 - '0');
                        this.f25148a++;
                    }
                    if (this.f25148a == i12) {
                        return Float.NaN;
                    }
                    if (z3) {
                        i5 -= i13;
                    } else {
                        i5 += i13;
                    }
                }
            }
            i10 = i4 + i5;
            if (i10 <= 39 || i10 < -44) {
                return Float.NaN;
            }
            float f3 = j2;
            if (j2 != 0) {
                if (i5 > 0) {
                    f2 = f25146b[i5];
                } else if (i5 < 0) {
                    if (i5 < -38) {
                        f3 = (float) (((double) f3) * 1.0E-20d);
                        i5 += 20;
                    }
                    f2 = f25147c[-i5];
                }
                f3 *= f2;
            }
            return z ? -f3 : f3;
        }
        z = false;
        this.f25148a++;
        int i17 = this.f25148a;
        long j3 = 0;
        i4 = 0;
        i5 = 0;
        i6 = 0;
        z2 = false;
        i7 = 0;
        while (true) {
            i8 = this.f25148a;
            if (i8 >= i3) {
                break;
                break;
            }
            cCharAt4 = str.charAt(i8);
            if (cCharAt4 != '0') {
                if (cCharAt4 < '1') {
                }
                if (cCharAt4 != '.') {
                    break;
                }
                break;
                break;
            }
            if (i4 == 0) {
                i6++;
            } else {
                i5++;
            }
            this.f25148a++;
        }
        if (!z2) {
        }
        if (i4 == 0) {
            if (i6 == 0) {
                return Float.NaN;
            }
            i4 = 1;
        }
        if (z2) {
            i5 = (i7 - i6) - i4;
        }
        i9 = this.f25148a;
        if (i9 < i3) {
            i11 = this.f25148a + 1;
            this.f25148a = i11;
            if (i11 == i3) {
                return Float.NaN;
            }
            cCharAt2 = str.charAt(i11);
            if (cCharAt2 != '+') {
                if (cCharAt2 != '-') {
                    switch (cCharAt2) {
                        case '0':
                        case '1':
                        case '2':
                        case EACTags.TRANSACTION_DATE /* 51 */:
                        case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                        case EACTags.SEX /* 53 */:
                        case EACTags.CURRENCY_EXPONENT /* 54 */:
                        case '7':
                        case '8':
                        case '9':
                            z3 = false;
                            z4 = false;
                            break;
                        default:
                            this.f25148a--;
                            z4 = true;
                            z3 = false;
                            break;
                    }
                } else {
                    z3 = true;
                }
                if (!z4) {
                    i12 = this.f25148a;
                    i13 = 0;
                    while (true) {
                        i14 = this.f25148a;
                        if (i14 >= i3) {
                        }
                        i13 = (i13 * 10) + (cCharAt3 - '0');
                        this.f25148a++;
                    }
                    if (this.f25148a == i12) {
                        return Float.NaN;
                    }
                    if (z3) {
                        i5 -= i13;
                    } else {
                        i5 += i13;
                    }
                }
            } else {
                z3 = false;
            }
            this.f25148a++;
            z4 = false;
            if (!z4) {
                i12 = this.f25148a;
                i13 = 0;
                while (true) {
                    i14 = this.f25148a;
                    if (i14 >= i3) {
                    }
                    i13 = (i13 * 10) + (cCharAt3 - '0');
                    this.f25148a++;
                }
                if (this.f25148a == i12) {
                    return Float.NaN;
                }
                if (z3) {
                    i5 -= i13;
                } else {
                    i5 += i13;
                }
            }
        }
        i10 = i4 + i5;
        if (i10 <= 39) {
        }
        return Float.NaN;
    }
}
