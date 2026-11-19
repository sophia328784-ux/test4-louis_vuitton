package androidx.media3.extractor;

import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes.dex */
public abstract class FlacFrameReader {

    public static final class SampleNumberHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f16146a;
    }

    public static boolean a(ParsableByteArray parsableByteArray, FlacStreamMetadata flacStreamMetadata, boolean z, SampleNumberHolder sampleNumberHolder) {
        try {
            long jI = parsableByteArray.I();
            if (!z) {
                jI *= (long) flacStreamMetadata.f16151b;
            }
            long j2 = flacStreamMetadata.f16157j;
            if (j2 != 0 && jI > j2) {
                return false;
            }
            sampleNumberHolder.f16146a = jI;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public static boolean b(ParsableByteArray parsableByteArray, FlacStreamMetadata flacStreamMetadata, int i2, SampleNumberHolder sampleNumberHolder) {
        long jC = parsableByteArray.C();
        long j2 = jC >>> 16;
        if (j2 != i2) {
            return false;
        }
        boolean z = (j2 & 1) == 1;
        int i3 = (int) ((jC >> 12) & 15);
        int i4 = (int) ((jC >> 8) & 15);
        int i5 = (int) ((jC >> 4) & 15);
        int i6 = (int) ((jC >> 1) & 7);
        boolean z2 = (jC & 1) == 1;
        if (i5 <= 7) {
            if (i5 != flacStreamMetadata.g - 1) {
                return false;
            }
        } else if (i5 > 10 || flacStreamMetadata.g != 2) {
            return false;
        }
        if ((i6 != 0 && i6 != flacStreamMetadata.f16156i) || z2 || !a(parsableByteArray, flacStreamMetadata, z, sampleNumberHolder)) {
            return false;
        }
        long j3 = sampleNumberHolder.f16146a;
        int iC = c(i3, parsableByteArray);
        long j4 = flacStreamMetadata.f16157j;
        boolean z3 = j4 == 0 || j3 + ((long) iC) >= j4;
        if (iC == -1) {
            return false;
        }
        if ((!z3 && iC < flacStreamMetadata.f16150a) || iC > flacStreamMetadata.f16151b) {
            return false;
        }
        int i7 = flacStreamMetadata.f16153e;
        if (i4 != 0) {
            if (i4 <= 11) {
                if (i4 != flacStreamMetadata.f16154f) {
                    return false;
                }
            } else if (i4 != 12) {
                if (i4 > 14) {
                    return false;
                }
                int iH = parsableByteArray.H();
                if (i4 == 14) {
                    iH *= 10;
                }
                if (iH != i7) {
                    return false;
                }
            } else if (parsableByteArray.A() * 1000 != i7) {
                return false;
            }
        }
        int iA = parsableByteArray.A();
        int i8 = parsableByteArray.f14195b;
        byte[] bArr = parsableByteArray.f14194a;
        int i9 = i8 - 1;
        int i10 = 0;
        for (int i11 = parsableByteArray.f14195b; i11 < i9; i11++) {
            i10 = Util.l[i10 ^ (bArr[i11] & 255)];
        }
        String str = Util.f14242a;
        if (iA != i10) {
            return false;
        }
        if (parsableByteArray.a() != 0) {
            int iJ = parsableByteArray.j();
            if ((iJ & 128) != 0) {
                return false;
            }
            int i12 = (iJ & 126) >> 1;
            if ((i12 >= 2 && i12 <= 7) || (i12 >= 13 && i12 <= 31)) {
                Log.f("Ignoring frame where first subframe has a reserved type: " + i12);
                return false;
            }
        }
        return true;
    }

    public static int c(int i2, ParsableByteArray parsableByteArray) {
        switch (i2) {
            case 1:
                return 192;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i2 - 2);
            case 6:
                return parsableByteArray.A() + 1;
            case 7:
                return parsableByteArray.H() + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return 256 << (i2 - 8);
            default:
                return -1;
        }
    }
}
