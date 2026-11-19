package androidx.media3.extractor.mp4;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.SniffFailure;

/* JADX INFO: loaded from: classes.dex */
public abstract class Sniffer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f16590a = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, 1635148593, 1752589105, 1751479857, 1635135537, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, 1903435808, 1297305174, 1684175153, 1769172332, 1885955686};

    public static boolean a(int i2, boolean z) {
        if ((i2 >>> 8) == 3368816) {
            return true;
        }
        if (i2 == 1751476579 && z) {
            return true;
        }
        for (int i3 = 0; i3 < 29; i3++) {
            if (f16590a[i3] == i2) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x016e  */
    /* JADX WARN: Code duplicated, block: B:102:0x0172 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:103:0x0174  */
    /* JADX WARN: Code duplicated, block: B:105:0x0177  */
    /* JADX WARN: Code duplicated, block: B:107:0x017a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:98:0x016b  */
    /* JADX WARN: Multi-variable type inference failed */
    public static SniffFailure b(ExtractorInput extractorInput, boolean z, boolean z2) {
        SniffFailure sniffFailure;
        int i2;
        long jU;
        int i3;
        long j2;
        int i4;
        boolean z3;
        int[] iArr;
        long length = extractorInput.getLength();
        long j3 = -1;
        int i5 = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
        long j4 = 4096;
        if (i5 != 0 && length <= 4096) {
            j4 = length;
        }
        int i6 = (int) j4;
        ParsableByteArray parsableByteArray = new ParsableByteArray(64);
        int i7 = 0;
        int i8 = 0;
        boolean z4 = false;
        while (true) {
            if (i8 < i6) {
                parsableByteArray.K(8);
                if (extractorInput.i(true, i7, 8, parsableByteArray.f14194a)) {
                    long jC = parsableByteArray.C();
                    int iM = parsableByteArray.m();
                    if (jC == 1) {
                        j3 = j3;
                        extractorInput.b(8, 8, parsableByteArray.f14194a);
                        i3 = 16;
                        parsableByteArray.M(16);
                        jU = parsableByteArray.u();
                    } else {
                        j3 = j3;
                        if (jC == 0) {
                            long length2 = extractorInput.getLength();
                            if (length2 != j3) {
                                jC = (length2 - extractorInput.j()) + 8;
                            }
                        }
                        jU = jC;
                        i3 = 8;
                    }
                    long j5 = i3;
                    if (jU < j5) {
                        sniffFailure = null;
                        if (iM != 1718773093 || i3 != 8) {
                            return new AtomSizeTooSmallSniffFailure(iM, jU, i3);
                        }
                        jU = j5;
                    } else {
                        sniffFailure = null;
                    }
                    int i9 = i8 + i3;
                    if (iM == 1836019574 || iM == 1970628964) {
                        i6 += (int) jU;
                        if (i5 != 0 && i6 > length) {
                            i6 = (int) length;
                        }
                        if (iM == 1836019574) {
                            i8 = i9;
                            i7 = 0;
                        }
                    }
                    if (iM == 1953653099 || iM == 1835297121 || iM == 1835626086) {
                        j2 = length;
                        i4 = 0;
                        i8 = i9;
                    } else if (iM == 1836019558 || iM == 1836475768) {
                        i2 = 1;
                    } else {
                        if (iM == 1835295092) {
                            z4 = true;
                        }
                        if (iM != 1937007212 || jU <= 1000000) {
                            j2 = length;
                            if ((((long) i9) + jU) - j5 < i6) {
                                int i10 = (int) (jU - j5);
                                i8 = i9 + i10;
                                if (iM != 1718909296) {
                                    i4 = 0;
                                    if (i10 != 0) {
                                        extractorInput.k(i10);
                                    }
                                } else {
                                    if (i10 < 8) {
                                        return new AtomSizeTooSmallSniffFailure(iM, i10, 8);
                                    }
                                    parsableByteArray.K(i10);
                                    i4 = 0;
                                    extractorInput.b(0, i10, parsableByteArray.f14194a);
                                    int iM2 = parsableByteArray.m();
                                    if (a(iM2, z2)) {
                                        z4 = true;
                                    }
                                    parsableByteArray.O(4);
                                    int iA = parsableByteArray.a() / 4;
                                    if (!z4 && iA > 0) {
                                        int[] iArr2 = new int[iA];
                                        int i11 = 0;
                                        while (true) {
                                            if (i11 >= iA) {
                                                z3 = z4;
                                                iArr = iArr2;
                                                break;
                                            }
                                            int iM3 = parsableByteArray.m();
                                            iArr2[i11] = iM3;
                                            if (a(iM3, z2)) {
                                                z3 = true;
                                                iArr = iArr2;
                                                break;
                                            }
                                            i11++;
                                        }
                                    } else {
                                        z3 = z4;
                                        iArr = sniffFailure;
                                    }
                                    if (!z3) {
                                        return new UnsupportedBrandsSniffFailure(iM2, iArr);
                                    }
                                    z4 = z3;
                                }
                            }
                        }
                        i2 = 0;
                    }
                    i7 = i4;
                    length = j2;
                }
                if (!z4) {
                    return NoDeclaredBrandSniffFailure.f16580a;
                }
                if (z != i2) {
                    return i2 != 0 ? IncorrectFragmentationSniffFailure.f16560b : IncorrectFragmentationSniffFailure.f16561c;
                }
                return sniffFailure;
            }
            sniffFailure = null;
            i2 = i7;
            if (!z4) {
                return NoDeclaredBrandSniffFailure.f16580a;
            }
            if (z != i2) {
                if (i2 != 0) {
                }
            }
            return sniffFailure;
        }
    }
}
