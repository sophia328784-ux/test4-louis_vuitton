package androidx.media3.extractor.ogg;

import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.VorbisBitArray;
import androidx.media3.extractor.VorbisUtil;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class VorbisReader extends StreamReader {
    public VorbisSetup n;
    public int o;
    public boolean p;
    public VorbisUtil.VorbisIdHeader q;
    public VorbisUtil.CommentHeader r;

    public static final class VorbisSetup {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final VorbisUtil.VorbisIdHeader f16659a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final VorbisUtil.CommentHeader f16660b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final byte[] f16661c;
        public final VorbisUtil.Mode[] d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f16662e;

        public VorbisSetup(VorbisUtil.VorbisIdHeader vorbisIdHeader, VorbisUtil.CommentHeader commentHeader, byte[] bArr, VorbisUtil.Mode[] modeArr, int i2) {
            this.f16659a = vorbisIdHeader;
            this.f16660b = commentHeader;
            this.f16661c = bArr;
            this.d = modeArr;
            this.f16662e = i2;
        }
    }

    @Override // androidx.media3.extractor.ogg.StreamReader
    public final void a(long j2) {
        this.g = j2;
        this.p = j2 != 0;
        VorbisUtil.VorbisIdHeader vorbisIdHeader = this.q;
        this.o = vorbisIdHeader != null ? vorbisIdHeader.f16226e : 0;
    }

    @Override // androidx.media3.extractor.ogg.StreamReader
    public final long b(ParsableByteArray parsableByteArray) {
        byte b2 = parsableByteArray.f14194a[0];
        if ((b2 & 1) == 1) {
            return -1L;
        }
        VorbisSetup vorbisSetup = this.n;
        vorbisSetup.getClass();
        boolean z = vorbisSetup.d[(b2 >> 1) & (255 >>> (8 - vorbisSetup.f16662e))].f16222a;
        VorbisUtil.VorbisIdHeader vorbisIdHeader = vorbisSetup.f16659a;
        int i2 = !z ? vorbisIdHeader.f16226e : vorbisIdHeader.f16227f;
        long j2 = this.p ? (this.o + i2) / 4 : 0;
        byte[] bArr = parsableByteArray.f14194a;
        int length = bArr.length;
        int i3 = parsableByteArray.f14196c + 4;
        if (length < i3) {
            byte[] bArrCopyOf = Arrays.copyOf(bArr, i3);
            parsableByteArray.L(bArrCopyOf.length, bArrCopyOf);
        } else {
            parsableByteArray.M(i3);
        }
        byte[] bArr2 = parsableByteArray.f14194a;
        int i4 = parsableByteArray.f14196c;
        bArr2[i4 - 4] = (byte) (j2 & 255);
        bArr2[i4 - 3] = (byte) ((j2 >>> 8) & 255);
        bArr2[i4 - 2] = (byte) ((j2 >>> 16) & 255);
        bArr2[i4 - 1] = (byte) ((j2 >>> 24) & 255);
        this.p = true;
        this.o = i2;
        return j2;
    }

    /* JADX WARN: Code duplicated, block: B:178:0x03c9 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:180:0x03cc  */
    @Override // androidx.media3.extractor.ogg.StreamReader
    public final boolean c(ParsableByteArray parsableByteArray, long j2, StreamReader.SetupData setupData) throws ParserException {
        VorbisSetup vorbisSetup;
        if (this.n != null) {
            setupData.f16657a.getClass();
            return false;
        }
        VorbisUtil.VorbisIdHeader vorbisIdHeader = this.q;
        int i2 = 1;
        if (vorbisIdHeader != null) {
            int i3 = 4;
            VorbisUtil.CommentHeader commentHeader = this.r;
            if (commentHeader == null) {
                this.r = VorbisUtil.b(parsableByteArray, true, true);
            } else {
                int i4 = parsableByteArray.f14196c;
                byte[] bArr = new byte[i4];
                System.arraycopy(parsableByteArray.f14194a, 0, bArr, 0, i4);
                int i5 = vorbisIdHeader.f16223a;
                int i6 = 5;
                VorbisUtil.c(5, parsableByteArray, false);
                int iA = parsableByteArray.A() + 1;
                VorbisBitArray vorbisBitArray = new VorbisBitArray(parsableByteArray.f14194a);
                int i7 = 8;
                vorbisBitArray.c(parsableByteArray.f14195b * 8);
                int i8 = 0;
                while (true) {
                    int i9 = 16;
                    if (i8 < iA) {
                        int i10 = i7;
                        if (vorbisBitArray.b(24) != 5653314) {
                            throw ParserException.a(null, "expected code book to start with [0x56, 0x43, 0x42] at " + ((vorbisBitArray.f16220c * 8) + vorbisBitArray.d));
                        }
                        int iB = vorbisBitArray.b(16);
                        int iB2 = vorbisBitArray.b(24);
                        if (vorbisBitArray.a()) {
                            vorbisBitArray.c(i6);
                            int iB3 = 0;
                            while (iB3 < iB2) {
                                int i11 = 0;
                                for (int i12 = iB2 - iB3; i12 > 0; i12 >>>= 1) {
                                    i11++;
                                }
                                iB3 += vorbisBitArray.b(i11);
                            }
                        } else {
                            boolean zA = vorbisBitArray.a();
                            for (int i13 = 0; i13 < iB2; i13++) {
                                if (!zA) {
                                    vorbisBitArray.c(i6);
                                } else if (vorbisBitArray.a()) {
                                    vorbisBitArray.c(i6);
                                }
                            }
                        }
                        int i14 = i3;
                        int iB4 = vorbisBitArray.b(i14);
                        if (iB4 > 2) {
                            throw ParserException.a(null, "lookup type greater than 2 not decodable: " + iB4);
                        }
                        if (iB4 == i2 || iB4 == 2) {
                            vorbisBitArray.c(32);
                            vorbisBitArray.c(32);
                            int iB5 = vorbisBitArray.b(i14) + i2;
                            vorbisBitArray.c(i2);
                            vorbisBitArray.c((int) ((iB4 == i2 ? iB != 0 ? (long) Math.floor(Math.pow(iB2, 1.0d / ((double) iB))) : 0L : ((long) iB) * ((long) iB2)) * ((long) iB5)));
                        } else {
                            i2 = i2;
                        }
                        i8++;
                        i7 = i10;
                        i2 = i2;
                        i6 = 5;
                        i3 = 4;
                    } else {
                        int i15 = i2;
                        int i16 = i7;
                        int i17 = 6;
                        int iB6 = vorbisBitArray.b(6) + 1;
                        for (int i18 = 0; i18 < iB6; i18++) {
                            if (vorbisBitArray.b(16) != 0) {
                                throw ParserException.a(null, "placeholder of time domain transforms not zeroed out");
                            }
                        }
                        int iB7 = vorbisBitArray.b(6) + 1;
                        int i19 = 0;
                        while (true) {
                            int i20 = 3;
                            if (i19 >= iB7) {
                                int iB8 = vorbisBitArray.b(i17) + 1;
                                int i21 = 0;
                                while (i21 < iB8) {
                                    if (vorbisBitArray.b(16) > 2) {
                                        throw ParserException.a(null, "residueType greater than 2 is not decodable");
                                    }
                                    vorbisBitArray.c(24);
                                    vorbisBitArray.c(24);
                                    vorbisBitArray.c(24);
                                    int iB9 = vorbisBitArray.b(i17) + 1;
                                    int i22 = 8;
                                    vorbisBitArray.c(8);
                                    int[] iArr = new int[iB9];
                                    for (int i23 = 0; i23 < iB9; i23++) {
                                        iArr[i23] = ((vorbisBitArray.a() ? vorbisBitArray.b(5) : 0) * 8) + vorbisBitArray.b(3);
                                    }
                                    int i24 = 0;
                                    while (i24 < iB9) {
                                        int i25 = 0;
                                        while (i25 < i22) {
                                            if ((iArr[i24] & (1 << i25)) != 0) {
                                                vorbisBitArray.c(i22);
                                            }
                                            i25++;
                                            i22 = 8;
                                        }
                                        i24++;
                                        i22 = 8;
                                    }
                                    i21++;
                                    i17 = 6;
                                }
                                int iB10 = vorbisBitArray.b(i17) + 1;
                                for (int i26 = 0; i26 < iB10; i26++) {
                                    int iB11 = vorbisBitArray.b(16);
                                    if (iB11 != 0) {
                                        Log.d("mapping type other than 0 not supported: " + iB11);
                                    } else {
                                        int iB12 = vorbisBitArray.a() ? vorbisBitArray.b(4) + 1 : 1;
                                        if (vorbisBitArray.a()) {
                                            int iB13 = vorbisBitArray.b(8) + 1;
                                            for (int i27 = 0; i27 < iB13; i27++) {
                                                int i28 = i5 - 1;
                                                int i29 = 0;
                                                for (int i30 = i28; i30 > 0; i30 >>>= 1) {
                                                    i29++;
                                                }
                                                vorbisBitArray.c(i29);
                                                int i31 = 0;
                                                while (i28 > 0) {
                                                    i31++;
                                                    i28 >>>= 1;
                                                }
                                                vorbisBitArray.c(i31);
                                            }
                                        }
                                        if (vorbisBitArray.b(2) != 0) {
                                            throw ParserException.a(null, "to reserved bits must be zero after mapping coupling steps");
                                        }
                                        if (iB12 > 1) {
                                            for (int i32 = 0; i32 < i5; i32++) {
                                                vorbisBitArray.c(4);
                                            }
                                        }
                                        for (int i33 = 0; i33 < iB12; i33++) {
                                            vorbisBitArray.c(8);
                                            vorbisBitArray.c(8);
                                            vorbisBitArray.c(8);
                                        }
                                    }
                                }
                                int iB14 = vorbisBitArray.b(6);
                                int i34 = iB14 + 1;
                                VorbisUtil.Mode[] modeArr = new VorbisUtil.Mode[i34];
                                for (int i35 = 0; i35 < i34; i35++) {
                                    modeArr[i35] = new VorbisUtil.Mode(vorbisBitArray.a(), vorbisBitArray.b(16), vorbisBitArray.b(16), vorbisBitArray.b(8));
                                }
                                if (!vorbisBitArray.a()) {
                                    throw ParserException.a(null, "framing bit after modes not set as expected");
                                }
                                int i36 = 0;
                                while (iB14 > 0) {
                                    i36++;
                                    iB14 >>>= 1;
                                }
                                vorbisSetup = new VorbisSetup(vorbisIdHeader, commentHeader, bArr, modeArr, i36);
                                break;
                            }
                            int iB15 = vorbisBitArray.b(i9);
                            if (iB15 == 0) {
                                int i37 = i16;
                                vorbisBitArray.c(i37);
                                vorbisBitArray.c(16);
                                vorbisBitArray.c(16);
                                vorbisBitArray.c(6);
                                vorbisBitArray.c(i37);
                                int iB16 = vorbisBitArray.b(4) + 1;
                                int i38 = 0;
                                while (i38 < iB16) {
                                    vorbisBitArray.c(i37);
                                    i38++;
                                    i37 = 8;
                                }
                            } else {
                                if (iB15 != i15) {
                                    throw ParserException.a(null, "floor type greater than 1 not decodable: " + iB15);
                                }
                                int iB17 = vorbisBitArray.b(5);
                                int[] iArr2 = new int[iB17];
                                int i39 = -1;
                                for (int i40 = 0; i40 < iB17; i40++) {
                                    int iB18 = vorbisBitArray.b(4);
                                    iArr2[i40] = iB18;
                                    if (iB18 > i39) {
                                        i39 = iB18;
                                    }
                                }
                                int i41 = i39 + 1;
                                int[] iArr3 = new int[i41];
                                int i42 = 0;
                                while (i42 < i41) {
                                    iArr3[i42] = vorbisBitArray.b(i20) + 1;
                                    int iB19 = vorbisBitArray.b(2);
                                    int i43 = i16;
                                    if (iB19 > 0) {
                                        vorbisBitArray.c(i43);
                                    }
                                    int i44 = i41;
                                    int i45 = 0;
                                    for (int i46 = 1; i45 < (i46 << iB19); i46 = 1) {
                                        vorbisBitArray.c(i43);
                                        i45++;
                                        i43 = 8;
                                    }
                                    i42++;
                                    i41 = i44;
                                    i16 = 8;
                                    i20 = 3;
                                }
                                vorbisBitArray.c(2);
                                int iB20 = vorbisBitArray.b(4);
                                int i47 = 0;
                                int i48 = 0;
                                for (int i49 = 0; i49 < iB17; i49++) {
                                    i47 += iArr3[iArr2[i49]];
                                    while (i48 < i47) {
                                        vorbisBitArray.c(iB20);
                                        i48++;
                                    }
                                }
                            }
                            i19++;
                            i16 = 8;
                            i17 = 6;
                            i9 = 16;
                            i15 = 1;
                        }
                    }
                }
            }
            this.n = vorbisSetup;
            if (vorbisSetup == null) {
                return true;
            }
            VorbisUtil.VorbisIdHeader vorbisIdHeader2 = vorbisSetup.f16659a;
            ArrayList arrayList = new ArrayList();
            arrayList.add(vorbisIdHeader2.g);
            arrayList.add(vorbisSetup.f16661c);
            Metadata metadataA = VorbisUtil.a(ImmutableList.u(vorbisSetup.f16660b.f16221a));
            Format.Builder builder = new Format.Builder();
            builder.m = MimeTypes.p("audio/ogg");
            builder.n = MimeTypes.p("audio/vorbis");
            builder.f13769h = vorbisIdHeader2.d;
            builder.f13770i = vorbisIdHeader2.f16225c;
            builder.F = vorbisIdHeader2.f16223a;
            builder.G = vorbisIdHeader2.f16224b;
            builder.q = arrayList;
            builder.f13772k = metadataA;
            setupData.f16657a = new Format(builder);
            return true;
        }
        VorbisUtil.c(1, parsableByteArray, false);
        int iS = parsableByteArray.s();
        int iA2 = parsableByteArray.A();
        int iS2 = parsableByteArray.s();
        int iO = parsableByteArray.o();
        int i50 = iO <= 0 ? -1 : iO;
        int iO2 = parsableByteArray.o();
        int i51 = iO2 <= 0 ? -1 : iO2;
        int iO3 = parsableByteArray.o();
        int i52 = iO3 <= 0 ? -1 : iO3;
        int iA3 = parsableByteArray.A();
        this.q = new VorbisUtil.VorbisIdHeader(iS, iA2, iS2, i50, i51, i52, (int) Math.pow(2.0d, iA3 & 15), (int) Math.pow(2.0d, (iA3 & 240) >> 4), (parsableByteArray.A() & 1) > 0, Arrays.copyOf(parsableByteArray.f14194a, parsableByteArray.f14196c));
        vorbisSetup = null;
        this.n = vorbisSetup;
        if (vorbisSetup == null) {
            return true;
        }
        VorbisUtil.VorbisIdHeader vorbisIdHeader3 = vorbisSetup.f16659a;
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(vorbisIdHeader3.g);
        arrayList2.add(vorbisSetup.f16661c);
        Metadata metadataA2 = VorbisUtil.a(ImmutableList.u(vorbisSetup.f16660b.f16221a));
        Format.Builder builder2 = new Format.Builder();
        builder2.m = MimeTypes.p("audio/ogg");
        builder2.n = MimeTypes.p("audio/vorbis");
        builder2.f13769h = vorbisIdHeader3.d;
        builder2.f13770i = vorbisIdHeader3.f16225c;
        builder2.F = vorbisIdHeader3.f16223a;
        builder2.G = vorbisIdHeader3.f16224b;
        builder2.q = arrayList2;
        builder2.f13772k = metadataA2;
        setupData.f16657a = new Format(builder2);
        return true;
    }

    @Override // androidx.media3.extractor.ogg.StreamReader
    public final void d(boolean z) {
        super.d(z);
        if (z) {
            this.n = null;
            this.q = null;
            this.r = null;
        }
        this.o = 0;
        this.p = false;
    }
}
