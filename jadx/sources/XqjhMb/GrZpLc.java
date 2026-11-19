package XqjhMb;

import android.util.Pair;
import defpackage.md;
import defpackage.n00;
import java.util.Arrays;
import java.util.Locale;
import wcQZwr.GpYFMu;
import wcQZwr.MrfBl;

/* JADX INFO: loaded from: classes.dex */
public class GrZpLc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f84a = 9294;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f85b = CZqWkm.a("u_\u007f]RNKly(rgi{jt3h@\u007f@");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f86c = CZqWkm.a("xRhwN_Akdff");
    public static String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static String f87e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static String f88f;
    public static String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static String f89h;

    static {
        CZqWkm.a("\u0015\u001d<_IR\u0006");
        CZqWkm.a("\u0015\u001d<QR_\u0006");
        d = CZqWkm.a("\u000e\n9\u001c\u0012Z\u0015*#:g9\"l>#`");
        f87e = CZqWkm.a("zPu^EX\u000efc(EAS(ut|oDxRdqy!4");
        CZqWkm.a("xT\u007f]DYJ5-Knga ");
        f88f = CZqWkm.a("\r\n9\u001c\u0012Z\u0015*#:g9\"&7`()E0\u0004~");
        CZqWkm.a("\u0015\u001d<_AD\u0006");
        g = CZqWkm.a("\f\n");
        f89h = CZqWkm.a("\u0006\u0011");
    }

    public static MrfBl a(float f2, float[] fArr) {
        int i2 = CnROgj.f80a;
        int length = fArr.length;
        if (Integer.bitCount(length) != 1) {
            md.n(CnROgj.f82c);
            return null;
        }
        CnROgj.a(0, fArr, new float[length], length);
        int i3 = DMsjta.f83a;
        int length2 = fArr.length;
        Float[] fArr2 = new Float[length2];
        for (int i4 = 0; i4 < length2; i4++) {
            fArr2[i4] = Float.valueOf(Math.abs(fArr[i4]));
        }
        Arrays.sort(fArr2);
        float fFloatValue = fArr2[(int) Math.floor((length2 - 1) * f2)].floatValue();
        for (int i5 = 0; i5 < length2; i5++) {
            if (Math.abs(fArr[i5]) < fFloatValue) {
                fArr[i5] = 0.0f;
            }
        }
        float f3 = fArr[0];
        float[] fArr3 = new float[fArr.length - 1];
        System.arraycopy(fArr, 1, fArr3, 0, fArr.length - 1);
        Pair pairC = c(fArr3);
        float fFloatValue2 = ((Float) pairC.first).floatValue();
        float fFloatValue3 = ((Float) pairC.second).floatValue();
        String strB = CZqWkm.b(DMsjta.b(fFloatValue2, fFloatValue3, fArr3));
        int length3 = strB.length();
        long jA = XsSrSA.a(strB);
        float fE = e(fFloatValue2);
        float fE2 = e(fFloatValue3);
        float fE3 = e(f3);
        return new MrfBl(String.format(Locale.US, f88f, Float.valueOf(fE), Float.valueOf(fE2), Float.valueOf(fE3), Long.valueOf(jA), strB), Integer.valueOf(length3), Long.valueOf(((long) Math.round((fE3 * 100.0f) + (fE2 * 100.0f) + (fE * 100.0f))) + jA));
    }

    public static MrfBl b(float[] fArr) {
        Pair pairC = c(fArr);
        float fFloatValue = ((Float) pairC.first).floatValue();
        float fFloatValue2 = ((Float) pairC.second).floatValue();
        String strB = CZqWkm.b(DMsjta.b(fFloatValue, fFloatValue2, fArr));
        int length = strB.length();
        long jA = XsSrSA.a(strB);
        float fE = e(fFloatValue);
        float fE2 = e(fFloatValue2);
        return new MrfBl(String.format(Locale.US, d, Float.valueOf(fE), Float.valueOf(fE2), Long.valueOf(jA), strB), Integer.valueOf(length), Long.valueOf(((long) Math.round((fE2 * 100.0f) + (fE * 100.0f))) + jA));
    }

    public static Pair c(float[] fArr) {
        int i2;
        int i3;
        int i4 = 0;
        float f2 = fArr[0];
        int length = fArr.length;
        if ((f84a ^ 9294) == 0) {
            float f3 = f2;
            while (i4 < length) {
                float f4 = fArr[i4];
                if (f4 < f2) {
                    f2 = f4;
                } else if (f4 > f3) {
                    f3 = f4;
                }
                i4++;
                if (f84a <= 9293) {
                    do {
                        i2 = f84a;
                        i3 = i2 + 39;
                        if (i3 == 25) {
                            while (true) {
                                f84a = (f84a ^ 1293) % 105;
                            }
                        }
                    } while (i3 != 61);
                    f84a = (i2 >> 49) * 115;
                }
            }
            return new Pair(Float.valueOf(f2), Float.valueOf(f3));
        }
        while (true) {
            int i5 = f84a;
            if (i5 + 78 == 2) {
                f84a = ((i5 * 74) ^ 3389) + i5;
            }
        }
    }

    public static Pair d(float f2, float[] fArr) {
        String strR;
        long jLongValue;
        String str = "";
        String strR2 = f85b;
        long j2 = 0;
        try {
            float[] fArr2 = new float[fArr.length];
            System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
            MrfBl mrfBlB = b(fArr);
            int iIntValue = ((Integer) mrfBlB.f80836b).intValue();
            MrfBl mrfBlA = a(f2, fArr2);
            if (iIntValue - ((Integer) mrfBlA.f80836b).intValue() < 20) {
                strR = (String) mrfBlB.f80835a;
                try {
                    jLongValue = ((Long) mrfBlB.f80837c).longValue();
                } catch (Exception e2) {
                    e = e2;
                    str = strR;
                    String message = e.getMessage();
                    GpYFMu.d(f86c, n00.r(f87e, message, new StringBuilder()), new Throwable[0]);
                    strR2 = n00.r(f89h, message, n00.t(strR2));
                    strR = str;
                    jLongValue = 0;
                }
            } else {
                String str2 = (String) mrfBlA.f80835a;
                try {
                    jLongValue = ((Long) mrfBlA.f80837c).longValue();
                    strR = str2;
                } catch (Exception e3) {
                    str = str2;
                    e = e3;
                    String message2 = e.getMessage();
                    GpYFMu.d(f86c, n00.r(f87e, message2, new StringBuilder()), new Throwable[0]);
                    strR2 = n00.r(f89h, message2, n00.t(strR2));
                    strR = str;
                    jLongValue = 0;
                }
            }
        } catch (Exception e4) {
            e = e4;
        }
        if (strR.isEmpty()) {
            GpYFMu.d(f86c, strR2, new Throwable[0]);
            strR = n00.r(g, strR2, new StringBuilder());
        } else {
            j2 = jLongValue;
        }
        return new Pair(strR, Long.valueOf(j2));
    }

    public static float e(float f2) {
        return Math.round(f2 * 100.0f) / 100.0f;
    }
}
