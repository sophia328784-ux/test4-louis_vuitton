package androidx.media3.extractor.ts;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
public final class MpeghReader implements ElementaryStreamReader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f17093a;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f17097f;
    public TrackOutput g;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f17100j;
    public int l;
    public int m;
    public int o;
    public int p;
    public int t;
    public boolean v;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f17096e = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ParsableByteArray f17094b = new ParsableByteArray(new byte[15], 2);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ParsableBitArray f17095c = new ParsableBitArray();
    public final ParsableByteArray d = new ParsableByteArray();
    public final MpeghUtil.MhasPacketHeader q = new MpeghUtil.MhasPacketHeader();
    public int r = -2147483647;
    public int s = -1;
    public long u = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f17101k = true;
    public boolean n = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public double f17098h = -9.223372036854776E18d;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public double f17099i = -9.223372036854776E18d;

    public MpeghReader(String str) {
        this.f17093a = str;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:155:0x02bf  */
    /* JADX WARN: Code duplicated, block: B:157:0x02c6  */
    /* JADX WARN: Code duplicated, block: B:159:0x02da  */
    /* JADX WARN: Code duplicated, block: B:162:0x02e4  */
    /* JADX WARN: Code duplicated, block: B:189:0x03b5  */
    /* JADX WARN: Instruction removed from duplicated block: B:155:0x02bf, please report this as an issue */
    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void a(ParsableByteArray parsableByteArray) throws ParserException {
        int i2;
        int i3;
        int iG;
        int iG2;
        int i4;
        char c2;
        byte[] bArr;
        long j2;
        long j3;
        ImmutableList immutableListD;
        int iG3;
        long j4;
        boolean z;
        int i5;
        this.g.getClass();
        while (parsableByteArray.a() > 0) {
            int i6 = this.f17096e;
            int i7 = 8;
            int i8 = 3;
            int i9 = 1;
            if (i6 != 0) {
                ParsableByteArray parsableByteArray2 = this.d;
                MpeghUtil.MhasPacketHeader mhasPacketHeader = this.q;
                if (i6 == 1) {
                    int iA = parsableByteArray.a();
                    ParsableByteArray parsableByteArray3 = this.f17094b;
                    int iMin = Math.min(iA, parsableByteArray3.a());
                    parsableByteArray.k(parsableByteArray3.f14195b, iMin, parsableByteArray3.f14194a);
                    parsableByteArray3.O(iMin);
                    if (parsableByteArray3.a() == 0) {
                        int i10 = parsableByteArray3.f14196c;
                        byte[] bArr2 = parsableByteArray3.f14194a;
                        ParsableBitArray parsableBitArray = this.f17095c;
                        parsableBitArray.k(i10, bArr2);
                        parsableBitArray.d();
                        int iA2 = MpeghUtil.a(parsableBitArray, 3, 8, 8);
                        mhasPacketHeader.f17102a = iA2;
                        if (iA2 != -1) {
                            Preconditions.g(Math.max(Math.max(2, 8), 32) <= 63);
                            Math.addExact(Math.addExact(3L, 255L), 4294967296L);
                            if (parsableBitArray.b() < 2) {
                                j4 = -1;
                            } else {
                                long jI = parsableBitArray.i(2);
                                if (jI == 3) {
                                    if (parsableBitArray.b() >= 8) {
                                        long jI2 = parsableBitArray.i(8);
                                        jI += jI2;
                                        if (jI2 == 255) {
                                            if (parsableBitArray.b() >= 32) {
                                                jI = parsableBitArray.i(32) + jI;
                                            }
                                        }
                                    }
                                    j4 = -1;
                                }
                                j4 = jI;
                            }
                            mhasPacketHeader.f17103b = j4;
                            if (j4 == -1) {
                                z = false;
                            } else {
                                if (j4 > 16) {
                                    throw ParserException.c("Contains sub-stream with an invalid packet label " + mhasPacketHeader.f17103b);
                                }
                                if (j4 == 0) {
                                    int i11 = mhasPacketHeader.f17102a;
                                    if (i11 == 1) {
                                        throw ParserException.a(null, "Mpegh3daConfig packet with invalid packet label 0");
                                    }
                                    if (i11 == 2) {
                                        throw ParserException.a(null, "Mpegh3daFrame packet with invalid packet label 0");
                                    }
                                    if (i11 == 17) {
                                        throw ParserException.a(null, "AudioTruncation packet with invalid packet label 0");
                                    }
                                }
                                int iA3 = MpeghUtil.a(parsableBitArray, 11, 24, 24);
                                mhasPacketHeader.f17104c = iA3;
                                if (iA3 != -1) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                            }
                        } else {
                            z = false;
                        }
                        if (z) {
                            i5 = 0;
                            this.o = 0;
                            this.p = mhasPacketHeader.f17104c + i10 + this.p;
                        } else {
                            i5 = 0;
                        }
                        if (z) {
                            parsableByteArray3.N(i5);
                            this.g.f(parsableByteArray3.f14196c, parsableByteArray3);
                            parsableByteArray3.K(2);
                            parsableByteArray2.K(mhasPacketHeader.f17104c);
                            this.n = true;
                            this.f17096e = 2;
                        } else {
                            int i12 = parsableByteArray3.f14196c;
                            if (i12 < 15) {
                                parsableByteArray3.M(i12 + 1);
                                this.n = false;
                            }
                        }
                    } else {
                        this.n = false;
                    }
                } else {
                    if (i6 != 2) {
                        r81.b();
                        return;
                    }
                    int i13 = mhasPacketHeader.f17102a;
                    if (i13 == 1 || i13 == 17) {
                        int i14 = parsableByteArray.f14195b;
                        int iMin2 = Math.min(parsableByteArray.a(), parsableByteArray2.a());
                        parsableByteArray.k(parsableByteArray2.f14195b, iMin2, parsableByteArray2.f14194a);
                        parsableByteArray2.O(iMin2);
                        parsableByteArray.N(i14);
                    }
                    int iMin3 = Math.min(parsableByteArray.a(), mhasPacketHeader.f17104c - this.o);
                    this.g.f(iMin3, parsableByteArray);
                    int i15 = this.o + iMin3;
                    this.o = i15;
                    if (i15 != mhasPacketHeader.f17104c) {
                        continue;
                    } else {
                        int i16 = mhasPacketHeader.f17102a;
                        if (i16 == 1) {
                            ParsableBitArray parsableBitArray2 = new ParsableBitArray(parsableByteArray2.f14194a);
                            int iG4 = parsableBitArray2.g(8);
                            int iG5 = parsableBitArray2.g(5);
                            if (iG5 != 31) {
                                switch (iG5) {
                                    case 0:
                                        iG2 = 96000;
                                        break;
                                    case 1:
                                        iG2 = 88200;
                                        break;
                                    case 2:
                                        iG2 = 64000;
                                        break;
                                    case 3:
                                        iG2 = 48000;
                                        break;
                                    case 4:
                                        iG2 = 44100;
                                        break;
                                    case 5:
                                        iG2 = 32000;
                                        break;
                                    case 6:
                                        iG2 = 24000;
                                        break;
                                    case 7:
                                        iG2 = 22050;
                                        break;
                                    case 8:
                                        iG2 = 16000;
                                        break;
                                    case 9:
                                        iG2 = 12000;
                                        break;
                                    case 10:
                                        iG2 = 11025;
                                        break;
                                    case 11:
                                        iG2 = 8000;
                                        break;
                                    case 12:
                                        iG2 = 7350;
                                        break;
                                    case 13:
                                    case 14:
                                    default:
                                        throw ParserException.c("Unsupported sampling rate index " + iG5);
                                    case 15:
                                        iG2 = 57600;
                                        break;
                                    case 16:
                                        iG2 = 51200;
                                        break;
                                    case 17:
                                        iG2 = 40000;
                                        break;
                                    case 18:
                                        iG2 = 38400;
                                        break;
                                    case 19:
                                        iG2 = 34150;
                                        break;
                                    case 20:
                                        iG2 = 28800;
                                        break;
                                    case 21:
                                        iG2 = 25600;
                                        break;
                                    case 22:
                                        iG2 = 20000;
                                        break;
                                    case 23:
                                        iG2 = 19200;
                                        break;
                                    case 24:
                                        iG2 = 17075;
                                        break;
                                    case 25:
                                        iG2 = 14400;
                                        break;
                                    case 26:
                                        iG2 = 12800;
                                        break;
                                    case 27:
                                        iG2 = 9600;
                                        break;
                                }
                            } else {
                                iG2 = parsableBitArray2.g(24);
                            }
                            int iG6 = parsableBitArray2.g(3);
                            if (iG6 == 0) {
                                i4 = 768;
                            } else if (iG6 == 1) {
                                i4 = 1024;
                            } else if (iG6 == 2 || iG6 == 3) {
                                i4 = 2048;
                            } else {
                                if (iG6 != 4) {
                                    throw ParserException.c("Unsupported coreSbrFrameLengthIndex " + iG6);
                                }
                                i4 = 4096;
                            }
                            int i17 = i4;
                            if (iG6 == 0 || iG6 == 1) {
                                c2 = 0;
                            } else if (iG6 == 2) {
                                c2 = 2;
                            } else if (iG6 == 3) {
                                c2 = 3;
                            } else {
                                if (iG6 != 4) {
                                    throw ParserException.c("Unsupported coreSbrFrameLengthIndex " + iG6);
                                }
                                c2 = 1;
                            }
                            parsableBitArray2.o(2);
                            MpeghUtil.c(parsableBitArray2);
                            int iG7 = parsableBitArray2.g(5);
                            int i18 = 0;
                            int iA4 = 0;
                            while (true) {
                                int i19 = i9;
                                int i20 = 16;
                                if (i18 < iG7 + 1) {
                                    int iG8 = parsableBitArray2.g(3);
                                    iA4 = MpeghUtil.a(parsableBitArray2, 5, 8, 16) + 1 + iA4;
                                    if ((iG8 == 0 || iG8 == 2) && parsableBitArray2.f()) {
                                        MpeghUtil.c(parsableBitArray2);
                                    }
                                    i18++;
                                    i9 = i19;
                                } else {
                                    int iA5 = MpeghUtil.a(parsableBitArray2, 4, 8, 16) + 1;
                                    parsableBitArray2.n();
                                    int i21 = 0;
                                    while (true) {
                                        double d = 2.0d;
                                        if (i21 < iA5) {
                                            int iG9 = parsableBitArray2.g(2);
                                            if (iG9 == 0) {
                                                parsableBitArray2.o(i8);
                                                if (parsableBitArray2.f()) {
                                                    parsableBitArray2.o(13);
                                                }
                                                if (c2 > 0) {
                                                    MpeghUtil.b(parsableBitArray2);
                                                }
                                            } else if (iG9 == i19) {
                                                parsableBitArray2.o(i8);
                                                boolean zF = parsableBitArray2.f();
                                                if (zF) {
                                                    parsableBitArray2.o(13);
                                                }
                                                if (zF) {
                                                    parsableBitArray2.n();
                                                }
                                                if (c2 > 0) {
                                                    MpeghUtil.b(parsableBitArray2);
                                                    iG3 = parsableBitArray2.g(2);
                                                } else {
                                                    iG3 = 0;
                                                }
                                                if (iG3 > 0) {
                                                    parsableBitArray2.o(6);
                                                    int iG10 = parsableBitArray2.g(2);
                                                    parsableBitArray2.o(4);
                                                    if (parsableBitArray2.f()) {
                                                        parsableBitArray2.o(5);
                                                    }
                                                    if (iG3 == 2 || iG3 == i8) {
                                                        parsableBitArray2.o(6);
                                                    }
                                                    if (iG10 == 2) {
                                                        parsableBitArray2.n();
                                                    }
                                                }
                                                int iFloor = ((int) Math.floor(Math.log(iA4 - 1) / Math.log(2.0d))) + 1;
                                                int iG11 = parsableBitArray2.g(2);
                                                if (iG11 > 0 && parsableBitArray2.f()) {
                                                    parsableBitArray2.o(iFloor);
                                                }
                                                if (parsableBitArray2.f()) {
                                                    parsableBitArray2.o(iFloor);
                                                }
                                                if (c2 == 0 && iG11 == 0) {
                                                    parsableBitArray2.n();
                                                }
                                            } else if (iG9 == i8) {
                                                MpeghUtil.a(parsableBitArray2, 4, i7, i20);
                                                int iA6 = MpeghUtil.a(parsableBitArray2, 4, i7, i20);
                                                if (parsableBitArray2.f()) {
                                                    MpeghUtil.a(parsableBitArray2, i7, i20, 0);
                                                }
                                                parsableBitArray2.n();
                                                if (iA6 > 0) {
                                                    parsableBitArray2.o(iA6 * 8);
                                                }
                                            }
                                            i21++;
                                            i7 = 8;
                                            i8 = 3;
                                            i20 = 16;
                                            i19 = 1;
                                        } else {
                                            if (parsableBitArray2.f()) {
                                                int i22 = 8;
                                                int iA7 = MpeghUtil.a(parsableBitArray2, 2, 4, 8) + 1;
                                                int i23 = 0;
                                                bArr = null;
                                                while (i23 < iA7) {
                                                    int iA8 = MpeghUtil.a(parsableBitArray2, 4, i22, 16);
                                                    int iA9 = MpeghUtil.a(parsableBitArray2, 4, i22, 16);
                                                    if (iA8 == 7) {
                                                        int iG12 = parsableBitArray2.g(4) + 1;
                                                        parsableBitArray2.o(4);
                                                        byte[] bArr3 = new byte[iG12];
                                                        for (int i24 = 0; i24 < iG12; i24++) {
                                                            bArr3[i24] = (byte) parsableBitArray2.g(i22);
                                                        }
                                                        bArr = bArr3;
                                                    } else {
                                                        parsableBitArray2.o(iA9 * i22);
                                                    }
                                                    i23++;
                                                    i22 = 8;
                                                }
                                            } else {
                                                bArr = null;
                                            }
                                            switch (iG2) {
                                                case 14700:
                                                case 16000:
                                                    d = 3.0d;
                                                    this.r = (int) (((double) iG2) * d);
                                                    this.s = (int) (((double) i17) * d);
                                                    j2 = this.u;
                                                    j3 = mhasPacketHeader.f17103b;
                                                    if (j2 != j3) {
                                                        this.u = j3;
                                                        String strConcat = iG4 != -1 ? "mhm1".concat(String.format(".%02X", Integer.valueOf(iG4))) : "mhm1";
                                                        if (bArr != null || bArr.length <= 0) {
                                                            immutableListD = null;
                                                        } else {
                                                            immutableListD = ImmutableList.D(Util.f14243b, bArr);
                                                        }
                                                        Format.Builder builder = new Format.Builder();
                                                        builder.f13764a = this.f17097f;
                                                        builder.m = MimeTypes.p(this.f17093a);
                                                        builder.n = MimeTypes.p("audio/mhm1");
                                                        builder.G = this.r;
                                                        builder.f13771j = strConcat;
                                                        builder.q = immutableListD;
                                                        this.g.b(new Format(builder));
                                                    }
                                                    i3 = 1;
                                                    this.v = true;
                                                    break;
                                                case 22050:
                                                case 24000:
                                                    this.r = (int) (((double) iG2) * d);
                                                    this.s = (int) (((double) i17) * d);
                                                    j2 = this.u;
                                                    j3 = mhasPacketHeader.f17103b;
                                                    if (j2 != j3) {
                                                        this.u = j3;
                                                        if (iG4 != -1) {
                                                        }
                                                        if (bArr != null) {
                                                            immutableListD = null;
                                                        } else {
                                                            immutableListD = null;
                                                        }
                                                        Format.Builder builder2 = new Format.Builder();
                                                        builder2.f13764a = this.f17097f;
                                                        builder2.m = MimeTypes.p(this.f17093a);
                                                        builder2.n = MimeTypes.p("audio/mhm1");
                                                        builder2.G = this.r;
                                                        builder2.f13771j = strConcat;
                                                        builder2.q = immutableListD;
                                                        this.g.b(new Format(builder2));
                                                    }
                                                    i3 = 1;
                                                    this.v = true;
                                                    break;
                                                case 29400:
                                                case 32000:
                                                case 58800:
                                                case 64000:
                                                    d = 1.5d;
                                                    this.r = (int) (((double) iG2) * d);
                                                    this.s = (int) (((double) i17) * d);
                                                    j2 = this.u;
                                                    j3 = mhasPacketHeader.f17103b;
                                                    if (j2 != j3) {
                                                        this.u = j3;
                                                        if (iG4 != -1) {
                                                        }
                                                        if (bArr != null) {
                                                            immutableListD = null;
                                                        } else {
                                                            immutableListD = null;
                                                        }
                                                        Format.Builder builder3 = new Format.Builder();
                                                        builder3.f13764a = this.f17097f;
                                                        builder3.m = MimeTypes.p(this.f17093a);
                                                        builder3.n = MimeTypes.p("audio/mhm1");
                                                        builder3.G = this.r;
                                                        builder3.f13771j = strConcat;
                                                        builder3.q = immutableListD;
                                                        this.g.b(new Format(builder3));
                                                    }
                                                    i3 = 1;
                                                    this.v = true;
                                                    break;
                                                case 44100:
                                                case 48000:
                                                case 88200:
                                                case 96000:
                                                    d = 1.0d;
                                                    this.r = (int) (((double) iG2) * d);
                                                    this.s = (int) (((double) i17) * d);
                                                    j2 = this.u;
                                                    j3 = mhasPacketHeader.f17103b;
                                                    if (j2 != j3) {
                                                        this.u = j3;
                                                        if (iG4 != -1) {
                                                        }
                                                        if (bArr != null) {
                                                            immutableListD = null;
                                                        } else {
                                                            immutableListD = null;
                                                        }
                                                        Format.Builder builder4 = new Format.Builder();
                                                        builder4.f13764a = this.f17097f;
                                                        builder4.m = MimeTypes.p(this.f17093a);
                                                        builder4.n = MimeTypes.p("audio/mhm1");
                                                        builder4.G = this.r;
                                                        builder4.f13771j = strConcat;
                                                        builder4.q = immutableListD;
                                                        this.g.b(new Format(builder4));
                                                    }
                                                    i3 = 1;
                                                    this.v = true;
                                                    break;
                                                default:
                                                    throw ParserException.c("Unsupported sampling rate " + iG2);
                                            }
                                        }
                                    }
                                }
                            }
                        } else {
                            if (i16 == 17) {
                                ParsableBitArray parsableBitArray3 = new ParsableBitArray(parsableByteArray2.f14194a);
                                if (parsableBitArray3.f()) {
                                    parsableBitArray3.o(2);
                                    iG = parsableBitArray3.g(13);
                                } else {
                                    iG = 0;
                                }
                                this.t = iG;
                            } else if (i16 == 2) {
                                if (this.v) {
                                    this.f17101k = false;
                                    i2 = 1;
                                } else {
                                    i2 = 0;
                                }
                                double d2 = (((double) (this.s - this.t)) * 1000000.0d) / ((double) this.r);
                                long jRound = Math.round(this.f17098h);
                                if (this.f17100j) {
                                    this.f17100j = false;
                                    this.f17098h = this.f17099i;
                                } else {
                                    this.f17098h += d2;
                                }
                                this.g.g(jRound, i2, this.p, 0, null);
                                this.v = false;
                                this.t = 0;
                                this.p = 0;
                            }
                            i3 = 1;
                        }
                        this.f17096e = i3;
                    }
                }
            } else {
                int i25 = this.l;
                if ((i25 & 2) == 0) {
                    parsableByteArray.N(parsableByteArray.f14196c);
                } else {
                    if ((i25 & 4) == 0) {
                        while (true) {
                            if (parsableByteArray.a() > 0) {
                                int i26 = this.m << 8;
                                this.m = i26;
                                int iA10 = i26 | parsableByteArray.A();
                                this.m = iA10;
                                if ((iA10 & 16777215) == 12583333) {
                                    parsableByteArray.N(parsableByteArray.f14195b - 3);
                                    this.m = 0;
                                }
                            }
                        }
                    }
                    this.f17096e = 1;
                }
            }
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void c() {
        this.f17096e = 0;
        this.m = 0;
        this.f17094b.K(2);
        this.o = 0;
        this.p = 0;
        this.r = -2147483647;
        this.s = -1;
        this.t = 0;
        this.u = -1L;
        this.v = false;
        this.f17100j = false;
        this.n = true;
        this.f17101k = true;
        this.f17098h = -9.223372036854776E18d;
        this.f17099i = -9.223372036854776E18d;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void d(boolean z) {
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void e(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.a();
        trackIdGenerator.b();
        this.f17097f = trackIdGenerator.f17185e;
        trackIdGenerator.b();
        this.g = extractorOutput.r(trackIdGenerator.d, 1);
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void f(int i2, long j2) {
        this.l = i2;
        if (!this.f17101k && (this.p != 0 || !this.n)) {
            this.f17100j = true;
        }
        if (j2 != -9223372036854775807L) {
            if (this.f17100j) {
                this.f17099i = j2;
            } else {
                this.f17098h = j2;
            }
        }
    }
}
