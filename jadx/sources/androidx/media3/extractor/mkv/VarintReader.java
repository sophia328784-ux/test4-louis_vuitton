package androidx.media3.extractor.mkv;

import androidx.media3.extractor.ExtractorInput;
import defpackage.md;

/* JADX INFO: loaded from: classes.dex */
final class VarintReader {
    public static final long[] d = {128, 64, 32, 16, 8, 4, 2, 1};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f16455a = new byte[8];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f16456b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f16457c;

    public static long a(int i2, byte[] bArr, boolean z) {
        long j2 = ((long) bArr[0]) & 255;
        if (z) {
            j2 &= ~d[i2 - 1];
        }
        for (int i3 = 1; i3 < i2; i3++) {
            j2 = (j2 << 8) | (((long) bArr[i3]) & 255);
        }
        return j2;
    }

    public final long b(ExtractorInput extractorInput, boolean z, boolean z2, int i2) {
        int i3;
        int i4 = this.f16456b;
        byte[] bArr = this.f16455a;
        if (i4 == 0) {
            if (!extractorInput.h(z, 0, 1, bArr)) {
                return -1L;
            }
            int i5 = bArr[0] & 255;
            int i6 = 0;
            while (true) {
                if (i6 >= 8) {
                    i3 = -1;
                    break;
                }
                if ((d[i6] & ((long) i5)) != 0) {
                    i3 = i6 + 1;
                    break;
                }
                i6++;
            }
            this.f16457c = i3;
            if (i3 == -1) {
                md.k("No valid varint length mask found");
                return 0L;
            }
            this.f16456b = 1;
        }
        int i7 = this.f16457c;
        if (i7 > i2) {
            this.f16456b = 0;
            return -2L;
        }
        if (i7 != 1) {
            extractorInput.readFully(bArr, 1, i7 - 1);
        }
        this.f16456b = 0;
        return a(this.f16457c, bArr, z2);
    }
}
