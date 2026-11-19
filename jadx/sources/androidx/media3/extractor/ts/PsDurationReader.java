package androidx.media3.extractor.ts;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.ExtractorInput;
import com.batch.android.x0.h;

/* JADX INFO: loaded from: classes.dex */
final class PsDurationReader {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f17125c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f17126e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TimestampAdjuster f17123a = new TimestampAdjuster(0);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f17127f = -9223372036854775807L;
    public long g = -9223372036854775807L;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f17128h = -9223372036854775807L;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ParsableByteArray f17124b = new ParsableByteArray();

    public static int b(int i2, byte[] bArr) {
        return (bArr[i2 + 3] & 255) | ((bArr[i2] & 255) << 24) | ((bArr[i2 + 1] & 255) << 16) | ((bArr[i2 + 2] & 255) << 8);
    }

    public static long c(ParsableByteArray parsableByteArray) {
        int i2 = parsableByteArray.f14195b;
        if (parsableByteArray.a() < 9) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[9];
        parsableByteArray.k(0, 9, bArr);
        parsableByteArray.N(i2);
        byte b2 = bArr[0];
        if ((b2 & h.a.f24179i) == 68) {
            byte b3 = bArr[2];
            if ((b3 & 4) == 4) {
                byte b4 = bArr[4];
                if ((b4 & 4) == 4 && (bArr[5] & 1) == 1 && (bArr[8] & 3) == 3) {
                    long j2 = b2;
                    long j3 = b3;
                    return ((j3 & 3) << 13) | ((j2 & 3) << 28) | (((56 & j2) >> 3) << 30) | ((((long) bArr[1]) & 255) << 20) | (((j3 & 248) >> 3) << 15) | ((((long) bArr[3]) & 255) << 5) | ((((long) b4) & 248) >> 3);
                }
            }
        }
        return -9223372036854775807L;
    }

    public final void a(ExtractorInput extractorInput) {
        byte[] bArr = Util.f14243b;
        ParsableByteArray parsableByteArray = this.f17124b;
        parsableByteArray.getClass();
        parsableByteArray.L(bArr.length, bArr);
        this.f17125c = true;
        extractorInput.g();
    }
}
