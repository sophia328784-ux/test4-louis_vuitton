package androidx.media3.extractor.ts;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.MpegAudioUtil;
import androidx.media3.extractor.TrackOutput;
import com.batch.android.x0.h;
import com.google.common.base.Preconditions;
import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
public final class MpegAudioReader implements ElementaryStreamReader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ParsableByteArray f17084a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MpegAudioUtil.Header f17085b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f17086c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f17087e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public TrackOutput f17088f;
    public String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f17089h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f17090i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f17091j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f17092k;
    public long l;
    public int m;
    public long n;

    public MpegAudioReader(String str, int i2, String str2) {
        this.f17089h = 0;
        ParsableByteArray parsableByteArray = new ParsableByteArray(4);
        this.f17084a = parsableByteArray;
        parsableByteArray.f14194a[0] = -1;
        this.f17085b = new MpegAudioUtil.Header();
        this.n = -9223372036854775807L;
        this.f17086c = str;
        this.d = i2;
        this.f17087e = str2;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void a(ParsableByteArray parsableByteArray) {
        this.f17088f.getClass();
        while (parsableByteArray.a() > 0) {
            int i2 = this.f17089h;
            ParsableByteArray parsableByteArray2 = this.f17084a;
            if (i2 == 0) {
                byte[] bArr = parsableByteArray.f14194a;
                int i3 = parsableByteArray.f14195b;
                int i4 = parsableByteArray.f14196c;
                while (true) {
                    if (i3 >= i4) {
                        parsableByteArray.N(i4);
                        break;
                    }
                    byte b2 = bArr[i3];
                    boolean z = (b2 & 255) == 255;
                    boolean z2 = this.f17092k && (b2 & h.a.K) == 224;
                    this.f17092k = z;
                    if (z2) {
                        parsableByteArray.N(i3 + 1);
                        this.f17092k = false;
                        parsableByteArray2.f14194a[1] = bArr[i3];
                        this.f17090i = 2;
                        this.f17089h = 1;
                        break;
                    }
                    i3++;
                }
            } else if (i2 == 1) {
                int iMin = Math.min(parsableByteArray.a(), 4 - this.f17090i);
                parsableByteArray.k(this.f17090i, iMin, parsableByteArray2.f14194a);
                int i5 = this.f17090i + iMin;
                this.f17090i = i5;
                if (i5 >= 4) {
                    parsableByteArray2.N(0);
                    int iM = parsableByteArray2.m();
                    MpegAudioUtil.Header header = this.f17085b;
                    if (header.a(iM)) {
                        this.m = header.f16187c;
                        if (!this.f17091j) {
                            this.l = (((long) header.g) * 1000000) / ((long) header.d);
                            Format.Builder builder = new Format.Builder();
                            builder.f13764a = this.g;
                            builder.m = MimeTypes.p(this.f17087e);
                            builder.n = MimeTypes.p(header.f16186b);
                            builder.o = 4096;
                            builder.F = header.f16188e;
                            builder.G = header.d;
                            builder.d = this.f17086c;
                            builder.f13768f = this.d;
                            this.f17088f.b(new Format(builder));
                            this.f17091j = true;
                        }
                        parsableByteArray2.N(0);
                        this.f17088f.f(4, parsableByteArray2);
                        this.f17089h = 2;
                    } else {
                        this.f17090i = 0;
                        this.f17089h = 1;
                    }
                }
            } else {
                if (i2 != 2) {
                    r81.b();
                    return;
                }
                int iMin2 = Math.min(parsableByteArray.a(), this.m - this.f17090i);
                this.f17088f.f(iMin2, parsableByteArray);
                int i6 = this.f17090i + iMin2;
                this.f17090i = i6;
                if (i6 >= this.m) {
                    Preconditions.q(this.n != -9223372036854775807L);
                    this.f17088f.g(this.n, 1, this.m, 0, null);
                    this.n += this.l;
                    this.f17090i = 0;
                    this.f17089h = 0;
                }
            }
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void c() {
        this.f17089h = 0;
        this.f17090i = 0;
        this.f17092k = false;
        this.n = -9223372036854775807L;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void d(boolean z) {
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void e(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.a();
        trackIdGenerator.b();
        this.g = trackIdGenerator.f17185e;
        trackIdGenerator.b();
        this.f17088f = extractorOutput.r(trackIdGenerator.d, 1);
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void f(int i2, long j2) {
        this.n = j2;
    }

    public MpegAudioReader(String str) {
        this(null, 0, str);
    }
}
