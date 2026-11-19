package org.bouncycastle.pqc.crypto.gemss;

import defpackage.md;
import defpackage.pq0;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.digests.SHA3Digest;
import org.bouncycastle.crypto.digests.SHAKEDigest;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
class GeMSSEngine {
    final int ACCESS_last_equations8;
    Pointer Buffer_NB_WORD_GFqn;
    Pointer Buffer_NB_WORD_MUL;
    final boolean ENABLED_REMOVE_ODD_DEGREE;
    final int HFEDELTA;
    final int HFEDeg;
    final int HFEDegI;
    final int HFEDegJ;
    final int HFENr8;
    final int HFENr8c;
    int HFE_odd_degree;
    final int HFEm;
    final int HFEmq;
    final int HFEmq8;
    final int HFEmr;
    final int HFEmr8;
    final int HFEn;
    int HFEn1h_rightmost;
    int HFEn_1rightmost;
    final int HFEnq;
    final int HFEnr;
    final int HFEnv;
    final int HFEnvq;
    final int HFEnvr;
    final int HFEnvr8;
    final int HFEv;
    final int HFEvq;
    final int HFEvr;
    int II;
    int KP;
    int KX;
    final int LOST_BITS;
    int LTRIANGULAR_NV_SIZE;
    final int LTRIANGULAR_N_SIZE;
    final long MASK_GF2m;
    final long MASK_GF2n;
    final int MATRIXn_SIZE;
    final int MATRIXnv_SIZE;
    final int MLv_GFqn_SIZE;
    int MQv_GFqn_SIZE;
    final int NB_BYTES_EQUATION;
    final int NB_BYTES_GFqm;
    final int NB_BYTES_GFqn;
    final int NB_BYTES_GFqnv;
    int NB_COEFS_HFEPOLY;
    final int NB_ITE;
    int NB_MONOMIAL_PK;
    int NB_MONOMIAL_VINEGAR;
    int NB_UINT_HFEVPOLY;
    int NB_WORD_GF2m;
    int NB_WORD_GF2nv;
    final int NB_WORD_GF2nvm;
    int NB_WORD_GFqn;
    final int NB_WORD_GFqv;
    int NB_WORD_MMUL;
    final int NB_WORD_MUL;
    final int NB_WORD_UNCOMP_EQ;
    int POW_II;
    final int SIZE_DIGEST;
    final int SIZE_DIGEST_UINT;
    final int SIZE_ROW;
    final int SIZE_SEED_SK;
    final int SIZE_SIGN_UNCOMPRESSED;
    final int Sha3BitStrength;
    final int ShakeBitStrength;
    final int VAL_BITS_M;
    private int buffer;
    Mul_GF2x mul;
    private SecureRandom random;
    Rem_GF2n rem;
    SHA3Digest sha3Digest;
    final int NB_BITS_UINT = 64;
    final int LEN_UNROLLED_64 = 4;

