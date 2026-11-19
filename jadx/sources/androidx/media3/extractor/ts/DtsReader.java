package androidx.media3.extractor.ts;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.DtsUtil;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import com.sightcall.uvc.Camera;
import defpackage.r81;
import java.math.RoundingMode;
import java.util.concurrent.atomic.AtomicInteger;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
public final class DtsReader implements ElementaryStreamReader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ParsableByteArray f16978a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f16980c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f16981e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f16982f;
    public TrackOutput g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f16984i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f16985j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f16986k;
    public Format l;
    public int m;
    public int n;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f16983h = 0;
    public long q = -9223372036854775807L;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicInteger f16979b = new AtomicInteger();
    public int o = -1;
    public int p = -1;

    public DtsReader(String str, int i2, int i3, String str2) {
        this.f16978a = new ParsableByteArray(new byte[i3]);
        this.f16980c = str;
        this.d = i2;
        this.f16981e = str2;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void a(ParsableByteArray parsableByteArray) throws ParserException {
        int i2;
        byte b2;
        int i3;
        byte b3;
        int i4;
        int i5;
        int iG;
        int iG2;
        int iG3;
        int i6;
        long jZ;
        int i7;
        long j2;
        int i8;
        int i9;
        int i10;
        this.g.getClass();
        while (parsableByteArray.a() > 0) {
            int i11 = this.f16983h;
            ParsableByteArray parsableByteArray2 = this.f16978a;
            switch (i11) {
                case 0:
                    while (parsableByteArray.a() > 0) {
                        int i12 = this.f16985j << 8;
                        this.f16985j = i12;
                        int iA = i12 | parsableByteArray.A();
                        this.f16985j = iA;
                        int iB = DtsUtil.b(iA);
                        this.n = iB;
                        if (iB != 0) {
                            byte[] bArr = parsableByteArray2.f14194a;
                            int i13 = this.f16985j;
                            bArr[0] = (byte) ((i13 >> 24) & 255);
                            bArr[1] = (byte) ((i13 >> 16) & 255);
                            bArr[2] = (byte) ((i13 >> 8) & 255);
                            bArr[3] = (byte) (i13 & 255);
                            this.f16984i = 4;
                            this.f16985j = 0;
                            if (iB != 3 && iB != 4) {
                                if (iB == 1) {
                                    this.f16983h = 1;
                                } else {
                                    this.f16983h = 2;
                                }
                            }
                            this.f16983h = 4;
                        }
                        break;
                    }
                    break;
                case 1:
                    if (b(parsableByteArray, parsableByteArray2.f14194a, 18)) {
                        byte[] bArr2 = parsableByteArray2.f14194a;
                        if (this.l == null) {
                            String str = this.f16982f;
                            ParsableBitArray parsableBitArrayC = DtsUtil.c(bArr2);
                            parsableBitArrayC.o(60);
                            int i14 = DtsUtil.f16136a[parsableBitArrayC.g(6)];
                            int i15 = DtsUtil.f16137b[parsableBitArrayC.g(4)];
                            int iG4 = parsableBitArrayC.g(5);
                            int i16 = iG4 >= 29 ? -1 : (DtsUtil.f16138c[iG4] * 1000) / 2;
                            parsableBitArrayC.o(10);
                            int i17 = i14 + (parsableBitArrayC.g(2) > 0 ? 1 : 0);
                            Format.Builder builder = new Format.Builder();
                            builder.f13764a = str;
                            builder.m = MimeTypes.p(this.f16981e);
                            builder.n = MimeTypes.p("audio/vnd.dts");
                            builder.f13769h = i16;
                            builder.F = i17;
                            builder.G = i15;
                            builder.r = null;
                            builder.d = this.f16980c;
                            builder.f13768f = this.d;
                            Format format = new Format(builder);
                            this.l = format;
                            this.g.b(format);
                        }
                        this.m = DtsUtil.a(bArr2);
                        byte b4 = bArr2[0];
                        if (b4 != -2) {
                            if (b4 == -1) {
                                i2 = (bArr2[4] & 7) << 4;
                                b3 = bArr2[7];
                            } else if (b4 != 31) {
                                i2 = (bArr2[4] & 1) << 6;
                                b2 = bArr2[5];
                            } else {
                                i2 = (bArr2[5] & 7) << 4;
                                b3 = bArr2[6];
                            }
                            i3 = b3 & 60;
                            this.f16986k = Ints.b(Util.X(this.l.H, (((i3 >> 2) | i2) + 1) * 32));
                            parsableByteArray2.N(0);
                            this.g.f(18, parsableByteArray2);
                            this.f16983h = 6;
                        } else {
                            i2 = (bArr2[5] & 1) << 6;
                            b2 = bArr2[4];
                        }
                        i3 = b2 & 252;
                        this.f16986k = Ints.b(Util.X(this.l.H, (((i3 >> 2) | i2) + 1) * 32));
                        parsableByteArray2.N(0);
                        this.g.f(18, parsableByteArray2);
                        this.f16983h = 6;
                        break;
                    }
                    break;
                case 2:
                    if (b(parsableByteArray, parsableByteArray2.f14194a, 7)) {
                        ParsableBitArray parsableBitArrayC2 = DtsUtil.c(parsableByteArray2.f14194a);
                        parsableBitArrayC2.o(42);
                        this.o = parsableBitArrayC2.g(parsableBitArrayC2.f() ? 12 : 8) + 1;
                        this.f16983h = 3;
                    }
                    break;
                case 3:
                    int i18 = 8;
                    if (b(parsableByteArray, parsableByteArray2.f14194a, this.o)) {
                        ParsableBitArray parsableBitArrayC3 = DtsUtil.c(parsableByteArray2.f14194a);
                        parsableBitArrayC3.o(40);
                        int iG5 = parsableBitArrayC3.g(2);
                        if (parsableBitArrayC3.f()) {
                            i4 = 20;
                            i5 = 12;
                        } else {
                            i4 = 16;
                            i5 = 8;
                        }
                        parsableBitArrayC3.o(i5);
                        int iG6 = parsableBitArrayC3.g(i4) + 1;
                        boolean zF = parsableBitArrayC3.f();
                        if (zF) {
                            iG = parsableBitArrayC3.g(2);
                            iG2 = (parsableBitArrayC3.g(3) + 1) * 512;
                            if (parsableBitArrayC3.f()) {
                                parsableBitArrayC3.o(36);
                            }
                            int iG7 = parsableBitArrayC3.g(3) + 1;
                            int iG8 = parsableBitArrayC3.g(3) + 1;
                            if (iG7 != 1 || iG8 != 1) {
                                throw ParserException.c("Multiple audio presentations or assets not supported");
                            }
                            int i19 = iG5 + 1;
                            int iG9 = parsableBitArrayC3.g(i19);
                            int i20 = 0;
                            while (i20 < i19) {
                                if (((iG9 >> i20) & 1) == 1) {
                                    parsableBitArrayC3.o(i18);
                                }
                                i20++;
                                i18 = 8;
                            }
                            if (parsableBitArrayC3.f()) {
                                parsableBitArrayC3.o(2);
                                int iG10 = (parsableBitArrayC3.g(2) + 1) << 2;
                                int iG11 = parsableBitArrayC3.g(2) + 1;
                                for (int i21 = 0; i21 < iG11; i21++) {
                                    parsableBitArrayC3.o(iG10);
                                }
                            }
                        } else {
                            iG = -1;
                            iG2 = 0;
                        }
                        parsableBitArrayC3.o(i4);
                        parsableBitArrayC3.o(12);
                        if (zF) {
                            if (parsableBitArrayC3.f()) {
                                parsableBitArrayC3.o(4);
                            }
                            if (parsableBitArrayC3.f()) {
                                parsableBitArrayC3.o(24);
                            }
                            if (parsableBitArrayC3.f()) {
                                parsableBitArrayC3.p(parsableBitArrayC3.g(10) + 1);
                            }
                            parsableBitArrayC3.o(5);
                            i6 = DtsUtil.d[parsableBitArrayC3.g(4)];
                            iG3 = parsableBitArrayC3.g(8) + 1;
                        } else {
                            iG3 = -1;
                            i6 = -2147483647;
                        }
                        if (zF) {
                            if (iG == 0) {
                                i7 = 32000;
                            } else if (iG == 1) {
                                i7 = 44100;
                            } else {
                                if (iG != 2) {
                                    throw ParserException.a(null, "Unsupported reference clock code in DTS HD header: " + iG);
                                }
                                i7 = 48000;
                            }
                            String str2 = Util.f14242a;
                            jZ = Util.Z(iG2, 1000000L, i7, RoundingMode.DOWN);
                        } else {
                            jZ = -9223372036854775807L;
                        }
                        g(new DtsUtil.DtsHeader("audio/vnd.dts.hd;profile=lbr", iG3, i6, iG6, jZ));
                        this.m = iG6;
                        this.f16986k = jZ == -9223372036854775807L ? 0L : jZ;
                        parsableByteArray2.N(0);
                        this.g.f(this.o, parsableByteArray2);
                        this.f16983h = 6;
                    } else {
                        continue;
                    }
                    break;
                case 4:
                    if (b(parsableByteArray, parsableByteArray2.f14194a, 6)) {
                        ParsableBitArray parsableBitArrayC4 = DtsUtil.c(parsableByteArray2.f14194a);
                        parsableBitArrayC4.o(32);
                        int iD = DtsUtil.d(parsableBitArrayC4, DtsUtil.f16142i) + 1;
                        this.p = iD;
                        int i22 = this.f16984i;
                        if (i22 > iD) {
                            int i23 = i22 - iD;
                            this.f16984i = i22 - i23;
                            parsableByteArray.N(parsableByteArray.f14195b - i23);
                        }
                        this.f16983h = 5;
                    }
                    break;
                case 5:
                    if (b(parsableByteArray, parsableByteArray2.f14194a, this.p)) {
                        byte[] bArr3 = parsableByteArray2.f14194a;
                        ParsableBitArray parsableBitArrayC5 = DtsUtil.c(bArr3);
                        int i24 = parsableBitArrayC5.g(32) == 1078008818 ? 1 : 0;
                        int iD2 = DtsUtil.d(parsableBitArrayC5, DtsUtil.f16139e);
                        int i25 = iD2 + 1;
                        if (i24 == 0) {
                            j2 = -9223372036854775807L;
                            i8 = -2147483647;
                        } else {
                            if (!parsableBitArrayC5.f()) {
                                throw ParserException.c("Only supports full channel mask-based audio presentation");
                            }
                            int i26 = iD2 - 1;
                            int i27 = ((bArr3[i26] << 8) & 65535) | (bArr3[iD2] & 255);
                            String str3 = Util.f14242a;
                            int i28 = 65535;
                            for (int i29 = 0; i29 < i26; i29++) {
                                int unsignedInt = Byte.toUnsignedInt(bArr3[i29]);
                                int[] iArr = Util.f14250k;
                                int i30 = (iArr[(((i28 >> 12) & 255) ^ (unsignedInt >> 4)) & 255] ^ ((i28 << 4) & 65535)) & 65535;
                                i28 = (((i30 << 4) & 65535) ^ iArr[(((i30 >> 12) & 255) ^ (unsignedInt & 15)) & 255]) & 65535;
                            }
                            if (i27 != i28) {
                                throw ParserException.a(null, "CRC check failed");
                            }
                            int iG12 = parsableBitArrayC5.g(2);
                            if (iG12 == 0) {
                                i9 = 512;
                            } else if (iG12 == 1) {
                                i9 = Camera.DEFAULT_PREVIEW_HEIGHT;
                            } else {
                                if (iG12 != 2) {
                                    throw ParserException.a(null, "Unsupported base duration index in DTS UHD header: " + iG12);
                                }
                                i9 = KyberEngine.KyberPolyBytes;
                            }
                            int iG13 = (parsableBitArrayC5.g(3) + 1) * i9;
                            int iG14 = parsableBitArrayC5.g(2);
                            if (iG14 == 0) {
                                i10 = 32000;
                            } else if (iG14 == 1) {
                                i10 = 44100;
                            } else {
                                if (iG14 != 2) {
                                    throw ParserException.a(null, "Unsupported clock rate index in DTS UHD header: " + iG14);
                                }
                                i10 = 48000;
                            }
                            if (parsableBitArrayC5.f()) {
                                parsableBitArrayC5.o(36);
                            }
                            int iG15 = (1 << parsableBitArrayC5.g(2)) * i10;
                            long jZ2 = Util.Z(iG13, 1000000L, i10, RoundingMode.DOWN);
                            i8 = iG15;
                            j2 = jZ2;
                        }
                        int iD3 = 0;
                        for (int i31 = 0; i31 < i24; i31++) {
                            iD3 += DtsUtil.d(parsableBitArrayC5, DtsUtil.f16140f);
                        }
                        AtomicInteger atomicInteger = this.f16979b;
                        if (i24 != 0) {
                            atomicInteger.set(DtsUtil.d(parsableBitArrayC5, DtsUtil.g));
                        }
                        int iD4 = iD3 + (atomicInteger.get() != 0 ? DtsUtil.d(parsableBitArrayC5, DtsUtil.f16141h) : 0) + i25;
                        DtsUtil.DtsHeader dtsHeader = new DtsUtil.DtsHeader("audio/vnd.dts.uhd;profile=p2", 2, i8, iD4, j2);
                        if (this.n == 3) {
                            g(dtsHeader);
                        }
                        this.m = iD4;
                        this.f16986k = j2 == -9223372036854775807L ? 0L : j2;
                        parsableByteArray2.N(0);
                        this.g.f(this.p, parsableByteArray2);
                        this.f16983h = 6;
                    } else {
                        continue;
                    }
                    break;
                case 6:
                    int iMin = Math.min(parsableByteArray.a(), this.m - this.f16984i);
                    this.g.f(iMin, parsableByteArray);
                    int i32 = this.f16984i + iMin;
                    this.f16984i = i32;
                    if (i32 == this.m) {
                        Preconditions.q(this.q != -9223372036854775807L);
                        this.g.g(this.q, this.n == 4 ? 0 : 1, this.m, 0, null);
                        this.q += this.f16986k;
                        this.f16983h = 0;
                    }
                    break;
                default:
                    r81.b();
                    return;
            }
        }
    }

    public final boolean b(ParsableByteArray parsableByteArray, byte[] bArr, int i2) {
        int iMin = Math.min(parsableByteArray.a(), i2 - this.f16984i);
        parsableByteArray.k(this.f16984i, iMin, bArr);
        int i3 = this.f16984i + iMin;
        this.f16984i = i3;
        return i3 == i2;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void c() {
        this.f16983h = 0;
        this.f16984i = 0;
        this.f16985j = 0;
        this.q = -9223372036854775807L;
        this.f16979b.set(0);
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void d(boolean z) {
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void e(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.a();
        trackIdGenerator.b();
        this.f16982f = trackIdGenerator.f17185e;
        trackIdGenerator.b();
        this.g = extractorOutput.r(trackIdGenerator.d, 1);
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void f(int i2, long j2) {
        this.q = j2;
    }

    public final void g(DtsUtil.DtsHeader dtsHeader) {
        int i2 = dtsHeader.f16144b;
        String str = dtsHeader.f16143a;
        int i3 = dtsHeader.f16145c;
        if (i2 == -2147483647 || i3 == -1) {
            return;
        }
        Format format = this.l;
        if (format != null && i3 == format.G && i2 == format.H && str.equals(format.o)) {
            return;
        }
        Format format2 = this.l;
        Format.Builder builder = format2 == null ? new Format.Builder() : format2.a();
        builder.f13764a = this.f16982f;
        builder.m = MimeTypes.p(this.f16981e);
        builder.n = MimeTypes.p(str);
        builder.F = i3;
        builder.G = i2;
        builder.d = this.f16980c;
        builder.f13768f = this.d;
        Format format3 = new Format(builder);
        this.l = format3;
        this.g.b(format3);
    }
}
