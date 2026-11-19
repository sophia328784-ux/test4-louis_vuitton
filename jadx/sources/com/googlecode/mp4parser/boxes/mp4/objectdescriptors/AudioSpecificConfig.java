package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import com.coremedia.iso.Hex;
import defpackage.a;
import defpackage.mt;
import defpackage.v7;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
@Descriptor(objectTypeIndication = 64, tags = {5})
public class AudioSpecificConfig extends BaseDescriptor {
    public static final HashMap U;
    public static final HashMap V;
    public boolean A;
    public boolean B;
    public boolean C;
    public int D;
    public boolean E;
    public int F;
    public int G;
    public int H;
    public int I;
    public int J;
    public int K;
    public int L;
    public int M;
    public int N;
    public int O;
    public int P;
    public int Q;
    public int R;
    public int S;
    public boolean T;
    public byte[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f35702e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f35703f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f35704h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f35705i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f35706j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f35707k;
    public int l;
    public int m;
    public int n;
    public int o;
    public int p;
    public int q;
    public int r;
    public int s;
    public int t;
    public int u;
    public int v;
    public int w;
    public int x;
    public int y;
    public int z;

    public class ELDSpecificConfig {
        public ELDSpecificConfig(int i2, BitReaderBuffer bitReaderBuffer) {
            int iA;
            int i3;
            bitReaderBuffer.b();
            bitReaderBuffer.b();
            bitReaderBuffer.b();
            bitReaderBuffer.b();
            if (bitReaderBuffer.b()) {
                bitReaderBuffer.b();
                bitReaderBuffer.b();
                switch (i2) {
                    case 1:
                    case 2:
                        i3 = 1;
                        break;
                    case 3:
                        i3 = 2;
                        break;
                    case 4:
                    case 5:
                    case 6:
                        i3 = 3;
                        break;
                    case 7:
                        i3 = 4;
                        break;
                    default:
                        i3 = 0;
                        break;
                }
                for (int i4 = 0; i4 < i3; i4++) {
                    new sbr_header(AudioSpecificConfig.this, bitReaderBuffer);
                }
            }
            while (bitReaderBuffer.a(4) != 0) {
                int iA2 = bitReaderBuffer.a(4);
                if (iA2 == 15) {
                    iA = bitReaderBuffer.a(8);
                    iA2 += iA;
                } else {
                    iA = 0;
                }
                iA2 = iA == 255 ? iA2 + bitReaderBuffer.a(16) : iA2;
                for (int i5 = 0; i5 < iA2; i5++) {
                    bitReaderBuffer.a(8);
                }
            }
        }
    }

    public class sbr_header {
        public sbr_header(AudioSpecificConfig audioSpecificConfig, BitReaderBuffer bitReaderBuffer) {
            bitReaderBuffer.b();
            bitReaderBuffer.a(4);
            bitReaderBuffer.a(4);
            bitReaderBuffer.a(3);
            bitReaderBuffer.a(2);
            boolean zB = bitReaderBuffer.b();
            boolean zB2 = bitReaderBuffer.b();
            if (zB) {
                bitReaderBuffer.a(2);
                bitReaderBuffer.b();
                bitReaderBuffer.a(2);
            }
            if (zB2) {
                bitReaderBuffer.a(2);
                bitReaderBuffer.a(2);
                bitReaderBuffer.b();
            }
            bitReaderBuffer.b();
        }
    }

    static {
        HashMap map = new HashMap();
        U = map;
        HashMap map2 = new HashMap();
        V = map2;
        Integer numH = a.h(96000, map, 0, 1);
        Integer numH2 = a.h(88200, map, numH, 2);
        Integer numH3 = a.h(64000, map, numH2, 3);
        Integer numH4 = a.h(48000, map, numH3, 4);
        Integer numH5 = a.h(44100, map, numH4, 5);
        Integer numH6 = a.h(32000, map, numH5, 6);
        Integer numH7 = a.h(24000, map, numH6, 7);
        Integer numH8 = a.h(22050, map, numH7, 8);
        Integer numH9 = a.h(16000, map, numH8, 9);
        Integer numH10 = a.h(12000, map, numH9, 10);
        Integer numH11 = a.h(11025, map, numH10, 11);
        map.put(numH11, 8000);
        map2.put(numH, "AAC main");
        map2.put(numH2, "AAC LC");
        map2.put(numH3, "AAC SSR");
        map2.put(numH4, "AAC LTP");
        map2.put(numH5, "SBR");
        map2.put(numH6, "AAC Scalable");
        map2.put(numH7, "TwinVQ");
        map2.put(numH8, "CELP");
        map2.put(numH9, "HVXC");
        map2.put(numH10, "(reserved)");
        map2.put(numH11, "(reserved)");
        map2.put(12, "TTSI");
        map2.put(13, "Main synthetic");
        map2.put(14, "Wavetable synthesis");
        map2.put(15, "General MIDI");
        map2.put(16, "Algorithmic Synthesis and Audio FX");
        map2.put(17, "ER AAC LC");
        map2.put(18, "(reserved)");
        map2.put(19, "ER AAC LTP");
        map2.put(20, "ER AAC Scalable");
        map2.put(21, "ER TwinVQ");
        map2.put(22, "ER BSAC");
        map2.put(23, "ER AAC LD");
        map2.put(24, "ER CELP");
        map2.put(25, "ER HVXC");
        map2.put(26, "ER HILN");
        map2.put(27, "ER Parametric");
        map2.put(28, "SSC");
        map2.put(29, "PS");
        map2.put(30, "MPEG Surround");
        map2.put(31, "(escape)");
        map2.put(32, "Layer-1");
        map2.put(33, "Layer-2");
        map2.put(34, "Layer-3");
        map2.put(35, "DST");
        map2.put(36, "ALS");
        map2.put(37, "SLS");
        map2.put(38, "SLS non-core");
        map2.put(39, "ER AAC ELD");
        map2.put(40, "SMR Simple");
        map2.put(41, "SMR Main");
    }

    public static int c(BitReaderBuffer bitReaderBuffer) {
        int iA = bitReaderBuffer.a(5);
        return iA == 31 ? bitReaderBuffer.a(6) + 32 : iA;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:102:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:104:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:106:0x0202  */
    /* JADX WARN: Code duplicated, block: B:108:0x020a  */
    /* JADX WARN: Code duplicated, block: B:110:0x0212  */
    /* JADX WARN: Code duplicated, block: B:112:0x021a  */
    /* JADX WARN: Code duplicated, block: B:115:0x022b  */
    /* JADX WARN: Code duplicated, block: B:117:0x0235  */
    /* JADX WARN: Code duplicated, block: B:120:0x023f  */
    /* JADX WARN: Code duplicated, block: B:122:0x0247  */
    /* JADX WARN: Code duplicated, block: B:124:0x024f  */
    /* JADX WARN: Code duplicated, block: B:87:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:91:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:93:0x01d2 A[ADDED_TO_REGION] */
    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor
    public final void b(ByteBuffer byteBuffer) {
        int i2;
        int iA;
        ByteBuffer byteBuffer2;
        int iA2;
        int iC;
        boolean zB;
        int iA3;
        boolean zB2;
        int iA4;
        int iA5;
        ByteBuffer byteBufferSlice = byteBuffer.slice();
        byteBufferSlice.limit(this.f35710b);
        byteBuffer.position(byteBuffer.position() + this.f35710b);
        byte[] bArr = new byte[this.f35710b];
        this.d = bArr;
        byteBufferSlice.get(bArr);
        byteBufferSlice.rewind();
        BitReaderBuffer bitReaderBuffer = new BitReaderBuffer(byteBufferSlice);
        this.f35702e = c(bitReaderBuffer);
        int iA6 = bitReaderBuffer.a(4);
        this.f35703f = iA6;
        if (iA6 == 15) {
            this.g = bitReaderBuffer.a(24);
        }
        this.f35704h = bitReaderBuffer.a(4);
        int i3 = this.f35702e;
        if (i3 == 5 || i3 == 29) {
            this.f35705i = 5;
            this.f35706j = true;
            if (i3 == 29) {
                this.f35707k = true;
            }
            int iA7 = bitReaderBuffer.a(4);
            this.l = iA7;
            if (iA7 == 15) {
                this.m = bitReaderBuffer.a(24);
            }
            int iC2 = c(bitReaderBuffer);
            this.f35702e = iC2;
            if (iC2 == 22) {
                this.n = bitReaderBuffer.a(4);
            }
        } else {
            this.f35705i = 0;
        }
        int i4 = this.f35702e;
        switch (i4) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 6:
            case 7:
            case 17:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                int i5 = this.f35704h;
                this.t = bitReaderBuffer.a(1);
                int iA8 = bitReaderBuffer.a(1);
                this.u = iA8;
                if (iA8 == 1) {
                    this.v = bitReaderBuffer.a(14);
                }
                this.w = bitReaderBuffer.a(1);
                if (i5 == 0) {
                    mt.i("can't parse program_config_element yet");
                } else {
                    if (i4 == 6 || i4 == 20) {
                        this.x = bitReaderBuffer.a(3);
                    }
                    if (this.w == 1) {
                        if (i4 == 22) {
                            this.y = bitReaderBuffer.a(5);
                            this.z = bitReaderBuffer.a(11);
                        }
                        if (i4 == 17 || i4 == 19 || i4 == 20 || i4 == 23) {
                            this.A = bitReaderBuffer.b();
                            this.B = bitReaderBuffer.b();
                            this.C = bitReaderBuffer.b();
                        }
                        this.D = bitReaderBuffer.a(1);
                    }
                    this.E = true;
                    i2 = this.f35702e;
                    if (i2 == 17 || i2 == 39) {
                        iA = bitReaderBuffer.a(2);
                        this.q = iA;
                        if (iA != 2 || iA == 3) {
                            mt.i("can't parse ErrorProtectionSpecificConfig yet");
                        } else if (iA == 3) {
                            int iA9 = bitReaderBuffer.a(1);
                            this.r = iA9;
                            if (iA9 == 0) {
                                v7.h("not implemented");
                            }
                        }
                    } else {
                        switch (i2) {
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                                iA = bitReaderBuffer.a(2);
                                this.q = iA;
                                if (iA != 2) {
                                }
                                mt.i("can't parse ErrorProtectionSpecificConfig yet");
                        }
                    }
                    if (this.f35705i != 5) {
                        byteBuffer2 = bitReaderBuffer.f35712a;
                        if ((byteBuffer2.limit() * 8) - bitReaderBuffer.f35714c >= 16) {
                            iA2 = bitReaderBuffer.a(11);
                            this.s = iA2;
                            if (iA2 == 695) {
                                iC = c(bitReaderBuffer);
                                this.f35705i = iC;
                                if (iC == 5) {
                                    zB2 = bitReaderBuffer.b();
                                    this.f35706j = zB2;
                                    if (zB2) {
                                        iA4 = bitReaderBuffer.a(4);
                                        this.l = iA4;
                                        if (iA4 == 15) {
                                            this.m = bitReaderBuffer.a(24);
                                        }
                                        if ((byteBuffer2.limit() * 8) - bitReaderBuffer.f35714c >= 12) {
                                            iA5 = bitReaderBuffer.a(11);
                                            this.s = iA5;
                                            if (iA5 == 1352) {
                                                this.f35707k = bitReaderBuffer.b();
                                            }
                                        }
                                    }
                                }
                                if (this.f35705i == 22) {
                                    zB = bitReaderBuffer.b();
                                    this.f35706j = zB;
                                    if (zB) {
                                        iA3 = bitReaderBuffer.a(4);
                                        this.l = iA3;
                                        if (iA3 == 15) {
                                            this.m = bitReaderBuffer.a(24);
                                        }
                                    }
                                    this.n = bitReaderBuffer.a(4);
                                }
                            }
                        }
                    }
                }
                break;
            case 5:
            case 10:
            case 11:
            case 18:
            case 29:
            case 31:
            default:
                i2 = this.f35702e;
                if (i2 == 17) {
                    iA = bitReaderBuffer.a(2);
                    this.q = iA;
                    if (iA != 2) {
                    }
                    mt.i("can't parse ErrorProtectionSpecificConfig yet");
                } else {
                    iA = bitReaderBuffer.a(2);
                    this.q = iA;
                    if (iA != 2) {
                    }
                    mt.i("can't parse ErrorProtectionSpecificConfig yet");
                }
                if (this.f35705i != 5) {
                    byteBuffer2 = bitReaderBuffer.f35712a;
                    if ((byteBuffer2.limit() * 8) - bitReaderBuffer.f35714c >= 16) {
                        iA2 = bitReaderBuffer.a(11);
                        this.s = iA2;
                        if (iA2 == 695) {
                            iC = c(bitReaderBuffer);
                            this.f35705i = iC;
                            if (iC == 5) {
                                zB2 = bitReaderBuffer.b();
                                this.f35706j = zB2;
                                if (zB2) {
                                    iA4 = bitReaderBuffer.a(4);
                                    this.l = iA4;
                                    if (iA4 == 15) {
                                        this.m = bitReaderBuffer.a(24);
                                    }
                                    if ((byteBuffer2.limit() * 8) - bitReaderBuffer.f35714c >= 12) {
                                        iA5 = bitReaderBuffer.a(11);
                                        this.s = iA5;
                                        if (iA5 == 1352) {
                                            this.f35707k = bitReaderBuffer.b();
                                        }
                                    }
                                }
                            }
                            if (this.f35705i == 22) {
                                zB = bitReaderBuffer.b();
                                this.f35706j = zB;
                                if (zB) {
                                    iA3 = bitReaderBuffer.a(4);
                                    this.l = iA3;
                                    if (iA3 == 15) {
                                        this.m = bitReaderBuffer.a(24);
                                    }
                                }
                                this.n = bitReaderBuffer.a(4);
                            }
                        }
                    }
                }
                break;
            case 8:
                mt.i("can't parse CelpSpecificConfig yet");
                break;
            case 9:
                mt.i("can't parse HvxcSpecificConfig yet");
                break;
            case 12:
                mt.i("can't parse TTSSpecificConfig yet");
                break;
            case 13:
            case 14:
            case 15:
            case 16:
                mt.i("can't parse StructuredAudioSpecificConfig yet");
                break;
            case 24:
                mt.i("can't parse ErrorResilientCelpSpecificConfig yet");
                break;
            case 25:
                mt.i("can't parse ErrorResilientHvxcSpecificConfig yet");
                break;
            case 26:
            case 27:
                int iA10 = bitReaderBuffer.a(1);
                this.F = iA10;
                if (iA10 == 1) {
                    int iA11 = bitReaderBuffer.a(2);
                    this.G = iA11;
                    if (iA11 != 1) {
                        this.I = bitReaderBuffer.a(1);
                        this.J = bitReaderBuffer.a(2);
                        int iA12 = bitReaderBuffer.a(1);
                        this.K = iA12;
                        if (iA12 == 1) {
                            this.L = bitReaderBuffer.a(1);
                        }
                    }
                    if (this.G != 0) {
                        this.M = bitReaderBuffer.a(1);
                        this.N = bitReaderBuffer.a(8);
                        this.O = bitReaderBuffer.a(4);
                        this.P = bitReaderBuffer.a(12);
                        this.Q = bitReaderBuffer.a(2);
                    }
                    this.H = bitReaderBuffer.a(1);
                    this.T = true;
                } else {
                    int iA13 = bitReaderBuffer.a(1);
                    this.R = iA13;
                    if (iA13 == 1) {
                        this.S = bitReaderBuffer.a(2);
                    }
                }
                i2 = this.f35702e;
                if (i2 == 17) {
                    iA = bitReaderBuffer.a(2);
                    this.q = iA;
                    if (iA != 2) {
                    }
                    mt.i("can't parse ErrorProtectionSpecificConfig yet");
                } else {
                    iA = bitReaderBuffer.a(2);
                    this.q = iA;
                    if (iA != 2) {
                    }
                    mt.i("can't parse ErrorProtectionSpecificConfig yet");
                }
                if (this.f35705i != 5) {
                    byteBuffer2 = bitReaderBuffer.f35712a;
                    if ((byteBuffer2.limit() * 8) - bitReaderBuffer.f35714c >= 16) {
                        iA2 = bitReaderBuffer.a(11);
                        this.s = iA2;
                        if (iA2 == 695) {
                            iC = c(bitReaderBuffer);
                            this.f35705i = iC;
                            if (iC == 5) {
                                zB2 = bitReaderBuffer.b();
                                this.f35706j = zB2;
                                if (zB2) {
                                    iA4 = bitReaderBuffer.a(4);
                                    this.l = iA4;
                                    if (iA4 == 15) {
                                        this.m = bitReaderBuffer.a(24);
                                    }
                                    if ((byteBuffer2.limit() * 8) - bitReaderBuffer.f35714c >= 12) {
                                        iA5 = bitReaderBuffer.a(11);
                                        this.s = iA5;
                                        if (iA5 == 1352) {
                                            this.f35707k = bitReaderBuffer.b();
                                        }
                                    }
                                }
                            }
                            if (this.f35705i == 22) {
                                zB = bitReaderBuffer.b();
                                this.f35706j = zB;
                                if (zB) {
                                    iA3 = bitReaderBuffer.a(4);
                                    this.l = iA3;
                                    if (iA3 == 15) {
                                        this.m = bitReaderBuffer.a(24);
                                    }
                                }
                                this.n = bitReaderBuffer.a(4);
                            }
                        }
                    }
                }
                break;
            case 28:
                mt.i("can't parse SSCSpecificConfig yet");
                break;
            case 30:
                this.o = bitReaderBuffer.a(1);
                mt.i("can't parse SpatialSpecificConfig yet");
                break;
            case 32:
            case 33:
            case 34:
                mt.i("can't parse MPEG_1_2_SpecificConfig yet");
                break;
            case 35:
                mt.i("can't parse DSTSpecificConfig yet");
                break;
            case 36:
                this.p = bitReaderBuffer.a(5);
                mt.i("can't parse ALSSpecificConfig yet");
                break;
            case 37:
            case 38:
                mt.i("can't parse SLSSpecificConfig yet");
                break;
            case 39:
                new ELDSpecificConfig(this.f35704h, bitReaderBuffer);
                i2 = this.f35702e;
                if (i2 == 17) {
                    iA = bitReaderBuffer.a(2);
                    this.q = iA;
                    if (iA != 2) {
                    }
                    mt.i("can't parse ErrorProtectionSpecificConfig yet");
                } else {
                    iA = bitReaderBuffer.a(2);
                    this.q = iA;
                    if (iA != 2) {
                    }
                    mt.i("can't parse ErrorProtectionSpecificConfig yet");
                }
                if (this.f35705i != 5) {
                    byteBuffer2 = bitReaderBuffer.f35712a;
                    if ((byteBuffer2.limit() * 8) - bitReaderBuffer.f35714c >= 16) {
                        iA2 = bitReaderBuffer.a(11);
                        this.s = iA2;
                        if (iA2 == 695) {
                            iC = c(bitReaderBuffer);
                            this.f35705i = iC;
                            if (iC == 5) {
                                zB2 = bitReaderBuffer.b();
                                this.f35706j = zB2;
                                if (zB2) {
                                    iA4 = bitReaderBuffer.a(4);
                                    this.l = iA4;
                                    if (iA4 == 15) {
                                        this.m = bitReaderBuffer.a(24);
                                    }
                                    if ((byteBuffer2.limit() * 8) - bitReaderBuffer.f35714c >= 12) {
                                        iA5 = bitReaderBuffer.a(11);
                                        this.s = iA5;
                                        if (iA5 == 1352) {
                                            this.f35707k = bitReaderBuffer.b();
                                        }
                                    }
                                }
                            }
                            if (this.f35705i == 22) {
                                zB = bitReaderBuffer.b();
                                this.f35706j = zB;
                                if (zB) {
                                    iA3 = bitReaderBuffer.a(4);
                                    this.l = iA3;
                                    if (iA3 == 15) {
                                        this.m = bitReaderBuffer.a(24);
                                    }
                                }
                                this.n = bitReaderBuffer.a(4);
                            }
                        }
                    }
                }
                break;
            case 40:
            case 41:
                mt.i("can't parse SymbolicMusicSpecificConfig yet");
                break;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AudioSpecificConfig audioSpecificConfig = (AudioSpecificConfig) obj;
        return this.B == audioSpecificConfig.B && this.A == audioSpecificConfig.A && this.C == audioSpecificConfig.C && this.f35702e == audioSpecificConfig.f35702e && this.f35704h == audioSpecificConfig.f35704h && this.v == audioSpecificConfig.v && this.u == audioSpecificConfig.u && this.r == audioSpecificConfig.r && this.q == audioSpecificConfig.q && this.K == audioSpecificConfig.K && this.f35705i == audioSpecificConfig.f35705i && this.n == audioSpecificConfig.n && this.w == audioSpecificConfig.w && this.D == audioSpecificConfig.D && this.m == audioSpecificConfig.m && this.l == audioSpecificConfig.l && this.p == audioSpecificConfig.p && this.t == audioSpecificConfig.t && this.E == audioSpecificConfig.E && this.Q == audioSpecificConfig.Q && this.R == audioSpecificConfig.R && this.S == audioSpecificConfig.S && this.P == audioSpecificConfig.P && this.N == audioSpecificConfig.N && this.M == audioSpecificConfig.M && this.O == audioSpecificConfig.O && this.J == audioSpecificConfig.J && this.I == audioSpecificConfig.I && this.F == audioSpecificConfig.F && this.x == audioSpecificConfig.x && this.z == audioSpecificConfig.z && this.y == audioSpecificConfig.y && this.H == audioSpecificConfig.H && this.G == audioSpecificConfig.G && this.T == audioSpecificConfig.T && this.f35707k == audioSpecificConfig.f35707k && this.o == audioSpecificConfig.o && this.g == audioSpecificConfig.g && this.f35703f == audioSpecificConfig.f35703f && this.f35706j == audioSpecificConfig.f35706j && this.s == audioSpecificConfig.s && this.L == audioSpecificConfig.L && Arrays.equals(this.d, audioSpecificConfig.d);
    }

    public final int hashCode() {
        byte[] bArr = this.d;
        return ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((bArr != null ? Arrays.hashCode(bArr) : 0) * 31) + this.f35702e) * 31) + this.f35703f) * 31) + this.g) * 31) + this.f35704h) * 31) + this.f35705i) * 31) + (this.f35706j ? 1 : 0)) * 31) + (this.f35707k ? 1 : 0)) * 31) + this.l) * 31) + this.m) * 31) + this.n) * 31) + this.o) * 31) + this.p) * 31) + this.q) * 31) + this.r) * 31) + this.s) * 31) + this.t) * 31) + this.u) * 31) + this.v) * 31) + this.w) * 31) + this.x) * 31) + this.y) * 31) + this.z) * 31) + (this.A ? 1 : 0)) * 31) + (this.B ? 1 : 0)) * 31) + (this.C ? 1 : 0)) * 31) + this.D) * 31) + (this.E ? 1 : 0)) * 31) + this.F) * 31) + this.G) * 31) + this.H) * 31) + this.I) * 31) + this.J) * 31) + this.K) * 31) + this.L) * 31) + this.M) * 31) + this.N) * 31) + this.O) * 31) + this.P) * 31) + this.Q) * 31) + this.R) * 31) + this.S) * 31) + (this.T ? 1 : 0);
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor
    public final String toString() {
        StringBuilder sb = new StringBuilder("AudioSpecificConfig{configBytes=");
        sb.append(Hex.a(0, this.d));
        sb.append(", audioObjectType=");
        sb.append(this.f35702e);
        sb.append(" (");
        Integer numValueOf = Integer.valueOf(this.f35702e);
        HashMap map = V;
        sb.append((String) map.get(numValueOf));
        sb.append("), samplingFrequencyIndex=");
        sb.append(this.f35703f);
        sb.append(" (");
        Integer numValueOf2 = Integer.valueOf(this.f35703f);
        HashMap map2 = U;
        sb.append(map2.get(numValueOf2));
        sb.append("), samplingFrequency=");
        sb.append(this.g);
        sb.append(", channelConfiguration=");
        sb.append(this.f35704h);
        if (this.f35705i > 0) {
            sb.append(", extensionAudioObjectType=");
            sb.append(this.f35705i);
            sb.append(" (");
            sb.append((String) map.get(Integer.valueOf(this.f35705i)));
            sb.append("), sbrPresentFlag=");
            sb.append(this.f35706j);
            sb.append(", psPresentFlag=");
            sb.append(this.f35707k);
            sb.append(", extensionSamplingFrequencyIndex=");
            sb.append(this.l);
            sb.append(" (");
            sb.append(map2.get(Integer.valueOf(this.l)));
            sb.append("), extensionSamplingFrequency=");
            sb.append(this.m);
            sb.append(", extensionChannelConfiguration=");
            sb.append(this.n);
        }
        sb.append(", syncExtensionType=");
        sb.append(this.s);
        if (this.E) {
            sb.append(", frameLengthFlag=");
            sb.append(this.t);
            sb.append(", dependsOnCoreCoder=");
            sb.append(this.u);
            sb.append(", coreCoderDelay=");
            sb.append(this.v);
            sb.append(", extensionFlag=");
            sb.append(this.w);
            sb.append(", layerNr=");
            sb.append(this.x);
            sb.append(", numOfSubFrame=");
            sb.append(this.y);
            sb.append(", layer_length=");
            sb.append(this.z);
            sb.append(", aacSectionDataResilienceFlag=");
            sb.append(this.A);
            sb.append(", aacScalefactorDataResilienceFlag=");
            sb.append(this.B);
            sb.append(", aacSpectralDataResilienceFlag=");
            sb.append(this.C);
            sb.append(", extensionFlag3=");
            sb.append(this.D);
        }
        if (this.T) {
            sb.append(", isBaseLayer=");
            sb.append(this.F);
            sb.append(", paraMode=");
            sb.append(this.G);
            sb.append(", paraExtensionFlag=");
            sb.append(this.H);
            sb.append(", hvxcVarMode=");
            sb.append(this.I);
            sb.append(", hvxcRateMode=");
            sb.append(this.J);
            sb.append(", erHvxcExtensionFlag=");
            sb.append(this.K);
            sb.append(", var_ScalableFlag=");
            sb.append(this.L);
            sb.append(", hilnQuantMode=");
            sb.append(this.M);
            sb.append(", hilnMaxNumLine=");
            sb.append(this.N);
            sb.append(", hilnSampleRateCode=");
            sb.append(this.O);
            sb.append(", hilnFrameLength=");
            sb.append(this.P);
            sb.append(", hilnContMode=");
            sb.append(this.Q);
            sb.append(", hilnEnhaLayer=");
            sb.append(this.R);
            sb.append(", hilnEnhaQuantMode=");
            sb.append(this.S);
        }
        sb.append('}');
        return sb.toString();
    }
}
