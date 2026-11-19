package androidx.core.graphics;

import android.graphics.Path;
import defpackage.ct0;
import defpackage.fc;
import defpackage.r81;
import java.util.ArrayList;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Sink;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes.dex */
public abstract class PathParser {

    public static class ExtractFloatResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f12057a;
    }

    public static float[] a(float[] fArr, int i2) {
        if (i2 < 0) {
            ct0.c();
            return null;
        }
        int length = fArr.length;
        if (length < 0) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int iMin = Math.min(i2, length);
        float[] fArr2 = new float[i2];
        System.arraycopy(fArr, 0, fArr2, 0, iMin);
        return fArr2;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002c  */
    /* JADX WARN: Code duplicated, block: B:17:0x0042  */
    /* JADX WARN: Code duplicated, block: B:41:0x0097 A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:47:0x00a4 A[Catch: NumberFormatException -> 0x00b2, TryCatch #0 {NumberFormatException -> 0x00b2, blocks: (B:22:0x0054, B:24:0x0067, B:25:0x006e, B:27:0x0074, B:31:0x0080, B:45:0x009f, B:35:0x0089, B:40:0x0095, B:47:0x00a4, B:50:0x00b4, B:54:0x00bb, B:55:0x00be), top: B:70:0x0054 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:54:0x00bb A[Catch: NumberFormatException -> 0x00b2, TryCatch #0 {NumberFormatException -> 0x00b2, blocks: (B:22:0x0054, B:24:0x0067, B:25:0x006e, B:27:0x0074, B:31:0x0080, B:45:0x009f, B:35:0x0089, B:40:0x0095, B:47:0x00a4, B:50:0x00b4, B:54:0x00bb, B:55:0x00be), top: B:70:0x0054 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:74:0x00e0 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    public static PathDataNode[] b(String str) {
        int i2;
        String strTrim;
        float[] fArrA;
        int i3;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        ArrayList arrayList = new ArrayList();
        int i4 = 0;
        int i5 = 0;
        int i6 = 1;
        while (i6 < str.length()) {
            while (i6 < str.length()) {
                char cCharAt = str.charAt(i6);
                if ((cCharAt - 'Z') * (cCharAt - 'A') > 0) {
                    if ((cCharAt - 'z') * (cCharAt - 'a') > 0) {
                        continue;
                    } else if (cCharAt != 'e' && cCharAt != 'E') {
                        strTrim = str.substring(i5, i6).trim();
                        if (strTrim.isEmpty()) {
                            if (strTrim.charAt(i4) != 'z' || strTrim.charAt(i4) == 'Z') {
                                fArrA = new float[i4];
                                i3 = i4;
                            } else {
                                try {
                                    float[] fArr = new float[strTrim.length()];
                                    ExtractFloatResult extractFloatResult = new ExtractFloatResult();
                                    int length = strTrim.length();
                                    int i7 = i4;
                                    int i8 = 1;
                                    boolean z5 = i4;
                                    while (i8 < length) {
                                        extractFloatResult.f12057a = z5;
                                        boolean z6 = z5;
                                        boolean z7 = z6 ? 1 : 0;
                                        boolean z8 = z7 ? 1 : 0;
                                        int i9 = i8;
                                        boolean z9 = z6;
                                        boolean z10 = z7;
                                        while (i9 < strTrim.length()) {
                                            char cCharAt2 = strTrim.charAt(i9);
                                            if (cCharAt2 == ' ') {
                                                z = false;
                                                z2 = true;
                                                z3 = z10;
                                            } else if (cCharAt2 != 'E' && cCharAt2 != 'e') {
                                                switch (cCharAt2) {
                                                    case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                                                        z4 = z8;
                                                        z4 = z8;
                                                        if (i9 != i8 && !z9) {
                                                            extractFloatResult.f12057a = true;
                                                            break;
                                                        } else {
                                                            z = false;
                                                            z3 = z10;
                                                            z2 = z4;
                                                            break;
                                                        }
                                                    case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                                                        z = false;
                                                        z2 = true;
                                                        z3 = z10;
                                                        break;
                                                    case '.':
                                                        if (!z10) {
                                                            z = false;
                                                            z3 = true;
                                                        } else {
                                                            extractFloatResult.f12057a = true;
                                                            z4 = true;
                                                            z = false;
                                                            z3 = z10;
                                                            z2 = z4;
                                                        }
                                                        break;
                                                    default:
                                                        z4 = z8;
                                                        z = false;
                                                        z3 = z10;
                                                        z2 = z4;
                                                        break;
                                                }
                                            } else {
                                                z = true;
                                                z3 = z10;
                                                z2 = z8;
                                            }
                                            if (z2) {
                                                z2 = z8;
                                                if (i8 < i9) {
                                                    int i10 = (i7 == true ? 1 : 0) + 1;
                                                    fArr[i7 == true ? 1 : 0] = Float.parseFloat(strTrim.substring(i8, i9));
                                                    i7 = i10;
                                                }
                                                if (extractFloatResult.f12057a) {
                                                    i8 = i9;
                                                } else {
                                                    i8 = i9 + 1;
                                                }
                                                z5 = 0;
                                                i7 = i7;
                                            } else {
                                                z2 = z8;
                                                i9++;
                                                z9 = z;
                                                z10 = z3;
                                                z8 = z2;
                                            }
                                        }
                                        if (i8 < i9) {
                                            int i11 = (i7 == true ? 1 : 0) + 1;
                                            fArr[i7 == true ? 1 : 0] = Float.parseFloat(strTrim.substring(i8, i9));
                                            i7 = i11;
                                        }
                                        if (extractFloatResult.f12057a) {
                                            i8 = i9;
                                        } else {
                                            i8 = i9 + 1;
                                        }
                                        z5 = 0;
                                        i7 = i7;
                                    }
                                    fArrA = a(fArr, i7 == true ? 1 : 0);
                                    i3 = 0;
                                } catch (NumberFormatException e2) {
                                    r81.g(fc.h("error in parsing \"", strTrim, "\""), e2);
                                    return null;
                                }
                            }
                            arrayList.add(new PathDataNode(strTrim.charAt(i3), fArrA));
                        }
                        i5 = i6;
                        i6++;
                        i4 = 0;
                    }
                } else if (cCharAt != 'e') {
                    continue;
                }
                i6++;
            }
            strTrim = str.substring(i5, i6).trim();
            if (strTrim.isEmpty()) {
                if (strTrim.charAt(i4) != 'z') {
                    fArrA = new float[i4];
                    i3 = i4;
                } else {
                    fArrA = new float[i4];
                    i3 = i4;
                }
                arrayList.add(new PathDataNode(strTrim.charAt(i3), fArrA));
            }
            i5 = i6;
            i6++;
            i4 = 0;
        }
        if (i6 - i5 != 1 || i5 >= str.length()) {
            i2 = 0;
        } else {
            i2 = 0;
            arrayList.add(new PathDataNode(str.charAt(i5), new float[0]));
        }
        return (PathDataNode[]) arrayList.toArray(new PathDataNode[i2]);
    }

    public static class PathDataNode {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public char f12058a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final float[] f12059b;

        public PathDataNode(PathDataNode pathDataNode) {
            this.f12058a = pathDataNode.f12058a;
            float[] fArr = pathDataNode.f12059b;
            this.f12059b = PathParser.a(fArr, fArr.length);
        }

        public static void a(Path path, float f2, float f3, float f4, float f5, float f6, float f7, float f8, boolean z, boolean z2) {
            double d;
            double d2;
            double radians = Math.toRadians(f8);
            double dCos = Math.cos(radians);
            double dSin = Math.sin(radians);
            double d3 = f2;
            double d4 = f3;
            double d5 = f6;
            double d6 = ((d4 * dSin) + (d3 * dCos)) / d5;
            double d7 = f7;
            double d8 = ((d4 * dCos) + (((double) (-f2)) * dSin)) / d7;
            double d9 = f5;
            double d10 = ((d9 * dSin) + (((double) f4) * dCos)) / d5;
            double d11 = ((d9 * dCos) + (((double) (-f4)) * dSin)) / d7;
            double d12 = d6 - d10;
            double d13 = d8 - d11;
            double d14 = (d6 + d10) / 2.0d;
            double d15 = (d8 + d11) / 2.0d;
            double d16 = (d13 * d13) + (d12 * d12);
            if (d16 == 0.0d) {
                return;
            }
            double d17 = (1.0d / d16) - 0.25d;
            if (d17 < 0.0d) {
                float fSqrt = (float) (Math.sqrt(d16) / 1.99999d);
                a(path, f2, f3, f4, f5, f6 * fSqrt, fSqrt * f7, f8, z, z2);
                return;
            }
            double dSqrt = Math.sqrt(d17);
            double d18 = d12 * dSqrt;
            double d19 = dSqrt * d13;
            if (z == z2) {
                d = d14 - d19;
                d2 = d15 + d18;
            } else {
                d = d14 + d19;
                d2 = d15 - d18;
            }
            double dAtan2 = Math.atan2(d8 - d2, d6 - d);
            double dAtan3 = Math.atan2(d11 - d2, d10 - d) - dAtan2;
            if (z2 != (dAtan3 >= 0.0d)) {
                dAtan3 = dAtan3 > 0.0d ? dAtan3 - 6.283185307179586d : dAtan3 + 6.283185307179586d;
            }
            double d20 = d * d5;
            double d21 = d2 * d7;
            double d22 = (d20 * dCos) - (d21 * dSin);
            double d23 = (d21 * dCos) + (d20 * dSin);
            int iCeil = (int) Math.ceil(Math.abs((dAtan3 * 4.0d) / 3.141592653589793d));
            double dCos2 = Math.cos(radians);
            double dSin2 = Math.sin(radians);
            double dCos3 = Math.cos(dAtan2);
            double dSin3 = Math.sin(dAtan2);
            double d24 = -d5;
            double d25 = d24 * dCos2;
            double d26 = d7 * dSin2;
            double d27 = (d25 * dSin3) - (d26 * dCos3);
            double d28 = d24 * dSin2;
            double d29 = d7 * dCos2;
            double d30 = dAtan3 / ((double) iCeil);
            double d31 = (dCos3 * d29) + (dSin3 * d28);
            int i2 = 0;
            double d32 = d3;
            double d33 = d4;
            double d34 = dAtan2;
            while (i2 < iCeil) {
                double d35 = d34 + d30;
                double dSin4 = Math.sin(d35);
                double dCos4 = Math.cos(d35);
                double d36 = d30;
                double d37 = (((d5 * dCos2) * dCos4) + d22) - (d26 * dSin4);
                double d38 = d22;
                double d39 = (d29 * dSin4) + (d5 * dSin2 * dCos4) + d23;
                double d40 = (d25 * dSin4) - (d26 * dCos4);
                double d41 = (dCos4 * d29) + (dSin4 * d28);
                double d42 = d35 - d34;
                double dTan = Math.tan(d42 / 2.0d);
                double dSqrt2 = ((Math.sqrt(((dTan * 3.0d) * dTan) + 4.0d) - 1.0d) * Math.sin(d42)) / 3.0d;
                path.rLineTo(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                path.cubicTo((float) ((d27 * dSqrt2) + d32), (float) ((d31 * dSqrt2) + d33), (float) (d37 - (dSqrt2 * d40)), (float) (d39 - (dSqrt2 * d41)), (float) d37, (float) d39);
                i2++;
                d33 = d39;
                iCeil = iCeil;
                d28 = d28;
                dCos2 = dCos2;
                d34 = d35;
                d31 = d41;
                d27 = d40;
                d22 = d38;
                d32 = d37;
                d30 = d36;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static void b(PathDataNode[] pathDataNodeArr, Path path) {
            int i2;
            float f2;
            float f3;
            float f4;
            float f5;
            float f6;
            float f7;
            float f8;
            float f9;
            float f10;
            float f11;
            PathDataNode[] pathDataNodeArr2 = pathDataNodeArr;
            float[] fArr = new float[6];
            int length = pathDataNodeArr2.length;
            int i3 = 0;
            int i4 = 0;
            char c2 = 'm';
            while (i4 < length) {
                PathDataNode pathDataNode = pathDataNodeArr2[i4];
                char c3 = pathDataNode.f12058a;
                float[] fArr2 = pathDataNode.f12059b;
                float f12 = fArr[i3];
                float f13 = fArr[1];
                float f14 = fArr[2];
                float f15 = fArr[3];
                float f16 = fArr[4];
                int i5 = i3;
                float f17 = fArr[5];
                switch (c3) {
                    case EACTags.ELEMENT_LIST /* 65 */:
                    case 'a':
                        i2 = 7;
                        break;
                    case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                    case 'c':
                        i2 = 6;
                        break;
                    case 'H':
                    case 'V':
                    case 'h':
                    case 'v':
                        i2 = 1;
                        break;
                    case EACTags.ANSWER_TO_RESET /* 81 */:
                    case 'S':
                    case 'q':
                    case 's':
                        i2 = 4;
                        break;
                    case Sink.ORIENTATION_90 /* 90 */:
                    case 'z':
                        path.close();
                        path.moveTo(f16, f17);
                        f12 = f16;
                        f14 = f12;
                        f13 = f17;
                        f15 = f13;
                    default:
                        i2 = 2;
                        break;
                }
                float f18 = f16;
                float f19 = f17;
                float f20 = f12;
                float f21 = f13;
                int i6 = i5;
                while (i6 < fArr2.length) {
                    if (c3 == 'A') {
                        fArr2 = fArr2;
                        i6 = i6;
                        pathDataNode = pathDataNode;
                        float f22 = f21;
                        i4 = i4;
                        int i7 = i6 + 5;
                        int i8 = i6 + 6;
                        a(path, f20, f22, fArr2[i7], fArr2[i8], fArr2[i6], fArr2[i6 + 1], fArr2[i6 + 2], fArr2[i6 + 3] != Call.Parameters.DEFAULT_CAMERA_ZOOM ? 1 : i5, fArr2[i6 + 4] != Call.Parameters.DEFAULT_CAMERA_ZOOM ? 1 : i5);
                        f14 = fArr2[i7];
                        f2 = fArr2[i8];
                        f15 = f2;
                        f3 = f14;
                    } else if (c3 == 'C') {
                        fArr2 = fArr2;
                        i6 = i6;
                        i4 = i4;
                        pathDataNode = pathDataNode;
                        int i9 = i6 + 2;
                        int i10 = i6 + 3;
                        int i11 = i6 + 4;
                        int i12 = i6 + 5;
                        path.cubicTo(fArr2[i6], fArr2[i6 + 1], fArr2[i9], fArr2[i10], fArr2[i11], fArr2[i12]);
                        float f23 = fArr2[i11];
                        float f24 = fArr2[i12];
                        f14 = fArr2[i9];
                        f15 = fArr2[i10];
                        f2 = f24;
                        f3 = f23;
                    } else if (c3 == 'H') {
                        fArr2 = fArr2;
                        i6 = i6;
                        pathDataNode = pathDataNode;
                        f2 = f21;
                        i4 = i4;
                        path.lineTo(fArr2[i6], f2);
                        f3 = fArr2[i6];
                    } else if (c3 == 'Q') {
                        fArr2 = fArr2;
                        i6 = i6;
                        i4 = i4;
                        pathDataNode = pathDataNode;
                        int i13 = i6 + 1;
                        int i14 = i6 + 2;
                        int i15 = i6 + 3;
                        path.quadTo(fArr2[i6], fArr2[i13], fArr2[i14], fArr2[i15]);
                        float f25 = fArr2[i6];
                        float f26 = fArr2[i13];
                        float f27 = fArr2[i14];
                        float f28 = fArr2[i15];
                        f14 = f25;
                        f15 = f26;
                        f3 = f27;
                        f2 = f28;
                    } else if (c3 == 'V') {
                        fArr2 = fArr2;
                        i6 = i6;
                        i4 = i4;
                        pathDataNode = pathDataNode;
                        f3 = f20;
                        path.lineTo(f3, fArr2[i6]);
                        f2 = fArr2[i6];
                    } else if (c3 != 'a') {
                        if (c3 == 'c') {
                            fArr2 = fArr2;
                            i6 = i6;
                            int i16 = i6 + 2;
                            int i17 = i6 + 3;
                            int i18 = i6 + 4;
                            int i19 = i6 + 5;
                            path.rCubicTo(fArr2[i6], fArr2[i6 + 1], fArr2[i16], fArr2[i17], fArr2[i18], fArr2[i19]);
                            float f29 = fArr2[i16] + f20;
                            float f30 = fArr2[i17] + f21;
                            f20 += fArr2[i18];
                            f21 += fArr2[i19];
                            f14 = f29;
                            f15 = f30;
                        } else if (c3 != 'h') {
                            if (c3 != 'q') {
                                if (c3 != 'v') {
                                    if (c3 == 'L') {
                                        fArr2 = fArr2;
                                        i6 = i6;
                                        int i20 = i6 + 1;
                                        path.lineTo(fArr2[i6], fArr2[i20]);
                                        f3 = fArr2[i6];
                                        f2 = fArr2[i20];
                                    } else if (c3 == 'M') {
                                        fArr2 = fArr2;
                                        i6 = i6;
                                        f3 = fArr2[i6];
                                        f2 = fArr2[i6 + 1];
                                        if (i6 > 0) {
                                            path.lineTo(f3, f2);
                                        } else {
                                            path.moveTo(f3, f2);
                                            f18 = f3;
                                            f19 = f2;
                                        }
                                    } else if (c3 == 'S') {
                                        fArr2 = fArr2;
                                        i6 = i6;
                                        if (c2 == 'c' || c2 == 's' || c2 == 'C' || c2 == 'S') {
                                            f20 = (f20 * 2.0f) - f14;
                                            f21 = (f21 * 2.0f) - f15;
                                        }
                                        float f31 = f20;
                                        float f32 = f21;
                                        int i21 = i6 + 1;
                                        int i22 = i6 + 2;
                                        int i23 = i6 + 3;
                                        path.cubicTo(f31, f32, fArr2[i6], fArr2[i21], fArr2[i22], fArr2[i23]);
                                        f14 = fArr2[i6];
                                        f15 = fArr2[i21];
                                        f3 = fArr2[i22];
                                        f2 = fArr2[i23];
                                    } else if (c3 == 'T') {
                                        fArr2 = fArr2;
                                        i6 = i6;
                                        if (c2 == 'q' || c2 == 't' || c2 == 'Q' || c2 == 'T') {
                                            f20 = (f20 * 2.0f) - f14;
                                            f21 = (f21 * 2.0f) - f15;
                                        }
                                        int i24 = i6 + 1;
                                        path.quadTo(f20, f21, fArr2[i6], fArr2[i24]);
                                        f3 = fArr2[i6];
                                        f2 = fArr2[i24];
                                        pathDataNode = pathDataNode;
                                        f14 = f20;
                                        f15 = f21;
                                    } else if (c3 == 'l') {
                                        fArr2 = fArr2;
                                        i6 = i6;
                                        int i25 = i6 + 1;
                                        path.rLineTo(fArr2[i6], fArr2[i25]);
                                        f20 += fArr2[i6];
                                        f7 = fArr2[i25];
                                    } else if (c3 == 'm') {
                                        fArr2 = fArr2;
                                        i6 = i6;
                                        float f33 = fArr2[i6];
                                        f20 += f33;
                                        float f34 = fArr2[i6 + 1];
                                        f21 += f34;
                                        if (i6 > 0) {
                                            path.rLineTo(f33, f34);
                                        } else {
                                            path.rMoveTo(f33, f34);
                                            pathDataNode = pathDataNode;
                                            f3 = f20;
                                            f18 = f3;
                                            f2 = f21;
                                            f19 = f2;
                                        }
                                    } else if (c3 != 's') {
                                        if (c3 != 't') {
                                            f3 = f20;
                                        } else {
                                            if (c2 == 'q' || c2 == 't' || c2 == 'Q' || c2 == 'T') {
                                                f10 = f20 - f14;
                                                f11 = f21 - f15;
                                            } else {
                                                f11 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                                f10 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                            }
                                            int i26 = i6 + 1;
                                            path.rQuadTo(f10, f11, fArr2[i6], fArr2[i26]);
                                            float f35 = f10 + f20;
                                            float f36 = f11 + f21;
                                            float f37 = f20 + fArr2[i6];
                                            f21 += fArr2[i26];
                                            f15 = f36;
                                            f3 = f37;
                                            f14 = f35;
                                        }
                                        f2 = f21;
                                    } else {
                                        if (c2 == 'c' || c2 == 's' || c2 == 'C' || c2 == 'S') {
                                            f8 = f21 - f15;
                                            f9 = f20 - f14;
                                        } else {
                                            f9 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                            f8 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                        }
                                        int i27 = i6;
                                        int i28 = i27 + 1;
                                        int i29 = i27 + 2;
                                        int i30 = i27 + 3;
                                        fArr2 = fArr2;
                                        i6 = i27;
                                        path.rCubicTo(f9, f8, fArr2[i27], fArr2[i28], fArr2[i29], fArr2[i30]);
                                        f4 = fArr2[i6] + f20;
                                        f5 = fArr2[i28] + f21;
                                        f20 += fArr2[i29];
                                        f6 = fArr2[i30];
                                    }
                                    pathDataNode = pathDataNode;
                                } else {
                                    fArr2 = fArr2;
                                    i6 = i6;
                                    path.rLineTo(Call.Parameters.DEFAULT_CAMERA_ZOOM, fArr2[i6]);
                                    f7 = fArr2[i6];
                                }
                                f21 += f7;
                            } else {
                                fArr2 = fArr2;
                                i6 = i6;
                                int i31 = i6 + 1;
                                int i32 = i6 + 2;
                                int i33 = i6 + 3;
                                path.rQuadTo(fArr2[i6], fArr2[i31], fArr2[i32], fArr2[i33]);
                                f4 = fArr2[i6] + f20;
                                f5 = fArr2[i31] + f21;
                                f20 += fArr2[i32];
                                f6 = fArr2[i33];
                            }
                            f21 += f6;
                            f14 = f4;
                            f15 = f5;
                        } else {
                            fArr2 = fArr2;
                            i6 = i6;
                            path.rLineTo(fArr2[i6], Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            f20 += fArr2[i6];
                        }
                        pathDataNode = pathDataNode;
                        f3 = f20;
                        f2 = f21;
                    } else {
                        fArr2 = fArr2;
                        i6 = i6;
                        int i34 = i6 + 5;
                        float f38 = fArr2[i34] + f20;
                        int i35 = i6 + 6;
                        float f39 = fArr2[i35] + f21;
                        pathDataNode = pathDataNode;
                        float f40 = f20;
                        float f41 = f21;
                        i4 = i4;
                        a(path, f40, f41, f38, f39, fArr2[i6], fArr2[i6 + 1], fArr2[i6 + 2], fArr2[i6 + 3] != Call.Parameters.DEFAULT_CAMERA_ZOOM ? 1 : i5, fArr2[i6 + 4] != Call.Parameters.DEFAULT_CAMERA_ZOOM ? 1 : i5);
                        f3 = f40 + fArr2[i34];
                        f2 = f41 + fArr2[i35];
                        f14 = f3;
                        f15 = f2;
                    }
                    i6 += i2;
                    path = path;
                    pathDataNode = pathDataNode;
                    c3 = c3;
                    i4 = i4;
                    f20 = f3;
                    f21 = f2;
                    c2 = c3;
                    fArr2 = fArr2;
                }
                fArr[i5] = f20;
                fArr[1] = f21;
                fArr[2] = f14;
                fArr[3] = f15;
                fArr[4] = f18;
                fArr[5] = f19;
                c2 = pathDataNode.f12058a;
                i4++;
                pathDataNodeArr2 = pathDataNodeArr;
                i3 = i5;
            }
        }

        public PathDataNode(char c2, float[] fArr) {
            this.f12058a = c2;
            this.f12059b = fArr;
        }
    }
}