    /* JADX INFO: renamed from: org.bouncycastle.pqc.crypto.gemss.GeMSSEngine$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$pqc$crypto$gemss$GeMSSEngine$FunctionParams;

        static {
            int[] iArr = new int[FunctionParams.values().length];
            $SwitchMap$org$bouncycastle$pqc$crypto$gemss$GeMSSEngine$FunctionParams = iArr;
            try {
                iArr[FunctionParams.N.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$bouncycastle$pqc$crypto$gemss$GeMSSEngine$FunctionParams[FunctionParams.NV.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$bouncycastle$pqc$crypto$gemss$GeMSSEngine$FunctionParams[FunctionParams.V.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$bouncycastle$pqc$crypto$gemss$GeMSSEngine$FunctionParams[FunctionParams.M.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public enum FunctionParams {
        NV,
        V,
        N,
        M
    }

    /* JADX WARN: Code duplicated, block: B:101:0x021e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:102:0x0220 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:103:0x0222  */
    /* JADX WARN: Code duplicated, block: B:104:0x022f  */
    /* JADX WARN: Code duplicated, block: B:106:0x0236  */
    /* JADX WARN: Code duplicated, block: B:108:0x023d  */
    /* JADX WARN: Code duplicated, block: B:110:0x0244  */
    /* JADX WARN: Code duplicated, block: B:112:0x0254  */
    /* JADX WARN: Code duplicated, block: B:113:0x0256  */
    /* JADX WARN: Code duplicated, block: B:116:0x025f  */
    /* JADX WARN: Code duplicated, block: B:117:0x0261  */
    /* JADX WARN: Code duplicated, block: B:120:0x0273  */
    /* JADX WARN: Code duplicated, block: B:121:0x027d  */
    /* JADX WARN: Code duplicated, block: B:123:0x0281  */
    /* JADX WARN: Code duplicated, block: B:125:0x028f  */
    /* JADX WARN: Code duplicated, block: B:128:0x02bd  */
    /* JADX WARN: Code duplicated, block: B:131:0x02c3  */
    /* JADX WARN: Code duplicated, block: B:133:0x02c7  */
    /* JADX WARN: Code duplicated, block: B:135:0x02cb  */
    /* JADX WARN: Code duplicated, block: B:138:0x02db  */
    /* JADX WARN: Code duplicated, block: B:141:0x02e5  */
    /* JADX WARN: Code duplicated, block: B:143:0x02e9 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:146:0x0302  */
    /* JADX WARN: Code duplicated, block: B:147:0x0324  */
    /* JADX WARN: Code duplicated, block: B:149:0x032e  */
    /* JADX WARN: Code duplicated, block: B:155:0x0344  */
    /* JADX WARN: Code duplicated, block: B:157:0x034a  */
    /* JADX WARN: Code duplicated, block: B:158:0x0354  */
    /* JADX WARN: Code duplicated, block: B:160:0x0358  */
    /* JADX WARN: Code duplicated, block: B:161:0x0362  */
    /* JADX WARN: Code duplicated, block: B:163:0x0366  */
    /* JADX WARN: Code duplicated, block: B:164:0x0370  */
    /* JADX WARN: Code duplicated, block: B:166:0x0375  */
    /* JADX WARN: Code duplicated, block: B:168:0x0379  */
    /* JADX WARN: Code duplicated, block: B:171:0x037e  */
    /* JADX WARN: Code duplicated, block: B:172:0x0387  */
    /* JADX WARN: Code duplicated, block: B:173:0x0390  */
    /* JADX WARN: Code duplicated, block: B:177:0x03b3 A[LOOP:0: B:175:0x03ad->B:177:0x03b3, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:181:0x03c6 A[LOOP:1: B:179:0x03be->B:181:0x03c6, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:184:0x03b8 A[EDGE_INSN: B:184:0x03b8->B:178:0x03b8 BREAK  A[LOOP:0: B:175:0x03ad->B:177:0x03b3], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:185:0x03c9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:24:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:25:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:28:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:30:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:33:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:34:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:37:0x010d  */
    /* JADX WARN: Code duplicated, block: B:39:0x0112  */
    /* JADX WARN: Code duplicated, block: B:42:0x012b  */
    /* JADX WARN: Code duplicated, block: B:43:0x012e  */
    /* JADX WARN: Code duplicated, block: B:46:0x017f  */
    /* JADX WARN: Code duplicated, block: B:48:0x0183  */
    /* JADX WARN: Code duplicated, block: B:50:0x0187  */
    /* JADX WARN: Code duplicated, block: B:52:0x018b  */
    /* JADX WARN: Code duplicated, block: B:54:0x018f  */
    /* JADX WARN: Code duplicated, block: B:56:0x0193  */
    /* JADX WARN: Code duplicated, block: B:58:0x0197 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:59:0x0199 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:60:0x019b  */
    /* JADX WARN: Code duplicated, block: B:62:0x019f  */
    /* JADX WARN: Code duplicated, block: B:64:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:66:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:68:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:70:0x01af  */
    /* JADX WARN: Code duplicated, block: B:72:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:74:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:77:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:79:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:80:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:81:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:82:0x01db  */
    /* JADX WARN: Code duplicated, block: B:83:0x01de  */
    /* JADX WARN: Code duplicated, block: B:84:0x01e1  */
    /* JADX WARN: Code duplicated, block: B:85:0x01e4  */
    /* JADX WARN: Code duplicated, block: B:86:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:87:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:88:0x01ed  */
    /* JADX WARN: Code duplicated, block: B:89:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:90:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:91:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:92:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:93:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:95:0x0201  */
    /* JADX WARN: Code duplicated, block: B:96:0x0206  */
    /* JADX WARN: Code duplicated, block: B:99:0x0212  */
    public GeMSSEngine(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        Mul_GF2x mul6;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        long jMaskUINT;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30;
        int i31;
        int i32;
        int i33;
        Rem_GF2n rem192_specialized_trinomial_gf2x;
        int i34;
        int i35;
        int i36;
        int i37;
        int i38;
        this.HFEn = i3;
        this.HFEv = i4;
        this.HFEDELTA = i5;
        this.NB_ITE = i6;
        this.HFEDeg = i7;
        this.HFEDegI = i8;
        this.HFEDegJ = i9;
        this.NB_BYTES_GFqn = (i3 >>> 3) + ((i3 & 7) != 0 ? 1 : 0);
        int i39 = i8 + 1;
        this.SIZE_ROW = i39;
        int i40 = i3 + i4;
        this.HFEnv = i40;
        int i41 = i3 >>> 6;
        this.HFEnq = i41;
        int i42 = i3 & 63;
        this.HFEnr = i42;
        int i43 = i40 >>> 6;
        this.HFEnvq = i43;
        int i44 = i40 & 63;
        this.HFEnvr = i44;
        this.SIZE_SEED_SK = i2 >>> 3;
        int i45 = i3 - 1;
        int i46 = ((i45 << 1) >>> 6) + 1;
        this.NB_WORD_MUL = i46;
        if (i46 == 6) {
            mul6 = new Mul_GF2x.Mul6();
        } else if (i46 == 9) {
            mul6 = new Mul_GF2x.Mul9();
        } else if (i46 == 17) {
            mul6 = new Mul_GF2x.Mul17();
        } else if (i46 != 12) {
            if (i46 == 13) {
                mul6 = new Mul_GF2x.Mul13();
            }
            i10 = 64 - i42;
            int i47 = i3 - i5;
            this.HFEm = i47;
            int i48 = i47 >>> 6;
            this.HFEmq = i48;
            i11 = i47 & 63;
            this.HFEmr = i11;
            i12 = i4 >>> 6;
            this.HFEvq = i12;
            i13 = i4 & 63;
            this.HFEvr = i13;
            if (i13 != 0) {
                i14 = i12 + 1;
            } else {
                i14 = i12;
            }
            this.NB_WORD_GFqv = i14;
            int i49 = i47 >>> 3;
            this.HFEmq8 = i49;
            i15 = i47 & 7;
            this.HFEmr8 = i15;
            if (i15 != 0) {
                i16 = 1;
            } else {
                i16 = 0;
            }
            this.NB_BYTES_GFqm = i49 + i16;
            this.NB_WORD_UNCOMP_EQ = ((i43 + 1) * i44) + ((((i43 + 1) * i43) >>> 1) * 64);
            i17 = i40 & 7;
            this.HFEnvr8 = i17;
            int i50 = i40 >>> 3;
            if (i17 != 0) {
                i18 = 1;
            } else {
                i18 = 0;
            }
            this.NB_BYTES_GFqnv = i50 + i18;
            this.VAL_BITS_M = Math.min(i5 + i4, 8 - i15);
            this.MASK_GF2m = GeMSSUtils.maskUINT(i11);
            jMaskUINT = GeMSSUtils.maskUINT(i42);
            this.MASK_GF2n = jMaskUINT;
            if (i42 != 0) {
                i19 = 1;
            } else {
                i19 = 0;
            }
            int i51 = i41 + i19;
            this.NB_WORD_GFqn = i51;
            this.LTRIANGULAR_N_SIZE = (i51 * i42) + ((((i41 + 1) * i41) >>> 1) * 64);
            this.MATRIXn_SIZE = i3 * i51;
            if (i44 != 0) {
                i20 = 1;
            } else {
                i20 = 0;
            }
            int i52 = i20 + i43;
            this.NB_WORD_GF2nv = i52;
            this.MATRIXnv_SIZE = i40 * i52;
            this.LTRIANGULAR_NV_SIZE = (i44 * i52) + ((((i43 + 1) * i43) >>> 1) * 64);
            int i53 = i4 + 1;
            int i54 = ((i4 * i53) >>> 1) + 1;
            this.NB_MONOMIAL_VINEGAR = i54;
            int i55 = ((i40 + 1) * i40) >>> 1;
            int i56 = i55 + 1;
            this.NB_MONOMIAL_PK = i56;
            this.MQv_GFqn_SIZE = i54 * i51;
            this.ACCESS_last_equations8 = i56 * i49;
            this.NB_BYTES_EQUATION = (i55 + 8) >>> 3;
            int i57 = i56 & 7;
            this.HFENr8 = i57;
            int i58 = (8 - i57) & 7;
            this.HFENr8c = i58;
            this.LOST_BITS = (i15 - 1) * i58;
            this.NB_WORD_MMUL = i46;
            if (i3 != 174) {
                i21 = 13;
            } else if (i3 != 175) {
                i21 = 16;
            } else if (i3 != 177) {
                i21 = 8;
            } else if (i3 != 178) {
                i21 = 31;
            } else if (i3 != 265) {
                i21 = 42;
            } else if (i3 != 266) {
                i21 = 47;
            } else if (i3 != 268) {
                i21 = 25;
            } else if (i3 != 354) {
                i21 = 99;
            } else if (i3 != 358) {
                i21 = 57;
            } else if (i3 != 364) {
                i21 = 9;
            } else if (i3 != 366) {
                i21 = 29;
            } else if (i3 != 402) {
                if (i3 != 537) {
                    i21 = 10;
                    i22 = 1;
                    i23 = 2;
                } else if (i3 != 544) {
                    i21 = 128;
                    i22 = 1;
                    i23 = 3;
                } else if (i3 != 270) {
                    i21 = 53;
                } else {
                    if (i3 == 271) {
                        md.n(pq0.k(i3, "error: need to add support for HFEn="));
                        throw null;
                    }
                    i21 = 58;
                }
                if (i23 != 0) {
                    i24 = 64 - i22;
                    i25 = 64 - i23;
                } else {
                    i24 = 0;
                    i25 = 0;
                }
                i26 = 64 - (i21 & 63);
                i27 = i7 & 1;
                if (i27 == 0) {
                    this.ENABLED_REMOVE_ODD_DEGREE = true;
                    i38 = (1 << i8) + 1;
                    this.HFE_odd_degree = i38;
                    if (i27 == 0) {
                        md.n("HFEDeg is odd, so to remove the leading term would decrease the degree.");
                        throw null;
                    }
                    if (i38 <= i7) {
                        md.n("It is useless to remove 0 term.");
                        throw null;
                    }
                    if (i38 > 1) {
                        md.n("The case where the term X^3 is removing is not implemented.");
                        throw null;
                    }
                    this.NB_COEFS_HFEPOLY = i9 + 2 + (((i8 - 1) * i8) >>> 1) + i8;
                    i28 = 0;
                } else {
                    i28 = 0;
                    this.ENABLED_REMOVE_ODD_DEGREE = false;
                    this.NB_COEFS_HFEPOLY = i9 + 2 + ((i8 * i39) >>> 1);
                }
                if (i11 != 0) {
                    i29 = 1;
                } else {
                    i29 = i28;
                }
                int i59 = i48 + i29;
                this.NB_WORD_GF2m = i59;
                int i60 = i52 - i59;
                if (i11 != 0) {
                    i30 = 1;
                } else {
                    i30 = i28;
                }
                int i61 = i60 + i30;
                this.NB_WORD_GF2nvm = i61;
                this.SIZE_SIGN_UNCOMPRESSED = ((i6 - 1) * i61) + i52;
                if (i2 <= 128) {
                    this.SIZE_DIGEST = 32;
                    this.SIZE_DIGEST_UINT = 4;
                    this.ShakeBitStrength = 128;
                    this.Sha3BitStrength = 256;
                } else {
                    if (i2 <= 192) {
                        this.SIZE_DIGEST = 48;
                        this.SIZE_DIGEST_UINT = 6;
                        this.ShakeBitStrength = 256;
                        i31 = KyberEngine.KyberPolyBytes;
                    } else {
                        this.SIZE_DIGEST = 64;
                        this.SIZE_DIGEST_UINT = 8;
                        this.ShakeBitStrength = 256;
                        i31 = 512;
                    }
                    this.Sha3BitStrength = i31;
                }
                this.sha3Digest = new SHA3Digest(this.Sha3BitStrength);
                int i62 = (i39 * i4) + (this.NB_MONOMIAL_VINEGAR - 1) + this.NB_COEFS_HFEPOLY;
                int i63 = this.NB_WORD_GFqn;
                this.NB_UINT_HFEVPOLY = i62 * i63;
                this.MLv_GFqn_SIZE = i53 * i63;
                if (i7 > 34 || (i3 > 196 && i7 < 256)) {
                    if (i7 == 17) {
                        i32 = 4;
                    } else {
                        i32 = 6;
                    }
                    this.II = i32;
                    int i64 = this.II;
                    int i65 = 1 << i64;
                    this.POW_II = i65;
                    int i66 = (i7 >>> i64) + (i7 % i65 != 0 ? 1 : i28);
                    this.KP = i66;
                    this.KX = i7 - i66;
                }
                if (i23 == 0) {
                    if (i3 == 544 || i21 != 128) {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM544_PENTANOMIAL_GF2X(i22, i23, i21, i42, i10, i24, i25, i26, jMaskUINT);
                    } else {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM544_PENTANOMIAL_K3_IS_128_GF2X(i22, i23, i42, i10, i24, i25, jMaskUINT);
                    }
                } else if (i3 > 256 || i3 >= 289 || i21 <= 32 || i21 >= 64) {
                    i33 = i21;
                    if (i3 == 354) {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM384_SPECIALIZED_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                    } else if (i3 == 358) {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM384_SPECIALIZED358_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                    } else if (i3 == 402) {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM402_SPECIALIZED_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                    } else if (i46 == 6) {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM192_SPECIALIZED_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                    } else if (i46 != 9) {
                        if (i46 == 12) {
                            rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM384_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                        }
                        this.Buffer_NB_WORD_MUL = new Pointer(i46);
                        this.Buffer_NB_WORD_GFqn = new Pointer(this.NB_WORD_GFqn);
                        i34 = 31;
                        this.HFEn_1rightmost = 31;
                        while (true) {
                            i35 = this.HFEn_1rightmost;
                            if ((i45 >>> i35) == 0) {
                                break;
                            } else {
                                this.HFEn_1rightmost = i35 - 1;
                            }
                        }
                        i36 = (i3 + 1) >>> 1;
                        while (true) {
                            this.HFEn1h_rightmost = i34;
                            i37 = this.HFEn1h_rightmost;
                            if ((i36 >>> i37) == 0) {
                                this.HFEn1h_rightmost = i37 - 1;
                                return;
                            }
                            i34 = i37 - 1;
                        }
                    } else {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM288_SPECIALIZED_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                    }
                } else {
                    rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM288_SPECIALIZED_TRINOMIAL_GF2X(i21, i42, i10, i26, jMaskUINT);
                }
                this.rem = rem192_specialized_trinomial_gf2x;
                this.Buffer_NB_WORD_MUL = new Pointer(i46);
                this.Buffer_NB_WORD_GFqn = new Pointer(this.NB_WORD_GFqn);
                i34 = 31;
                this.HFEn_1rightmost = 31;
                while (true) {
                    i35 = this.HFEn_1rightmost;
                    if ((i45 >>> i35) == 0) {
                        break;
                        break;
                    }
                    this.HFEn_1rightmost = i35 - 1;
                }
                i36 = (i3 + 1) >>> 1;
                while (true) {
                    this.HFEn1h_rightmost = i34;
                    i37 = this.HFEn1h_rightmost;
                    if ((i36 >>> i37) == 0) {
                        this.HFEn1h_rightmost = i37 - 1;
                        return;
                    }
                    i34 = i37 - 1;
                }
            } else {
                i21 = 171;
            }
            i23 = 0;
            i22 = 0;
            if (i23 != 0) {
                i24 = 64 - i22;
                i25 = 64 - i23;
            } else {
                i24 = 0;
                i25 = 0;
            }
            i26 = 64 - (i21 & 63);
            i27 = i7 & 1;
            if (i27 == 0) {
                this.ENABLED_REMOVE_ODD_DEGREE = true;
                i38 = (1 << i8) + 1;
                this.HFE_odd_degree = i38;
                if (i27 == 0) {
                    md.n("HFEDeg is odd, so to remove the leading term would decrease the degree.");
                    throw null;
                }
                if (i38 <= i7) {
                    md.n("It is useless to remove 0 term.");
                    throw null;
                }
                if (i38 > 1) {
                    md.n("The case where the term X^3 is removing is not implemented.");
                    throw null;
                }
                this.NB_COEFS_HFEPOLY = i9 + 2 + (((i8 - 1) * i8) >>> 1) + i8;
                i28 = 0;
            } else {
                i28 = 0;
                this.ENABLED_REMOVE_ODD_DEGREE = false;
                this.NB_COEFS_HFEPOLY = i9 + 2 + ((i8 * i39) >>> 1);
            }
            if (i11 != 0) {
                i29 = 1;
            } else {
                i29 = i28;
            }
            int i510 = i48 + i29;
            this.NB_WORD_GF2m = i510;
            int i67 = i52 - i510;
            if (i11 != 0) {
                i30 = 1;
            } else {
                i30 = i28;
            }
            int i68 = i67 + i30;
            this.NB_WORD_GF2nvm = i68;
            this.SIZE_SIGN_UNCOMPRESSED = ((i6 - 1) * i68) + i52;
            if (i2 <= 128) {
                this.SIZE_DIGEST = 32;
                this.SIZE_DIGEST_UINT = 4;
                this.ShakeBitStrength = 128;
                this.Sha3BitStrength = 256;
            } else {
                if (i2 <= 192) {
                    this.SIZE_DIGEST = 48;
                    this.SIZE_DIGEST_UINT = 6;
                    this.ShakeBitStrength = 256;
                    i31 = KyberEngine.KyberPolyBytes;
                } else {
                    this.SIZE_DIGEST = 64;
                    this.SIZE_DIGEST_UINT = 8;
                    this.ShakeBitStrength = 256;
                    i31 = 512;
                }
                this.Sha3BitStrength = i31;
            }
            this.sha3Digest = new SHA3Digest(this.Sha3BitStrength);
            int i69 = (i39 * i4) + (this.NB_MONOMIAL_VINEGAR - 1) + this.NB_COEFS_HFEPOLY;
            int i610 = this.NB_WORD_GFqn;
            this.NB_UINT_HFEVPOLY = i69 * i610;
            this.MLv_GFqn_SIZE = i53 * i610;
            if (i7 > 34) {
                if (i7 == 17) {
                    i32 = 4;
                } else {
                    i32 = 6;
                }
                this.II = i32;
                int i611 = this.II;
                int i612 = 1 << i611;
                this.POW_II = i612;
                int i613 = (i7 >>> i611) + (i7 % i612 != 0 ? 1 : i28);
                this.KP = i613;
                this.KX = i7 - i613;
            } else {
                if (i7 == 17) {
                    i32 = 4;
                } else {
                    i32 = 6;
                }
                this.II = i32;
                int i614 = this.II;
                int i615 = 1 << i614;
                this.POW_II = i615;
                int i616 = (i7 >>> i614) + (i7 % i615 != 0 ? 1 : i28);
                this.KP = i616;
                this.KX = i7 - i616;
            }
            if (i23 == 0) {
                if (i3 > 256) {
                    i33 = i21;
                    if (i3 == 354) {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM384_SPECIALIZED_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                    } else if (i3 == 358) {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM384_SPECIALIZED358_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                    } else if (i3 == 402) {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM402_SPECIALIZED_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                    } else if (i46 == 6) {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM192_SPECIALIZED_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                    } else if (i46 != 9) {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM288_SPECIALIZED_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                    } else if (i46 == 12) {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM384_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                    }
                } else {
                    i33 = i21;
                    if (i3 == 354) {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM384_SPECIALIZED_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                    } else if (i3 == 358) {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM384_SPECIALIZED358_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                    } else if (i3 == 402) {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM402_SPECIALIZED_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                    } else if (i46 == 6) {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM192_SPECIALIZED_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                    } else if (i46 != 9) {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM288_SPECIALIZED_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                    } else if (i46 == 12) {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM384_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                    }
                }
                this.Buffer_NB_WORD_MUL = new Pointer(i46);
                this.Buffer_NB_WORD_GFqn = new Pointer(this.NB_WORD_GFqn);
                i34 = 31;
                this.HFEn_1rightmost = 31;
                while (true) {
                    i35 = this.HFEn_1rightmost;
                    if ((i45 >>> i35) == 0) {
                        break;
                        break;
                    }
                    this.HFEn_1rightmost = i35 - 1;
                }
                i36 = (i3 + 1) >>> 1;
                while (true) {
                    this.HFEn1h_rightmost = i34;
                    i37 = this.HFEn1h_rightmost;
                    if ((i36 >>> i37) == 0) {
                        this.HFEn1h_rightmost = i37 - 1;
                        return;
                    }
                    i34 = i37 - 1;
                }
            } else if (i3 == 544) {
                rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM544_PENTANOMIAL_GF2X(i22, i23, i21, i42, i10, i24, i25, i26, jMaskUINT);
            } else {
                rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM544_PENTANOMIAL_GF2X(i22, i23, i21, i42, i10, i24, i25, i26, jMaskUINT);
            }
            this.rem = rem192_specialized_trinomial_gf2x;
            this.Buffer_NB_WORD_MUL = new Pointer(i46);
            this.Buffer_NB_WORD_GFqn = new Pointer(this.NB_WORD_GFqn);
            i34 = 31;
            this.HFEn_1rightmost = 31;
            while (true) {
                i35 = this.HFEn_1rightmost;
                if ((i45 >>> i35) == 0) {
                    break;
                    break;
                }
                this.HFEn_1rightmost = i35 - 1;
            }
            i36 = (i3 + 1) >>> 1;
            while (true) {
                this.HFEn1h_rightmost = i34;
                i37 = this.HFEn1h_rightmost;
                if ((i36 >>> i37) == 0) {
                    this.HFEn1h_rightmost = i37 - 1;
                    return;
                }
                i34 = i37 - 1;
            }
        } else {
            mul6 = new Mul_GF2x.Mul12();
        }
        this.mul = mul6;
        i10 = 64 - i42;
        int i410 = i3 - i5;
        this.HFEm = i410;
        int i411 = i410 >>> 6;
        this.HFEmq = i411;
        i11 = i410 & 63;
        this.HFEmr = i11;
        i12 = i4 >>> 6;
        this.HFEvq = i12;
        i13 = i4 & 63;
        this.HFEvr = i13;
        if (i13 != 0) {
            i14 = i12 + 1;
        } else {
            i14 = i12;
        }
        this.NB_WORD_GFqv = i14;
        int i412 = i410 >>> 3;
        this.HFEmq8 = i412;
        i15 = i410 & 7;
        this.HFEmr8 = i15;
        if (i15 != 0) {
            i16 = 1;
        } else {
            i16 = 0;
        }
        this.NB_BYTES_GFqm = i412 + i16;
        this.NB_WORD_UNCOMP_EQ = ((i43 + 1) * i44) + ((((i43 + 1) * i43) >>> 1) * 64);
        i17 = i40 & 7;
        this.HFEnvr8 = i17;
        int i511 = i40 >>> 3;
        if (i17 != 0) {
            i18 = 1;
        } else {
            i18 = 0;
        }
        this.NB_BYTES_GFqnv = i511 + i18;
        this.VAL_BITS_M = Math.min(i5 + i4, 8 - i15);
        this.MASK_GF2m = GeMSSUtils.maskUINT(i11);
        jMaskUINT = GeMSSUtils.maskUINT(i42);
        this.MASK_GF2n = jMaskUINT;
        if (i42 != 0) {
            i19 = 1;
        } else {
            i19 = 0;
        }
        int i512 = i41 + i19;
        this.NB_WORD_GFqn = i512;
        this.LTRIANGULAR_N_SIZE = (i512 * i42) + ((((i41 + 1) * i41) >>> 1) * 64);
        this.MATRIXn_SIZE = i3 * i512;
        if (i44 != 0) {
            i20 = 1;
        } else {
            i20 = 0;
        }
        int i513 = i20 + i43;
        this.NB_WORD_GF2nv = i513;
        this.MATRIXnv_SIZE = i40 * i513;
        this.LTRIANGULAR_NV_SIZE = (i44 * i513) + ((((i43 + 1) * i43) >>> 1) * 64);
        int i514 = i4 + 1;
        int i515 = ((i4 * i514) >>> 1) + 1;
        this.NB_MONOMIAL_VINEGAR = i515;
        int i516 = ((i40 + 1) * i40) >>> 1;
        int i517 = i516 + 1;
        this.NB_MONOMIAL_PK = i517;
        this.MQv_GFqn_SIZE = i515 * i512;
        this.ACCESS_last_equations8 = i517 * i412;
        this.NB_BYTES_EQUATION = (i516 + 8) >>> 3;
        int i518 = i517 & 7;
        this.HFENr8 = i518;
        int i519 = (8 - i518) & 7;
        this.HFENr8c = i519;
        this.LOST_BITS = (i15 - 1) * i519;
        this.NB_WORD_MMUL = i46;
        if (i3 != 174) {
            i21 = 13;
        } else if (i3 != 175) {
            i21 = 16;
        } else if (i3 != 177) {
            i21 = 8;
        } else if (i3 != 178) {
            i21 = 31;
        } else if (i3 != 265) {
            i21 = 42;
        } else if (i3 != 266) {
            i21 = 47;
        } else if (i3 != 268) {
            i21 = 25;
        } else if (i3 != 354) {
            i21 = 99;
        } else if (i3 != 358) {
            i21 = 57;
        } else if (i3 != 364) {
            i21 = 9;
        } else if (i3 != 366) {
            i21 = 29;
        } else if (i3 != 402) {
            if (i3 != 537) {
                i21 = 10;
                i22 = 1;
                i23 = 2;
            } else if (i3 != 544) {
                i21 = 128;
                i22 = 1;
                i23 = 3;
            } else if (i3 != 270) {
                i21 = 53;
            } else {
                if (i3 == 271) {
                    md.n(pq0.k(i3, "error: need to add support for HFEn="));
                    throw null;
                }
                i21 = 58;
            }
            if (i23 != 0) {
                i24 = 64 - i22;
                i25 = 64 - i23;
            } else {
                i24 = 0;
                i25 = 0;
            }
            i26 = 64 - (i21 & 63);
            i27 = i7 & 1;
            if (i27 == 0) {
                this.ENABLED_REMOVE_ODD_DEGREE = true;
                i38 = (1 << i8) + 1;
                this.HFE_odd_degree = i38;
                if (i27 == 0) {
                    md.n("HFEDeg is odd, so to remove the leading term would decrease the degree.");
                    throw null;
                }
                if (i38 <= i7) {
                    md.n("It is useless to remove 0 term.");
                    throw null;
                }
                if (i38 > 1) {
                    md.n("The case where the term X^3 is removing is not implemented.");
                    throw null;
                }
                this.NB_COEFS_HFEPOLY = i9 + 2 + (((i8 - 1) * i8) >>> 1) + i8;
                i28 = 0;
            } else {
                i28 = 0;
                this.ENABLED_REMOVE_ODD_DEGREE = false;
                this.NB_COEFS_HFEPOLY = i9 + 2 + ((i8 * i39) >>> 1);
            }
            if (i11 != 0) {
                i29 = 1;
            } else {
                i29 = i28;
            }
            int i5110 = i411 + i29;
            this.NB_WORD_GF2m = i5110;
            int i617 = i513 - i5110;
            if (i11 != 0) {
                i30 = 1;
            } else {
                i30 = i28;
            }
            int i618 = i617 + i30;
            this.NB_WORD_GF2nvm = i618;
            this.SIZE_SIGN_UNCOMPRESSED = ((i6 - 1) * i618) + i513;
            if (i2 <= 128) {
                this.SIZE_DIGEST = 32;
                this.SIZE_DIGEST_UINT = 4;
                this.ShakeBitStrength = 128;
                this.Sha3BitStrength = 256;
            } else {
                if (i2 <= 192) {
                    this.SIZE_DIGEST = 48;
                    this.SIZE_DIGEST_UINT = 6;
                    this.ShakeBitStrength = 256;
                    i31 = KyberEngine.KyberPolyBytes;
                } else {
                    this.SIZE_DIGEST = 64;
                    this.SIZE_DIGEST_UINT = 8;
                    this.ShakeBitStrength = 256;
                    i31 = 512;
                }
                this.Sha3BitStrength = i31;
            }
            this.sha3Digest = new SHA3Digest(this.Sha3BitStrength);
            int i619 = (i39 * i4) + (this.NB_MONOMIAL_VINEGAR - 1) + this.NB_COEFS_HFEPOLY;
            int i6110 = this.NB_WORD_GFqn;
            this.NB_UINT_HFEVPOLY = i619 * i6110;
            this.MLv_GFqn_SIZE = i514 * i6110;
            if (i7 > 34) {
                if (i7 == 17) {
                    i32 = 4;
                } else {
                    i32 = 6;
                }
                this.II = i32;
                int i6111 = this.II;
                int i6112 = 1 << i6111;
                this.POW_II = i6112;
                int i6113 = (i7 >>> i6111) + (i7 % i6112 != 0 ? 1 : i28);
                this.KP = i6113;
                this.KX = i7 - i6113;
            } else {
                if (i7 == 17) {
                    i32 = 4;
                } else {
                    i32 = 6;
                }
                this.II = i32;
                int i6114 = this.II;
                int i6115 = 1 << i6114;
                this.POW_II = i6115;
                int i6116 = (i7 >>> i6114) + (i7 % i6115 != 0 ? 1 : i28);
                this.KP = i6116;
                this.KX = i7 - i6116;
            }
            if (i23 == 0) {
                if (i3 > 256) {
                    i33 = i21;
                    if (i3 == 354) {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM384_SPECIALIZED_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                    } else if (i3 == 358) {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM384_SPECIALIZED358_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                    } else if (i3 == 402) {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM402_SPECIALIZED_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                    } else if (i46 == 6) {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM192_SPECIALIZED_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                    } else if (i46 != 9) {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM288_SPECIALIZED_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                    } else if (i46 == 12) {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM384_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                    }
                } else {
                    i33 = i21;
                    if (i3 == 354) {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM384_SPECIALIZED_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                    } else if (i3 == 358) {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM384_SPECIALIZED358_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                    } else if (i3 == 402) {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM402_SPECIALIZED_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                    } else if (i46 == 6) {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM192_SPECIALIZED_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                    } else if (i46 != 9) {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM288_SPECIALIZED_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                    } else if (i46 == 12) {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM384_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                    }
                }
                this.Buffer_NB_WORD_MUL = new Pointer(i46);
                this.Buffer_NB_WORD_GFqn = new Pointer(this.NB_WORD_GFqn);
                i34 = 31;
                this.HFEn_1rightmost = 31;
                while (true) {
                    i35 = this.HFEn_1rightmost;
                    if ((i45 >>> i35) == 0) {
                        break;
                        break;
                    }
                    this.HFEn_1rightmost = i35 - 1;
                }
                i36 = (i3 + 1) >>> 1;
                while (true) {
                    this.HFEn1h_rightmost = i34;
                    i37 = this.HFEn1h_rightmost;
                    if ((i36 >>> i37) == 0) {
                        this.HFEn1h_rightmost = i37 - 1;
                        return;
                    }
                    i34 = i37 - 1;
                }
            } else if (i3 == 544) {
                rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM544_PENTANOMIAL_GF2X(i22, i23, i21, i42, i10, i24, i25, i26, jMaskUINT);
            } else {
                rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM544_PENTANOMIAL_GF2X(i22, i23, i21, i42, i10, i24, i25, i26, jMaskUINT);
            }
            this.rem = rem192_specialized_trinomial_gf2x;
            this.Buffer_NB_WORD_MUL = new Pointer(i46);
            this.Buffer_NB_WORD_GFqn = new Pointer(this.NB_WORD_GFqn);
            i34 = 31;
            this.HFEn_1rightmost = 31;
            while (true) {
                i35 = this.HFEn_1rightmost;
                if ((i45 >>> i35) == 0) {
                    break;
                    break;
                }
                this.HFEn_1rightmost = i35 - 1;
            }
            i36 = (i3 + 1) >>> 1;
            while (true) {
                this.HFEn1h_rightmost = i34;
                i37 = this.HFEn1h_rightmost;
                if ((i36 >>> i37) == 0) {
                    this.HFEn1h_rightmost = i37 - 1;
                    return;
                }
                i34 = i37 - 1;
            }
        } else {
            i21 = 171;
        }
        i23 = 0;
        i22 = 0;
        if (i23 != 0) {
            i24 = 64 - i22;
            i25 = 64 - i23;
        } else {
            i24 = 0;
            i25 = 0;
        }
        i26 = 64 - (i21 & 63);
        i27 = i7 & 1;
        if (i27 == 0) {
            this.ENABLED_REMOVE_ODD_DEGREE = true;
            i38 = (1 << i8) + 1;
            this.HFE_odd_degree = i38;
            if (i27 == 0) {
                md.n("HFEDeg is odd, so to remove the leading term would decrease the degree.");
                throw null;
            }
            if (i38 <= i7) {
                md.n("It is useless to remove 0 term.");
                throw null;
            }
            if (i38 > 1) {
                md.n("The case where the term X^3 is removing is not implemented.");
                throw null;
            }
            this.NB_COEFS_HFEPOLY = i9 + 2 + (((i8 - 1) * i8) >>> 1) + i8;
            i28 = 0;
        } else {
            i28 = 0;
            this.ENABLED_REMOVE_ODD_DEGREE = false;
            this.NB_COEFS_HFEPOLY = i9 + 2 + ((i8 * i39) >>> 1);
        }
        if (i11 != 0) {
            i29 = 1;
        } else {
            i29 = i28;
        }
        int i5111 = i411 + i29;
        this.NB_WORD_GF2m = i5111;
        int i6117 = i513 - i5111;
        if (i11 != 0) {
            i30 = 1;
        } else {
            i30 = i28;
        }
        int i6118 = i6117 + i30;
        this.NB_WORD_GF2nvm = i6118;
        this.SIZE_SIGN_UNCOMPRESSED = ((i6 - 1) * i6118) + i513;
        if (i2 <= 128) {
            this.SIZE_DIGEST = 32;
            this.SIZE_DIGEST_UINT = 4;
            this.ShakeBitStrength = 128;
            this.Sha3BitStrength = 256;
        } else {
            if (i2 <= 192) {
                this.SIZE_DIGEST = 48;
                this.SIZE_DIGEST_UINT = 6;
                this.ShakeBitStrength = 256;
                i31 = KyberEngine.KyberPolyBytes;
            } else {
                this.SIZE_DIGEST = 64;
                this.SIZE_DIGEST_UINT = 8;
                this.ShakeBitStrength = 256;
                i31 = 512;
            }
            this.Sha3BitStrength = i31;
        }
        this.sha3Digest = new SHA3Digest(this.Sha3BitStrength);
        int i6119 = (i39 * i4) + (this.NB_MONOMIAL_VINEGAR - 1) + this.NB_COEFS_HFEPOLY;
        int i61110 = this.NB_WORD_GFqn;
        this.NB_UINT_HFEVPOLY = i6119 * i61110;
        this.MLv_GFqn_SIZE = i514 * i61110;
        if (i7 > 34) {
            if (i7 == 17) {
                i32 = 4;
            } else {
                i32 = 6;
            }
            this.II = i32;
            int i61111 = this.II;
            int i61112 = 1 << i61111;
            this.POW_II = i61112;
            int i61113 = (i7 >>> i61111) + (i7 % i61112 != 0 ? 1 : i28);
            this.KP = i61113;
            this.KX = i7 - i61113;
        } else {
            if (i7 == 17) {
                i32 = 4;
            } else {
                i32 = 6;
            }
            this.II = i32;
            int i61114 = this.II;
            int i61115 = 1 << i61114;
            this.POW_II = i61115;
            int i61116 = (i7 >>> i61114) + (i7 % i61115 != 0 ? 1 : i28);
            this.KP = i61116;
            this.KX = i7 - i61116;
        }
        if (i23 == 0) {
            if (i3 > 256) {
                i33 = i21;
                if (i3 == 354) {
                    rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM384_SPECIALIZED_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                } else if (i3 == 358) {
                    rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM384_SPECIALIZED358_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                } else if (i3 == 402) {
                    rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM402_SPECIALIZED_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                } else if (i46 == 6) {
                    rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM192_SPECIALIZED_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                } else if (i46 != 9) {
                    rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM288_SPECIALIZED_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                } else if (i46 == 12) {
                    rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM384_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                }
            } else {
                i33 = i21;
                if (i3 == 354) {
                    rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM384_SPECIALIZED_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                } else if (i3 == 358) {
                    rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM384_SPECIALIZED358_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                } else if (i3 == 402) {
                    rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM402_SPECIALIZED_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                } else if (i46 == 6) {
                    rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM192_SPECIALIZED_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                } else if (i46 != 9) {
                    rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM288_SPECIALIZED_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                } else if (i46 == 12) {
                    rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM384_TRINOMIAL_GF2X(i33, i42, i10, i26, jMaskUINT);
                }
            }
            this.Buffer_NB_WORD_MUL = new Pointer(i46);
            this.Buffer_NB_WORD_GFqn = new Pointer(this.NB_WORD_GFqn);
            i34 = 31;
            this.HFEn_1rightmost = 31;
            while (true) {
                i35 = this.HFEn_1rightmost;
                if ((i45 >>> i35) == 0) {
                    break;
                    break;
                }
                this.HFEn_1rightmost = i35 - 1;
            }
            i36 = (i3 + 1) >>> 1;
            while (true) {
                this.HFEn1h_rightmost = i34;
                i37 = this.HFEn1h_rightmost;
                if ((i36 >>> i37) == 0) {
                    this.HFEn1h_rightmost = i37 - 1;
                    return;
                }
                i34 = i37 - 1;
            }
        } else if (i3 == 544) {
            rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM544_PENTANOMIAL_GF2X(i22, i23, i21, i42, i10, i24, i25, i26, jMaskUINT);
        } else {
            rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM544_PENTANOMIAL_GF2X(i22, i23, i21, i42, i10, i24, i25, i26, jMaskUINT);
        }
        this.rem = rem192_specialized_trinomial_gf2x;
        this.Buffer_NB_WORD_MUL = new Pointer(i46);
        this.Buffer_NB_WORD_GFqn = new Pointer(this.NB_WORD_GFqn);
        i34 = 31;
        this.HFEn_1rightmost = 31;
        while (true) {
            i35 = this.HFEn_1rightmost;
            if ((i45 >>> i35) == 0) {
                break;
                break;
            }
            this.HFEn_1rightmost = i35 - 1;
        }
        i36 = (i3 + 1) >>> 1;
        while (true) {
            this.HFEn1h_rightmost = i34;
            i37 = this.HFEn1h_rightmost;
            if ((i36 >>> i37) == 0) {
                this.HFEn1h_rightmost = i37 - 1;
                return;
            }
            i34 = i37 - 1;
        }
    }

