package androidx.compose.animation.core;

import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"animation-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class EasingFunctionsKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CubicBezierEasing f3861a;

    static {
        new CubicBezierEasing(0.25f, 0.1f, 0.25f, 1.0f);
        new CubicBezierEasing(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.58f, 1.0f);
        new CubicBezierEasing(0.42f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f);
        f3861a = new CubicBezierEasing(0.42f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.58f, 1.0f);
        new CubicBezierEasing(0.12f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.39f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        new CubicBezierEasing(0.61f, 1.0f, 0.88f, 1.0f);
        new CubicBezierEasing(0.37f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.63f, 1.0f);
        new CubicBezierEasing(0.32f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.67f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        new CubicBezierEasing(0.33f, 1.0f, 0.68f, 1.0f);
        new CubicBezierEasing(0.65f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.35f, 1.0f);
        new CubicBezierEasing(0.64f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.78f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        new CubicBezierEasing(0.22f, 1.0f, 0.36f, 1.0f);
        new CubicBezierEasing(0.83f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.17f, 1.0f);
        new CubicBezierEasing(0.55f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 0.45f);
        new CubicBezierEasing(Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.55f, 0.45f, 1.0f);
        new CubicBezierEasing(0.85f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.15f, 1.0f);
        new CubicBezierEasing(0.11f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.5f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        new CubicBezierEasing(0.5f, 1.0f, 0.89f, 1.0f);
        new CubicBezierEasing(0.45f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.55f, 1.0f);
        new CubicBezierEasing(0.5f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.75f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        new CubicBezierEasing(0.25f, 1.0f, 0.5f, 1.0f);
        new CubicBezierEasing(0.76f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.24f, 1.0f);
        new CubicBezierEasing(0.7f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.84f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        new CubicBezierEasing(0.16f, 1.0f, 0.3f, 1.0f);
        new CubicBezierEasing(0.87f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.13f, 1.0f);
        new CubicBezierEasing(0.36f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.66f, -0.56f);
        new CubicBezierEasing(0.34f, 1.56f, 0.64f, 1.0f);
        new CubicBezierEasing(0.68f, -0.6f, 0.32f, 1.6f);
    }
}
