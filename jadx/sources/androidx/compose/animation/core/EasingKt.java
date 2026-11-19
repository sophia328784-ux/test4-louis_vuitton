package androidx.compose.animation.core;

import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.animation.core.EasingFunctionsKt;
import androidx.compose.animation.core.EasingKt;
import defpackage.ov;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"animation-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class EasingKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CubicBezierEasing f3862a = new CubicBezierEasing(0.4f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.2f, 1.0f);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final CubicBezierEasing f3863b = new CubicBezierEasing(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.2f, 1.0f);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final CubicBezierEasing f3864c = new CubicBezierEasing(0.4f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f);
    public static final ov d = new Easing() { // from class: ov

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f78667a = 1;

        @Override // androidx.compose.animation.core.Easing
        public final float a(float f2) {
            float f3;
            float f4;
            switch (this.f78667a) {
                case 0:
                    CubicBezierEasing cubicBezierEasing = EasingFunctionsKt.f3861a;
                    if (f2 < 0.36363637f) {
                        return 7.5625f * f2 * f2;
                    }
                    if (f2 < 0.72727275f) {
                        float f5 = f2 - 0.54545456f;
                        f3 = 7.5625f * f5 * f5;
                        f4 = 0.75f;
                    } else if (f2 < 0.90909094f) {
                        float f6 = f2 - 0.8181818f;
                        f3 = 7.5625f * f6 * f6;
                        f4 = 0.9375f;
                    } else {
                        float f7 = f2 - 0.95454544f;
                        f3 = 7.5625f * f7 * f7;
                        f4 = 0.984375f;
                    }
                    return f3 + f4;
                default:
                    CubicBezierEasing cubicBezierEasing2 = EasingKt.f3862a;
                    return f2;
            }
        }
    };
}
