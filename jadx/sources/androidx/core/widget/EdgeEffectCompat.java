package androidx.core.widget;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.EdgeEffect;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final class EdgeEffectCompat {

    public static class Api31Impl {
        public static EdgeEffect a(Context context, AttributeSet attributeSet) {
            try {
                return new EdgeEffect(context, attributeSet);
            } catch (Throwable unused) {
                return new EdgeEffect(context);
            }
        }

        public static float b(EdgeEffect edgeEffect) {
            try {
                return edgeEffect.getDistance();
            } catch (Throwable unused) {
                return Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
        }

        public static float c(EdgeEffect edgeEffect, float f2, float f3) {
            try {
                return edgeEffect.onPullDistance(f2, f3);
            } catch (Throwable unused) {
                edgeEffect.onPull(f2, f3);
                return Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
        }
    }

    @Deprecated
    public EdgeEffectCompat(Context context) {
        new EdgeEffect(context);
    }

    public static float a(EdgeEffect edgeEffect) {
        return Build.VERSION.SDK_INT >= 31 ? Api31Impl.b(edgeEffect) : Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public static float b(EdgeEffect edgeEffect, float f2, float f3) {
        if (Build.VERSION.SDK_INT >= 31) {
            return Api31Impl.c(edgeEffect, f2, f3);
        }
        edgeEffect.onPull(f2, f3);
        return f2;
    }
}
