package androidx.compose.material3.internal;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.interaction.DragInteraction;
import androidx.compose.foundation.interaction.FocusInteraction;
import androidx.compose.foundation.interaction.HoverInteraction;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class ElevationKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TweenSpec f7616a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final TweenSpec f7617b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final TweenSpec f7618c;

    static {
        CubicBezierEasing cubicBezierEasing = new CubicBezierEasing(0.4f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.6f, 1.0f);
        f7616a = new TweenSpec(120, 0, EasingKt.f3862a, 2, null);
        f7617b = new TweenSpec(150, 0, cubicBezierEasing, 2, null);
        f7618c = new TweenSpec(120, 0, cubicBezierEasing, 2, null);
    }

    /* JADX WARN: Code duplicated, block: B:6:0x0009 A[PHI: r1
      0x0009: PHI (r1v3 androidx.compose.animation.core.TweenSpec) = 
      (r1v0 androidx.compose.animation.core.TweenSpec)
      (r1v0 androidx.compose.animation.core.TweenSpec)
      (r1v0 androidx.compose.animation.core.TweenSpec)
      (r1v4 androidx.compose.animation.core.TweenSpec)
      (r1v4 androidx.compose.animation.core.TweenSpec)
      (r1v4 androidx.compose.animation.core.TweenSpec)
      (r1v4 androidx.compose.animation.core.TweenSpec)
     binds: [B:19:0x0022, B:22:0x0027, B:28:0x0033, B:5:0x0007, B:8:0x000d, B:11:0x0012, B:14:0x0017] A[DONT_GENERATE, DONT_INLINE]] */
    public static final Object a(Animatable animatable, float f2, Interaction interaction, Interaction interaction2, ContinuationImpl continuationImpl) {
        TweenSpec tweenSpec;
        TweenSpec tweenSpec2 = null;
        if (interaction2 != null) {
            boolean z = interaction2 instanceof PressInteraction.Press;
            tweenSpec = f7616a;
            if (z || (interaction2 instanceof DragInteraction.Start) || (interaction2 instanceof HoverInteraction.Enter) || (interaction2 instanceof FocusInteraction.Focus)) {
                tweenSpec2 = tweenSpec;
            }
        } else if (interaction != null) {
            boolean z2 = interaction instanceof PressInteraction.Press;
            tweenSpec = f7617b;
            if (z2 || (interaction instanceof DragInteraction.Start)) {
                tweenSpec2 = tweenSpec;
            } else if (interaction instanceof HoverInteraction.Enter) {
                tweenSpec2 = f7618c;
            } else if (interaction instanceof FocusInteraction.Focus) {
                tweenSpec2 = tweenSpec;
            }
        }
        TweenSpec tweenSpec3 = tweenSpec2;
        if (tweenSpec3 != null) {
            Object objC = Animatable.c(animatable, new Dp(f2), tweenSpec3, null, null, continuationImpl, 12);
            return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : Unit.f71739a;
        }
        Object objF = animatable.f(new Dp(f2), continuationImpl);
        return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
    }
}
