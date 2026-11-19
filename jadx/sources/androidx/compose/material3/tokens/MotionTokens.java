package androidx.compose.material3.tokens;

import androidx.compose.animation.core.CubicBezierEasing;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/material3/tokens/MotionTokens;", "", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class MotionTokens {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CubicBezierEasing f7811a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final CubicBezierEasing f7812b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final CubicBezierEasing f7813c;

    static {
        new CubicBezierEasing(0.2f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
        f7811a = new CubicBezierEasing(0.3f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.8f, 0.15f);
        f7812b = new CubicBezierEasing(0.05f, 0.7f, 0.1f, 1.0f);
        new CubicBezierEasing(0.4f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.2f, 1.0f);
        new CubicBezierEasing(0.4f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f);
        new CubicBezierEasing(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.2f, 1.0f);
        new CubicBezierEasing(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f);
        f7813c = new CubicBezierEasing(0.2f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
        new CubicBezierEasing(0.3f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f);
        new CubicBezierEasing(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
    }
}
