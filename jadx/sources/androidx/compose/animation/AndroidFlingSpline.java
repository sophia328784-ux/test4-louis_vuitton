package androidx.compose.animation;

import defpackage.tr;
import kotlin.Metadata;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bÁ\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/compose/animation/AndroidFlingSpline;", "", "FlingResult", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class AndroidFlingSpline {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float[] f3411a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/animation/AndroidFlingSpline$FlingResult;", "", "", "distanceCoefficient", "velocityCoefficient", "<init>", "(FF)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class FlingResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final float f3412a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final float f3413b;

        public FlingResult(float f2, float f3) {
            this.f3412a = f2;
            this.f3413b = f3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof FlingResult)) {
                return false;
            }
            FlingResult flingResult = (FlingResult) obj;
            return Float.compare(this.f3412a, flingResult.f3412a) == 0 && Float.compare(this.f3413b, flingResult.f3413b) == 0;
        }

        public final int hashCode() {
            return Float.hashCode(this.f3413b) + (Float.hashCode(this.f3412a) * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("FlingResult(distanceCoefficient=");
            sb.append(this.f3412a);
            sb.append(", velocityCoefficient=");
            return defpackage.a.m(sb, this.f3413b, ')');
        }
    }

    static {
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        float[] fArr = new float[101];
        f3411a = fArr;
        float[] fArr2 = new float[101];
        float f11 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        int i2 = 0;
        float f12 = 0.0f;
        while (true) {
            float f13 = 1.0f;
            if (i2 >= 100) {
                fArr2[100] = 1.0f;
                fArr[100] = 1.0f;
                return;
            }
            float f14 = i2 / 100.0f;
            float f15 = 1.0f;
            while (true) {
                f2 = ((f15 - f11) / 2.0f) + f11;
                f3 = f13 - f2;
                f4 = f2 * 3.0f * f3;
                f5 = f2 * f2 * f2;
                float f16 = (((f2 * 0.35000002f) + (f3 * 0.175f)) * f4) + f5;
                f6 = f13;
                if (Math.abs(f16 - f14) < 1.0E-5d) {
                    break;
                }
                if (f16 > f14) {
                    f15 = f2;
                } else {
                    f11 = f2;
                }
                f13 = f6;
            }
            float f17 = 0.5f;
            fArr[i2] = (((f3 * 0.5f) + f2) * f4) + f5;
            float f18 = f6;
            while (true) {
                f7 = ((f18 - f12) / 2.0f) + f12;
                f8 = f6 - f7;
                f9 = f7 * 3.0f * f8;
                f10 = f7 * f7 * f7;
                float f19 = (((f8 * f17) + f7) * f9) + f10;
                float f20 = f18;
                if (Math.abs(f19 - f14) >= 1.0E-5d) {
                    if (f19 > f14) {
                        f18 = f7;
                    } else {
                        f12 = f7;
                        f18 = f20;
                    }
                    f17 = 0.5f;
                }
            }
            fArr2[i2] = (((f7 * 0.35000002f) + (f8 * 0.175f)) * f9) + f10;
            i2++;
        }
    }

    public static FlingResult a(float f2) {
        float f3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float f4 = 1.0f;
        float fC = RangesKt.c(f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
        int i2 = (int) (100.0f * fC);
        if (i2 < 100) {
            float f5 = i2 / 100.0f;
            int i3 = i2 + 1;
            float[] fArr = f3411a;
            float f6 = fArr[i2];
            float f7 = (fArr[i3] - f6) / ((i3 / 100.0f) - f5);
            float fA = tr.a(fC, f5, f7, f6);
            f3 = f7;
            f4 = fA;
        }
        return new FlingResult(f4, f3);
    }
}