    private void CMP_AND_SWAP_CST_TIME(Pointer pointer, Pointer pointer2, Pointer pointer3) {
        long jCMP_LT_UINT = 0;
        long jORBITS_UINT = 0;
        long j2 = 0;
        for (int i2 = this.NB_WORD_GFqn - 1; i2 > 0; i2--) {
            jORBITS_UINT |= GeMSSUtils.ORBITS_UINT(pointer2.get(i2) ^ pointer.get(i2));
            j2 += jORBITS_UINT;
        }
        int i3 = 0;
        while (true) {
            int i4 = this.NB_WORD_GFqn;
            if (i3 >= i4) {
                pointer3.setRangeFromXorAndMask_xor(pointer, pointer2, -jCMP_LT_UINT, i4);
                return;
            } else {
                jCMP_LT_UINT |= (-GeMSSUtils.NORBITS_UINT(((long) i3) ^ j2)) & GeMSSUtils.CMP_LT_UINT(pointer2.get(i3), pointer.get(i3));
                i3++;
            }
        }
    }

    private void LOOPIR(Pointer pointer, Pointer pointer2, Pointer pointer3, int i2, int i3, int i4, int i5, boolean z) {
        for (int i6 = 0; i6 < i2; i6++) {
            Pointer pointer4 = new Pointer(pointer3);
            int i7 = 1;
            while (i7 <= i3) {
                LOOPJR(pointer, pointer2, pointer4, 64, i5, i7);
                i7++;
            }
            if (z) {
                LOOPJR(pointer, pointer2, pointer4, i4, i5, i7);
            }
            pointer2.move(i5);
        }
    }

    private void LOOPIR_INIT(Pointer pointer, Pointer pointer2, Pointer pointer3, Pointer pointer4, int i2, int i3) {
        while (i2 < i3) {
            pointer.setRangeClear(0, this.NB_WORD_GFqn);
            pointer2.changeIndex(pointer3);
            GeMSSEngine geMSSEngine = this;
            geMSSEngine.LOOPK_COMPLETE(pointer, pointer4, pointer2, 0, this.HFEnvq);
            pointer4.move(geMSSEngine.NB_WORD_GF2nv);
            i2++;
            this = geMSSEngine;
        }
    }

    private void LOOPIR_LOOPK_COMPLETE(Pointer pointer, Pointer pointer2, Pointer pointer3, int i2, int i3) {
        while (i2 < i3) {
            LOOPK_COMPLETE(pointer, pointer2, pointer3, 0, this.HFEnvq);
            i2++;
        }
    }

    private void LOOPJR(Pointer pointer, Pointer pointer2, Pointer pointer3, int i2, int i3, int i4) {
        int iMin = Math.min(i3, i4);
        pointer.set(0L);
        for (int i5 = 0; i5 < i2; i5++) {
            pointer.setXor(GeMSSUtils.XORBITS_UINT(pointer2.getDotProduct(0, pointer3, 0, iMin)) << i5);
            pointer3.move(i4);
        }
        pointer.moveIncremental();
    }

    private long LOOPJR_NOCST_64(Pointer pointer, PointerUnion pointerUnion, int i2, int i3, long j2, int i4, int i5) {
        while (i2 < i3) {
            if ((1 & j2) != 0) {
                pointer.setXorRange(0, pointerUnion, 0, i5);
            }
            pointerUnion.moveNextBytes(i4);
            j2 >>>= 1;
            i2++;
        }
        return j2;
    }

    private void LOOPJR_UNROLLED_64(Pointer pointer, PointerUnion pointerUnion, int i2, int i3, long j2, int i4, int i5) {
        int i6 = i2;
        long jLOOPJR_NOCST_64 = j2;
        while (i6 < i3 - 3) {
            jLOOPJR_NOCST_64 = LOOPJR_NOCST_64(pointer, pointerUnion, 0, 4, jLOOPJR_NOCST_64, i4, i5);
            i6 += 4;
        }
        LOOPJR_NOCST_64(pointer, pointerUnion, i6, i3, jLOOPJR_NOCST_64, i4, i5);
    }

    private void LOOPKR(Pointer pointer, Pointer pointer2, long j2, int i2, int i3) {
        while (i2 < i3) {
            pointer2.setXorRangeAndMaskMove(pointer, this.NB_WORD_GFqn, -(1 & j2));
            j2 >>>= 1;
            i2++;
        }
    }

    private void LOOPK_COMPLETE(Pointer pointer, Pointer pointer2, Pointer pointer3, int i2, int i3) {
        for (int i4 = i2; i4 < i3; i4++) {
            LOOPKR(pointer3, pointer, pointer2.get(i4), 0, 64);
        }
        if (this.HFEnvr != 0) {
            LOOPKR(pointer3, pointer, pointer2.get(i3), 0, this.HFEnvr);
        }
        pointer.move(this.NB_WORD_GFqn);
    }

    private int chooseRootHFE_gf2nx(Pointer pointer, SecretKeyHFE.complete_sparse_monic_gf2nx complete_sparse_monic_gf2nxVar, Pointer pointer2) {
        GeMSSEngine geMSSEngine;
        SecretKeyHFE.complete_sparse_monic_gf2nx complete_sparse_monic_gf2nxVar2;
        Pointer pointer3 = new Pointer(this.SIZE_DIGEST_UINT);
        Pointer pointer4 = new Pointer(((this.HFEDeg << 1) - 1) * this.NB_WORD_GFqn);
        Pointer pointer5 = new Pointer((this.HFEDeg + 1) * this.NB_WORD_GFqn);
        Pointer pointer6 = new Pointer(this.NB_WORD_GFqn);
        pointer6.setRangeFromXor(complete_sparse_monic_gf2nxVar.poly, pointer2, this.NB_WORD_GFqn);
        int i2 = this.HFEDeg;
        if (i2 <= 34 || (this.HFEn > 196 && i2 < 256)) {
            geMSSEngine = this;
            complete_sparse_monic_gf2nxVar2 = complete_sparse_monic_gf2nxVar;
            geMSSEngine.frobeniusMap_multisqr_HFE_gf2nx(pointer4, complete_sparse_monic_gf2nxVar2, pointer6);
        } else {
            int i3 = 2 << this.HFEDegI;
            pointer4.set(this.NB_WORD_GFqn * i3, 1L);
            geMSSEngine = this;
            geMSSEngine.divsqr_r_HFE_cstdeg_gf2nx(pointer4, i3, i3, this.HFEDeg, complete_sparse_monic_gf2nxVar, pointer6);
            complete_sparse_monic_gf2nxVar2 = complete_sparse_monic_gf2nxVar;
            geMSSEngine.for_sqr_divsqr(pointer4, geMSSEngine.HFEDegI + 1, geMSSEngine.HFEn, complete_sparse_monic_gf2nxVar2, pointer6);
        }
        pointer4.setXor(geMSSEngine.NB_WORD_GFqn, 1L);
        int index = pointer5.getIndex();
        pointer5.copyFrom(complete_sparse_monic_gf2nxVar2.poly, geMSSEngine.NB_WORD_GFqn);
        geMSSEngine.for_copy_move(pointer5, complete_sparse_monic_gf2nxVar2);
        pointer5.changeIndex(index);
        pointer5.set(geMSSEngine.HFEDeg * geMSSEngine.NB_WORD_GFqn, 1L);
        pointer5.setXorRange(pointer2, geMSSEngine.NB_WORD_GFqn);
        int iGcd_gf2nx = geMSSEngine.gcd_gf2nx(pointer5, geMSSEngine.HFEDeg, pointer4, pointer4.getD_for_not0_or_plus(geMSSEngine.NB_WORD_GFqn, geMSSEngine.HFEDeg - 1));
        if (geMSSEngine.buffer != 0) {
            pointer4.swap(pointer5);
        }
        if (pointer4.is0_gf2n(0, geMSSEngine.NB_WORD_GFqn) == 0) {
            return 0;
        }
        geMSSEngine.convMonic_gf2nx(pointer5, iGcd_gf2nx);
        Pointer pointer7 = new Pointer(geMSSEngine.NB_WORD_GFqn * iGcd_gf2nx);
        geMSSEngine.findRootsSplit_gf2nx(pointer7, pointer5, iGcd_gf2nx);
        if (iGcd_gf2nx == 1) {
            pointer.copyFrom(pointer7, geMSSEngine.NB_WORD_GFqn);
            return iGcd_gf2nx;
        }
        geMSSEngine.fast_sort_gf2n(pointer7, iGcd_gf2nx);
        GeMSSEngine geMSSEngine2 = geMSSEngine;
        geMSSEngine2.getSHA3Hash(pointer3, 0, geMSSEngine.Sha3BitStrength >>> 3, pointer2.toBytes(geMSSEngine.NB_BYTES_GFqn), 0, geMSSEngine.NB_BYTES_GFqn, new byte[geMSSEngine.Sha3BitStrength >>> 3]);
        int iRemainderUnsigned = (int) remainderUnsigned(pointer3.get(), iGcd_gf2nx);
        int i4 = geMSSEngine2.NB_WORD_GFqn;
        pointer.copyFrom(0, pointer7, iRemainderUnsigned * i4, i4);
        return iGcd_gf2nx;
    }

    private void choose_LOOPJR(Pointer pointer, PointerUnion pointerUnion, int i2, long j2, int i3, int i4) {
        int i5 = this.HFEnvr;
        if (i5 < 8) {
            LOOPJR_NOCST_64(pointer, pointerUnion, i2, i5, j2, i3, i4);
        } else {
            LOOPJR_UNROLLED_64(pointer, pointerUnion, i2, i5, j2, i3, i4);
        }
    }

    private long convMQ_last_uncompressL_gf2(Pointer pointer, PointerUnion pointerUnion) {
        GeMSSEngine geMSSEngine;
        Pointer pointer2;
        PointerUnion pointerUnion2 = new PointerUnion(pointerUnion);
        int i2 = this.HFEnv - 1;
        int i3 = i2 >>> 6;
        int i4 = i2 & 63;
        int iFor_setpk2_end_move_plus = for_setpk2_end_move_plus(pointer, pointerUnion2, i3);
        if (i4 != 0) {
            int i5 = i4 + 1;
            geMSSEngine = this;
            pointer2 = pointer;
            iFor_setpk2_end_move_plus = geMSSEngine.setPk2Value(pointer2, pointerUnion2, iFor_setpk2_end_move_plus, i3, i5);
        } else {
            geMSSEngine = this;
            pointer2 = pointer;
        }
        int i6 = geMSSEngine.HFEnv;
        int i7 = geMSSEngine.LOST_BITS;
        int i8 = i6 - i7;
        int i9 = i8 >>> 6;
        int i10 = i8 & 63;
        if (i10 != 0) {
            int i11 = iFor_setpk2_end_move_plus & 63;
            int i12 = geMSSEngine.NB_MONOMIAL_PK;
            if (i11 != 0) {
                if (((((i12 - i7) + 7) >>> 3) & 7) != 0) {
                    int i13 = (i6 - ((64 - (((i12 - i7) - geMSSEngine.HFEnvr) & 63)) & 63)) >>> 6;
                    pointer2.setRangePointerUnion_Check(pointerUnion2, i13, iFor_setpk2_end_move_plus);
                    pointer2.set(i13, pointerUnion2.getWithCheck(i13) >>> i11);
                    if (i13 < i9) {
                        int i14 = i13 + 1;
                        long withCheck = pointerUnion2.getWithCheck(i14);
                        pointer2.setXor(i13, withCheck << (64 - i11));
                        pointer2.set(i14, withCheck >>> i11);
                    } else if (i10 + i11 > 64) {
                        pointer2.setXor(i13, pointerUnion2.getWithCheck(i13 + 1) << (64 - i11));
                    }
                } else {
                    pointer2.setRangePointerUnion(pointerUnion2, i9, i11);
                    pointer2.set(i9, pointerUnion2.get(i9) >>> i11);
                    if (i10 + i11 > 64) {
                        pointer2.setXor(i9, pointerUnion2.get(i9 + 1) << (64 - i11));
                    }
                }
            } else if (((((i12 - i7) + 7) >>> 3) & 7) != 0) {
                pointer2.setRangePointerUnion(pointerUnion2, i9);
                pointer2.set(i9, pointerUnion2.getWithCheck(i9));
            } else {
                i9++;
                pointer2.setRangePointerUnion(pointerUnion2, i9);
            }
        } else if (i9 != 0) {
            int i15 = iFor_setpk2_end_move_plus & 63;
            if (i15 == 0) {
                pointer2.setRangePointerUnion(pointerUnion2, i9);
            } else if (((((geMSSEngine.NB_MONOMIAL_PK - i7) + 7) >>> 3) & 7) != 0) {
                int i16 = i9 - 1;
                pointer2.setRangePointerUnion(pointerUnion2, i16, i15);
                pointer2.set(i16, pointerUnion2.get(i16) >>> i15);
                pointer2.setXor(i16, pointerUnion2.getWithCheck(i9) << (64 - i15));
            } else {
                pointer2.setRangePointerUnion(pointerUnion2, i9, i15);
            }
        }
        return pointerUnion.get() & 1;
    }

    private long convMQ_uncompressL_gf2(Pointer pointer, PointerUnion pointerUnion) {
        PointerUnion pointerUnion2 = new PointerUnion(pointerUnion);
        int iFor_setpk2_end_move_plus = for_setpk2_end_move_plus(pointer, pointerUnion2, this.HFEnvq);
        int i2 = this.HFEnvr;
        if (i2 != 0) {
            setPk2Value(pointer, pointerUnion2, iFor_setpk2_end_move_plus, this.HFEnvq, i2 + 1);
        }
        return pointerUnion.get() & 1;
    }

    private void convMonic_gf2nx(Pointer pointer, int i2) {
        Pointer pointer2 = new Pointer(this.NB_WORD_GFqn);
        int index = pointer.getIndex();
        pointer.move(this.NB_WORD_GFqn * i2);
        inv_gf2n(pointer2, pointer, 0);
        pointer.set1_gf2n(0, this.NB_WORD_GFqn);
        while (true) {
            i2--;
            if (i2 == -1) {
                pointer.changeIndex(index);
                return;
            } else {
                pointer.move(-this.NB_WORD_GFqn);
                mul_gf2n(pointer, pointer, pointer2);
            }
        }
    }

    private void copy_for_casct(Pointer pointer, Pointer pointer2, Pointer pointer3, Pointer pointer4, Pointer pointer5, int i2, int i3) {
        pointer.copyFrom(pointer2, this.NB_WORD_GFqn);
        while (i2 > 1) {
            pointer4.changeIndex(pointer3, (i3 + i2) * this.NB_WORD_GFqn);
            CMP_AND_SWAP_CST_TIME(pointer, pointer4, pointer5);
            i2 >>>= 1;
        }
    }

    private void copy_move_matrix_move(Pointer pointer, Pointer pointer2, int i2) {
        pointer.copyFrom(pointer2, this.NB_WORD_GFqn);
        pointer2.move(this.NB_WORD_GFqn);
        pointer.setXorMatrix(pointer2, this.NB_WORD_GFqn, i2);
        pointer2.move((this.HFEv + 1) * this.NB_WORD_GFqn);
    }

    private void div_q_monic_gf2nx(Pointer pointer, int i2, Pointer pointer2, int i3) {
        Pointer pointer3 = new Pointer();
        Pointer pointer4 = new Pointer();
        while (i2 >= i3) {
            int iSearchDegree = pointer.searchDegree(i2, i3, this.NB_WORD_GFqn);
            if (iSearchDegree < i3) {
                return;
            }
            pointer3.changeIndex(pointer, this.NB_WORD_GFqn * iSearchDegree);
            int iMax = Math.max(0, (i3 << 1) - iSearchDegree);
            pointer4.changeIndex(pointer, ((iSearchDegree - i3) + iMax) * this.NB_WORD_GFqn);
            for_mul_rem_xor_move(pointer4, pointer3, pointer2, iMax, i3);
            i2 = iSearchDegree - 1;
        }
    }

