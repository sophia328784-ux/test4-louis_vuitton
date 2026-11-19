package androidx.media3.extractor.ts;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.Ac3Util;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import com.google.common.base.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class Ac3Reader implements ElementaryStreamReader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ParsableBitArray f16937a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ParsableByteArray f16938b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f16939c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f16940e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f16941f;
    public TrackOutput g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f16942h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f16943i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f16944j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f16945k;
    public Format l;
    public int m;
    public long n;

    public Ac3Reader(String str, int i2, String str2) {
        ParsableBitArray parsableBitArray = new ParsableBitArray(new byte[128]);
        this.f16937a = parsableBitArray;
        this.f16938b = new ParsableByteArray(parsableBitArray.f14189a);
        this.f16942h = 0;
        this.n = -9223372036854775807L;
        this.f16939c = str;
        this.d = i2;
        this.f16940e = str2;
    }

    /* JADX WARN: Code duplicated, block: B:127:0x0212  */
    /* JADX WARN: Code duplicated, block: B:149:0x0254  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void a(ParsableByteArray parsableByteArray) {
        int i2;
        int i3;
        int i4;
        String str;
        int i5;
        int iG;
        int i6;
        byte b2;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        this.g.getClass();
        while (parsableByteArray.a() > 0) {
            int i18 = this.f16942h;
            ParsableByteArray parsableByteArray2 = this.f16938b;
            if (i18 == 0) {
                while (parsableByteArray.a() > 0) {
                    if (this.f16944j) {
                        int iA = parsableByteArray.A();
                        if (iA == 119) {
                            this.f16944j = false;
                            this.f16942h = 1;
                            byte[] bArr = parsableByteArray2.f14194a;
                            bArr[0] = 11;
                            bArr[1] = 119;
                            this.f16943i = 2;
                            break;
                        }
                        this.f16944j = iA == 11;
                    } else {
                        this.f16944j = parsableByteArray.A() == 11;
                    }
                }
            } else if (i18 == 1) {
                byte[] bArr2 = parsableByteArray2.f14194a;
                int iMin = Math.min(parsableByteArray.a(), 128 - this.f16943i);
                parsableByteArray.k(this.f16943i, iMin, bArr2);
                int i19 = this.f16943i + iMin;
                this.f16943i = i19;
                if (i19 == 128) {
                    ParsableBitArray parsableBitArray = this.f16937a;
                    parsableBitArray.m(0);
                    int iE = parsableBitArray.e();
                    parsableBitArray.o(40);
                    Object[] objArr = parsableBitArray.g(5) > 10;
                    parsableBitArray.m(iE);
                    int[] iArr = Ac3Util.d;
                    int[] iArr2 = Ac3Util.f16070b;
                    if (objArr == true) {
                        parsableBitArray.o(16);
                        int iG2 = parsableBitArray.g(2);
                        if (iG2 == 0) {
                            b2 = 0;
                        } else if (iG2 != 1) {
                            b2 = iG2 != 2 ? (byte) -1 : (byte) 2;
                        } else {
                            b2 = 1;
                        }
                        parsableBitArray.o(3);
                        iG = (parsableBitArray.g(11) + 1) * 2;
                        int iG3 = parsableBitArray.g(2);
                        if (iG3 == 3) {
                            i6 = Ac3Util.f16071c[parsableBitArray.g(2)];
                            i7 = 3;
                            i8 = 6;
                        } else {
                            int iG4 = parsableBitArray.g(2);
                            int i20 = Ac3Util.f16069a[iG4];
                            i6 = iArr2[iG3];
                            i7 = iG4;
                            i8 = i20;
                        }
                        i4 = i8 * 256;
                        int i21 = (iG * i6) / (i8 * 32);
                        int iG5 = parsableBitArray.g(3);
                        boolean zF = parsableBitArray.f();
                        i3 = iArr[iG5] + (zF ? 1 : 0);
                        parsableBitArray.o(10);
                        if (parsableBitArray.f()) {
                            parsableBitArray.o(8);
                        }
                        if (iG5 == 0) {
                            parsableBitArray.o(5);
                            if (parsableBitArray.f()) {
                                parsableBitArray.o(8);
                            }
                        }
                        if (b2 == 1 && parsableBitArray.f()) {
                            parsableBitArray.o(16);
                        }
                        if (parsableBitArray.f()) {
                            if (iG5 > 2) {
                                parsableBitArray.o(2);
                            }
                            if ((iG5 & 1) == 0 || iG5 <= 2) {
                                i13 = 6;
                            } else {
                                i13 = 6;
                                parsableBitArray.o(6);
                            }
                            if ((iG5 & 4) != 0) {
                                parsableBitArray.o(i13);
                            }
                            if (zF && parsableBitArray.f()) {
                                parsableBitArray.o(5);
                            }
                            if (b2 != 0) {
                                i9 = i7;
                            } else {
                                if (parsableBitArray.f()) {
                                    i14 = 6;
                                    parsableBitArray.o(6);
                                } else {
                                    i14 = 6;
                                }
                                if (iG5 == 0 && parsableBitArray.f()) {
                                    parsableBitArray.o(i14);
                                }
                                if (parsableBitArray.f()) {
                                    parsableBitArray.o(i14);
                                }
                                int iG6 = parsableBitArray.g(2);
                                if (iG6 == 1) {
                                    parsableBitArray.o(5);
                                    i16 = 2;
                                } else {
                                    if (iG6 == 2) {
                                        parsableBitArray.o(12);
                                    } else if (iG6 == 3) {
                                        int iG7 = parsableBitArray.g(5);
                                        if (parsableBitArray.f()) {
                                            parsableBitArray.o(5);
                                            if (parsableBitArray.f()) {
                                                i17 = 4;
                                                parsableBitArray.o(4);
                                            } else {
                                                i17 = 4;
                                            }
                                            if (parsableBitArray.f()) {
                                                parsableBitArray.o(i17);
                                            }
                                            if (parsableBitArray.f()) {
                                                parsableBitArray.o(i17);
                                            }
                                            if (parsableBitArray.f()) {
                                                parsableBitArray.o(i17);
                                            }
                                            if (parsableBitArray.f()) {
                                                parsableBitArray.o(i17);
                                            }
                                            if (parsableBitArray.f()) {
                                                parsableBitArray.o(i17);
                                            }
                                            if (parsableBitArray.f()) {
                                                parsableBitArray.o(i17);
                                            }
                                            if (parsableBitArray.f()) {
                                                if (parsableBitArray.f()) {
                                                    parsableBitArray.o(i17);
                                                }
                                                if (parsableBitArray.f()) {
                                                    parsableBitArray.o(i17);
                                                }
                                            }
                                        }
                                        if (parsableBitArray.f()) {
                                            parsableBitArray.o(5);
                                            if (parsableBitArray.f()) {
                                                parsableBitArray.o(7);
                                                if (parsableBitArray.f()) {
                                                    i15 = 8;
                                                    parsableBitArray.o(8);
                                                } else {
                                                    i15 = 8;
                                                }
                                            } else {
                                                i15 = 8;
                                            }
                                        } else {
                                            i15 = 8;
                                        }
                                        i16 = 2;
                                        parsableBitArray.o((iG7 + 2) * i15);
                                        parsableBitArray.c();
                                    }
                                    i16 = 2;
                                }
                                if (iG5 < i16) {
                                    if (parsableBitArray.f()) {
                                        parsableBitArray.o(14);
                                    }
                                    if (iG5 == 0 && parsableBitArray.f()) {
                                        parsableBitArray.o(14);
                                    }
                                }
                                if (parsableBitArray.f()) {
                                    i9 = i7;
                                    if (i9 == 0) {
                                        parsableBitArray.o(5);
                                    } else {
                                        for (int i22 = 0; i22 < i8; i22++) {
                                            if (parsableBitArray.f()) {
                                                parsableBitArray.o(5);
                                            }
                                        }
                                    }
                                } else {
                                    i9 = i7;
                                }
                            }
                        } else {
                            i9 = i7;
                        }
                        if (parsableBitArray.f()) {
                            parsableBitArray.o(5);
                            if (iG5 == 2) {
                                parsableBitArray.o(4);
                            }
                            if (iG5 >= 6) {
                                parsableBitArray.o(2);
                            }
                            if (parsableBitArray.f()) {
                                i12 = 8;
                                parsableBitArray.o(8);
                            } else {
                                i12 = 8;
                            }
                            if (iG5 == 0 && parsableBitArray.f()) {
                                parsableBitArray.o(i12);
                            }
                            i10 = 3;
                            if (iG3 < 3) {
                                parsableBitArray.n();
                            }
                        } else {
                            i10 = 3;
                        }
                        if (b2 == 0 && i9 != i10) {
                            parsableBitArray.n();
                        }
                        if (b2 == 2 && (i9 == i10 || parsableBitArray.f())) {
                            i11 = 6;
                            parsableBitArray.o(6);
                        } else {
                            i11 = 6;
                        }
                        str = (parsableBitArray.f() && parsableBitArray.g(i11) == 1 && parsableBitArray.g(8) == 1) ? "audio/eac3-joc" : "audio/eac3";
                        i5 = i21;
                    } else {
                        parsableBitArray.o(32);
                        int iG8 = parsableBitArray.g(2);
                        String str2 = iG8 == 3 ? null : "audio/ac3";
                        int iG9 = parsableBitArray.g(6);
                        int i23 = Ac3Util.f16072e[iG9 / 2] * 1000;
                        int iA2 = Ac3Util.a(iG8, iG9);
                        parsableBitArray.o(8);
                        int iG10 = parsableBitArray.g(3);
                        if ((iG10 & 1) == 0 || iG10 == 1) {
                            i2 = 2;
                        } else {
                            i2 = 2;
                            parsableBitArray.o(2);
                        }
                        if ((iG10 & 4) != 0) {
                            parsableBitArray.o(i2);
                        }
                        if (iG10 == i2) {
                            parsableBitArray.o(i2);
                        }
                        int i24 = iG8 < 3 ? iArr2[iG8] : -1;
                        i3 = iArr[iG10] + (parsableBitArray.f() ? 1 : 0);
                        i4 = 1536;
                        str = str2;
                        i5 = i23;
                        iG = iA2;
                        i6 = i24;
                    }
                    Format format = this.l;
                    if (format == null || i3 != format.G || i6 != format.H || !Objects.equals(str, format.o)) {
                        Format.Builder builder = new Format.Builder();
                        builder.f13764a = this.f16941f;
                        builder.m = MimeTypes.p(this.f16940e);
                        builder.n = MimeTypes.p(str);
                        builder.F = i3;
                        builder.G = i6;
                        builder.d = this.f16939c;
                        builder.f13768f = this.d;
                        builder.f13770i = i5;
                        if ("audio/ac3".equals(str)) {
                            builder.f13769h = i5;
                        }
                        Format format2 = new Format(builder);
                        this.l = format2;
                        this.g.b(format2);
                    }
                    this.m = iG;
                    this.f16945k = (((long) i4) * 1000000) / ((long) this.l.H);
                    parsableByteArray2.N(0);
                    this.g.f(128, parsableByteArray2);
                    this.f16942h = 2;
                }
            } else if (i18 == 2) {
                int iMin2 = Math.min(parsableByteArray.a(), this.m - this.f16943i);
                this.g.f(iMin2, parsableByteArray);
                int i25 = this.f16943i + iMin2;
                this.f16943i = i25;
                if (i25 == this.m) {
                    Preconditions.q(this.n != -9223372036854775807L);
                    this.g.g(this.n, 1, this.m, 0, null);
                    this.n += this.f16945k;
                    this.f16942h = 0;
                }
            }
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void c() {
        this.f16942h = 0;
        this.f16943i = 0;
        this.f16944j = false;
        this.n = -9223372036854775807L;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void d(boolean z) {
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void e(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.a();
        trackIdGenerator.b();
        this.f16941f = trackIdGenerator.f17185e;
        trackIdGenerator.b();
        this.g = extractorOutput.r(trackIdGenerator.d, 1);
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void f(int i2, long j2) {
        this.n = j2;
    }

    public Ac3Reader(String str) {
        this(null, 0, str);
    }
}
