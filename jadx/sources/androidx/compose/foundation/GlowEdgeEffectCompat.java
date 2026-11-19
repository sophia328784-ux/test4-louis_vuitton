package androidx.compose.foundation;

import android.content.Context;
import android.widget.EdgeEffect;
import androidx.compose.ui.unit.AndroidDensity_androidKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/GlowEdgeEffectCompat;", "Landroid/widget/EdgeEffect;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Landroid/content/Context;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class GlowEdgeEffectCompat extends EdgeEffect {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f4217a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f4218b;

    public GlowEdgeEffectCompat(Context context) {
        super(context);
        Density densityA = AndroidDensity_androidKt.a(context);
        Dp.Companion companion = Dp.f11004c;
        this.f4217a = densityA.getF11002b() * 1.0f;
    }

    @Override // android.widget.EdgeEffect
    public final void onAbsorb(int i2) {
        this.f4218b = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        super.onAbsorb(i2);
    }

    @Override // android.widget.EdgeEffect
    public final void onPull(float f2, float f3) {
        this.f4218b = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        super.onPull(f2, f3);
    }

    @Override // android.widget.EdgeEffect
    public final void onRelease() {
        this.f4218b = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        super.onRelease();
    }

    @Override // android.widget.EdgeEffect
    public final void onPull(float f2) {
        this.f4218b = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        super.onPull(f2);
    }
}