    private void div_r_monic_cst_gf2nx(Pointer pointer, int i2, Pointer pointer2, int i3) {
        Pointer pointer3 = new Pointer();
        int index = pointer.getIndex();
        pointer.move(this.NB_WORD_GFqn * i2);
        while (i2 >= i3) {
            pointer3.changeIndex(pointer, (-i3) * this.NB_WORD_GFqn);
            GeMSSEngine geMSSEngine = this;
            geMSSEngine.for_mul_rem_xor_move(pointer3, pointer, pointer2, 0, i3);
            pointer.move(-geMSSEngine.NB_WORD_GFqn);
            i2--;
            this = geMSSEngine;
        }
        pointer.changeIndex(index);
    }

    private int div_r_monic_gf2nx(Pointer pointer, int i2, Pointer pointer2, int i3) {
        Pointer pointer3 = new Pointer();
        Pointer pointer4 = new Pointer();
        while (i2 >= i3) {
            i2 = pointer.searchDegree(i2, i3, this.NB_WORD_GFqn);
            if (i2 < i3) {
                break;
            }
            pointer3.changeIndex(pointer, this.NB_WORD_GFqn * i2);
            pointer4.changeIndex(pointer3, (-i3) * this.NB_WORD_GFqn);
            for_mul_rem_xor_move(pointer4, pointer3, pointer2, 0, i3);
            i2--;
        }
        if (i2 == -1) {
            i2++;
        }
        return pointer.searchDegree(i2, 1, this.NB_WORD_GFqn);
    }

    private void divsqr_r_HFE_cstdeg_gf2nx(Pointer pointer, int i2, int i3, int i4, SecretKeyHFE.complete_sparse_monic_gf2nx complete_sparse_monic_gf2nxVar, Pointer pointer2) {
        Pointer pointer3 = new Pointer(pointer, i2 * this.NB_WORD_GFqn);
        Pointer pointer4 = new Pointer();
        while (i3 >= i4) {
            pointer4.changeIndex(pointer3, (-this.HFEDeg) * this.NB_WORD_GFqn);
            mul_rem_xorrange(pointer4, pointer3, pointer2);
            for (int i5 = 1; i5 < this.NB_COEFS_HFEPOLY; i5++) {
                pointer4.move(complete_sparse_monic_gf2nxVar.L[i5]);
                mul_rem_xorrange(pointer4, pointer3, complete_sparse_monic_gf2nxVar.poly, this.NB_WORD_GFqn * i5);
            }
            pointer3.move(-this.NB_WORD_GFqn);
            i3--;
        }
    }

    private void dotProduct_gf2n(Pointer pointer, Pointer pointer2, Pointer pointer3, int i2) {
        Pointer pointer4 = new Pointer(this.NB_WORD_MUL);
        int index = pointer2.getIndex();
        int index2 = pointer3.getIndex();
        mul_move(pointer4, pointer2, pointer3);
        for_mul_xorrange_move(pointer4, pointer2, pointer3, i2 - 1);
        rem_gf2n(pointer, 0, pointer4);
        pointer2.changeIndex(index);
        pointer3.changeIndex(index2);
    }

    private void dotproduct_move_move(Pointer pointer, Pointer pointer2, Pointer pointer3, int i2) {
        dotProduct_gf2n(pointer, pointer3, pointer2, i2);
        pointer.move(this.NB_WORD_GFqn);
        pointer2.move((i2 + this.HFEv + 1) * this.NB_WORD_GFqn);
    }

    private void evalMQShybrid8_uncomp_nocst_gf2_m(Pointer pointer, Pointer pointer2, PointerUnion pointerUnion, PointerUnion pointerUnion2) {
        PointerUnion pointerUnion3 = new PointerUnion(pointerUnion2);
        evalMQSnocst8_quo_gf2(pointer, pointer2, pointerUnion);
        if (this.HFEmr < 8) {
            pointer.set(this.HFEmq, 0L);
        }
        for (int i2 = this.HFEmr - this.HFEmr8; i2 < this.HFEmr; i2++) {
            pointer.setXor(this.HFEmq, evalMQnocst_unrolled_no_simd_gf2(pointer2, pointerUnion3) << i2);
            pointerUnion3.move(this.NB_WORD_UNCOMP_EQ);
        }
    }

