package androidx.compose.foundation.layout;

import defpackage.tr;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÂ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/layout/AndroidFlingSpline;", "", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
abstract class AndroidFlingSpline {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float[] f4913a = new float[101];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float[] f4914b = new float[101];

    static {
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        int i2 = 0;
        float f11 = 0.0f;
        while (true) {
            float f12 = 1.0f;
            if (i2 >= 100) {
                f4914b[100] = 1.0f;
                f4913a[100] = 1.0f;
                return;
            }
            float f13 = i2 / 100.0f;
            float f14 = 1.0f;
            while (true) {
                f2 = ((f14 - f10) / 2.0f) + f10;
                f3 = f12 - f2;
                f4 = f2 * 3.0f * f3;
                f5 = f2 * f2 * f2;
                float f15 = (((f2 * 0.35000002f) + (f3 * 0.175f)) * f4) + f5;
                f12 = f12;
                float f16 = f14;
                if (Math.abs(f15 - f13) < 1.0E-5d) {
                    break;
                }
                if (f15 > f13) {
                    f14 = f2;
                } else {
                    f10 = f2;
                    f14 = f16;
                }
            }
            float f17 = 0.5f;
            f4913a[i2] = (((f3 * 0.5f) + f2) * f4) + f5;
            float f18 = f12;
            while (true) {
                f6 = ((f18 - f11) / 2.0f) + f11;
                f7 = f12 - f6;
                f8 = f6 * 3.0f * f7;
                f9 = f6 * f6 * f6;
                float f19 = (((f7 * f17) + f6) * f8) + f9;
                if (Math.abs(f19 - f13) >= 1.0E-5d) {
                    if (f19 > f13) {
                        f18 = f6;
                    } else {
                        f11 = f6;
                    }
                    f17 = 0.5f;
                }
            }
            f4914b[i2] = (((f6 * 0.35000002f) + (f7 * 0.175f)) * f8) + f9;
            i2++;
        }
    }

    public static long a(float f2) {
        float fA;
        float f3;
        int i2 = (int) (100.0f * f2);
        if (i2 < 100) {
            float f4 = i2 / 100.0f;
            int i3 = i2 + 1;
            float[] fArr = f4913a;
            float f5 = fArr[i2];
            f3 = (fArr[i3] - f5) / ((i3 / 100.0f) - f4);
            fA = tr.a(f2, f4, f3, f5);
        } else {
            fA = 1.0f;
            f3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        return (((long) Float.floatToRawIntBits(fA)) << 32) | (((long) Float.floatToRawIntBits(f3)) & BodyPartID.bodyIdMax);
    }
}
