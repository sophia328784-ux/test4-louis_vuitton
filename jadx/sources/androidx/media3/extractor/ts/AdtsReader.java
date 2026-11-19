package androidx.media3.extractor.ts;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.DiscardingTrackOutput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import com.google.common.base.Preconditions;
import defpackage.d21;
import defpackage.r81;
import java.util.Arrays;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public final class AdtsReader implements ElementaryStreamReader {
    public static final byte[] x = {73, 68, 51};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f16967a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ParsableBitArray f16968b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ParsableByteArray f16969c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f16970e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f16971f;
    public String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public TrackOutput f16972h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public TrackOutput f16973i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f16974j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f16975k;
    public int l;
    public boolean m;
    public boolean n;
    public int o;
    public int p;
    public int q;
    public boolean r;
    public long s;
    public int t;
    public long u;
    public TrackOutput v;
    public long w;

    public AdtsReader(boolean z, String str, int i2, String str2) {
        this.f16968b = new ParsableBitArray(new byte[7]);
        this.f16969c = new ParsableByteArray(Arrays.copyOf(x, 10));
        this.o = -1;
        this.p = -1;
        this.s = -9223372036854775807L;
        this.u = -9223372036854775807L;
        this.f16967a = z;
        this.d = str;
        this.f16970e = i2;
        this.f16971f = str2;
        this.f16974j = 0;
        this.f16975k = 0;
        this.l = 256;
    }

    /* JADX WARN: Code duplicated, block: B:62:0x0203  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void a(ParsableByteArray parsableByteArray) {
        byte b2;
        int i2;
        int i3;
        char c2;
        int i4;
        char c3;
        int i5;
        int i6;
        int i7;
        this.f16972h.getClass();
        String str = Util.f14242a;
        while (parsableByteArray.a() > 0) {
            int i8 = this.f16974j;
            byte b3 = -1;
            ParsableByteArray parsableByteArray2 = this.f16969c;
            int i9 = 3;
            ParsableBitArray parsableBitArray = this.f16968b;
            int i10 = 0;
            int i11 = 4;
            int i12 = 1;
            if (i8 == 0) {
                byte[] bArr = parsableByteArray.f14194a;
                int i13 = parsableByteArray.f14195b;
                int i14 = parsableByteArray.f14196c;
                while (true) {
                    if (i13 < i14) {
                        int i15 = i13 + 1;
                        int i16 = i9;
                        byte b4 = bArr[i13];
                        int i17 = b4 & 255;
                        if (this.l == 512 && ((65280 | (((byte) i17) & 255 ? 1 : 0) ? 1 : 0) & 65526) == 65520) {
                            if (!this.n) {
                                int i18 = i13 - 1;
                                parsableByteArray.N(i13);
                                byte[] bArr2 = parsableBitArray.f14189a;
                                if (parsableByteArray.a() < i12) {
                                    b2 = -1;
                                } else {
                                    parsableByteArray.k(i10, i12, bArr2);
                                    parsableBitArray.m(i11);
                                    int iG = parsableBitArray.g(i12);
                                    int i19 = this.o;
                                    if (i19 == -1 || iG == i19) {
                                        if (this.p != -1) {
                                            byte[] bArr3 = parsableBitArray.f14189a;
                                            if (parsableByteArray.a() >= i12) {
                                                parsableByteArray.k(i10, i12, bArr3);
                                                parsableBitArray.m(2);
                                                i5 = 4;
                                                if (parsableBitArray.g(4) != this.p) {
                                                    b2 = -1;
                                                } else {
                                                    parsableByteArray.N(i15);
                                                }
                                            }
                                        } else {
                                            i5 = 4;
                                        }
                                        byte[] bArr4 = parsableBitArray.f14189a;
                                        if (parsableByteArray.a() >= i5) {
                                            parsableByteArray.k(i10, i5, bArr4);
                                            parsableBitArray.m(14);
                                            int iG2 = parsableBitArray.g(13);
                                            if (iG2 < 7) {
                                                b2 = -1;
                                            } else {
                                                byte[] bArr5 = parsableByteArray.f14194a;
                                                int i20 = parsableByteArray.f14196c;
                                                int i21 = i18 + iG2;
                                                if (i21 < i20) {
                                                    byte b5 = bArr5[i21];
                                                    b2 = -1;
                                                    if (b5 == -1) {
                                                        int i22 = i21 + 1;
                                                        if (i22 != i20) {
                                                            byte b6 = bArr5[i22];
                                                            if (((65280 | (b6 & 255 ? 1 : 0) ? 1 : 0) & 65526) == 65520 && ((b6 & 8) >> 3) == iG) {
                                                            }
                                                        }
                                                    } else if (b5 == 73 && ((i6 = i21 + 1) == i20 || (bArr5[i6] == 68 && ((i7 = i21 + 2) == i20 || bArr5[i7] == 51)))) {
                                                    }
                                                }
                                            }
                                        }
                                    } else {
                                        b2 = -1;
                                    }
                                }
                                i2 = 1;
                            }
                            this.q = (b4 & 8) >> 3;
                            this.m = (b4 & 1) == 0;
                            if (this.n) {
                                this.f16974j = i16;
                                this.f16975k = 0;
                            } else {
                                this.f16974j = 1;
                                this.f16975k = 0;
                            }
                            parsableByteArray.N(i15);
                        } else {
                            b2 = b3;
                            i2 = i12;
                        }
                        int i23 = this.l;
                        int i24 = i17 | i23;
                        if (i24 == 329) {
                            i3 = 3;
                            c2 = 256;
                            i4 = 0;
                            c3 = 2;
                            this.l = 768;
                        } else if (i24 == 511) {
                            i3 = 3;
                            c2 = 256;
                            i4 = 0;
                            c3 = 2;
                            this.l = 512;
                        } else if (i24 == 836) {
                            i3 = 3;
                            c2 = 256;
                            i4 = 0;
                            c3 = 2;
                            this.l = 1024;
                        } else if (i24 != 1075) {
                            c2 = 256;
                            if (i23 != 256) {
                                this.l = 256;
                                i3 = 3;
                                i4 = 0;
                                c3 = 2;
                            } else {
                                i3 = 3;
                                i4 = 0;
                                c3 = 2;
                            }
                            i12 = i2;
                            b3 = b2;
                            i11 = 4;
                            i10 = i4;
                            i9 = i3;
                        } else {
                            this.f16974j = 2;
                            this.f16975k = 3;
                            this.t = 0;
                            parsableByteArray2.N(0);
                            parsableByteArray.N(i15);
                        }
                        i13 = i15;
                        i12 = i2;
                        b3 = b2;
                        i11 = 4;
                        i10 = i4;
                        i9 = i3;
                    } else {
                        parsableByteArray.N(i13);
                    }
                }
            } else if (i8 != 1) {
                if (i8 == 2) {
                    byte[] bArr6 = parsableByteArray2.f14194a;
                    int iMin = Math.min(parsableByteArray.a(), 10 - this.f16975k);
                    parsableByteArray.k(this.f16975k, iMin, bArr6);
                    int i25 = this.f16975k + iMin;
                    this.f16975k = i25;
                    if (i25 == 10) {
                        this.f16973i.f(10, parsableByteArray2);
                        parsableByteArray2.N(6);
                        TrackOutput trackOutput = this.f16973i;
                        int iZ = parsableByteArray2.z() + 10;
                        this.f16974j = 4;
                        this.f16975k = 10;
                        this.v = trackOutput;
                        this.w = 0L;
                        this.t = iZ;
                    }
                } else if (i8 == 3) {
                    int i26 = this.m ? 7 : 5;
                    byte[] bArr7 = parsableBitArray.f14189a;
                    int iMin2 = Math.min(parsableByteArray.a(), i26 - this.f16975k);
                    parsableByteArray.k(this.f16975k, iMin2, bArr7);
                    int i27 = this.f16975k + iMin2;
                    this.f16975k = i27;
                    if (i27 == i26) {
                        parsableBitArray.m(0);
                        if (this.r) {
                            parsableBitArray.o(10);
                        } else {
                            int iG3 = parsableBitArray.g(2) + 1;
                            if (iG3 != 2) {
                                Log.g("Detected audio object type: " + iG3 + ", but assuming AAC LC.");
                                iG3 = 2;
                            }
                            parsableBitArray.o(5);
                            int iG4 = parsableBitArray.g(3);
                            int i28 = this.p;
                            byte[] bArr8 = {(byte) (((iG3 << 3) & 248) | ((i28 >> 1) & 7)), (byte) (((iG4 << 3) & 120) | ((i28 << 7) & 128))};
                            AacUtil.Config configB = AacUtil.b(new ParsableBitArray(bArr8), false);
                            Format.Builder builder = new Format.Builder();
                            builder.f13764a = this.g;
                            builder.m = MimeTypes.p(this.f16971f);
                            builder.n = MimeTypes.p("audio/mp4a-latm");
                            builder.f13771j = configB.f16068c;
                            builder.F = configB.f16067b;
                            builder.G = configB.f16066a;
                            builder.q = Collections.singletonList(bArr8);
                            builder.d = this.d;
                            builder.f13768f = this.f16970e;
                            Format format = new Format(builder);
                            this.s = 1024000000 / ((long) format.H);
                            this.f16972h.b(format);
                            this.r = true;
                        }
                        parsableBitArray.o(4);
                        int iG5 = parsableBitArray.g(13);
                        int i29 = iG5 - 7;
                        if (this.m) {
                            i29 = iG5 - 9;
                        }
                        TrackOutput trackOutput2 = this.f16972h;
                        long j2 = this.s;
                        this.f16974j = 4;
                        this.f16975k = 0;
                        this.v = trackOutput2;
                        this.w = j2;
                        this.t = i29;
                    }
                } else {
                    if (i8 != 4) {
                        r81.b();
                        return;
                    }
                    int iMin3 = Math.min(parsableByteArray.a(), this.t - this.f16975k);
                    this.v.f(iMin3, parsableByteArray);
                    int i30 = this.f16975k + iMin3;
                    this.f16975k = i30;
                    if (i30 == this.t) {
                        Preconditions.q(this.u != -9223372036854775807L);
                        this.v.g(this.u, 1, this.t, 0, null);
                        this.u += this.w;
                        this.f16974j = 0;
                        this.f16975k = 0;
                        this.l = 256;
                    }
                }
            } else if (parsableByteArray.a() != 0) {
                parsableBitArray.f14189a[0] = parsableByteArray.f14194a[parsableByteArray.f14195b];
                parsableBitArray.m(2);
                int iG6 = parsableBitArray.g(4);
                int i31 = this.p;
                if (i31 == -1 || iG6 == i31) {
                    if (!this.n) {
                        this.n = true;
                        this.o = this.q;
                        this.p = iG6;
                    }
                    this.f16974j = 3;
                    this.f16975k = 0;
                } else {
                    this.n = false;
                    this.f16974j = 0;
                    this.f16975k = 0;
                    this.l = 256;
                }
            }
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void c() {
        this.u = -9223372036854775807L;
        this.n = false;
        this.f16974j = 0;
        this.f16975k = 0;
        this.l = 256;
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
        TrackOutput trackOutputR = extractorOutput.r(trackIdGenerator.d, 1);
        this.f16972h = trackOutputR;
        this.v = trackOutputR;
        if (!this.f16967a) {
            this.f16973i = new DiscardingTrackOutput();
            return;
        }
        trackIdGenerator.a();
        trackIdGenerator.b();
        TrackOutput trackOutputR2 = extractorOutput.r(trackIdGenerator.d, 5);
        this.f16973i = trackOutputR2;
        Format.Builder builder = new Format.Builder();
        trackIdGenerator.b();
        builder.f13764a = trackIdGenerator.f17185e;
        builder.m = MimeTypes.p(this.f16971f);
        builder.n = MimeTypes.p("application/id3");
        d21.w(builder, trackOutputR2);
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void f(int i2, long j2) {
        this.u = j2;
    }

    public AdtsReader(boolean z, String str) {
        this(z, null, 0, str);
    }
}
