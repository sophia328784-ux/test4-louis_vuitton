package androidx.media3.extractor;

import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class TrueHdSampleRechunker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f16213a = new byte[10];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f16214b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f16215c;
    public long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f16216e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f16217f;
    public int g;

    public final void a(TrackOutput trackOutput, TrackOutput.CryptoData cryptoData) {
        if (this.f16215c > 0) {
            trackOutput.g(this.d, this.f16216e, this.f16217f, this.g, cryptoData);
            this.f16215c = 0;
        }
    }

    public final void b(TrackOutput trackOutput, long j2, int i2, int i3, int i4, TrackOutput.CryptoData cryptoData) {
        Preconditions.p("TrueHD chunk samples must be contiguous in the sample queue.", this.g <= i3 + i4);
        if (this.f16214b) {
            int i5 = this.f16215c;
            int i6 = i5 + 1;
            this.f16215c = i6;
            if (i5 == 0) {
                this.d = j2;
                this.f16216e = i2;
                this.f16217f = 0;
            }
            this.f16217f += i3;
            this.g = i4;
            if (i6 >= 16) {
                a(trackOutput, cryptoData);
            }
        }
    }

    public final void c(ExtractorInput extractorInput) {
        if (this.f16214b) {
            return;
        }
        int i2 = 0;
        byte[] bArr = this.f16213a;
        extractorInput.b(0, 10, bArr);
        extractorInput.g();
        if (bArr[4] == -8 && bArr[5] == 114 && bArr[6] == 111) {
            byte b2 = bArr[7];
            if ((b2 & 254) == 186) {
                i2 = 40 << ((bArr[((b2 & 255) == 187 ? 1 : 0) != 0 ? '\t' : '\b'] >> 4) & 7);
            }
        }
        if (i2 == 0) {
            return;
        }
        this.f16214b = true;
    }
}