    private void evalMQSnocst8_quo_gf2(Pointer pointer, Pointer pointer2, PointerUnion pointerUnion) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        GeMSSEngine geMSSEngine = this;
        Pointer pointer3 = pointer;
        int i7 = geMSSEngine.HFEnv;
        int i8 = geMSSEngine.HFEm;
        if ((i8 >>> 3) != 0) {
            i8 = (i8 >>> 3) << 3;
        }
        int i9 = i8;
        int i10 = (i9 & 7) != 0 ? (i9 >>> 3) + 1 : i9 >>> 3;
        int i11 = (i10 >>> 3) + ((i10 & 7) != 0 ? 1 : 0);
        int i12 = i7;
        PointerUnion pointerUnion2 = new PointerUnion(pointerUnion);
        System.arraycopy(pointerUnion2.getArray(), 0, pointer3.getArray(), pointer3.getIndex(), i11);
        pointerUnion2.moveNextBytes(i10);
        int i13 = 0;
        while (true) {
            i2 = geMSSEngine.HFEnvq;
            if (i13 >= i2) {
                break;
            }
            int i14 = i12;
            long j2 = pointer2.get(i13);
            int i15 = 0;
            while (i15 < 64) {
                if ((j2 & 1) != 0) {
                    pointer3.setXorRange(0, pointerUnion2, 0, i11);
                    pointerUnion2.moveNextBytes(i10);
                    i4 = i11;
                    i5 = i10;
                    int i16 = i15;
                    i3 = i16;
                    geMSSEngine.LOOPJR_UNROLLED_64(pointer3, pointerUnion2, i16 + 1, 64, j2 >>> 1, i5, i4);
                    int i17 = i13 + 1;
                    while (true) {
                        i6 = geMSSEngine.HFEnvq;
                        if (i17 >= i6) {
                            break;
                        }
                        geMSSEngine.LOOPJR_UNROLLED_64(pointer, pointerUnion2, 0, 64, pointer2.get(i17), i5, i4);
                        i17++;
                    }
                    if (geMSSEngine.HFEnvr != 0) {
                        pointer3 = pointer;
                        geMSSEngine.choose_LOOPJR(pointer3, pointerUnion2, 0, pointer2.get(i6), i5, i4);
                        i5 = i5;
                    } else {
                        pointer3 = pointer;
                    }
                } else {
                    i3 = i15;
                    i4 = i11;
                    i5 = i10;
                    pointerUnion2.moveNextBytes(i14 * i5);
                }
                j2 >>>= 1;
                i15 = i3 + 1;
                i14--;
                i10 = i5;
                i11 = i4;
            }
            i13++;
            i11 = i11;
            i12 = i14;
        }
        int i18 = i11;
        int i19 = i10;
        if (geMSSEngine.HFEnvr != 0) {
            int i20 = i12;
            long j3 = pointer2.get(i2);
            int i21 = 0;
            while (i21 < geMSSEngine.HFEnvr) {
                if ((j3 & 1) != 0) {
                    pointer3.setXorRange(0, pointerUnion2, 0, i18);
                    pointerUnion2.moveNextBytes(i19);
                    int i22 = i19;
                    geMSSEngine.choose_LOOPJR(pointer3, pointerUnion2, i21 + 1, j3 >>> 1, i22, i18);
                    i19 = i22;
                } else {
                    pointerUnion2.moveNextBytes(i20 * i19);
                }
                j3 >>>= 1;
                i21++;
                i20--;
                geMSSEngine = this;
            }
        }
        int i23 = i9 & 63;
        if (i23 != 0) {
            pointer3.setAnd(i18 - 1, (1 << i23) - 1);
        }
    }

    private long evalMQnocst_unrolled_no_simd_gf2(Pointer pointer, PointerUnion pointerUnion) {
        int i2;
        PointerUnion pointerUnion2 = new PointerUnion(pointerUnion);
        long j2 = pointer.get();
        long dotProduct = 0;
        for (int i3 = 0; i3 < 64; i3++) {
            if ((1 & (j2 >>> i3)) != 0) {
                dotProduct ^= pointerUnion2.get(i3) & j2;
            }
        }
        pointerUnion2.move(64);
        int i4 = 1;
        while (true) {
            int i5 = this.NB_WORD_GF2nv;
            if (i4 >= i5) {
                return GeMSSUtils.XORBITS_UINT(dotProduct);
            }
            int i6 = i4 + 1;
            if (i5 != i6 || (i2 = this.HFEnvr) == 0) {
                i2 = 64;
            }
            long j3 = pointer.get(i4);
            for (int i7 = 0; i7 < i2; i7++) {
                if (((j3 >>> i7) & 1) != 0) {
                    dotProduct ^= pointerUnion2.getDotProduct(0, pointer, 0, i6);
                }
                pointerUnion2.move(i6);
            }
            i4 = i6;
        }
    }

    private void findRootsSplit_gf2nx(Pointer pointer, Pointer pointer2, int i2) {
        int i3;
        int iGcd_gf2nx;
        int i4;
        if (i2 == 1) {
            pointer.copyFrom(pointer2, this.NB_WORD_GFqn);
            return;
        }
        if ((this.HFEn & 1) != 0 && i2 == 2) {
            findRootsSplit2_HT_gf2nx(pointer, pointer2);
            return;
        }
        int i5 = (i2 << 1) - 1;
        Pointer pointer3 = new Pointer(this.NB_WORD_GFqn * i5);
        Pointer pointer4 = new Pointer(this.NB_WORD_GFqn * i2);
        int i6 = i2 + 1;
        Pointer pointer5 = new Pointer(this.NB_WORD_GFqn * i6);
        Pointer pointer6 = new Pointer(this.NB_WORD_GFqn);
        while (true) {
            pointer3.setRangeClear(0, this.NB_WORD_GFqn * i5);
            pointer4.setRangeClear(0, this.NB_WORD_GFqn * i2);
            do {
                pointer4.fillRandom(this.NB_WORD_GFqn, this.random, this.NB_BYTES_GFqn);
                pointer4.setAnd((this.NB_WORD_GFqn << 1) - 1, this.MASK_GF2n);
                i3 = this.NB_WORD_GFqn;
            } while (pointer4.is0_gf2n(i3, i3) != 0);
            pointer5.copyFrom(pointer2, this.NB_WORD_GFqn * i6);
            traceMap_gf2nx(pointer4, pointer3, pointer5, i2);
            iGcd_gf2nx = gcd_gf2nx(pointer5, i2, pointer4, pointer4.searchDegree(i2 - 1, 1, this.NB_WORD_GFqn));
            i4 = this.buffer;
            if (iGcd_gf2nx != 0 && iGcd_gf2nx != i2) {
                break;
            }
        }
        if (i4 != 0) {
            pointer4.swap(pointer5);
        }
        inv_gf2n(pointer6, pointer5, this.NB_WORD_GFqn * iGcd_gf2nx);
        int i7 = this.NB_WORD_GFqn;
        pointer5.set1_gf2n(iGcd_gf2nx * i7, i7);
        for_mul(pointer5, pointer6, iGcd_gf2nx - 1);
        div_q_monic_gf2nx(pointer2, i2, pointer5, iGcd_gf2nx);
        findRootsSplit_gf2nx(pointer, pointer5, iGcd_gf2nx);
        findRootsSplit_gf2nx(new Pointer(pointer, this.NB_WORD_GFqn * iGcd_gf2nx), new Pointer(pointer2, this.NB_WORD_GFqn * iGcd_gf2nx), i2 - iGcd_gf2nx);
    }

    private void for_and_xor_shift_incre_move(Pointer pointer, int i2, int i3) {
        long j2 = 0;
        for (int i4 = 0; i4 < i3; i4++) {
            pointer.setAnd(j2);
            pointer.setXor(1 << i4);
            j2 = (j2 << 1) + 1;
            pointer.move(i2);
        }
    }

    private void for_casct_move(Pointer pointer, Pointer pointer2, Pointer pointer3, int i2, int i3) {
        int i4 = this.NB_WORD_GFqn * i3;
        int i5 = 0;
        while (i5 < i2) {
            CMP_AND_SWAP_CST_TIME(pointer, pointer2, pointer3);
            pointer.move(i4);
            pointer2.move(i4);
            i5 += i3;
        }
    }

    private void for_copy_move(Pointer pointer, SecretKeyHFE.complete_sparse_monic_gf2nx complete_sparse_monic_gf2nxVar) {
        for (int i2 = 1; i2 < this.NB_COEFS_HFEPOLY; i2++) {
            pointer.move(complete_sparse_monic_gf2nxVar.L[i2]);
            Pointer pointer2 = complete_sparse_monic_gf2nxVar.poly;
            int i3 = this.NB_WORD_GFqn;
            pointer.copyFrom(0, pointer2, i2 * i3, i3);
        }
    }

    private void for_mul(Pointer pointer, Pointer pointer2, int i2) {
        Pointer pointer3 = new Pointer(pointer, this.NB_WORD_GFqn * i2);
        while (i2 != -1) {
            mul_gf2n(pointer3, pointer3, pointer2);
            pointer3.move(-this.NB_WORD_GFqn);
            i2--;
        }
    }

    private void for_mul_rem_xor_move(Pointer pointer, Pointer pointer2, Pointer pointer3, int i2, int i3) {
        int i4 = this.NB_WORD_GFqn * i2;
        while (i2 < i3) {
            mul_rem_xorrange(pointer, pointer2, pointer3, i4);
            pointer.move(this.NB_WORD_GFqn);
            i2++;
            i4 += this.NB_WORD_GFqn;
        }
    }

    private int for_setPK(byte[] bArr, byte[] bArr2, int i2, int i3, int i4) {
        bArr[i2] = (byte) (bArr2[i3] & 3);
        int pk = 2;
        for (int i5 = 2; i5 < i4; i5++) {
            int i6 = this.HFEnv;
            pk = setPK(bArr, bArr2, i5, i2, i3, pk, i6 - 1, i6 - i5);
        }
        return pk;
    }

    private int for_setpk2_end_move_plus(Pointer pointer, PointerUnion pointerUnion, int i2) {
        int i3 = 1;
        int i4 = 0;
        while (i4 < i2) {
            GeMSSEngine geMSSEngine = this;
            Pointer pointer2 = pointer;
            int pk2Value = geMSSEngine.setPk2Value(pointer2, pointerUnion, i3, i4, 64);
            geMSSEngine.setPk2_endValue(pointer2, pointerUnion, pk2Value, i4);
            i4++;
            pointerUnion.move(i4);
            pointer2.move(i4);
            i3 = pk2Value + (i4 << 6);
            this = geMSSEngine;
            pointer = pointer2;
        }
        return i3;
    }

    private void for_sqr_divsqr(Pointer pointer, int i2, int i3, SecretKeyHFE.complete_sparse_monic_gf2nx complete_sparse_monic_gf2nxVar, Pointer pointer2) {
        while (i2 < i3) {
            sqr_gf2nx(pointer, this.HFEDeg - 1);
            int i4 = this.HFEDeg;
            divsqr_r_HFE_cstdeg_gf2nx(pointer, (i4 - 1) << 1, (i4 - 1) << 1, i4, complete_sparse_monic_gf2nxVar, pointer2);
            i2++;
        }
    }

    private void frobeniusMap_multisqr_HFE_gf2nx(Pointer pointer, SecretKeyHFE.complete_sparse_monic_gf2nx complete_sparse_monic_gf2nxVar, Pointer pointer2) {
        Pointer pointer3 = new Pointer();
        Pointer pointer4 = new Pointer(this.HFEDeg * this.NB_WORD_GFqn);
        Pointer pointer5 = new Pointer();
        Pointer pointer6 = new Pointer(((this.KX * this.HFEDeg) + this.POW_II) * this.NB_WORD_GFqn);
        int i2 = (this.POW_II * this.KP) - this.HFEDeg;
        Pointer pointer7 = new Pointer(pointer6, this.NB_WORD_GFqn * i2);
        pointer7.copyFrom(pointer2, this.NB_WORD_GFqn);
        for_copy_move(pointer7, complete_sparse_monic_gf2nxVar);
        int i3 = i2 - 1;
        divsqr_r_HFE_cstdeg_gf2nx(pointer6, this.HFEDeg + i3, i3, 0, complete_sparse_monic_gf2nxVar, pointer2);
        int i4 = this.KP + 1;
        while (true) {
            int i5 = this.HFEDeg;
            if (i4 >= i5) {
                break;
            }
            pointer7.changeIndex(pointer6, i5 * this.NB_WORD_GFqn);
            pointer7.setRangeClear(0, this.POW_II * this.NB_WORD_GFqn);
            int i6 = this.POW_II;
            int i7 = this.NB_WORD_GFqn;
            pointer7.copyFrom(i6 * i7, pointer6, 0, this.HFEDeg * i7);
            pointer6.changeIndex(pointer7);
            int i8 = this.POW_II;
            divsqr_r_HFE_cstdeg_gf2nx(pointer6, (i8 - 1) + this.HFEDeg, i8 - 1, 0, complete_sparse_monic_gf2nxVar, pointer2);
            i4++;
        }
        pointer6.indexReset();
        int i9 = (1 << this.HFEDegI) - this.KP;
        int i10 = this.HFEDeg;
        int i11 = this.NB_WORD_GFqn;
        pointer.copyFrom(0, pointer6, i9 * i10 * i11, i10 * i11);
        int i12 = 0;
        while (true) {
            int i13 = this.HFEn;
            int i14 = this.HFEDegI;
            int i15 = this.II;
            if (i12 >= ((i13 - i14) - i15) / i15) {
                for_sqr_divsqr(pointer, 0, (i13 - i14) % i15, complete_sparse_monic_gf2nxVar, pointer2);
                return;
            }
            loop_sqr(pointer4, pointer);
            for (int i16 = 1; i16 < this.II; i16++) {
                loop_sqr(pointer4, pointer4);
            }
            pointer5.changeIndex(pointer4, this.KP * this.NB_WORD_GFqn);
            pointer7.changeIndex(pointer6);
            pointer3.changeIndex(pointer);
            for (int i17 = 0; i17 < this.HFEDeg; i17++) {
                mul_gf2n(pointer3, pointer7, pointer5);
                pointer3.move(this.NB_WORD_GFqn);
                pointer7.move(this.NB_WORD_GFqn);
            }
            for (int i18 = this.KP + 1; i18 < this.HFEDeg; i18++) {
                pointer5.move(this.NB_WORD_GFqn);
                pointer3.changeIndex(pointer);
                for (int i19 = 0; i19 < this.HFEDeg; i19++) {
                    mul_rem_xorrange(pointer3, pointer7, pointer5);
                    pointer3.move(this.NB_WORD_GFqn);
                    pointer7.move(this.NB_WORD_GFqn);
                }
            }
            for (int i20 = 0; i20 < this.KP; i20++) {
                int i21 = this.POW_II * i20;
                int i22 = this.NB_WORD_GFqn;
                pointer.setXorRange(i21 * i22, pointer4, i20 * i22, i22);
            }
            i12++;
        }
    }

    private int gcd_gf2nx(Pointer pointer, int i2, Pointer pointer2, int i3) {
        int iDiv_r_monic_gf2nx;
        Pointer pointer3 = new Pointer(this.NB_WORD_GFqn);
        this.buffer = 0;
        int i4 = i2;
        Pointer pointer4 = pointer;
        Pointer pointer5 = pointer2;
        while (true) {
            int i5 = i4;
            if (i3 == 0) {
                return i5;
            }
            if ((i3 << 1) > i5) {
                iDiv_r_monic_gf2nx = div_r_gf2nx(pointer4, i5, pointer5, i3);
            } else {
                inv_gf2n(pointer3, pointer5, this.NB_WORD_GFqn * i3);
                int i6 = this.NB_WORD_GFqn;
                pointer5.set1_gf2n(i3 * i6, i6);
                for_mul(pointer5, pointer3, i3 - 1);
                iDiv_r_monic_gf2nx = div_r_monic_gf2nx(pointer4, i5, pointer5, i3);
            }
            this.buffer = 1 - this.buffer;
            Pointer pointer6 = pointer4;
            pointer4 = pointer5;
            pointer5 = pointer6;
            i4 = i3;
            i3 = iDiv_r_monic_gf2nx;
        }
    }

    private void getSHA3Hash(Pointer pointer, int i2, int i3, byte[] bArr, int i4, int i5, byte[] bArr2) {
        this.sha3Digest.update(bArr, i4, i5);
        this.sha3Digest.doFinal(bArr2, 0);
        pointer.fill(i2, bArr2, 0, i3);
    }

    private void initListDifferences_gf2nx(int[] iArr) {
        iArr[1] = this.NB_WORD_GFqn;
        int arrayL = 2;
        int i2 = 0;
        while (i2 < this.HFEDegI) {
            if (!this.ENABLED_REMOVE_ODD_DEGREE || (1 << i2) + 1 <= this.HFE_odd_degree) {
                iArr[arrayL] = this.NB_WORD_GFqn;
                arrayL = setArrayL(iArr, arrayL + 1, 0, i2);
            } else {
                if (i2 != 0) {
                    iArr[arrayL] = this.NB_WORD_GFqn << 1;
                    arrayL++;
                }
                arrayL = setArrayL(iArr, arrayL, 1, i2);
            }
            i2++;
        }
        int i3 = this.HFEDegJ;
        if (i3 != 0) {
            if (!this.ENABLED_REMOVE_ODD_DEGREE || (1 << i2) + 1 <= this.HFE_odd_degree) {
                iArr[arrayL] = this.NB_WORD_GFqn;
                setArrayL(iArr, arrayL + 1, 0, i3 - 1);
            } else {
                iArr[arrayL] = this.NB_WORD_GFqn << 1;
                setArrayL(iArr, arrayL + 1, 1, i3 - 1);
            }
        }
    }

    private void inv_gf2n(Pointer pointer, Pointer pointer2, int i2) {
        int index = pointer2.getIndex();
        pointer2.move(i2);
        Pointer pointer3 = new Pointer(this.NB_WORD_GFqn);
        pointer.copyFrom(pointer2, this.NB_WORD_GFqn);
        for (int i3 = this.HFEn_1rightmost - 1; i3 != -1; i3--) {
            int i4 = (this.HFEn - 1) >>> (i3 + 1);
            sqr_gf2n(pointer3, pointer);
            for (int i5 = 1; i5 < i4; i5++) {
                sqr_gf2n(pointer3, pointer3);
            }
            mul_gf2n(pointer, pointer, pointer3);
            if ((((this.HFEn - 1) >>> i3) & 1) != 0) {
                sqr_gf2n(pointer3, pointer);
                mul_gf2n(pointer, pointer2, pointer3);
            }
        }
        sqr_gf2n(pointer, pointer);
        pointer2.changeIndex(index);
    }

    private void loop_sqr(Pointer pointer, Pointer pointer2) {
        for (int i2 = 0; i2 < this.HFEDeg; i2++) {
            int i3 = this.NB_WORD_GFqn;
            sqr_gf2n(pointer, i2 * i3, pointer2, i3 * i2);
        }
    }

    private int loop_xor_loop_move_xorandmask_move(Pointer pointer, Pointer pointer2, Pointer pointer3, Pointer pointer4, int i2, int i3, int i4, int i5, int i6) {
        int i7 = 0;
        while (i7 < i4) {
            pointer.setXor(i3, 1 << i7);
            pointer2.changeIndex(pointer);
            pointer3.changeIndex(pointer4);
            for (int i8 = i2; i8 < i5; i8++) {
                pointer2.move(i6);
                pointer3.move((i8 >>> 6) + 1);
                pointer2.setXorRangeAndMask(pointer, i3 + 1, -((pointer3.get() >>> i7) & 1));
            }
            pointer.move(i6);
            pointer4.move(i3 + 1);
            i7++;
            i2++;
        }
        return i2;
    }

    private void mulMatricesLU_gf2(Pointer pointer, Pointer pointer2, Pointer pointer3, FunctionParams functionParams) {
        int i2;
        int i3;
        int i4;
        boolean z;
        int index = pointer.getIndex();
        int i5 = AnonymousClass1.$SwitchMap$org$bouncycastle$pqc$crypto$gemss$GeMSSEngine$FunctionParams[functionParams.ordinal()];
        if (i5 == 1) {
            int i6 = this.HFEnq;
            i2 = this.HFEnr;
            i3 = i6;
            i4 = 1;
            z = true;
        } else {
            if (i5 != 2) {
                md.n("Invalid parameter for MULMATRICESLU_GF2");
                return;
            }
            int i7 = this.HFEnvq;
            i2 = this.HFEnvr;
            i3 = i7;
            i4 = 1;
            z = i2 != 0;
        }
        int i8 = i2;
        Pointer pointer4 = new Pointer(pointer2);
        int i9 = i4;
        while (true) {
            int i10 = i8;
            if (i9 > i3) {
                LOOPIR(pointer, pointer4, pointer3, i8, i3, i10, i9, z);
                pointer.changeIndex(index);
                return;
            } else {
                LOOPIR(pointer, pointer4, pointer3, 64, i3, i10, i9, z);
                i9++;
                i8 = i10;
            }
        }
    }

    private void precSignHFE(SecretKeyHFE secretKeyHFE, Pointer[] pointerArr, byte[] bArr) {
        precSignHFESeed(secretKeyHFE, bArr);
        initListDifferences_gf2nx(secretKeyHFE.F_struct.L);
        Pointer pointer = new Pointer(secretKeyHFE.F_HFEv);
        Pointer pointer2 = new Pointer(this.NB_COEFS_HFEPOLY * this.NB_WORD_GFqn);
        Pointer pointer3 = new Pointer(pointer, this.MQv_GFqn_SIZE);
        pointerArr[0] = pointer3;
        pointer.changeIndex(pointer3, this.MLv_GFqn_SIZE);
        Pointer pointer4 = new Pointer(pointer2, this.NB_WORD_GFqn * 2);
        int i2 = 0;
        while (true) {
            int i3 = 1;
            if (i2 >= this.HFEDegI) {
                break;
            }
            if ((1 << i2) + 1 <= this.HFE_odd_degree || !this.ENABLED_REMOVE_ODD_DEGREE) {
                i3 = 0;
            }
            int i4 = i2 - i3;
            pointer4.copyFrom(pointer, this.NB_WORD_GFqn * i4);
            pointer.move(this.NB_WORD_GFqn * i4);
            pointer4.move(i4 * this.NB_WORD_GFqn);
            i2++;
            pointerArr[i2] = new Pointer(pointer);
            pointer.move(this.MLv_GFqn_SIZE);
            pointer4.move(this.NB_WORD_GFqn);
        }
        int i5 = this.HFEDegJ;
        if (i5 != 0) {
            pointer4.copyFrom(pointer, (i5 - ((1 << i2) + 1 > this.HFE_odd_degree ? 1 : 0)) * this.NB_WORD_GFqn);
        }
        secretKeyHFE.F_struct.poly = new Pointer(pointer2);
    }

    private void precSignHFESeed(SecretKeyHFE secretKeyHFE, byte[] bArr) {
        int i2 = this.NB_UINT_HFEVPOLY + ((this.LTRIANGULAR_NV_SIZE + this.LTRIANGULAR_N_SIZE) << 1);
        secretKeyHFE.sk_uncomp = new Pointer(this.MATRIXnv_SIZE + i2 + this.MATRIXn_SIZE);
        SHAKEDigest sHAKEDigest = new SHAKEDigest(this.ShakeBitStrength);
        sHAKEDigest.update(bArr, 0, this.SIZE_SEED_SK);
        int i3 = i2 << 3;
        byte[] bArr2 = new byte[i3];
        sHAKEDigest.doFinal(bArr2, 0, i3);
        secretKeyHFE.sk_uncomp.fill(0, bArr2, 0, i3);
        Pointer pointer = new Pointer(secretKeyHFE.sk_uncomp, i2);
        secretKeyHFE.S = pointer;
        secretKeyHFE.T = new Pointer(pointer, this.MATRIXnv_SIZE);
        Pointer pointer2 = new Pointer(secretKeyHFE.sk_uncomp);
        secretKeyHFE.F_HFEv = pointer2;
        cleanMonicHFEv_gf2nx(pointer2);
        Pointer pointer3 = new Pointer(secretKeyHFE.sk_uncomp, this.NB_UINT_HFEVPOLY);
        Pointer pointer4 = new Pointer(pointer3, this.LTRIANGULAR_NV_SIZE);
        FunctionParams functionParams = FunctionParams.NV;
        cleanLowerMatrix(pointer3, functionParams);
        cleanLowerMatrix(pointer4, functionParams);
        mulMatricesLU_gf2(secretKeyHFE.S, pointer3, pointer4, functionParams);
        pointer3.move(this.LTRIANGULAR_NV_SIZE << 1);
        pointer4.changeIndex(pointer3, this.LTRIANGULAR_N_SIZE);
        FunctionParams functionParams2 = FunctionParams.N;
        cleanLowerMatrix(pointer3, functionParams2);
        cleanLowerMatrix(pointer4, functionParams2);
        mulMatricesLU_gf2(secretKeyHFE.T, pointer3, pointer4, functionParams2);
    }

    private void rem_gf2n(Pointer pointer, int i2, Pointer pointer2) {
        this.rem.rem_gf2n(pointer.array, i2 + pointer.getIndex(), pointer2.array);
    }

    private static long remainderUnsigned(long j2, long j3) {
        return (j2 <= 0 || j3 <= 0) ? new BigInteger(1, Pack.longToBigEndian(j2)).mod(new BigInteger(1, Pack.longToBigEndian(j3))).longValue() : j2 % j3;
    }

    private int setArrayL(int[] iArr, int i2, int i3, int i4) {
        while (i3 < i4) {
            iArr[i2] = this.NB_WORD_GFqn << i3;
            i3++;
            i2++;
        }
        return i2;
    }

    private int setPK(byte[] bArr, byte[] bArr2, int i2, int i3, int i4, int i5, int i6, int i7) {
        while (i6 >= i7) {
            int i8 = (i5 >>> 3) + i3;
            bArr[i8] = (byte) (bArr[i8] ^ (((bArr2[(i2 >>> 3) + i4] >>> (i2 & 7)) & 1) << (i5 & 7)));
            i2 += i6;
            i6--;
            i5++;
        }
        this.buffer = i2;
        return i5;
    }

    private int setPk2Value(Pointer pointer, PointerUnion pointerUnion, int i2, int i3, int i4) {
        for (int i5 = 1; i5 < i4; i5++) {
            int i6 = i2 & 63;
            if (i6 != 0) {
                pointer.setRangePointerUnion(pointerUnion, i3, i6);
                pointer.set(i3, pointerUnion.get(i3) >>> i6);
                int i7 = i6 + i5;
                if (i7 > 64) {
                    pointer.setXor(i3, pointerUnion.get(i3 + 1) << (64 - i6));
                }
                if (i7 >= 64) {
                    pointerUnion.moveIncremental();
                }
            } else {
                pointer.setRangePointerUnion(pointerUnion, i3 + 1);
            }
            pointerUnion.move(i3);
            pointer.setAnd(i3, (1 << i5) - 1);
            pointer.move(i3 + 1);
            i2 += (i3 << 6) + i5;
        }
        return i2;
    }

    private void setPk2_endValue(Pointer pointer, PointerUnion pointerUnion, int i2, int i3) {
        int i4 = i2 & 63;
        int i5 = i3 + 1;
        if (i4 != 0) {
            pointer.setRangePointerUnion(pointerUnion, i5, i4);
        } else {
            pointer.setRangePointerUnion(pointerUnion, i5);
        }
    }

    private void special_buffer(Pointer pointer, Pointer pointer2, Pointer pointer3) {
        int i2;
        int index = pointer2.getIndex();
        pointer2.move(((this.HFEv + 1) * this.NB_WORD_GFqn) << 1);
        pointer.copyFrom(pointer2, this.NB_WORD_GFqn);
        pointer.move(this.NB_WORD_GFqn);
        Pointer pointer4 = new Pointer(pointer2, (this.HFEv + 2) * this.NB_WORD_GFqn);
        int i3 = 2;
        while (i3 < this.SIZE_ROW - 1) {
            copy_move_matrix_move(pointer, pointer4, i3 - 1);
            i3++;
        }
        if (this.ENABLED_REMOVE_ODD_DEGREE) {
            while (i3 < this.SIZE_ROW - 1) {
                copy_move_matrix_move(pointer, pointer4, i3 - 2);
                i3++;
            }
        }
        pointer.set1_gf2n(0, this.NB_WORD_GFqn);
        pointer.setXorMatrix(pointer4, this.NB_WORD_GFqn, this.HFEDegJ);
        for (int i4 = 0; i4 < this.HFEn - 1; i4++) {
            mul_gf2n(pointer, pointer3, pointer2);
            pointer.move(this.NB_WORD_GFqn);
            pointer4.changeIndex(pointer2, (this.HFEv + 2) * this.NB_WORD_GFqn);
            int i5 = 2;
            while (i5 < this.HFEDegI) {
                dotproduct_move_move(pointer, pointer4, pointer3, i5);
                i5++;
            }
            if (this.ENABLED_REMOVE_ODD_DEGREE) {
                pointer3.move(this.NB_WORD_GFqn);
                while (i5 < this.SIZE_ROW - 1) {
                    dotproduct_move_move(pointer, pointer4, pointer3, i5 - 1);
                    i5++;
                }
                pointer3.move(-this.NB_WORD_GFqn);
            }
            int i6 = this.HFEDegJ;
            if (i6 == 0) {
                pointer.copyFrom(pointer3, this.NB_WORD_GFqn);
                pointer.move(this.NB_WORD_GFqn);
                i2 = this.SIZE_ROW;
            } else {
                dotProduct_gf2n(pointer, pointer3, pointer4, i6);
                pointer3.move(this.HFEDegJ * this.NB_WORD_GFqn);
                pointer.setXorRange_SelfMove(pointer3, this.NB_WORD_GFqn);
                i2 = this.SIZE_ROW - this.HFEDegJ;
            }
            pointer3.move(i2 * this.NB_WORD_GFqn);
        }
        pointer.indexReset();
        pointer2.changeIndex(index);
        pointer3.indexReset();
    }

    private void sqr_gf2n(Pointer pointer, Pointer pointer2) {
        this.mul.sqr_gf2x(this.Buffer_NB_WORD_MUL.array, pointer2.array, pointer2.cp);
        this.rem.rem_gf2n(pointer.array, pointer.cp, this.Buffer_NB_WORD_MUL.array);
    }

    private void sqr_gf2nx(Pointer pointer, int i2) {
        int i3 = this.NB_WORD_GFqn * i2;
        int index = pointer.getIndex();
        pointer.move(i3);
        Pointer pointer2 = new Pointer(pointer, i3);
        for (int i4 = 0; i4 < i2; i4++) {
            sqr_gf2n(pointer2, pointer);
            pointer.move(-this.NB_WORD_GFqn);
            pointer2.move(-this.NB_WORD_GFqn);
            pointer2.setRangeClear(0, this.NB_WORD_GFqn);
            pointer2.move(-this.NB_WORD_GFqn);
        }
        sqr_gf2n(pointer, pointer);
        pointer.changeIndex(index);
    }

    private void traceMap_gf2nx(Pointer pointer, Pointer pointer2, Pointer pointer3, int i2) {
        int i3;
        int i4 = 1;
        while (true) {
            i3 = 1 << i4;
            if (i3 >= i2) {
                break;
            }
            int i5 = this.NB_WORD_GFqn;
            sqr_gf2n(pointer, i5 << i4, pointer, i5 << (i4 - 1));
            i4++;
        }
        if (i4 < this.HFEn) {
            int i6 = this.NB_WORD_GFqn;
            sqr_gf2n(pointer2, i6 << i4, pointer, i6 << (i4 - 1));
            div_r_monic_cst_gf2nx(pointer2, i3, pointer3, i2);
            pointer.setXorRange(pointer2, this.NB_WORD_GFqn * i2);
            for (int i7 = i4 + 1; i7 < this.HFEn; i7++) {
                int i8 = i2 - 1;
                sqr_gf2nx(pointer2, i8);
                div_r_monic_cst_gf2nx(pointer2, i8 << 1, pointer3, i2);
                pointer.setXorRange(pointer2, this.NB_WORD_GFqn * i2);
            }
        }
    }

    private void uncompress_signHFE(Pointer pointer, byte[] bArr) {
        PointerUnion pointerUnion = new PointerUnion(pointer);
        int i2 = (1 << this.HFEnvr8) - 1;
        pointerUnion.fillBytes(0, bArr, 0, this.NB_BYTES_GFqnv);
        if (this.HFEnvr8 != 0) {
            pointerUnion.setAndByte(this.NB_BYTES_GFqnv - 1, i2);
        }
        int i3 = this.HFEnv;
        pointerUnion.moveNextBytes((this.NB_WORD_GF2nv << 3) + (this.HFEmq8 & 7));
        for (int i4 = 1; i4 < this.NB_ITE; i4++) {
            int i5 = i3 & 7;
            int iMin = Math.min(this.HFEDELTA + this.HFEv, (8 - i5) & 7);
            if (i5 != 0) {
                pointerUnion.setXorByte(((bArr[i3 >>> 3] & 255) >>> i5) << this.HFEmr8);
                int i6 = iMin - this.VAL_BITS_M;
                if (i6 >= 0) {
                    pointerUnion.moveNextByte();
                }
                if (i6 > 0) {
                    int i7 = i3 + this.VAL_BITS_M;
                    pointerUnion.setXorByte((bArr[i7 >>> 3] & 255) >>> (i7 & 7));
                    i3 = i7 + i6;
                } else {
                    i3 += iMin;
                }
            }
            int i8 = (this.HFEDELTA + this.HFEv) - iMin;
            int i9 = (this.HFEm + iMin) & 7;
            if (i9 != 0) {
                for (int i10 = 0; i10 < ((i8 - 1) >>> 3); i10++) {
                    int i11 = i3 >>> 3;
                    pointerUnion.setXorByte((bArr[i11] & 255) << i9);
                    pointerUnion.moveNextByte();
                    pointerUnion.setXorByte((bArr[i11] & 255) >>> (8 - i9));
                    i3 += 8;
                }
                int i12 = i3 >>> 3;
                pointerUnion.setXorByte((bArr[i12] & 255) << i9);
                pointerUnion.moveNextByte();
                int i13 = ((i8 + 7) & 7) + 1;
                int i14 = 8 - i9;
                if (i13 > i14) {
                    pointerUnion.setByte((bArr[i12] & 255) >>> i14);
                    pointerUnion.moveNextByte();
                }
                i3 += i13;
            } else {
                for (int i15 = 0; i15 < ((i8 + 7) >>> 3); i15++) {
                    pointerUnion.setByte(bArr[i3 >>> 3]);
                    i3 += 8;
                    pointerUnion.moveNextByte();
                }
                i3 -= (8 - (i8 & 7)) & 7;
            }
            if (this.HFEnvr8 != 0) {
                pointerUnion.setAndByte(-1, i2);
            }
            pointerUnion.moveNextBytes(((8 - (this.NB_BYTES_GFqnv & 7)) & 7) + (this.HFEmq8 & 7));
        }
    }

    private void vmpv_xorrange_move(Pointer pointer, Pointer pointer2, Pointer pointer3) {
        vecMatProduct(pointer, pointer2, new Pointer(pointer3, this.NB_WORD_GFqn), FunctionParams.V);
        pointer.setXorRange(pointer3, this.NB_WORD_GFqn);
        pointer3.move(this.MLv_GFqn_SIZE);
    }

    public void changeVariablesMQS64_gf2(Pointer pointer, Pointer pointer2) {
        Pointer pointer3 = new Pointer();
        int i2 = this.HFEnv;
        Pointer pointer4 = new Pointer(i2 * i2 * this.NB_WORD_GFqn);
        Pointer pointer5 = new Pointer(pointer, this.NB_WORD_GFqn);
        Pointer pointer6 = new Pointer(pointer4);
        Pointer pointer7 = new Pointer(pointer2);
        int i3 = 0;
        for (int i4 = 0; i4 < this.HFEnv; i4++) {
            pointer3.changeIndex(pointer5);
            for (int i5 = 0; i5 < this.HFEnvq; i5++) {
                for (int i6 = 0; i6 < 64; i6++) {
                    Pointer pointer8 = pointer6;
                    Pointer pointer9 = pointer3;
                    LOOPKR(pointer9, pointer8, pointer7.get() >>> i6, i6, 64);
                    pointer3 = pointer9;
                    pointer6 = pointer8;
                    LOOPK_COMPLETE(pointer6, pointer7, pointer3, 1, this.HFEnvq - i5);
                }
                pointer7.moveIncremental();
            }
            if (this.HFEnvr != 0) {
                for (int i7 = 0; i7 < this.HFEnvr; i7++) {
                    Pointer pointer10 = pointer6;
                    Pointer pointer11 = pointer3;
                    LOOPKR(pointer11, pointer10, pointer7.get() >>> i7, i7, this.HFEnvr);
                    pointer3 = pointer11;
                    pointer6 = pointer10;
                    pointer6.move(this.NB_WORD_GFqn);
                }
                pointer7.moveIncremental();
            }
        }
        pointer5.changeIndex(pointer4);
        pointer6.changeIndex(pointer, this.NB_WORD_GFqn);
        Pointer pointer12 = new Pointer(pointer2);
        int i8 = 0;
        while (i8 < this.HFEnvq) {
            int i9 = 0;
            while (i9 < 64) {
                pointer7.changeIndex(pointer12);
                Pointer pointer13 = pointer3;
                Pointer pointer14 = pointer5;
                Pointer pointer15 = pointer7;
                LOOPIR_INIT(pointer6, pointer13, pointer14, pointer15, i9, 64);
                Pointer pointer16 = pointer6;
                Pointer pointer17 = pointer14;
                pointer3 = pointer13;
                int i10 = i9;
                for (int i11 = i8 + 1; i11 < this.HFEnvq; i11++) {
                    Pointer pointer18 = pointer3;
                    Pointer pointer19 = pointer17;
                    Pointer pointer20 = pointer16;
                    LOOPIR_INIT(pointer20, pointer18, pointer19, pointer15, 0, 64);
                    pointer16 = pointer20;
                    pointer17 = pointer19;
                    pointer3 = pointer18;
                }
                int i12 = this.HFEnvr;
                if (i12 != 0) {
                    Pointer pointer21 = pointer3;
                    Pointer pointer22 = pointer17;
                    Pointer pointer23 = pointer16;
                    LOOPIR_INIT(pointer23, pointer21, pointer22, pointer15, 0, i12);
                    pointer16 = pointer23;
                    pointer17 = pointer22;
                    pointer3 = pointer21;
                }
                pointer17.changeIndex(pointer3);
                pointer12.move(this.NB_WORD_GF2nv);
                i9 = i10 + 1;
                pointer5 = pointer17;
                pointer6 = pointer16;
                pointer7 = pointer15;
            }
            i8++;
            pointer6 = pointer6;
        }
        Pointer pointer24 = pointer6;
        Pointer pointer25 = pointer5;
        Pointer pointer26 = pointer7;
        if (this.HFEnvr != 0) {
            int i13 = 0;
            while (i13 < this.HFEnvr) {
                pointer26.changeIndex(pointer12);
                pointer3.changeIndex(pointer25);
                Pointer pointer27 = pointer3;
                Pointer pointer28 = pointer25;
                Pointer pointer29 = pointer24;
                LOOPIR_INIT(pointer29, pointer27, pointer28, pointer26, i13, this.HFEnvr);
                pointer3 = pointer27;
                pointer28.changeIndex(pointer3);
                pointer12.move(this.NB_WORD_GF2nv);
                i13++;
                pointer24 = pointer29;
                pointer25 = pointer28;
            }
        }
        Pointer pointer30 = pointer25;
        Pointer pointer31 = pointer24;
        pointer30.changeIndex(pointer4);
        pointer31.changeIndex(pointer, this.NB_WORD_GFqn);
        pointer26.changeIndex(pointer2);
        for (int i14 = 0; i14 < this.HFEnvq; i14++) {
            int i15 = 0;
            while (i15 < 64) {
                pointer31.move(this.NB_WORD_GFqn);
                pointer30.move(this.HFEnv * this.NB_WORD_GFqn);
                pointer3.changeIndex(pointer30);
                int i16 = i15 + 1;
                Pointer pointer32 = pointer26;
                LOOPIR_LOOPK_COMPLETE(pointer31, pointer32, pointer3, i16, 64);
                pointer26 = pointer32;
                for (int i17 = i14 + 1; i17 < this.HFEnvq; i17++) {
                    Pointer pointer33 = pointer26;
                    LOOPIR_LOOPK_COMPLETE(pointer31, pointer33, pointer3, 0, 64);
                    pointer26 = pointer33;
                }
                int i18 = this.HFEnvr;
                if (i18 != 0) {
                    Pointer pointer34 = pointer26;
                    LOOPIR_LOOPK_COMPLETE(pointer31, pointer34, pointer3, 0, i18);
                    pointer26 = pointer34;
                }
                pointer26.move(this.NB_WORD_GF2nv);
                i15 = i16;
            }
        }
        if (this.HFEnvr != 0) {
            while (i3 < this.HFEnvr - 1) {
                pointer31.move(this.NB_WORD_GFqn);
                pointer30.move(this.HFEnv * this.NB_WORD_GFqn);
                pointer3.changeIndex(pointer30);
                i3++;
                Pointer pointer35 = pointer26;
                LOOPIR_LOOPK_COMPLETE(pointer31, pointer35, pointer3, i3, this.HFEnvr);
                pointer35.move(this.NB_WORD_GF2nv);
                pointer26 = pointer35;
            }
        }
        pointer.indexReset();
        pointer2.indexReset();
    }

    public void cleanLowerMatrix(Pointer pointer, FunctionParams functionParams) {
        int i2;
        int i3;
        int i4 = AnonymousClass1.$SwitchMap$org$bouncycastle$pqc$crypto$gemss$GeMSSEngine$FunctionParams[functionParams.ordinal()];
        int i5 = 1;
        if (i4 == 1) {
            i2 = this.HFEnq;
            i3 = this.HFEnr;
        } else if (i4 != 2) {
            md.n("");
            return;
        } else {
            i2 = this.HFEnvq;
            i3 = this.HFEnvr;
        }
        Pointer pointer2 = new Pointer(pointer);
        while (i5 <= i2) {
            for_and_xor_shift_incre_move(pointer2, i5, 64);
            pointer2.moveIncremental();
            i5++;
        }
        for_and_xor_shift_incre_move(pointer2, i5, i3);
    }

    public void cleanMonicHFEv_gf2nx(Pointer pointer) {
        int i2 = this.NB_WORD_GFqn - 1;
        while (i2 < this.NB_UINT_HFEVPOLY) {
            pointer.setAnd(i2, this.MASK_GF2n);
            i2 += this.NB_WORD_GFqn;
        }
    }

    public void compress_signHFE(byte[] bArr, Pointer pointer) {
        int i2;
        byte[] bytes = pointer.toBytes(pointer.getLength() << 3);
        System.arraycopy(bytes, 0, bArr, 0, this.NB_BYTES_GFqnv);
        int i3 = this.HFEnv;
        int i4 = (this.NB_WORD_GF2nv << 3) + (this.HFEmq8 & 7);
        for (int i5 = 1; i5 < this.NB_ITE; i5++) {
            int i6 = i3 & 7;
            int iMin = Math.min(this.HFEDELTA + this.HFEv, (8 - i6) & 7);
            if (i6 != 0) {
                int i7 = this.HFEmr8;
                if (i7 != 0) {
                    int i8 = i3 >>> 3;
                    bArr[i8] = (byte) ((((bytes[i4] & 255) >>> i7) << i6) ^ bArr[i8]);
                    int i9 = this.VAL_BITS_M;
                    int i10 = iMin - i9;
                    if (i10 >= 0) {
                        i4++;
                    }
                    if (i10 > 0) {
                        int i11 = i3 + i9;
                        int i12 = i11 >>> 3;
                        bArr[i12] = (byte) (bArr[i12] ^ ((bytes[i4] & 255) << (i11 & 7)));
                        i3 = i11 + i10;
                    }
                } else {
                    int i13 = i3 >>> 3;
                    bArr[i13] = (byte) (((bytes[i4] & 255) << i6) ^ bArr[i13]);
                }
                i3 += iMin;
            }
            int i14 = (this.HFEDELTA + this.HFEv) - iMin;
            int i15 = (this.HFEm + iMin) & 7;
            if (i15 != 0) {
                for (int i16 = 0; i16 < ((i14 - 1) >>> 3); i16++) {
                    int i17 = (bytes[i4] & 255) >>> i15;
                    i4++;
                    bArr[i3 >>> 3] = (byte) (i17 ^ ((bytes[i4] & 255) << (8 - i15)));
                    i3 += 8;
                }
                int i18 = i3 >>> 3;
                i2 = i4 + 1;
                byte b2 = (byte) ((bytes[i4] & 255) >>> i15);
                bArr[i18] = b2;
                int i19 = ((i14 + 7) & 7) + 1;
                int i20 = 8 - i15;
                if (i19 > i20) {
                    bArr[i18] = (byte) (((byte) ((bytes[i2] & 255) << i20)) ^ b2);
                    i2 = i4 + 2;
                }
                i3 += i19;
            } else {
                int i21 = 0;
                while (i21 < ((i14 + 7) >>> 3)) {
                    bArr[i3 >>> 3] = bytes[i4];
                    i3 += 8;
                    i21++;
                    i4++;
                }
                i3 -= (8 - (i14 & 7)) & 7;
                i2 = i4;
            }
            i4 = ((8 - (this.NB_BYTES_GFqnv & 7)) & 7) + (this.HFEmq8 & 7) + i2;
        }
    }

    public void convMQS_one_eq_to_hybrid_rep8_comp_gf2(byte[] bArr, PointerUnion pointerUnion, byte[] bArr2) {
        convMQ_UL_gf2(bArr, bArr2, this.HFEmr8);
        int bytesMove = 0;
        for (int i2 = 0; i2 < this.NB_MONOMIAL_PK; i2++) {
            bytesMove = pointerUnion.toBytesMove(bArr, bytesMove, this.HFEmq8);
            if (this.HFEmr8 != 0) {
                pointerUnion.moveNextByte();
            }
        }
    }

    public void convMQS_one_eq_to_hybrid_rep8_uncomp_gf2(byte[] bArr, PointerUnion pointerUnion, byte[] bArr2) {
        int i2 = this.HFEmr8 - 1;
        convMQ_UL_gf2(bArr, bArr2, i2);
        int i3 = this.ACCESS_last_equations8;
        int i4 = this.NB_BYTES_EQUATION;
        int i5 = i3 + (i2 * i4);
        int i6 = i4 * i2;
        int iFor_setPK = for_setPK(bArr, bArr2, i5, i6, this.HFEnv);
        int i7 = this.HFEnv;
        setPK(bArr, bArr2, i7, i5, i6, iFor_setPK, i7 - 1, this.LOST_BITS);
        int i8 = this.buffer;
        long j2 = 0;
        for (int i9 = this.LOST_BITS - 1; i9 >= 0; i9--) {
            j2 ^= ((long) ((bArr2[(i8 >>> 3) + i6] >>> (i8 & 7)) & 1)) << ((this.LOST_BITS - 1) - i9);
            i8 += i9;
        }
        int i10 = this.ACCESS_last_equations8 - 1;
        for (int i11 = 0; i11 < this.HFEmr8 - 1; i11++) {
            i10 += this.NB_BYTES_EQUATION;
            bArr[i10] = (byte) (bArr[i10] ^ (((byte) (j2 >>> (this.HFENr8c * i11))) << this.HFENr8));
        }
        pointerUnion.indexReset();
        int bytesMove = 0;
        for (int i12 = 0; i12 < this.NB_MONOMIAL_PK; i12++) {
            bytesMove = pointerUnion.toBytesMove(bArr, bytesMove, this.HFEmq8);
            pointerUnion.moveNextByte();
        }
    }

    public void convMQS_one_to_last_mr8_equations_gf2(byte[] bArr, PointerUnion pointerUnion) {
        int i2;
        pointerUnion.moveNextBytes(this.HFEmq8);
        PointerUnion pointerUnion2 = new PointerUnion(pointerUnion);
        int i3 = this.NB_MONOMIAL_PK >>> 3;
        int i4 = 0;
        for (int i5 = 0; i5 < this.HFEmr8; i5++) {
            pointerUnion2.changeIndex(pointerUnion);
            int i6 = 0;
            while (true) {
                if (i6 >= i3) {
                    break;
                }
                int i7 = (pointerUnion2.getByte() >>> i5) & 1;
                pointerUnion2.moveNextBytes(this.NB_BYTES_GFqm);
                for (int i8 = 1; i8 < 8; i8++) {
                    i7 ^= ((pointerUnion2.getByte() >>> i5) & 1) << i8;
                    pointerUnion2.moveNextBytes(this.NB_BYTES_GFqm);
                }
                bArr[i4] = (byte) i7;
                i6++;
                i4++;
            }
            if (this.HFENr8 != 0) {
                long withCheck = (pointerUnion2.getWithCheck() >>> i5) & 1;
                pointerUnion2.moveNextBytes(this.NB_BYTES_GFqm);
                for (i2 = 1; i2 < this.HFENr8; i2++) {
                    withCheck ^= ((pointerUnion2.getWithCheck() >>> i5) & 1) << i2;
                    pointerUnion2.moveNextBytes(this.NB_BYTES_GFqm);
                }
                bArr[i4] = (byte) withCheck;
                i4++;
            }
        }
    }

    public void convMQ_UL_gf2(byte[] bArr, byte[] bArr2, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = this.ACCESS_last_equations8;
            int i5 = this.NB_BYTES_EQUATION;
            for_setPK(bArr, bArr2, (i3 * i5) + i4, i3 * i5, this.HFEnv + 1);
        }
    }

    public int crypto_sign_open(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        long j2;
        int i2;
        int i3;
        long j3;
        PointerUnion pointerUnion = new PointerUnion(bArr);
        int i4 = 0;
        long jConvMQ_uncompressL_gf2 = 0;
        if (this.HFENr8 == 0 || this.HFEmr8 <= 1) {
            j2 = 0;
        } else {
            PointerUnion pointerUnion2 = new PointerUnion(pointerUnion);
            pointerUnion2.moveNextBytes(this.ACCESS_last_equations8 - 1);
            j2 = 0;
            for (int i5 = 0; i5 < this.HFEmr8 - 1; i5++) {
                pointerUnion2.moveNextBytes(this.NB_BYTES_EQUATION);
                j2 ^= ((((long) pointerUnion2.getByte()) & 255) >>> this.HFENr8) << (this.HFENr8c * i5);
            }
        }
        int i6 = this.HFEmr8;
        if (i6 == 0) {
            Pointer pointer = new Pointer(this.SIZE_SIGN_UNCOMPRESSED);
            Pointer pointer2 = new Pointer(new Pointer(this.NB_WORD_GF2nv));
            Pointer pointer3 = new Pointer(this.SIZE_DIGEST_UINT);
            pointer.fill(0, bArr3, 0, this.NB_BYTES_GFqnv);
            getSHA3Hash(pointer3, 0, 64, bArr2, 0, bArr2.length, new byte[64]);
            evalMQSnocst8_quo_gf2(pointer2, pointer, pointerUnion);
            return pointer2.isEqual_nocst_gf2(pointer3, this.NB_WORD_GF2m);
        }
        Pointer pointer4 = new Pointer((this.NB_WORD_UNCOMP_EQ * i6) + 1);
        PointerUnion pointerUnion3 = new PointerUnion(pointerUnion);
        while (true) {
            int i7 = this.HFEmr8 - 1;
            i2 = this.ACCESS_last_equations8;
            if (i4 >= i7) {
                break;
            }
            pointerUnion3.setByteIndex((this.NB_BYTES_EQUATION * i4) + i2);
            jConvMQ_uncompressL_gf2 ^= convMQ_uncompressL_gf2(new Pointer(pointer4, (this.NB_WORD_UNCOMP_EQ * i4) + 1), pointerUnion3) << i4;
            i4++;
        }
        pointerUnion3.setByteIndex((this.NB_BYTES_EQUATION * i4) + i2);
        long jConvMQ_last_uncompressL_gf2 = jConvMQ_uncompressL_gf2 ^ (convMQ_last_uncompressL_gf2(new Pointer(pointer4, (this.NB_WORD_UNCOMP_EQ * i4) + 1), pointerUnion3) << i4);
        if (this.HFENr8 != 0) {
            int i8 = this.HFEnvr;
            if (i8 == 0) {
                i3 = (i4 + 1) * this.NB_WORD_UNCOMP_EQ;
                j3 = j2 << (64 - this.LOST_BITS);
            } else {
                int i9 = this.LOST_BITS;
                if (i8 > i9) {
                    i3 = (i4 + 1) * this.NB_WORD_UNCOMP_EQ;
                    j3 = j2 << (i8 - i9);
                } else {
                    int i10 = this.NB_WORD_UNCOMP_EQ;
                    int i11 = i4 + 1;
                    if (i8 == i9) {
                        pointer4.set(i11 * i10, j2);
                    } else {
                        pointer4.setXor((i10 * i11) - 1, j2 << (64 - (i9 - i8)));
                        pointer4.set(i11 * this.NB_WORD_UNCOMP_EQ, j2 >>> (this.LOST_BITS - this.HFEnvr));
                    }
                }
            }
            pointer4.setXor(i3, j3);
        }
        pointer4.set(jConvMQ_last_uncompressL_gf2 << (this.HFEmr - this.HFEmr8));
        return sign_openHFE_huncomp_pk(bArr2, bArr2.length, bArr3, pointerUnion, new PointerUnion(pointer4));
    }

    public int div_r_gf2nx(Pointer pointer, int i2, Pointer pointer2, int i3) {
        Pointer pointer3 = new Pointer(this.NB_WORD_GFqn);
        Pointer pointer4 = new Pointer(this.NB_WORD_GFqn);
        Pointer pointer5 = new Pointer(pointer);
        inv_gf2n(pointer4, pointer2, this.NB_WORD_GFqn * i3);
        while (i2 >= i3) {
            i2 = pointer.searchDegree(i2, i3, this.NB_WORD_GFqn);
            if (i2 < i3) {
                break;
            }
            pointer5.changeIndex((i2 - i3) * this.NB_WORD_GFqn);
            mul_gf2n(pointer3, pointer, this.NB_WORD_GFqn * i2, pointer4);
            for_mul_rem_xor_move(pointer5, pointer3, pointer2, 0, i3);
            i2--;
        }
        return pointer.searchDegree(i2, 1, this.NB_WORD_GFqn);
    }

    public void evalHFEv_gf2nx(Pointer pointer, Pointer pointer2, Pointer pointer3) {
        int i2;
        Pointer pointer4 = new Pointer(this.NB_WORD_MUL);
        Pointer pointer5 = new Pointer(this.NB_WORD_MUL);
        int i3 = 1;
        Pointer pointer6 = new Pointer((this.HFEDegI + 1) * this.NB_WORD_GFqn);
        Pointer pointer7 = new Pointer();
        int index = pointer2.getIndex();
        Pointer pointer8 = new Pointer(this.NB_WORD_GFqv);
        Pointer pointer9 = new Pointer(pointer6, this.NB_WORD_GFqn);
        pointer6.copyFrom(pointer3, this.NB_WORD_GFqn);
        pointer6.setAnd(this.NB_WORD_GFqn - 1, this.MASK_GF2n);
        int i4 = 1;
        while (true) {
            int i5 = this.HFEDegI;
            i2 = this.NB_WORD_GFqn;
            if (i4 > i5) {
                break;
            }
            sqr_gf2n(pointer9, 0, pointer9, -i2);
            pointer9.move(this.NB_WORD_GFqn);
            i4++;
        }
        int i6 = this.NB_WORD_GFqv;
        if (i2 + i6 != this.NB_WORD_GF2nv) {
            i6--;
        }
        int i7 = i6;
        pointer8.setRangeRotate(0, pointer3, i2 - 1, i7, 64 - this.HFEnr);
        int i8 = this.NB_WORD_GFqn;
        if (this.NB_WORD_GFqv + i8 != this.NB_WORD_GF2nv) {
            pointer8.set(i7, pointer3.get((i8 - 1) + i7) >>> this.HFEnr);
        }
        evalMQSv_unrolled_gf2(pointer4, pointer8, pointer2);
        pointer2.move(this.MQv_GFqn_SIZE);
        vmpv_xorrange_move(pointer5, pointer8, pointer2);
        pointer9.changeIndex(pointer6);
        mul_xorrange(pointer4, pointer9, pointer5);
        while (true) {
            int i9 = this.HFEDegI;
            vmpv_xorrange_move(pointer5, pointer8, pointer2);
            if (i3 >= i9) {
                break;
            }
            int i10 = this.NB_WORD_GFqn;
            pointer5.setRangeClear(i10, this.NB_WORD_MMUL - i10);
            pointer7.changeIndex(pointer9);
            for_mul_xorrange_move(pointer5, pointer2, pointer7, i3);
            rem_gf2n(pointer5, 0, pointer5);
            mul_xorrange(pointer4, pointer7, pointer5);
            i3++;
        }
        pointer7.changeIndex(pointer9);
        int i11 = this.HFEDegJ;
        int i12 = this.NB_WORD_GFqn;
        if (i11 != 0) {
            pointer5.setRangeClear(i12, this.NB_WORD_MMUL - i12);
            for_mul_xorrange_move(pointer5, pointer2, pointer7, this.HFEDegJ);
            pointer5.setXorRange(pointer7, this.NB_WORD_GFqn);
            rem_gf2n(pointer5, 0, pointer5);
        } else {
            pointer5.setRangeFromXor(pointer5, pointer7, i12);
        }
        pointer9.move(this.HFEDegI * this.NB_WORD_GFqn);
        mul_xorrange(pointer4, pointer9, pointer5);
        rem_gf2n(pointer, 0, pointer4);
        pointer2.changeIndex(index);
    }

    public void evalMQSv_unrolled_gf2(Pointer pointer, Pointer pointer2, Pointer pointer3) {
        Pointer pointer4 = new Pointer(this.HFEv);
        int i2 = this.HFEv;
        int i3 = i2 >>> 6;
        int i4 = i2 & 63;
        int i5 = this.HFEn;
        int i6 = 0;
        int i7 = (i5 >>> 6) + ((i5 & 63) != 0 ? 1 : 0);
        int index = pointer3.getIndex();
        Pointer pointer5 = new Pointer(i7);
        int i8 = 0;
        int range_xi = 0;
        while (i8 < i3) {
            range_xi = pointer4.setRange_xi(pointer2.get(i8), range_xi, 64);
            i8++;
        }
        if (i4 != 0) {
            pointer4.setRange_xi(pointer2.get(i8), range_xi, i4);
        }
        pointer.copyFrom(pointer3, i7);
        pointer3.move(i7);
        while (i6 < this.HFEv) {
            pointer5.copyFrom(pointer3, i7);
            pointer3.move(i7);
            int i9 = i6 + 1;
            int i10 = i9;
            while (i10 < this.HFEv - 3) {
                pointer5.setXorRangeAndMaskMove(pointer3, i7, pointer4.get(i10));
                pointer5.setXorRangeAndMaskMove(pointer3, i7, pointer4.get(i10 + 1));
                pointer5.setXorRangeAndMaskMove(pointer3, i7, pointer4.get(i10 + 2));
                pointer5.setXorRangeAndMaskMove(pointer3, i7, pointer4.get(i10 + 3));
                i10 += 4;
            }
            while (i10 < this.HFEv) {
                pointer5.setXorRangeAndMaskMove(pointer3, i7, pointer4.get(i10));
                i10++;
            }
            pointer.setXorRangeAndMask(pointer5, i7, pointer4.get(i6));
            i6 = i9;
        }
        pointer3.changeIndex(index);
    }

    public void fast_sort_gf2n(Pointer pointer, int i2) {
        int i3;
        Pointer pointer2 = new Pointer(this.NB_WORD_GFqn);
        Pointer pointer3 = new Pointer(this.NB_WORD_GFqn);
        Pointer pointer4 = new Pointer();
        Pointer pointer5 = new Pointer();
        int i4 = i2 - 1;
        int iHighest_One = GeMSSUtils.Highest_One(i4);
        int i5 = iHighest_One;
        while (true) {
            i3 = 0;
            if (i5 <= 1) {
                break;
            }
            int i6 = i5 << 1;
            int i7 = i2 / i6;
            int iMax = Math.max(0, (i2 - (i6 * i7)) - i5);
            pointer4.changeIndex(pointer);
            pointer5.changeIndex(pointer, this.NB_WORD_GFqn * i5);
            int i8 = 0;
            while (i8 < i7) {
                GeMSSEngine geMSSEngine = this;
                geMSSEngine.for_casct_move(pointer4, pointer5, pointer3, i5, 1);
                int i9 = i5;
                pointer4.move(geMSSEngine.NB_WORD_GFqn * i9);
                pointer5.move(geMSSEngine.NB_WORD_GFqn * i9);
                i8++;
                i5 = i9;
                this = geMSSEngine;
            }
            GeMSSEngine geMSSEngine2 = this;
            int i10 = i5;
            geMSSEngine2.for_casct_move(pointer4, pointer5, pointer3, iMax, 1);
            int i11 = iHighest_One;
            while (i11 > i10) {
                int i12 = i3;
                while (i12 < i2 - i11) {
                    if ((i12 & i10) == 0) {
                        pointer5.changeIndex(pointer, (i12 + i10) * geMSSEngine2.NB_WORD_GFqn);
                        GeMSSEngine geMSSEngine3 = geMSSEngine2;
                        Pointer pointer6 = pointer5;
                        Pointer pointer7 = pointer4;
                        geMSSEngine3.copy_for_casct(pointer2, pointer6, pointer, pointer7, pointer3, i11, i12);
                        pointer4 = pointer7;
                        pointer5 = pointer6;
                        geMSSEngine2 = geMSSEngine3;
                        pointer5.copyFrom(pointer2, geMSSEngine2.NB_WORD_GFqn);
                    }
                    i12++;
                }
                i11 >>>= 1;
                i3 = i12;
            }
            i5 = i10 >>> 1;
            this = geMSSEngine2;
        }
        GeMSSEngine geMSSEngine4 = this;
        pointer4.changeIndex(pointer);
        pointer5.changeIndex(pointer, geMSSEngine4.NB_WORD_GFqn);
        geMSSEngine4.for_casct_move(pointer4, pointer5, pointer3, i4, 2);
        pointer5.changeIndex(pointer, geMSSEngine4.NB_WORD_GFqn);
        int i13 = iHighest_One;
        while (i13 > 1) {
            int i14 = i3;
            while (i14 < i2 - i13) {
                GeMSSEngine geMSSEngine5 = geMSSEngine4;
                Pointer pointer8 = pointer5;
                Pointer pointer9 = pointer4;
                Pointer pointer10 = pointer;
                geMSSEngine5.copy_for_casct(pointer2, pointer8, pointer10, pointer9, pointer3, i13, i14);
                geMSSEngine4 = geMSSEngine5;
                pointer8.copyFrom(pointer2, geMSSEngine4.NB_WORD_GFqn);
                pointer8.move(geMSSEngine4.NB_WORD_GFqn << 1);
                i14 += 2;
                pointer = pointer10;
                pointer4 = pointer9;
                pointer5 = pointer8;
            }
            i13 >>>= 1;
            pointer4 = pointer4;
            i3 = i14;
            pointer5 = pointer5;
        }
    }

    public void findRootsSplit2_HT_gf2nx(Pointer pointer, Pointer pointer2) {
        Pointer pointer3 = new Pointer(this.NB_WORD_GFqn);
        Pointer pointer4 = new Pointer(this.NB_WORD_GFqn);
        int index = pointer2.getIndex();
        sqr_gf2n(pointer3, 0, pointer2, this.NB_WORD_GFqn);
        inv_gf2n(pointer, pointer3, 0);
        mul_gf2n(pointer3, pointer2, pointer);
        findRootsSplit_x2_x_c_HT_gf2nx(pointer4, pointer3);
        pointer2.move(this.NB_WORD_GFqn);
        mul_gf2n(pointer, pointer4, pointer2);
        int i2 = this.NB_WORD_GFqn;
        pointer.setRangeFromXor(i2, pointer, 0, pointer2, 0, i2);
        pointer2.changeIndex(index);
    }

    public void findRootsSplit_x2_x_c_HT_gf2nx(Pointer pointer, Pointer pointer2) {
        Pointer pointer3 = new Pointer(this.NB_WORD_GFqn);
        int i2 = (this.HFEn + 1) >>> 1;
        pointer.copyFrom(pointer2, this.NB_WORD_GFqn);
        int i3 = 1;
        for (int i4 = this.HFEn1h_rightmost; i4 != -1; i4--) {
            int i5 = i3 << 1;
            sqr_gf2n(pointer3, pointer);
            for (int i6 = 1; i6 < i5; i6++) {
                sqr_gf2n(pointer3, pointer3);
            }
            pointer.setXorRange(pointer3, this.NB_WORD_GFqn);
            i3 = i2 >>> i4;
            if ((i3 & 1) != 0) {
                sqr_gf2n(pointer3, pointer);
                sqr_gf2n(pointer, pointer3);
                pointer.setXorRange(pointer2, this.NB_WORD_GFqn);
            }
        }
    }

    public void for_mul_xorrange_move(Pointer pointer, Pointer pointer2, Pointer pointer3, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            this.mul.mul_gf2x_xor(pointer, pointer2, pointer3);
            pointer2.move(this.NB_WORD_GFqn);
            pointer3.move(this.NB_WORD_GFqn);
        }
    }

    public void genSecretMQS_gf2_opt(Pointer pointer, Pointer pointer2) {
        int i2;
        int i3;
        int i4;
        Pointer pointer3 = new Pointer(this.NB_WORD_GFqn);
        int i5 = 1;
        Pointer pointer4 = new Pointer((this.HFEv + 1) * (this.HFEDegI + 1) * this.NB_WORD_GFqn);
        Pointer pointer5 = new Pointer(pointer2, this.MQv_GFqn_SIZE);
        for (int i6 = 0; i6 <= this.HFEDegI; i6++) {
            for (int i7 = 0; i7 <= this.HFEv; i7++) {
                int i8 = ((this.HFEDegI + 1) * i7) + i6;
                int i9 = this.NB_WORD_GFqn;
                pointer4.copyFrom(i8 * i9, pointer5, 0, i9);
                pointer5.move(this.NB_WORD_GFqn);
            }
            pointer5.move(this.NB_WORD_GFqn * i6);
        }
        Pointer pointer6 = new Pointer((this.HFEn - 1) * this.SIZE_ROW * this.NB_WORD_GFqn);
        for (int i10 = 1; i10 < this.HFEn; i10++) {
            pointer6.set(i10 >>> 6, 1 << (i10 & 63));
            int i11 = 0;
            while (true) {
                int i12 = this.HFEDegI;
                i4 = this.NB_WORD_GFqn;
                if (i11 < i12) {
                    sqr_gf2n(pointer6, i4, pointer6, 0);
                    pointer6.move(this.NB_WORD_GFqn);
                    i11++;
                }
            }
            pointer6.move(i4);
        }
        pointer6.indexReset();
        pointer.copyFrom(pointer2, this.NB_WORD_GFqn);
        pointer2.move(this.MQv_GFqn_SIZE);
        pointer.move(this.NB_WORD_GFqn);
        Pointer pointer7 = new Pointer(this.HFEDegI * this.HFEn * this.NB_WORD_GFqn);
        special_buffer(pointer7, pointer2, pointer6);
        Pointer pointer8 = new Pointer(pointer7);
        Pointer pointer9 = new Pointer(pointer7);
        pointer.copyFrom(pointer9, this.NB_WORD_GFqn);
        pointer9.move(this.NB_WORD_GFqn);
        pointer.setXorMatrix_NoMove(pointer9, this.NB_WORD_GFqn, this.HFEDegI - 1);
        pointer5.changeIndex(pointer4);
        pointer.setXorMatrix(pointer5, this.NB_WORD_GFqn, this.HFEDegI + 1);
        Pointer pointer10 = new Pointer(pointer6, this.NB_WORD_GFqn);
        int i13 = 1;
        while (i13 < this.HFEn) {
            dotProduct_gf2n(pointer, pointer10, pointer8, this.HFEDegI);
            pointer10.move(this.SIZE_ROW * this.NB_WORD_GFqn);
            pointer.setXorMatrix(pointer9, this.NB_WORD_GFqn, this.HFEDegI);
            i13++;
        }
        while (true) {
            int i14 = this.HFEnv;
            i2 = this.NB_WORD_GFqn;
            if (i13 >= i14) {
                break;
            }
            pointer.copyFrom(pointer5, i2);
            pointer5.move(this.NB_WORD_GFqn);
            pointer.setXorMatrix(pointer5, this.NB_WORD_GFqn, this.HFEDegI);
            i13++;
        }
        Pointer pointer11 = new Pointer(pointer6, i2);
        Pointer pointer12 = new Pointer(this.NB_WORD_MUL);
        int i15 = 1;
        while (i15 < this.HFEn) {
            pointer8.move(this.HFEDegI * this.NB_WORD_GFqn);
            pointer10.changeIndex(pointer11);
            pointer9.changeIndex(pointer8);
            int i16 = i5;
            this.mul.mul_gf2x(this.Buffer_NB_WORD_MUL, pointer4, new Pointer(pointer10, -this.NB_WORD_GFqn));
            int i17 = i16;
            while (true) {
                int i18 = this.HFEDegI;
                i3 = this.NB_WORD_GFqn;
                if (i17 > i18) {
                    break;
                }
                int i19 = i15;
                Pointer pointer13 = pointer9;
                pointer3.setRangeFromXor(0, pointer13, 0, pointer4, i17 * i3, i3);
                mul_xorrange(this.Buffer_NB_WORD_MUL, pointer3, pointer10);
                pointer13.move(this.NB_WORD_GFqn);
                pointer10.move(this.NB_WORD_GFqn);
                i17++;
                pointer9 = pointer13;
                pointer12 = pointer12;
                i15 = i19;
            }
            Pointer pointer14 = pointer12;
            int i20 = i15;
            Pointer pointer15 = pointer9;
            pointer10.move(i3);
            rem_gf2n(pointer, 0, this.Buffer_NB_WORD_MUL);
            pointer.move(this.NB_WORD_GFqn);
            int i21 = i20 + 1;
            int i22 = i21;
            while (i22 < this.HFEn) {
                int index = pointer10.getIndex();
                int index2 = pointer8.getIndex();
                int index3 = pointer11.getIndex();
                int index4 = pointer15.getIndex();
                mul_move(pointer14, pointer10, pointer8);
                for_mul_xorrange_move(pointer14, pointer10, pointer8, this.HFEDegI - 1);
                for_mul_xorrange_move(pointer14, pointer11, pointer15, this.HFEDegI);
                rem_gf2n(pointer, 0, pointer14);
                pointer10.changeIndex((this.NB_WORD_GFqn * this.SIZE_ROW) + index);
                pointer8.changeIndex(index2);
                pointer11.changeIndex(index3);
                pointer15.changeIndex((this.HFEDegI * this.NB_WORD_GFqn) + index4);
                pointer.move(this.NB_WORD_GFqn);
                i22++;
                pointer3 = pointer3;
            }
            Pointer pointer16 = pointer3;
            pointer5.changeIndex(pointer4);
            pointer11.move(-this.NB_WORD_GFqn);
            while (i22 < this.HFEnv) {
                pointer5.move((this.HFEDegI + 1) * this.NB_WORD_GFqn);
                dotProduct_gf2n(pointer, pointer11, pointer5, this.HFEDegI + 1);
                pointer.move(this.NB_WORD_GFqn);
                i22++;
            }
            int i23 = this.NB_WORD_GFqn;
            pointer11.move((this.SIZE_ROW * i23) + i23);
            pointer9 = pointer15;
            i5 = i16;
            pointer3 = pointer16;
            i15 = i21;
            pointer12 = pointer14;
        }
        pointer2.move(this.NB_WORD_GFqn - this.MQv_GFqn_SIZE);
        pointer.copyFrom(pointer2, (this.NB_MONOMIAL_VINEGAR - 1) * this.NB_WORD_GFqn);
        pointer.indexReset();
        pointer2.indexReset();
    }

    public int interpolateHFE_FS_ref(Pointer pointer, Pointer pointer2, Pointer pointer3) {
        int i2;
        Pointer pointer4 = new Pointer(this.NB_WORD_GF2nv);
        Pointer pointer5 = new Pointer();
        Pointer pointer6 = new Pointer();
        Pointer pointer7 = new Pointer(this.HFEnv * this.NB_WORD_GFqn);
        pointer.copyFrom(pointer2, this.NB_WORD_GFqn);
        Pointer pointer8 = new Pointer(pointer3);
        Pointer pointer9 = new Pointer(pointer7);
        for (int i3 = 0; i3 < this.HFEnv; i3++) {
            evalHFEv_gf2nx(pointer9, pointer2, pointer8);
            pointer9.move(this.NB_WORD_GFqn);
            pointer8.move(this.NB_WORD_GF2nv);
        }
        pointer8.changeIndex(pointer3);
        pointer9.changeIndex(pointer7);
        int i4 = 0;
        while (i4 < this.HFEnv) {
            pointer.move(this.NB_WORD_GFqn);
            pointer9.setXorRange(pointer2, this.NB_WORD_GFqn);
            pointer.copyFrom(pointer9, this.NB_WORD_GFqn);
            pointer5.changeIndex(pointer9);
            pointer6.changeIndex(pointer8);
            i4++;
            int i5 = i4;
            while (true) {
                int i6 = this.HFEnv;
                i2 = this.NB_WORD_GFqn;
                if (i5 < i6) {
                    pointer.move(i2);
                    pointer5.move(this.NB_WORD_GFqn);
                    pointer6.move(this.NB_WORD_GF2nv);
                    pointer4.setRangeFromXor(pointer8, pointer6, this.NB_WORD_GF2nv);
                    evalHFEv_gf2nx(pointer, pointer2, pointer4);
                    pointer.setXorRangeXor(0, pointer9, 0, pointer5, 0, this.NB_WORD_GFqn);
                    i5++;
                }
            }
            pointer9.move(i2);
            pointer8.move(this.NB_WORD_GF2nv);
            pointer = pointer;
        }
        pointer.indexReset();
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0093  */
    /* JADX WARN: Code duplicated, block: B:25:0x00a6 A[LOOP:2: B:24:0x00a4->B:25:0x00a6, LOOP_END] */
    public void invMatrixLU_gf2(Pointer pointer, Pointer pointer2, Pointer pointer3, FunctionParams functionParams) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        GeMSSEngine geMSSEngine = this;
        Pointer pointer4 = new Pointer(pointer2);
        Pointer pointer5 = new Pointer(pointer2);
        Pointer pointer6 = new Pointer(pointer3);
        int i8 = AnonymousClass1.$SwitchMap$org$bouncycastle$pqc$crypto$gemss$GeMSSEngine$FunctionParams[functionParams.ordinal()];
        if (i8 == 1) {
            pointer.setRangeClear(0, geMSSEngine.MATRIXn_SIZE);
            i2 = geMSSEngine.HFEnq;
            i3 = geMSSEngine.HFEn - 1;
            i4 = geMSSEngine.NB_WORD_GFqn;
            i5 = geMSSEngine.HFEnr;
            i6 = geMSSEngine.LTRIANGULAR_N_SIZE;
        } else {
            if (i8 != 2) {
                md.n("Invalid Input");
                return;
            }
            i2 = geMSSEngine.HFEnvq;
            i3 = geMSSEngine.HFEnv - 1;
            i4 = geMSSEngine.NB_WORD_GF2nv;
            i5 = geMSSEngine.HFEnvr;
            i6 = geMSSEngine.LTRIANGULAR_NV_SIZE;
        }
        int i9 = i2;
        int i10 = i3;
        int i11 = i4;
        int i12 = i5;
        Pointer pointer7 = new Pointer(pointer);
        Pointer pointer8 = new Pointer(pointer);
        int iLoop_xor_loop_move_xorandmask_move = 0;
        int i13 = 0;
        while (i13 < i9) {
            iLoop_xor_loop_move_xorandmask_move = geMSSEngine.loop_xor_loop_move_xorandmask_move(pointer7, pointer8, pointer4, pointer5, iLoop_xor_loop_move_xorandmask_move, i13, 64, i10, i11);
            pointer5.moveIncremental();
            i13++;
            geMSSEngine = this;
            i6 = i6;
        }
        int i14 = i6;
        if (i12 <= 1) {
            if (i12 == 1) {
                pointer7.set(i13, 1L);
            }
            pointer6.move(i14);
            while (i10 > 0) {
                pointer6.move((-1) - (i10 >>> 6));
                pointer7.move(-i11);
                pointer8.changeIndex(pointer);
                for (i7 = 0; i7 < i10; i7++) {
                    pointer8.setXorRangeAndMask(pointer7, i11, -((pointer6.get(i7 >>> 6) >>> (i7 & 63)) & 1));
                    pointer8.move(i11);
                }
                i10--;
            }
        }
        int i15 = i12 - 1;
        loop_xor_loop_move_xorandmask_move(pointer7, pointer8, pointer4, pointer5, iLoop_xor_loop_move_xorandmask_move, i13, i15, i10, i11);
        pointer7.setXor(i13, 1 << i15);
        pointer7.move(i11);
        pointer6.move(i14);
        while (i10 > 0) {
            pointer6.move((-1) - (i10 >>> 6));
            pointer7.move(-i11);
            pointer8.changeIndex(pointer);
            while (i7 < i10) {
                pointer8.setXorRangeAndMask(pointer7, i11, -((pointer6.get(i7 >>> 6) >>> (i7 & 63)) & 1));
                pointer8.move(i11);
            }
            i10--;
        }
    }

    public void mul_gf2n(Pointer pointer, Pointer pointer2, int i2, Pointer pointer3) {
        int index = pointer2.getIndex();
        pointer2.move(i2);
        this.mul.mul_gf2x(this.Buffer_NB_WORD_MUL, pointer2, pointer3);
        pointer2.changeIndex(index);
        rem_gf2n(pointer, 0, this.Buffer_NB_WORD_MUL);
    }

    public void mul_move(Pointer pointer, Pointer pointer2, Pointer pointer3) {
        this.mul.mul_gf2x(pointer, pointer2, pointer3);
        pointer2.move(this.NB_WORD_GFqn);
        pointer3.move(this.NB_WORD_GFqn);
    }

    public void mul_rem_xorrange(Pointer pointer, Pointer pointer2, Pointer pointer3, int i2) {
        int index = pointer3.getIndex();
        pointer3.move(i2);
        this.mul.mul_gf2x(this.Buffer_NB_WORD_MUL, pointer2, pointer3);
        this.rem.rem_gf2n_xor(pointer.array, pointer.cp, this.Buffer_NB_WORD_MUL.array);
        pointer3.changeIndex(index);
    }

    public void mul_xorrange(Pointer pointer, Pointer pointer2, Pointer pointer3) {
        this.mul.mul_gf2x_xor(pointer, pointer2, pointer3);
    }

    public void signHFE_FeistelPatarin(SecureRandom secureRandom, byte[] bArr, byte[] bArr2, int i2, int i3, byte[] bArr3) {
        int i4;
        long j2;
        PointerUnion pointerUnion;
        Pointer pointer;
        Pointer pointer2;
        SecureRandom secureRandom2 = secureRandom;
        this.random = secureRandom2;
        Pointer pointer3 = new Pointer(this.NB_WORD_GFqn);
        Pointer pointer4 = new Pointer(this.SIZE_DIGEST_UINT);
        Pointer pointer5 = new Pointer(new Pointer(this.SIZE_DIGEST_UINT));
        int i5 = this.HFEv;
        int i6 = i5 & 7;
        int i7 = (i5 >>> 3) + (i6 != 0 ? 1 : 0);
        long jMaskUINT = GeMSSUtils.maskUINT(this.HFEvr);
        SecretKeyHFE secretKeyHFE = new SecretKeyHFE(this);
        Pointer pointer6 = new Pointer(this.NB_WORD_GFqv);
        Pointer[] pointerArr = new Pointer[this.HFEDegI + 1];
        precSignHFE(secretKeyHFE, pointerArr, bArr3);
        Pointer pointer7 = new Pointer(secretKeyHFE.F_struct.poly);
        Pointer pointer8 = new Pointer(pointer4);
        int i8 = this.Sha3BitStrength >>> 3;
        byte[] bArr4 = new byte[i8];
        Pointer pointer9 = pointer5;
        Pointer pointer10 = pointer8;
        Pointer pointer11 = pointer7;
        long j3 = jMaskUINT;
        getSHA3Hash(pointer10, 0, i8, bArr2, i2, i3, bArr4);
        Pointer pointer12 = new Pointer(this.SIZE_SIGN_UNCOMPRESSED);
        Pointer pointer13 = new Pointer(this.NB_WORD_GF2nv);
        PointerUnion pointerUnion2 = new PointerUnion(pointer13);
        long j4 = 0;
        int i9 = 1;
        while (true) {
            i4 = this.NB_ITE;
            if (i9 > i4) {
                break;
            }
            pointer13.setRangeFromXor(pointer12, pointer10, this.NB_WORD_GF2m);
            if (this.HFEmr8 != 0) {
                pointer13.setAnd(this.NB_WORD_GF2m - 1, this.MASK_GF2m);
                j4 = pointerUnion2.getByte(this.HFEmq8);
            }
            long j5 = j4;
            while (true) {
                if (this.HFEmr8 != 0) {
                    pointerUnion2.fillRandomBytes(this.HFEmq8, secureRandom2, (this.NB_BYTES_GFqn - this.NB_BYTES_GFqm) + 1);
                    pointerUnion2.setAndThenXorByte(this.HFEmq8, -(1 << this.HFEmr8), j5);
                } else {
                    int i10 = this.NB_BYTES_GFqm;
                    pointerUnion2.fillRandomBytes(i10, secureRandom2, this.NB_BYTES_GFqn - i10);
                }
                if ((this.HFEn & 7) != 0) {
                    pointer13.setAnd(this.NB_WORD_GFqn - 1, this.MASK_GF2n);
                }
                vecMatProduct(pointer3, pointer13, secretKeyHFE.T, FunctionParams.N);
                pointer6.fillRandom(0, secureRandom2, i7);
                if (i6 != 0) {
                    j2 = j3;
                    pointer6.setAnd(this.NB_WORD_GFqv - 1, j2);
                } else {
                    j2 = j3;
                }
                Pointer pointer14 = pointer11;
                evalMQSv_unrolled_gf2(pointer14, pointer6, secretKeyHFE.F_HFEv);
                pointerUnion = pointerUnion2;
                int i11 = 0;
                while (i11 <= this.HFEDegI) {
                    int i12 = i11;
                    Pointer pointer15 = pointer14;
                    vecMatProduct(this.Buffer_NB_WORD_GFqn, pointer6, new Pointer(pointerArr[i12], this.NB_WORD_GFqn), FunctionParams.V);
                    int i13 = this.NB_WORD_GFqn;
                    i11 = i12 + 1;
                    pointer15.setRangeFromXor((((i12 * i11) >>> 1) + 1) * i13, pointerArr[i12], 0, this.Buffer_NB_WORD_GFqn, 0, i13);
                    pointer14 = pointer15;
                }
                pointer11 = pointer14;
                if (chooseRootHFE_gf2nx(pointer13, secretKeyHFE.F_struct, pointer3) != 0) {
                    break;
                }
                secureRandom2 = secureRandom;
                j5 = j5;
                pointerUnion2 = pointerUnion;
                j3 = j2;
            }
            pointer13.setXor(this.NB_WORD_GFqn - 1, pointer6.get() << this.HFEnr);
            Pointer pointer16 = pointer13;
            pointer16.setRangeRotate(this.NB_WORD_GFqn, pointer6, 0, this.NB_WORD_GFqv - 1, 64 - this.HFEnr);
            int i14 = this.NB_WORD_GFqn;
            int i15 = this.NB_WORD_GFqv;
            if (i14 + i15 == this.NB_WORD_GF2nv) {
                pointer16.set((i14 + i15) - 1, pointer6.get(i15 - 1) >>> (64 - this.HFEnr));
            }
            vecMatProduct(pointer12, pointer16, secretKeyHFE.S, FunctionParams.NV);
            int i16 = this.NB_ITE;
            if (i9 != i16) {
                int i17 = this.NB_WORD_GF2nv;
                int i18 = this.NB_WORD_GF2nvm;
                int i19 = (((i16 - 1) - i9) * i18) + i17;
                pointer12.copyFrom(i19, pointer12, i17 - i18, i18);
                if (this.HFEmr != 0) {
                    pointer12.setAnd(i19, ~this.MASK_GF2m);
                }
                byte[] bytes = pointer10.toBytes(this.SIZE_DIGEST);
                pointer = pointer10;
                pointer2 = pointer9;
                getSHA3Hash(pointer2, 0, this.SIZE_DIGEST, bytes, 0, bytes.length, bytes);
                pointer2.swap(pointer);
            } else {
                pointer = pointer10;
                pointer2 = pointer9;
            }
            i9++;
            j4 = j5;
            pointer9 = pointer2;
            pointer10 = pointer;
            pointer12 = pointer12;
            pointer13 = pointer16;
            pointerUnion2 = pointerUnion;
            secureRandom2 = secureRandom;
            j3 = j2;
            i6 = i6;
        }
        Pointer pointer17 = pointer12;
        if (i4 == 1) {
            System.arraycopy(pointer17.toBytes(pointer17.getLength() << 3), 0, bArr, 0, this.NB_BYTES_GFqnv);
        } else {
            compress_signHFE(bArr, pointer17);
        }
    }

    public int sign_openHFE_huncomp_pk(byte[] bArr, int i2, byte[] bArr2, PointerUnion pointerUnion, PointerUnion pointerUnion2) {
        int i3;
        Pointer pointer = new Pointer(this.SIZE_SIGN_UNCOMPRESSED);
        Pointer pointer2 = new Pointer(this.NB_WORD_GF2nv);
        Pointer pointer3 = new Pointer(this.NB_WORD_GF2nv);
        Pointer pointer4 = new Pointer(pointer2);
        Pointer pointer5 = new Pointer(pointer3);
        byte[] bArr3 = new byte[64];
        Pointer pointer6 = new Pointer(this.NB_ITE * this.SIZE_DIGEST_UINT);
        long j2 = pointerUnion2.get();
        pointerUnion2.move(1);
        uncompress_signHFE(pointer, bArr2);
        getSHA3Hash(pointer6, 0, 64, bArr, 0, i2, bArr3);
        int i4 = 1;
        while (true) {
            int i5 = this.NB_ITE;
            i3 = this.SIZE_DIGEST_UINT;
            if (i4 >= i5) {
                break;
            }
            int i6 = i4;
            getSHA3Hash(pointer6, i3 * i4, 64, bArr3, 0, this.SIZE_DIGEST, bArr3);
            pointer6.setAnd((((i6 - 1) * this.SIZE_DIGEST_UINT) + this.NB_WORD_GF2m) - 1, this.MASK_GF2m);
            i4 = i6 + 1;
        }
        pointer6.setAnd((((i4 - 1) * i3) + this.NB_WORD_GF2m) - 1, this.MASK_GF2m);
        evalMQShybrid8_uncomp_nocst_gf2_m(pointer4, pointer, pointerUnion, pointerUnion2);
        pointer4.setXor(this.HFEmq, j2);
        for (int i7 = this.NB_ITE - 1; i7 > 0; i7--) {
            pointer4.setXorRange(pointer6, this.SIZE_DIGEST_UINT * i7, this.NB_WORD_GF2m);
            int i8 = (((this.NB_ITE - 1) - i7) * this.NB_WORD_GF2nvm) + this.NB_WORD_GF2nv;
            pointer4.setAnd(this.NB_WORD_GF2m - 1, this.MASK_GF2m);
            pointer4.setXor(this.NB_WORD_GF2m - 1, pointer.get(i8));
            int i9 = this.NB_WORD_GF2nvm;
            if (i9 != 1) {
                pointer4.copyFrom(this.NB_WORD_GF2m, pointer, i8 + 1, i9 - 1);
            }
            evalMQShybrid8_uncomp_nocst_gf2_m(pointer5, pointer4, pointerUnion, pointerUnion2);
            pointer5.setXor(this.HFEmq, j2);
            pointer5.swap(pointer4);
        }
        return pointer4.isEqual_nocst_gf2(pointer6, this.NB_WORD_GF2m);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0057  */
    /* JADX WARN: Code duplicated, block: B:18:0x0061 A[LOOP:1: B:16:0x005d->B:18:0x0061, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:22:0x007f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:23:0x0081 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:24:0x0083 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:26:0x0086  */
    /* JADX WARN: Code duplicated, block: B:28:0x008a  */
    /* JADX WARN: Code duplicated, block: B:31:0x008f  */
    /* JADX WARN: Code duplicated, block: B:33:0x0099  */
    /* JADX WARN: Code duplicated, block: B:36:0x009e  */
    /* JADX WARN: Code duplicated, block: B:37:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:39:0x00b2 A[LOOP:2: B:38:0x00b0->B:39:0x00b2, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:52:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:? A[RETURN, SYNTHETIC] */
    public void vecMatProduct(Pointer pointer, Pointer pointer2, Pointer pointer3, FunctionParams functionParams) {
        int i2;
        int i3;
        int i4;
        int i5;
        long j2;
        int i6;
        int i7;
        long j3;
        Pointer pointer4 = new Pointer(pointer3);
        int i8 = AnonymousClass1.$SwitchMap$org$bouncycastle$pqc$crypto$gemss$GeMSSEngine$FunctionParams[functionParams.ordinal()];
        int i9 = 0;
        if (i8 == 1) {
            pointer.setRangeClear(0, this.NB_WORD_GFqn);
            i2 = this.NB_WORD_GFqn;
            i3 = this.HFEnq;
        } else {
            if (i8 != 2) {
                if (i8 == 3) {
                    pointer.setRangeClear(0, this.NB_WORD_GFqn);
                    i2 = this.NB_WORD_GFqn;
                    i3 = this.HFEvq;
                } else {
                    if (i8 != 4) {
                        md.n("Invalid input for vecMatProduct");
                        return;
                    }
                    pointer.setRangeClear(0, this.NB_WORD_GF2m);
                    i3 = this.HFEnq;
                    i2 = this.NB_WORD_GF2m;
                    i4 = this.NB_WORD_GFqn;
                }
                while (i9 < i3) {
                    j3 = pointer2.get(i9);
                    while (i9 < 64) {
                        pointer.setXorRangeAndMask(pointer4, i2, -(j3 & 1));
                        pointer4.move(i4);
                        j3 >>>= 1;
                        i9++;
                    }
                    i9++;
                    i9 = 0;
                }
                i5 = AnonymousClass1.$SwitchMap$org$bouncycastle$pqc$crypto$gemss$GeMSSEngine$FunctionParams[functionParams.ordinal()];
                if (i5 == 1) {
                    j2 = pointer2.get(this.HFEnq);
                    i6 = this.HFEnr;
                } else if (i5 != 2) {
                    if (this.HFEnvr == 0) {
                        return;
                    }
                    j2 = pointer2.get(this.HFEnvq);
                    i6 = this.HFEnvr;
                } else if (i5 != 3) {
                    if (i5 != 4) {
                        md.n("Invalid input for vecMatProduct");
                        return;
                    }
                    j2 = pointer2.get(this.HFEnq);
                    i6 = this.HFEnr;
                } else {
                    if (this.HFEvr == 0) {
                        return;
                    }
                    j2 = pointer2.get(this.HFEvq);
                    i6 = this.HFEvr;
                }
                for (i7 = 0; i7 < i6; i7++) {
                    pointer.setXorRangeAndMask(pointer4, i2, -(j2 & 1));
                    pointer4.move(i4);
                    j2 >>>= 1;
                }
                if (functionParams == FunctionParams.M || this.HFEmr == 0) {
                }
                pointer.setAnd(this.NB_WORD_GF2m - 1, this.MASK_GF2m);
                return;
            }
            pointer.setRangeClear(0, this.NB_WORD_GF2nv);
            i3 = this.HFEnvq;
            i2 = this.NB_WORD_GF2nv;
        }
        i4 = i2;
        while (i9 < i3) {
            j3 = pointer2.get(i9);
            while (i9 < 64) {
                pointer.setXorRangeAndMask(pointer4, i2, -(j3 & 1));
                pointer4.move(i4);
                j3 >>>= 1;
                i9++;
            }
            i9++;
            i9 = 0;
        }
        i5 = AnonymousClass1.$SwitchMap$org$bouncycastle$pqc$crypto$gemss$GeMSSEngine$FunctionParams[functionParams.ordinal()];
        if (i5 == 1) {
            j2 = pointer2.get(this.HFEnq);
            i6 = this.HFEnr;
        } else if (i5 != 2) {
            if (this.HFEnvr == 0) {
                return;
            }
            j2 = pointer2.get(this.HFEnvq);
            i6 = this.HFEnvr;
        } else if (i5 != 3) {
            if (i5 != 4) {
                md.n("Invalid input for vecMatProduct");
                return;
            }
            j2 = pointer2.get(this.HFEnq);
            i6 = this.HFEnr;
        } else {
            if (this.HFEvr == 0) {
                return;
            }
            j2 = pointer2.get(this.HFEvq);
            i6 = this.HFEvr;
        }
        while (i7 < i6) {
            pointer.setXorRangeAndMask(pointer4, i2, -(j2 & 1));
            pointer4.move(i4);
            j2 >>>= 1;
        }
        if (functionParams == FunctionParams.M) {
        }
    }

    public void mul_gf2n(Pointer pointer, Pointer pointer2, Pointer pointer3) {
        this.mul.mul_gf2x(this.Buffer_NB_WORD_MUL, pointer2, pointer3);
        rem_gf2n(pointer, 0, this.Buffer_NB_WORD_MUL);
    }

    private void sqr_gf2n(Pointer pointer, int i2, Pointer pointer2, int i3) {
        this.mul.sqr_gf2x(this.Buffer_NB_WORD_MUL.array, pointer2.array, i3 + pointer2.cp);
        rem_gf2n(pointer, i2, this.Buffer_NB_WORD_MUL);
    }

    public void mul_rem_xorrange(Pointer pointer, Pointer pointer2, Pointer pointer3) {
        this.mul.mul_gf2x(this.Buffer_NB_WORD_MUL, pointer2, pointer3);
        this.rem.rem_gf2n_xor(pointer.array, pointer.cp, this.Buffer_NB_WORD_MUL.array);
    }
}
