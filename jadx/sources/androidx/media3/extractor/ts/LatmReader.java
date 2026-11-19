package androidx.media3.extractor.ts;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import com.google.common.base.Preconditions;
import defpackage.r81;
import java.util.Collections;
import org.bouncycastle.asn1.BERTags;

/* JADX INFO: loaded from: classes.dex */
public final class LatmReader implements ElementaryStreamReader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f17075a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f17076b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f17077c;
    public final ParsableByteArray d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ParsableBitArray f17078e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public TrackOutput f17079f;
    public String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Format f17080h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f17081i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f17082j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f17083k;
    public int l;
    public long m;
    public boolean n;
    public int o;
    public int p;
    public int q;
    public boolean r;
    public long s;
    public int t;
    public long u;
    public int v;
    public String w;

    public LatmReader(String str, int i2, String str2) {
        this.f17075a = str;
        this.f17076b = i2;
        this.f17077c = str2;
        ParsableByteArray parsableByteArray = new ParsableByteArray(1024);
        this.d = parsableByteArray;
        this.f17078e = new ParsableBitArray(parsableByteArray.f14194a);
        this.m = -9223372036854775807L;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void a(ParsableByteArray parsableByteArray) throws ParserException {
        int iG;
        boolean zF;
        this.f17079f.getClass();
        while (parsableByteArray.a() > 0) {
            int i2 = this.f17081i;
            if (i2 != 0) {
                if (i2 != 1) {
                    ParsableByteArray parsableByteArray2 = this.d;
                    ParsableBitArray parsableBitArray = this.f17078e;
                    if (i2 == 2) {
                        int iA = ((this.l & (-225)) << 8) | parsableByteArray.A();
                        this.f17083k = iA;
                        if (iA > parsableByteArray2.f14194a.length) {
                            parsableByteArray2.K(iA);
                            byte[] bArr = parsableByteArray2.f14194a;
                            parsableBitArray.getClass();
                            parsableBitArray.k(bArr.length, bArr);
                        }
                        this.f17082j = 0;
                        this.f17081i = 3;
                    } else {
                        if (i2 != 3) {
                            r81.b();
                            return;
                        }
                        int iMin = Math.min(parsableByteArray.a(), this.f17083k - this.f17082j);
                        parsableByteArray.k(this.f17082j, iMin, parsableBitArray.f14189a);
                        int i3 = this.f17082j + iMin;
                        this.f17082j = i3;
                        if (i3 == this.f17083k) {
                            parsableBitArray.m(0);
                            if (parsableBitArray.f()) {
                                if (this.n) {
                                }
                                this.f17081i = 0;
                            } else {
                                this.n = true;
                                int iG2 = parsableBitArray.g(1);
                                int iG3 = iG2 == 1 ? parsableBitArray.g(1) : 0;
                                this.o = iG3;
                                if (iG3 != 0) {
                                    throw ParserException.a(null, null);
                                }
                                if (iG2 == 1) {
                                    parsableBitArray.g((parsableBitArray.g(2) + 1) * 8);
                                }
                                if (!parsableBitArray.f()) {
                                    throw ParserException.a(null, null);
                                }
                                this.p = parsableBitArray.g(6);
                                int iG4 = parsableBitArray.g(4);
                                int iG5 = parsableBitArray.g(3);
                                if (iG4 != 0 || iG5 != 0) {
                                    throw ParserException.a(null, null);
                                }
                                if (iG2 == 0) {
                                    int iE = parsableBitArray.e();
                                    int iB = parsableBitArray.b();
                                    AacUtil.Config configB = AacUtil.b(parsableBitArray, true);
                                    this.w = configB.f16068c;
                                    this.t = configB.f16066a;
                                    this.v = configB.f16067b;
                                    int iB2 = iB - parsableBitArray.b();
                                    parsableBitArray.m(iE);
                                    byte[] bArr2 = new byte[(iB2 + 7) / 8];
                                    parsableBitArray.h(iB2, bArr2);
                                    Format.Builder builder = new Format.Builder();
                                    builder.f13764a = this.g;
                                    builder.m = MimeTypes.p(this.f17077c);
                                    builder.n = MimeTypes.p("audio/mp4a-latm");
                                    builder.f13771j = this.w;
                                    builder.F = this.v;
                                    builder.G = this.t;
                                    builder.q = Collections.singletonList(bArr2);
                                    builder.d = this.f17075a;
                                    builder.f13768f = this.f17076b;
                                    Format format = new Format(builder);
                                    if (!format.equals(this.f17080h)) {
                                        this.f17080h = format;
                                        this.u = 1024000000 / ((long) format.H);
                                        this.f17079f.b(format);
                                    }
                                } else {
                                    int iG6 = parsableBitArray.g((parsableBitArray.g(2) + 1) * 8);
                                    int iB3 = parsableBitArray.b();
                                    AacUtil.Config configB2 = AacUtil.b(parsableBitArray, true);
                                    this.w = configB2.f16068c;
                                    this.t = configB2.f16066a;
                                    this.v = configB2.f16067b;
                                    parsableBitArray.o(iG6 - (iB3 - parsableBitArray.b()));
                                }
                                int iG7 = parsableBitArray.g(3);
                                this.q = iG7;
                                if (iG7 == 0) {
                                    parsableBitArray.o(8);
                                } else if (iG7 == 1) {
                                    parsableBitArray.o(9);
                                } else if (iG7 == 3 || iG7 == 4 || iG7 == 5) {
                                    parsableBitArray.o(6);
                                } else {
                                    if (iG7 != 6 && iG7 != 7) {
                                        r81.b();
                                        return;
                                    }
                                    parsableBitArray.o(1);
                                }
                                boolean zF2 = parsableBitArray.f();
                                this.r = zF2;
                                this.s = 0L;
                                if (zF2) {
                                    if (iG2 == 1) {
                                        this.s = parsableBitArray.g((parsableBitArray.g(2) + 1) * 8);
                                    } else {
                                        do {
                                            zF = parsableBitArray.f();
                                            this.s = (this.s << 8) + ((long) parsableBitArray.g(8));
                                        } while (zF);
                                    }
                                }
                                if (parsableBitArray.f()) {
                                    parsableBitArray.o(8);
                                }
                            }
                            if (this.o != 0) {
                                throw ParserException.a(null, null);
                            }
                            if (this.p != 0) {
                                throw ParserException.a(null, null);
                            }
                            if (this.q != 0) {
                                throw ParserException.a(null, null);
                            }
                            int i4 = 0;
                            do {
                                iG = parsableBitArray.g(8);
                                i4 += iG;
                            } while (iG == 255);
                            int iE2 = parsableBitArray.e();
                            if ((iE2 & 7) == 0) {
                                parsableByteArray2.N(iE2 >> 3);
                            } else {
                                parsableBitArray.h(i4 * 8, parsableByteArray2.f14194a);
                                parsableByteArray2.N(0);
                            }
                            this.f17079f.f(i4, parsableByteArray2);
                            Preconditions.q(this.m != -9223372036854775807L);
                            this.f17079f.g(this.m, 1, i4, 0, null);
                            this.m += this.u;
                            if (this.r) {
                                parsableBitArray.o((int) this.s);
                            }
                            this.f17081i = 0;
                        } else {
                            continue;
                        }
                    }
                } else {
                    int iA2 = parsableByteArray.A();
                    if ((iA2 & BERTags.FLAGS) == 224) {
                        this.l = iA2;
                        this.f17081i = 2;
                    } else if (iA2 != 86) {
                        this.f17081i = 0;
                    }
                }
            } else if (parsableByteArray.A() == 86) {
                this.f17081i = 1;
            }
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void c() {
        this.f17081i = 0;
        this.m = -9223372036854775807L;
        this.n = false;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void d(boolean z) {
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void e(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.a();
        trackIdGenerator.b();
        this.f17079f = extractorOutput.r(trackIdGenerator.d, 1);
        trackIdGenerator.b();
        this.g = trackIdGenerator.f17185e;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void f(int i2, long j2) {
        this.m = j2;
    }
}
