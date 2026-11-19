package com.google.android.filament.utils;

import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"filament-utils-android_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class QuaternionKt {
    public static final Quaternion a(Quaternion quaternion, Quaternion quaternion2, float f2) {
        quaternion.getClass();
        float f3 = 1.0f - f2;
        Quaternion quaternion3 = new Quaternion(quaternion.f28669a * f3, quaternion.f28670b * f3, quaternion.f28671c * f3, f3 * quaternion.d);
        Quaternion quaternion4 = new Quaternion(quaternion2.f28669a * f2, quaternion2.f28670b * f2, quaternion2.f28671c * f2, f2 * quaternion2.d);
        return new Quaternion(quaternion3.f28669a + quaternion4.f28669a, quaternion3.f28670b + quaternion4.f28670b, quaternion3.f28671c + quaternion4.f28671c, quaternion3.d + quaternion4.d);
    }

    public static final Quaternion b(Quaternion quaternion) {
        float f2 = quaternion.f28669a;
        float f3 = quaternion.f28670b;
        float f4 = quaternion.f28671c;
        float f5 = quaternion.d;
        float fSqrt = 1.0f / ((float) Math.sqrt((f5 * f5) + ((f4 * f4) + ((f3 * f3) + (f2 * f2)))));
        return new Quaternion(f2 * fSqrt, f3 * fSqrt, f4 * fSqrt, f5 * fSqrt);
    }

    public static Quaternion c(Quaternion quaternion, Quaternion quaternion2, float f2) {
        float f3 = quaternion.f28669a;
        float f4 = quaternion2.f28669a;
        float f5 = quaternion.f28670b;
        float f6 = quaternion2.f28670b;
        float f7 = quaternion.f28671c;
        float f8 = quaternion2.f28671c;
        float f9 = quaternion.d;
        float f10 = quaternion2.d;
        float f11 = (f9 * f10) + (f7 * f8) + (f5 * f6) + (f3 * f4);
        if (f11 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            f11 = -f11;
            quaternion2 = new Quaternion(-f4, -f6, -f8, -f10);
        }
        if (f11 >= 0.9995f) {
            return b(a(quaternion, quaternion2, f2));
        }
        float fAcos = (float) Math.acos(f11);
        float fSin = (float) Math.sin(fAcos);
        float fSin2 = (float) Math.sin((1.0f - f2) * fAcos);
        Quaternion quaternion3 = new Quaternion(f3 * fSin2, f5 * fSin2, f7 * fSin2, f9 * fSin2);
        Quaternion quaternion4 = new Quaternion(quaternion3.f28669a / fSin, quaternion3.f28670b / fSin, quaternion3.f28671c / fSin, quaternion3.d / fSin);
        float fSin3 = (float) Math.sin(f2 * fAcos);
        Quaternion quaternion5 = new Quaternion(quaternion2.f28669a * fSin3, quaternion2.f28670b * fSin3, quaternion2.f28671c * fSin3, quaternion2.d * fSin3);
        Quaternion quaternion6 = new Quaternion(quaternion5.f28669a / fSin, quaternion5.f28670b / fSin, quaternion5.f28671c / fSin, quaternion5.d / fSin);
        return new Quaternion(quaternion4.f28669a + quaternion6.f28669a, quaternion4.f28670b + quaternion6.f28670b, quaternion4.f28671c + quaternion6.f28671c, quaternion4.d + quaternion6.d);
    }
}
