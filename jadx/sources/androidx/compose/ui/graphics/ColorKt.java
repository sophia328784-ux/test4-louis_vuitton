package androidx.compose.ui.graphics;

import androidx.compose.ui.graphics.colorspace.ColorModel;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.graphics.colorspace.Oklab;
import androidx.compose.ui.graphics.colorspace.Rgb;
import androidx.compose.ui.util.MathHelpersKt;
import com.batch.android.q0.b;
import defpackage.jt0;
import kotlin.Metadata;
import kotlin.ULong;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-graphics"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ColorKt {
    /* JADX WARN: Code duplicated, block: B:101:0x0149  */
    /* JADX WARN: Code duplicated, block: B:106:0x0160  */
    /* JADX WARN: Code duplicated, block: B:110:0x0167  */
    /* JADX WARN: Code duplicated, block: B:113:0x0174 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:114:0x0176  */
    /* JADX WARN: Code duplicated, block: B:116:0x017b  */
    /* JADX WARN: Code duplicated, block: B:118:0x017f  */
    /* JADX WARN: Code duplicated, block: B:119:0x0183 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:120:0x0185 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:121:0x0187  */
    /* JADX WARN: Code duplicated, block: B:123:0x0190  */
    /* JADX WARN: Code duplicated, block: B:125:0x0195  */
    /* JADX WARN: Code duplicated, block: B:126:0x0197  */
    /* JADX WARN: Code duplicated, block: B:128:0x019d  */
    /* JADX WARN: Code duplicated, block: B:130:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:135:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:139:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:76:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:80:0x0105  */
    /* JADX WARN: Code duplicated, block: B:83:0x0113 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:84:0x0115  */
    /* JADX WARN: Code duplicated, block: B:85:0x0118  */
    /* JADX WARN: Code duplicated, block: B:87:0x011b  */
    /* JADX WARN: Code duplicated, block: B:89:0x011f  */
    /* JADX WARN: Code duplicated, block: B:90:0x0123 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:91:0x0125 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:92:0x0127  */
    /* JADX WARN: Code duplicated, block: B:94:0x0130  */
    /* JADX WARN: Code duplicated, block: B:96:0x0136  */
    /* JADX WARN: Code duplicated, block: B:97:0x0139  */
    /* JADX WARN: Code duplicated, block: B:99:0x013f  */
    public static final long a(float f2, float f3, float f4, float f5, ColorSpace colorSpace) {
        int i2;
        int i3;
        int i4;
        float fC;
        float fB;
        int iFloatToRawIntBits;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        float fC2;
        float fB2;
        int iFloatToRawIntBits2;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        boolean zD = colorSpace.getQ();
        float f6 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if (zD) {
            float f7 = f5 < Call.Parameters.DEFAULT_CAMERA_ZOOM ? 0.0f : f5;
            if (f7 > 1.0f) {
                f7 = 1.0f;
            }
            int i21 = ((int) ((f7 * 255.0f) + 0.5f)) << 24;
            float f8 = f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM ? 0.0f : f2;
            if (f8 > 1.0f) {
                f8 = 1.0f;
            }
            int i22 = i21 | (((int) ((f8 * 255.0f) + 0.5f)) << 16);
            float f9 = f3 < Call.Parameters.DEFAULT_CAMERA_ZOOM ? 0.0f : f3;
            if (f9 > 1.0f) {
                f9 = 1.0f;
            }
            int i23 = i22 | (((int) ((f9 * 255.0f) + 0.5f)) << 8);
            if (f4 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                f6 = f4;
            }
            float f10 = f6 <= 1.0f ? f6 : 1.0f;
            ULong.Companion companion = ULong.INSTANCE;
            long j2 = ((long) (i23 | ((int) ((f10 * 255.0f) + 0.5f)))) << 32;
            Color.Companion companion2 = Color.f8866b;
            return j2;
        }
        long j3 = colorSpace.f8953b;
        ColorModel.Companion companion3 = ColorModel.f8948a;
        if (((int) (j3 >> 32)) != 3) {
            InlineClassHelperKt.a("Color only works with ColorSpaces with 3 components");
        }
        int i24 = colorSpace.f8954c;
        if (i24 == -1) {
            InlineClassHelperKt.a("Unknown color space, please use a color space in ColorSpaces");
        }
        int i25 = 0;
        float fC3 = colorSpace.c(0);
        float fB3 = colorSpace.b(0);
        if (f2 >= fC3) {
            fC3 = f2;
        }
        if (fC3 <= fB3) {
            fB3 = fC3;
        }
        int iFloatToRawIntBits3 = Float.floatToRawIntBits(fB3);
        int i26 = iFloatToRawIntBits3 >>> 31;
        int i27 = (iFloatToRawIntBits3 >>> 23) & 255;
        int i28 = iFloatToRawIntBits3 & 8388607;
        if (i27 == 255) {
            i3 = i28 != 0 ? 512 : 0;
            i2 = 31;
        } else {
            i2 = i27 - 112;
            if (i2 >= 31) {
                i3 = 0;
                i2 = 49;
            } else {
                if (i2 > 0) {
                    int i29 = i28 >> 13;
                    if ((iFloatToRawIntBits3 & 4096) != 0) {
                        i4 = (((i2 << 10) | i29) + 1) | (i26 << 15);
                    } else {
                        i3 = i29;
                    }
                    short s = (short) i4;
                    fC = colorSpace.c(1);
                    fB = colorSpace.b(1);
                    if (f3 >= fC) {
                        fC = f3;
                    }
                    if (fC <= fB) {
                        fB = fC;
                    }
                    iFloatToRawIntBits = Float.floatToRawIntBits(fB);
                    i5 = iFloatToRawIntBits >>> 31;
                    i6 = (iFloatToRawIntBits >>> 23) & 255;
                    i7 = iFloatToRawIntBits & 8388607;
                    if (i6 == 255) {
                        if (i7 != 0) {
                            i10 = 512;
                        } else {
                            i10 = 0;
                        }
                        i8 = 31;
                    } else {
                        i8 = i6 - 112;
                        if (i8 >= 31) {
                            i10 = 0;
                            i8 = 49;
                        } else {
                            if (i8 <= 0) {
                                i9 = i7 >> 13;
                                if ((iFloatToRawIntBits & 4096) != 0) {
                                    i11 = (((i8 << 10) | i9) + 1) | (i5 << 15);
                                } else {
                                    i10 = i9;
                                }
                                short s2 = (short) i11;
                                fC2 = colorSpace.c(2);
                                fB2 = colorSpace.b(2);
                                if (f4 >= fC2) {
                                    fC2 = f4;
                                }
                                if (fC2 <= fB2) {
                                    fB2 = fC2;
                                }
                                iFloatToRawIntBits2 = Float.floatToRawIntBits(fB2);
                                i13 = iFloatToRawIntBits2 >>> 31;
                                i14 = (iFloatToRawIntBits2 >>> 23) & 255;
                                i15 = 8388607 & iFloatToRawIntBits2;
                                if (i14 == 255) {
                                    i18 = i15 != 0 ? 512 : 0;
                                    i25 = 31;
                                } else {
                                    i16 = i14 - 112;
                                    if (i16 >= 31) {
                                        i18 = 0;
                                        i25 = 49;
                                    } else {
                                        if (i16 <= 0) {
                                            i17 = i15 >> 13;
                                            if ((iFloatToRawIntBits2 & 4096) != 0) {
                                                i19 = (((i16 << 10) | i17) + 1) | (i13 << 15);
                                            } else {
                                                i18 = i17;
                                                i25 = i16;
                                            }
                                            short s3 = (short) i19;
                                            if (f5 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                                f6 = f5;
                                            }
                                            long j4 = (((long) i24) & 63) | ((((long) s) & 65535) << 48) | ((((long) s2) & 65535) << 32) | ((65535 & ((long) s3)) << 16) | ((((long) ((int) (((f6 <= 1.0f ? f6 : 1.0f) * 1023.0f) + 0.5f))) & 1023) << 6);
                                            ULong.Companion companion4 = ULong.INSTANCE;
                                            Color.Companion companion5 = Color.f8866b;
                                            return j4;
                                        }
                                        if (i16 >= -10) {
                                            i20 = (i15 | 8388608) >> (1 - i16);
                                            if ((i20 & 4096) != 0) {
                                                i20 += 8192;
                                            }
                                            i18 = i20 >> 13;
                                        } else {
                                            i18 = 0;
                                        }
                                    }
                                }
                                i19 = i18 | (i13 << 15) | (i25 << 10);
                                short s4 = (short) i19;
                                if (f5 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                    f6 = f5;
                                }
                                long j5 = (((long) i24) & 63) | ((((long) s) & 65535) << 48) | ((((long) s2) & 65535) << 32) | ((65535 & ((long) s4)) << 16) | ((((long) ((int) (((f6 <= 1.0f ? f6 : 1.0f) * 1023.0f) + 0.5f))) & 1023) << 6);
                                ULong.Companion companion6 = ULong.INSTANCE;
                                Color.Companion companion7 = Color.f8866b;
                                return j5;
                            }
                            if (i8 >= -10) {
                                i12 = (i7 | 8388608) >> (1 - i8);
                                if ((i12 & 4096) != 0) {
                                    i12 += 8192;
                                }
                                i10 = i12 >> 13;
                                i8 = 0;
                            } else {
                                i10 = 0;
                                i8 = 0;
                            }
                        }
                    }
                    i11 = i10 | (i5 << 15) | (i8 << 10);
                    short s5 = (short) i11;
                    fC2 = colorSpace.c(2);
                    fB2 = colorSpace.b(2);
                    if (f4 >= fC2) {
                        fC2 = f4;
                    }
                    if (fC2 <= fB2) {
                        fB2 = fC2;
                    }
                    iFloatToRawIntBits2 = Float.floatToRawIntBits(fB2);
                    i13 = iFloatToRawIntBits2 >>> 31;
                    i14 = (iFloatToRawIntBits2 >>> 23) & 255;
                    i15 = 8388607 & iFloatToRawIntBits2;
                    if (i14 == 255) {
                        i18 = i15 != 0 ? 512 : 0;
                        i25 = 31;
                    } else {
                        i16 = i14 - 112;
                        if (i16 >= 31) {
                            i18 = 0;
                            i25 = 49;
                        } else {
                            if (i16 <= 0) {
                                i17 = i15 >> 13;
                                if ((iFloatToRawIntBits2 & 4096) != 0) {
                                    i19 = (((i16 << 10) | i17) + 1) | (i13 << 15);
                                } else {
                                    i18 = i17;
                                    i25 = i16;
                                }
                                short s6 = (short) i19;
                                if (f5 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                    f6 = f5;
                                }
                                long j6 = (((long) i24) & 63) | ((((long) s) & 65535) << 48) | ((((long) s5) & 65535) << 32) | ((65535 & ((long) s6)) << 16) | ((((long) ((int) (((f6 <= 1.0f ? f6 : 1.0f) * 1023.0f) + 0.5f))) & 1023) << 6);
                                ULong.Companion companion8 = ULong.INSTANCE;
                                Color.Companion companion9 = Color.f8866b;
                                return j6;
                            }
                            if (i16 >= -10) {
                                i20 = (i15 | 8388608) >> (1 - i16);
                                if ((i20 & 4096) != 0) {
                                    i20 += 8192;
                                }
                                i18 = i20 >> 13;
                            } else {
                                i18 = 0;
                            }
                        }
                    }
                    i19 = i18 | (i13 << 15) | (i25 << 10);
                    short s7 = (short) i19;
                    if (f5 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        f6 = f5;
                    }
                    long j7 = (((long) i24) & 63) | ((((long) s) & 65535) << 48) | ((((long) s5) & 65535) << 32) | ((65535 & ((long) s7)) << 16) | ((((long) ((int) (((f6 <= 1.0f ? f6 : 1.0f) * 1023.0f) + 0.5f))) & 1023) << 6);
                    ULong.Companion companion10 = ULong.INSTANCE;
                    Color.Companion companion11 = Color.f8866b;
                    return j7;
                }
                if (i2 >= -10) {
                    int i30 = (i28 | 8388608) >> (1 - i2);
                    if ((i30 & 4096) != 0) {
                        i30 += 8192;
                    }
                    i3 = i30 >> 13;
                    i2 = 0;
                } else {
                    i3 = 0;
                    i2 = 0;
                }
            }
        }
        i4 = i3 | (i26 << 15) | (i2 << 10);
        short s8 = (short) i4;
        fC = colorSpace.c(1);
        fB = colorSpace.b(1);
        if (f3 >= fC) {
            fC = f3;
        }
        if (fC <= fB) {
            fB = fC;
        }
        iFloatToRawIntBits = Float.floatToRawIntBits(fB);
        i5 = iFloatToRawIntBits >>> 31;
        i6 = (iFloatToRawIntBits >>> 23) & 255;
        i7 = iFloatToRawIntBits & 8388607;
        if (i6 == 255) {
            if (i7 != 0) {
                i10 = 512;
            } else {
                i10 = 0;
            }
            i8 = 31;
        } else {
            i8 = i6 - 112;
            if (i8 >= 31) {
                i10 = 0;
                i8 = 49;
            } else {
                if (i8 <= 0) {
                    i9 = i7 >> 13;
                    if ((iFloatToRawIntBits & 4096) != 0) {
                        i11 = (((i8 << 10) | i9) + 1) | (i5 << 15);
                    } else {
                        i10 = i9;
                    }
                    short s9 = (short) i11;
                    fC2 = colorSpace.c(2);
                    fB2 = colorSpace.b(2);
                    if (f4 >= fC2) {
                        fC2 = f4;
                    }
                    if (fC2 <= fB2) {
                        fB2 = fC2;
                    }
                    iFloatToRawIntBits2 = Float.floatToRawIntBits(fB2);
                    i13 = iFloatToRawIntBits2 >>> 31;
                    i14 = (iFloatToRawIntBits2 >>> 23) & 255;
                    i15 = 8388607 & iFloatToRawIntBits2;
                    if (i14 == 255) {
                        i18 = i15 != 0 ? 512 : 0;
                        i25 = 31;
                    } else {
                        i16 = i14 - 112;
                        if (i16 >= 31) {
                            i18 = 0;
                            i25 = 49;
                        } else {
                            if (i16 <= 0) {
                                i17 = i15 >> 13;
                                if ((iFloatToRawIntBits2 & 4096) != 0) {
                                    i19 = (((i16 << 10) | i17) + 1) | (i13 << 15);
                                } else {
                                    i18 = i17;
                                    i25 = i16;
                                }
                                short s10 = (short) i19;
                                if (f5 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                    f6 = f5;
                                }
                                long j8 = (((long) i24) & 63) | ((((long) s8) & 65535) << 48) | ((((long) s9) & 65535) << 32) | ((65535 & ((long) s10)) << 16) | ((((long) ((int) (((f6 <= 1.0f ? f6 : 1.0f) * 1023.0f) + 0.5f))) & 1023) << 6);
                                ULong.Companion companion12 = ULong.INSTANCE;
                                Color.Companion companion13 = Color.f8866b;
                                return j8;
                            }
                            if (i16 >= -10) {
                                i20 = (i15 | 8388608) >> (1 - i16);
                                if ((i20 & 4096) != 0) {
                                    i20 += 8192;
                                }
                                i18 = i20 >> 13;
                            } else {
                                i18 = 0;
                            }
                        }
                    }
                    i19 = i18 | (i13 << 15) | (i25 << 10);
                    short s11 = (short) i19;
                    if (f5 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        f6 = f5;
                    }
                    long j9 = (((long) i24) & 63) | ((((long) s8) & 65535) << 48) | ((((long) s9) & 65535) << 32) | ((65535 & ((long) s11)) << 16) | ((((long) ((int) (((f6 <= 1.0f ? f6 : 1.0f) * 1023.0f) + 0.5f))) & 1023) << 6);
                    ULong.Companion companion14 = ULong.INSTANCE;
                    Color.Companion companion15 = Color.f8866b;
                    return j9;
                }
                if (i8 >= -10) {
                    i12 = (i7 | 8388608) >> (1 - i8);
                    if ((i12 & 4096) != 0) {
                        i12 += 8192;
                    }
                    i10 = i12 >> 13;
                    i8 = 0;
                } else {
                    i10 = 0;
                    i8 = 0;
                }
            }
        }
        i11 = i10 | (i5 << 15) | (i8 << 10);
        short s12 = (short) i11;
        fC2 = colorSpace.c(2);
        fB2 = colorSpace.b(2);
        if (f4 >= fC2) {
            fC2 = f4;
        }
        if (fC2 <= fB2) {
            fB2 = fC2;
        }
        iFloatToRawIntBits2 = Float.floatToRawIntBits(fB2);
        i13 = iFloatToRawIntBits2 >>> 31;
        i14 = (iFloatToRawIntBits2 >>> 23) & 255;
        i15 = 8388607 & iFloatToRawIntBits2;
        if (i14 == 255) {
            i18 = i15 != 0 ? 512 : 0;
            i25 = 31;
        } else {
            i16 = i14 - 112;
            if (i16 >= 31) {
                i18 = 0;
                i25 = 49;
            } else {
                if (i16 <= 0) {
                    i17 = i15 >> 13;
                    if ((iFloatToRawIntBits2 & 4096) != 0) {
                        i19 = (((i16 << 10) | i17) + 1) | (i13 << 15);
                    } else {
                        i18 = i17;
                        i25 = i16;
                    }
                    short s13 = (short) i19;
                    if (f5 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        f6 = f5;
                    }
                    long j10 = (((long) i24) & 63) | ((((long) s8) & 65535) << 48) | ((((long) s12) & 65535) << 32) | ((65535 & ((long) s13)) << 16) | ((((long) ((int) (((f6 <= 1.0f ? f6 : 1.0f) * 1023.0f) + 0.5f))) & 1023) << 6);
                    ULong.Companion companion16 = ULong.INSTANCE;
                    Color.Companion companion17 = Color.f8866b;
                    return j10;
                }
                if (i16 >= -10) {
                    i20 = (i15 | 8388608) >> (1 - i16);
                    if ((i20 & 4096) != 0) {
                        i20 += 8192;
                    }
                    i18 = i20 >> 13;
                } else {
                    i18 = 0;
                }
            }
        }
        i19 = i18 | (i13 << 15) | (i25 << 10);
        short s14 = (short) i19;
        if (f5 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            f6 = f5;
        }
        long j11 = (((long) i24) & 63) | ((((long) s8) & 65535) << 48) | ((((long) s12) & 65535) << 32) | ((65535 & ((long) s14)) << 16) | ((((long) ((int) (((f6 <= 1.0f ? f6 : 1.0f) * 1023.0f) + 0.5f))) & 1023) << 6);
        ULong.Companion companion18 = ULong.INSTANCE;
        Color.Companion companion19 = Color.f8866b;
        return j11;
    }

    public static final long b(int i2) {
        long j2 = i2;
        ULong.Companion companion = ULong.INSTANCE;
        long j3 = j2 << 32;
        Color.Companion companion2 = Color.f8866b;
        return j3;
    }

    public static final long c(long j2) {
        long j3 = j2 << 32;
        ULong.Companion companion = ULong.INSTANCE;
        Color.Companion companion2 = Color.f8866b;
        return j3;
    }

    public static long d(int i2, int i3, int i4) {
        return b(((i2 & 255) << 16) | b.v | ((i3 & 255) << 8) | (i4 & 255));
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0095 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:31:0x0097  */
    /* JADX WARN: Code duplicated, block: B:32:0x0099  */
    /* JADX WARN: Code duplicated, block: B:34:0x009c  */
    /* JADX WARN: Code duplicated, block: B:36:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:37:0x00a3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:38:0x00a5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:39:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:41:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:43:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:44:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:46:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:48:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:52:0x00e1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:54:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:56:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:59:0x00ed A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:60:0x00ef A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:61:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:63:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:65:0x0102  */
    /* JADX WARN: Code duplicated, block: B:66:0x0104  */
    /* JADX WARN: Code duplicated, block: B:68:0x010a  */
    /* JADX WARN: Code duplicated, block: B:70:0x0114  */
    public static final long e(float f2, float f3, float f4, float f5, ColorSpace colorSpace) {
        int i2;
        int i3;
        int i4;
        int iFloatToRawIntBits;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int iFloatToRawIntBits2;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        if (colorSpace.getQ()) {
            ULong.Companion companion = ULong.INSTANCE;
            long j2 = ((long) ((((((int) ((f5 * 255.0f) + 0.5f)) << 24) | (((int) ((f2 * 255.0f) + 0.5f)) << 16)) | (((int) ((f3 * 255.0f) + 0.5f)) << 8)) | ((int) ((255.0f * f4) + 0.5f)))) << 32;
            Color.Companion companion2 = Color.f8866b;
            return j2;
        }
        int iFloatToRawIntBits3 = Float.floatToRawIntBits(f2);
        int i19 = iFloatToRawIntBits3 >>> 31;
        int i20 = (iFloatToRawIntBits3 >>> 23) & 255;
        int i21 = iFloatToRawIntBits3 & 8388607;
        int i22 = 49;
        int i23 = 0;
        if (i20 == 255) {
            i3 = i21 != 0 ? 512 : 0;
            i2 = 31;
        } else {
            i2 = i20 - 112;
            if (i2 >= 31) {
                i2 = 49;
                i3 = 0;
            } else {
                if (i2 > 0) {
                    int i24 = i21 >> 13;
                    if ((iFloatToRawIntBits3 & 4096) != 0) {
                        i4 = (((i2 << 10) | i24) + 1) | (i19 << 15);
                    } else {
                        i3 = i24;
                    }
                    short s = (short) i4;
                    iFloatToRawIntBits = Float.floatToRawIntBits(f3);
                    i5 = iFloatToRawIntBits >>> 31;
                    i6 = (iFloatToRawIntBits >>> 23) & 255;
                    i7 = iFloatToRawIntBits & 8388607;
                    if (i6 == 255) {
                        if (i7 != 0) {
                            i10 = 512;
                        } else {
                            i10 = 0;
                        }
                        i8 = 31;
                    } else {
                        i8 = i6 - 112;
                        if (i8 >= 31) {
                            i8 = 49;
                            i10 = 0;
                        } else {
                            if (i8 <= 0) {
                                i9 = i7 >> 13;
                                if ((iFloatToRawIntBits & 4096) != 0) {
                                    i11 = (((i8 << 10) | i9) + 1) | (i5 << 15);
                                } else {
                                    i10 = i9;
                                }
                                short s2 = (short) i11;
                                iFloatToRawIntBits2 = Float.floatToRawIntBits(f4);
                                i13 = iFloatToRawIntBits2 >>> 31;
                                i14 = (iFloatToRawIntBits2 >>> 23) & 255;
                                i15 = 8388607 & iFloatToRawIntBits2;
                                if (i14 == 255) {
                                    i16 = i14 - 112;
                                    if (i16 < 31) {
                                        if (i16 <= 0) {
                                            i23 = i15 >> 13;
                                            if ((iFloatToRawIntBits2 & 4096) != 0) {
                                                i17 = (((i16 << 10) | i23) + 1) | (i13 << 15);
                                            } else {
                                                i22 = i16;
                                            }
                                        } else if (i16 >= -10) {
                                            i18 = (i15 | 8388608) >> (1 - i16);
                                            if ((i18 & 4096) != 0) {
                                                i18 += 8192;
                                            }
                                            i22 = 0;
                                            i23 = i18 >> 13;
                                        } else {
                                            i22 = 0;
                                        }
                                    }
                                    long jMax = ((((long) ((short) i17)) & 65535) << 16) | ((((long) s) & 65535) << 48) | ((((long) s2) & 65535) << 32) | ((((long) ((int) ((Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, Math.min(f5, 1.0f)) * 1023.0f) + 0.5f))) & 1023) << 6) | (((long) colorSpace.f8954c) & 63);
                                    ULong.Companion companion3 = ULong.INSTANCE;
                                    Color.Companion companion4 = Color.f8866b;
                                    return jMax;
                                }
                                i23 = i15 == 0 ? 0 : 512;
                                i22 = 31;
                                i17 = (i13 << 15) | (i22 << 10) | i23;
                                long jMax2 = ((((long) ((short) i17)) & 65535) << 16) | ((((long) s) & 65535) << 48) | ((((long) s2) & 65535) << 32) | ((((long) ((int) ((Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, Math.min(f5, 1.0f)) * 1023.0f) + 0.5f))) & 1023) << 6) | (((long) colorSpace.f8954c) & 63);
                                ULong.Companion companion5 = ULong.INSTANCE;
                                Color.Companion companion6 = Color.f8866b;
                                return jMax2;
                            }
                            if (i8 >= -10) {
                                i12 = (i7 | 8388608) >> (1 - i8);
                                if ((i12 & 4096) != 0) {
                                    i12 += 8192;
                                }
                                i10 = i12 >> 13;
                                i8 = 0;
                            } else {
                                i10 = 0;
                                i8 = 0;
                            }
                        }
                    }
                    i11 = i10 | (i5 << 15) | (i8 << 10);
                    short s3 = (short) i11;
                    iFloatToRawIntBits2 = Float.floatToRawIntBits(f4);
                    i13 = iFloatToRawIntBits2 >>> 31;
                    i14 = (iFloatToRawIntBits2 >>> 23) & 255;
                    i15 = 8388607 & iFloatToRawIntBits2;
                    if (i14 == 255) {
                        i16 = i14 - 112;
                        if (i16 < 31) {
                            if (i16 <= 0) {
                                i23 = i15 >> 13;
                                if ((iFloatToRawIntBits2 & 4096) != 0) {
                                    i17 = (((i16 << 10) | i23) + 1) | (i13 << 15);
                                } else {
                                    i22 = i16;
                                }
                            } else if (i16 >= -10) {
                                i18 = (i15 | 8388608) >> (1 - i16);
                                if ((i18 & 4096) != 0) {
                                    i18 += 8192;
                                }
                                i22 = 0;
                                i23 = i18 >> 13;
                            } else {
                                i22 = 0;
                            }
                        }
                        long jMax3 = ((((long) ((short) i17)) & 65535) << 16) | ((((long) s) & 65535) << 48) | ((((long) s3) & 65535) << 32) | ((((long) ((int) ((Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, Math.min(f5, 1.0f)) * 1023.0f) + 0.5f))) & 1023) << 6) | (((long) colorSpace.f8954c) & 63);
                        ULong.Companion companion7 = ULong.INSTANCE;
                        Color.Companion companion8 = Color.f8866b;
                        return jMax3;
                    }
                    i23 = i15 == 0 ? 0 : 512;
                    i22 = 31;
                    i17 = (i13 << 15) | (i22 << 10) | i23;
                    long jMax4 = ((((long) ((short) i17)) & 65535) << 16) | ((((long) s) & 65535) << 48) | ((((long) s3) & 65535) << 32) | ((((long) ((int) ((Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, Math.min(f5, 1.0f)) * 1023.0f) + 0.5f))) & 1023) << 6) | (((long) colorSpace.f8954c) & 63);
                    ULong.Companion companion9 = ULong.INSTANCE;
                    Color.Companion companion10 = Color.f8866b;
                    return jMax4;
                }
                if (i2 >= -10) {
                    int i25 = (i21 | 8388608) >> (1 - i2);
                    if ((i25 & 4096) != 0) {
                        i25 += 8192;
                    }
                    i3 = i25 >> 13;
                    i2 = 0;
                } else {
                    i3 = 0;
                    i2 = 0;
                }
            }
        }
        i4 = i3 | (i19 << 15) | (i2 << 10);
        short s4 = (short) i4;
        iFloatToRawIntBits = Float.floatToRawIntBits(f3);
        i5 = iFloatToRawIntBits >>> 31;
        i6 = (iFloatToRawIntBits >>> 23) & 255;
        i7 = iFloatToRawIntBits & 8388607;
        if (i6 == 255) {
            if (i7 != 0) {
                i10 = 512;
            } else {
                i10 = 0;
            }
            i8 = 31;
        } else {
            i8 = i6 - 112;
            if (i8 >= 31) {
                i8 = 49;
                i10 = 0;
            } else {
                if (i8 <= 0) {
                    i9 = i7 >> 13;
                    if ((iFloatToRawIntBits & 4096) != 0) {
                        i11 = (((i8 << 10) | i9) + 1) | (i5 << 15);
                    } else {
                        i10 = i9;
                    }
                    short s5 = (short) i11;
                    iFloatToRawIntBits2 = Float.floatToRawIntBits(f4);
                    i13 = iFloatToRawIntBits2 >>> 31;
                    i14 = (iFloatToRawIntBits2 >>> 23) & 255;
                    i15 = 8388607 & iFloatToRawIntBits2;
                    if (i14 == 255) {
                        i16 = i14 - 112;
                        if (i16 < 31) {
                            if (i16 <= 0) {
                                i23 = i15 >> 13;
                                if ((iFloatToRawIntBits2 & 4096) != 0) {
                                    i17 = (((i16 << 10) | i23) + 1) | (i13 << 15);
                                } else {
                                    i22 = i16;
                                }
                            } else if (i16 >= -10) {
                                i18 = (i15 | 8388608) >> (1 - i16);
                                if ((i18 & 4096) != 0) {
                                    i18 += 8192;
                                }
                                i22 = 0;
                                i23 = i18 >> 13;
                            } else {
                                i22 = 0;
                            }
                        }
                        long jMax5 = ((((long) ((short) i17)) & 65535) << 16) | ((((long) s4) & 65535) << 48) | ((((long) s5) & 65535) << 32) | ((((long) ((int) ((Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, Math.min(f5, 1.0f)) * 1023.0f) + 0.5f))) & 1023) << 6) | (((long) colorSpace.f8954c) & 63);
                        ULong.Companion companion11 = ULong.INSTANCE;
                        Color.Companion companion12 = Color.f8866b;
                        return jMax5;
                    }
                    i23 = i15 == 0 ? 0 : 512;
                    i22 = 31;
                    i17 = (i13 << 15) | (i22 << 10) | i23;
                    long jMax6 = ((((long) ((short) i17)) & 65535) << 16) | ((((long) s4) & 65535) << 48) | ((((long) s5) & 65535) << 32) | ((((long) ((int) ((Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, Math.min(f5, 1.0f)) * 1023.0f) + 0.5f))) & 1023) << 6) | (((long) colorSpace.f8954c) & 63);
                    ULong.Companion companion13 = ULong.INSTANCE;
                    Color.Companion companion14 = Color.f8866b;
                    return jMax6;
                }
                if (i8 >= -10) {
                    i12 = (i7 | 8388608) >> (1 - i8);
                    if ((i12 & 4096) != 0) {
                        i12 += 8192;
                    }
                    i10 = i12 >> 13;
                    i8 = 0;
                } else {
                    i10 = 0;
                    i8 = 0;
                }
            }
        }
        i11 = i10 | (i5 << 15) | (i8 << 10);
        short s6 = (short) i11;
        iFloatToRawIntBits2 = Float.floatToRawIntBits(f4);
        i13 = iFloatToRawIntBits2 >>> 31;
        i14 = (iFloatToRawIntBits2 >>> 23) & 255;
        i15 = 8388607 & iFloatToRawIntBits2;
        if (i14 == 255) {
            i16 = i14 - 112;
            if (i16 < 31) {
                if (i16 <= 0) {
                    i23 = i15 >> 13;
                    if ((iFloatToRawIntBits2 & 4096) != 0) {
                        i17 = (((i16 << 10) | i23) + 1) | (i13 << 15);
                    } else {
                        i22 = i16;
                    }
                } else if (i16 >= -10) {
                    i18 = (i15 | 8388608) >> (1 - i16);
                    if ((i18 & 4096) != 0) {
                        i18 += 8192;
                    }
                    i22 = 0;
                    i23 = i18 >> 13;
                } else {
                    i22 = 0;
                }
            }
            long jMax7 = ((((long) ((short) i17)) & 65535) << 16) | ((((long) s4) & 65535) << 48) | ((((long) s6) & 65535) << 32) | ((((long) ((int) ((Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, Math.min(f5, 1.0f)) * 1023.0f) + 0.5f))) & 1023) << 6) | (((long) colorSpace.f8954c) & 63);
            ULong.Companion companion15 = ULong.INSTANCE;
            Color.Companion companion16 = Color.f8866b;
            return jMax7;
        }
        i23 = i15 == 0 ? 0 : 512;
        i22 = 31;
        i17 = (i13 << 15) | (i22 << 10) | i23;
        long jMax8 = ((((long) ((short) i17)) & 65535) << 16) | ((((long) s4) & 65535) << 48) | ((((long) s6) & 65535) << 32) | ((((long) ((int) ((Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, Math.min(f5, 1.0f)) * 1023.0f) + 0.5f))) & 1023) << 6) | (((long) colorSpace.f8954c) & 63);
        ULong.Companion companion17 = ULong.INSTANCE;
        Color.Companion companion18 = Color.f8866b;
        return jMax8;
    }

    public static final long f(long j2, long j3) {
        float f2;
        float f3;
        long jA = Color.a(j2, Color.f(j3));
        float fD = Color.d(j3);
        float fD2 = Color.d(jA);
        float f4 = 1.0f - fD2;
        float f5 = (fD * f4) + fD2;
        float fH = Color.h(jA);
        float fH2 = Color.h(j3);
        float f6 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if (f5 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            f2 = 0.0f;
        } else {
            f2 = (((fH2 * fD) * f4) + (fH * fD2)) / f5;
        }
        float fG = Color.g(jA);
        float fG2 = Color.g(j3);
        if (f5 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            f3 = 0.0f;
        } else {
            f3 = (((fG2 * fD) * f4) + (fG * fD2)) / f5;
        }
        float fE = Color.e(jA);
        float fE2 = Color.e(j3);
        if (f5 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            f6 = (((fE2 * fD) * f4) + (fE * fD2)) / f5;
        }
        return e(f2, f3, f6, f5, Color.f(j3));
    }

    public static final long g(long j2, long j3, float f2) {
        Oklab oklab = ColorSpaces.x;
        long jA = Color.a(j2, oklab);
        long jA2 = Color.a(j3, oklab);
        float fD = Color.d(jA);
        float fH = Color.h(jA);
        float fG = Color.g(jA);
        float fE = Color.e(jA);
        float fD2 = Color.d(jA2);
        float fH2 = Color.h(jA2);
        float fG2 = Color.g(jA2);
        float fE2 = Color.e(jA2);
        if (f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            f2 = 0.0f;
        }
        if (f2 > 1.0f) {
            f2 = 1.0f;
        }
        return Color.a(e(MathHelpersKt.b(fH, fH2, f2), MathHelpersKt.b(fG, fG2, f2), MathHelpersKt.b(fE, fE2, f2), MathHelpersKt.b(fD, fD2, f2), oklab), Color.f(j3));
    }

    public static final float h(long j2) {
        ColorSpace colorSpaceF = Color.f(j2);
        long j3 = colorSpaceF.f8953b;
        ColorModel.f8948a.getClass();
        if (!ColorModel.a(j3, ColorModel.f8949b)) {
            InlineClassHelperKt.a("The specified color must be encoded in an RGB color space. The supplied color space is " + ((Object) ColorModel.b(colorSpaceF.f8953b)));
        }
        jt0 jt0Var = ((Rgb) colorSpaceF).p;
        double dB = jt0Var.b(Color.h(j2));
        float fB = (float) ((jt0Var.b(Color.e(j2)) * 0.0722d) + (jt0Var.b(Color.g(j2)) * 0.7152d) + (dB * 0.2126d));
        if (fB < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            fB = 0.0f;
        }
        if (fB > 1.0f) {
            return 1.0f;
        }
        return fB;
    }

    public static final int i(long j2) {
        float[] fArr = ColorSpaces.f8955a;
        long jA = Color.a(j2, ColorSpaces.f8958e) >>> 32;
        ULong.Companion companion = ULong.INSTANCE;
        return (int) jA;
    }
}
