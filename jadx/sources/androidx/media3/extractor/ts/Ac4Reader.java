package androidx.media3.extractor.ts;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.Ac4Util;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class Ac4Reader implements ElementaryStreamReader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ParsableBitArray f16949a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ParsableByteArray f16950b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f16951c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f16952e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f16953f;
    public TrackOutput g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f16954h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f16955i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f16956j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f16957k;
    public Format l;
    public int m;
    public long n;

    public Ac4Reader(String str, int i2, String str2) {
        ParsableBitArray parsableBitArray = new ParsableBitArray(new byte[16]);
        this.f16949a = parsableBitArray;
        this.f16950b = new ParsableByteArray(parsableBitArray.f14189a);
        this.f16954h = 0;
        this.f16955i = 0;
        this.f16956j = false;
        this.n = -9223372036854775807L;
        this.f16951c = str;
        this.d = i2;
        this.f16952e = str2;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void a(ParsableByteArray parsableByteArray) {
        this.g.getClass();
        while (parsableByteArray.a() > 0) {
            int i2 = this.f16954h;
            ParsableByteArray parsableByteArray2 = this.f16950b;
            if (i2 == 0) {
                while (parsableByteArray.a() > 0) {
                    if (this.f16956j) {
                        int iA = parsableByteArray.A();
                        this.f16956j = iA == 172;
                        if (iA == 64 || iA == 65) {
                            boolean z = iA == 65;
                            this.f16954h = 1;
                            byte[] bArr = parsableByteArray2.f14194a;
                            bArr[0] = -84;
                            bArr[1] = (byte) (z ? 65 : 64);
                            this.f16955i = 2;
                            break;
                        }
                    } else {
                        this.f16956j = parsableByteArray.A() == 172;
                    }
                }
            } else if (i2 == 1) {
                byte[] bArr2 = parsableByteArray2.f14194a;
                int iMin = Math.min(parsableByteArray.a(), 16 - this.f16955i);
                parsableByteArray.k(this.f16955i, iMin, bArr2);
                int i3 = this.f16955i + iMin;
                this.f16955i = i3;
                if (i3 == 16) {
                    ParsableBitArray parsableBitArray = this.f16949a;
                    parsableBitArray.m(0);
                    Ac4Util.SyncFrameInfo syncFrameInfoC = Ac4Util.c(parsableBitArray);
                    int i4 = syncFrameInfoC.f16080a;
                    Format format = this.l;
                    if (format == null || 2 != format.G || i4 != format.H || !"audio/ac4".equals(format.o)) {
                        Format.Builder builder = new Format.Builder();
                        builder.f13764a = this.f16953f;
                        builder.m = MimeTypes.p(this.f16952e);
                        builder.n = MimeTypes.p("audio/ac4");
                        builder.F = 2;
                        builder.G = i4;
                        builder.d = this.f16951c;
                        builder.f13768f = this.d;
                        Format format2 = new Format(builder);
                        this.l = format2;
                        this.g.b(format2);
                    }
                    this.m = syncFrameInfoC.f16081b;
                    this.f16957k = (((long) syncFrameInfoC.f16082c) * 1000000) / ((long) this.l.H);
                    parsableByteArray2.N(0);
                    this.g.f(16, parsableByteArray2);
                    this.f16954h = 2;
                }
            } else if (i2 == 2) {
                int iMin2 = Math.min(parsableByteArray.a(), this.m - this.f16955i);
                this.g.f(iMin2, parsableByteArray);
                int i5 = this.f16955i + iMin2;
                this.f16955i = i5;
                if (i5 == this.m) {
                    Preconditions.q(this.n != -9223372036854775807L);
                    this.g.g(this.n, 1, this.m, 0, null);
                    this.n += this.f16957k;
                    this.f16954h = 0;
                }
            }
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void c() {
        this.f16954h = 0;
        this.f16955i = 0;
        this.f16956j = false;
        this.n = -9223372036854775807L;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void d(boolean z) {
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void e(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.a();
        trackIdGenerator.b();
        this.f16953f = trackIdGenerator.f17185e;
        trackIdGenerator.b();
        this.g = extractorOutput.r(trackIdGenerator.d, 1);
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void f(int i2, long j2) {
        this.n = j2;
    }

    public Ac4Reader(String str) {
        this(null, 0, str);
    }
}
