package androidx.compose.foundation;

import android.os.Build;
import android.widget.EdgeEffect;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;
import kotlin.math.MathKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/EdgeEffectCompat;", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class EdgeEffectCompat {
    public static float a(EdgeEffect edgeEffect, float f2, float f3, Density density) {
        float f4 = EdgeEffectCompat_androidKt.f4197a;
        double f11002b = density.getF11002b() * 386.0878f * 160.0f * 0.84f;
        double dAbs = Math.abs(f2) * 0.35f;
        double d = ((double) EdgeEffectCompat_androidKt.f4197a) * f11002b;
        if (((float) (Math.exp((EdgeEffectCompat_androidKt.f4198b / EdgeEffectCompat_androidKt.f4199c) * Math.log(dAbs / d)) * d)) > b(edgeEffect) * f3) {
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        c(edgeEffect, MathKt.c(f2));
        return f2;
    }

    public static float b(EdgeEffect edgeEffect) {
        return Build.VERSION.SDK_INT >= 31 ? Api31Impl.b(edgeEffect) : Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public static void c(EdgeEffect edgeEffect, int i2) {
        if (Build.VERSION.SDK_INT >= 31) {
            edgeEffect.onAbsorb(i2);
        } else if (edgeEffect.isFinished()) {
            edgeEffect.onAbsorb(i2);
        }
    }

    public static float d(EdgeEffect edgeEffect, float f2, float f3) {
        if (Build.VERSION.SDK_INT >= 31) {
            return Api31Impl.c(edgeEffect, f2, f3);
        }
        edgeEffect.onPull(f2, f3);
        return f2;
    }

    public static void e(EdgeEffect edgeEffect, float f2) {
        if (!(edgeEffect instanceof GlowEdgeEffectCompat)) {
            edgeEffect.onRelease();
            return;
        }
        GlowEdgeEffectCompat glowEdgeEffectCompat = (GlowEdgeEffectCompat) edgeEffect;
        float f3 = glowEdgeEffectCompat.f4218b + f2;
        glowEdgeEffectCompat.f4218b = f3;
        if (Math.abs(f3) > glowEdgeEffectCompat.f4217a) {
            glowEdgeEffectCompat.onRelease();
        }
    }
}
