package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpecKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.gestures.snapping.SnapFlingBehavior;
import androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import defpackage.j5;
import defpackage.p;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/gestures/AnchoredDraggableDefaults;", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class AnchoredDraggableDefaults {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TweenSpec f4336a = AnimationSpecKt.c(0, 0, null, 7);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final p f4337b = new p(24);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final DecayAnimationSpec f4338c = DecayAnimationSpecKt.b();
    public static final int d = 8;

    public static TargetedFlingBehavior a(AnchoredDraggableState anchoredDraggableState, Function1 function1, TweenSpec tweenSpec, Composer composer, int i2, int i3) {
        if ((i3 & 4) != 0) {
            tweenSpec = f4336a;
        }
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Density density = (Density) composer.k(CompositionLocalsKt.f10031h);
        int i4 = 0;
        boolean z = true;
        boolean zK = ((((i2 & 14) ^ 6) > 4 && composer.K(anchoredDraggableState)) || (i2 & 6) == 4) | composer.K(density);
        if ((((i2 & 112) ^ 48) <= 32 || !composer.K(function1)) && (i2 & 48) != 32) {
            z = false;
        }
        boolean zK2 = zK | z | composer.K(tweenSpec);
        Object objX = composer.x();
        if (zK2 || objX == Composer.Companion.f7939a) {
            DecayAnimationSpec decayAnimationSpec = AnchoredDraggableKt.f4347c;
            AnchoredDraggableKt$AnchoredDraggableLayoutInfoProvider$1 anchoredDraggableKt$AnchoredDraggableLayoutInfoProvider$1 = new AnchoredDraggableKt$AnchoredDraggableLayoutInfoProvider$1(anchoredDraggableState, function1, new j5(density, i4));
            float f2 = SnapFlingBehaviorKt.f4867a;
            objX = new SnapFlingBehavior(anchoredDraggableKt$AnchoredDraggableLayoutInfoProvider$1, decayAnimationSpec, tweenSpec);
            composer.q(objX);
        }
        return (TargetedFlingBehavior) objX;
    }
}
