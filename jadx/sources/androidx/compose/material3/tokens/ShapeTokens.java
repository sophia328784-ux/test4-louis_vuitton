package androidx.compose.material3.tokens;

import androidx.compose.foundation.shape.CornerSize;
import androidx.compose.foundation.shape.CornerSizeKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/material3/tokens/ShapeTokens;", "", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class ShapeTokens {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final RoundedCornerShape f7840a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final RoundedCornerShape f7841b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final RoundedCornerShape f7842c;
    public static final RoundedCornerShape d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final RoundedCornerShape f7843e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final RoundedCornerShape f7844f;
    public static final RoundedCornerShape g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final RoundedCornerShape f7845h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final CornerSize f7846i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final CornerSize f7847j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final CornerSize f7848k;
    public static final CornerSize l;
    public static final CornerSize m;
    public static final CornerSize n;
    public static final CornerSize o;
    public static final CornerSize p;
    public static final CornerSize q;

    static {
        Dp.Companion companion = Dp.f11004c;
        f7840a = RoundedCornerShapeKt.a(48.0f);
        f7841b = RoundedCornerShapeKt.a(28.0f);
        f7842c = RoundedCornerShapeKt.a(32.0f);
        RoundedCornerShapeKt.b(28.0f, 28.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        d = RoundedCornerShapeKt.a(4.0f);
        RoundedCornerShapeKt.b(4.0f, 4.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        f7843e = RoundedCornerShapeKt.a(16.0f);
        RoundedCornerShapeKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 16.0f, 16.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        f7844f = RoundedCornerShapeKt.a(20.0f);
        RoundedCornerShapeKt.b(16.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 16.0f);
        RoundedCornerShapeKt.b(16.0f, 16.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        g = RoundedCornerShapeKt.a(12.0f);
        f7845h = RoundedCornerShapeKt.a(8.0f);
        f7846i = CornerSizeKt.b(48.0f);
        f7847j = CornerSizeKt.b(28.0f);
        f7848k = CornerSizeKt.b(32.0f);
        l = CornerSizeKt.b(4.0f);
        m = CornerSizeKt.b(16.0f);
        n = CornerSizeKt.b(20.0f);
        o = CornerSizeKt.b(12.0f);
        p = CornerSizeKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        q = CornerSizeKt.b(8.0f);
    }
}
