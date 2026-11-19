package androidx.media3.extractor.ts;

import androidx.media3.common.util.ParsableByteArray;

/* JADX INFO: loaded from: classes.dex */
public abstract class TsUtil {
    public static long a(ParsableByteArray parsableByteArray, int i2, int i3) {
        parsableByteArray.N(i2);
        if (parsableByteArray.a() < 5) {
            return -9223372036854775807L;
        }
        int iM = parsableByteArray.m();
        if ((8388608 & iM) != 0 || ((2096896 & iM) >> 8) != i3 || (iM & 32) == 0 || parsableByteArray.A() < 7 || parsableByteArray.a() < 7 || (parsableByteArray.A() & 16) != 16) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[6];
        parsableByteArray.k(0, 6, bArr);
        return ((((long) bArr[0]) & 255) << 25) | ((((long) bArr[1]) & 255) << 17) | ((((long) bArr[2]) & 255) << 9) | ((((long) bArr[3]) & 255) << 1) | ((((long) bArr[4]) & 255) >> 7);
    }
}
