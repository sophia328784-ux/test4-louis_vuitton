package androidx.compose.foundation.gestures.snapping;

import androidx.compose.animation.SplineBasedFloatDecayAnimationSpec_androidKt;
import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.gestures.TargetedFlingBehavior;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import defpackage.md;
import defpackage.wz0;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$FloatRef;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SnapFlingBehaviorKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f4867a;

    static {
        Dp.Companion companion = Dp.f11004c;
        f4867a = 400.0f;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object a(ScrollScope scrollScope, float f2, AnimationState animationState, DecayAnimationSpec decayAnimationSpec, Function1 function1, ContinuationImpl continuationImpl) {
        SnapFlingBehaviorKt$animateDecay$1 snapFlingBehaviorKt$animateDecay$1;
        float f3;
        Ref$FloatRef ref$FloatRef;
        if (continuationImpl instanceof SnapFlingBehaviorKt$animateDecay$1) {
            snapFlingBehaviorKt$animateDecay$1 = (SnapFlingBehaviorKt$animateDecay$1) continuationImpl;
            int i2 = snapFlingBehaviorKt$animateDecay$1.f4871f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                snapFlingBehaviorKt$animateDecay$1.f4871f = i2 - Integer.MIN_VALUE;
            } else {
                snapFlingBehaviorKt$animateDecay$1 = new SnapFlingBehaviorKt$animateDecay$1(continuationImpl);
            }
        } else {
            snapFlingBehaviorKt$animateDecay$1 = new SnapFlingBehaviorKt$animateDecay$1(continuationImpl);
        }
        Object obj = snapFlingBehaviorKt$animateDecay$1.f4870e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = snapFlingBehaviorKt$animateDecay$1.f4871f;
        if (i3 == 0) {
            ResultKt.b(obj);
            Ref$FloatRef ref$FloatRef2 = new Ref$FloatRef();
            boolean z = ((Number) animationState.h()).floatValue() == Call.Parameters.DEFAULT_CAMERA_ZOOM;
            wz0 wz0Var = new wz0(f2, ref$FloatRef2, scrollScope, function1, 0);
            snapFlingBehaviorKt$animateDecay$1.f4869c = animationState;
            snapFlingBehaviorKt$animateDecay$1.d = ref$FloatRef2;
            snapFlingBehaviorKt$animateDecay$1.f4868b = f2;
            snapFlingBehaviorKt$animateDecay$1.f4871f = 1;
            if (SuspendAnimationKt.e(animationState, decayAnimationSpec, !z, wz0Var, snapFlingBehaviorKt$animateDecay$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
            f3 = f2;
            ref$FloatRef = ref$FloatRef2;
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            f3 = snapFlingBehaviorKt$animateDecay$1.f4868b;
            ref$FloatRef = snapFlingBehaviorKt$animateDecay$1.d;
            animationState = snapFlingBehaviorKt$animateDecay$1.f4869c;
            ResultKt.b(obj);
        }
        return new AnimationResult(new Float(f3 - ref$FloatRef.f71918b), animationState);
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0018  */
    public static final Object b(ScrollScope scrollScope, float f2, float f3, AnimationState animationState, AnimationSpec animationSpec, Function1 function1, ContinuationImpl continuationImpl) {
        SnapFlingBehaviorKt$animateWithTarget$1 snapFlingBehaviorKt$animateWithTarget$1;
        float fFloatValue;
        AnimationState animationState2;
        Ref$FloatRef ref$FloatRef;
        float f4 = f2;
        if (continuationImpl instanceof SnapFlingBehaviorKt$animateWithTarget$1) {
            snapFlingBehaviorKt$animateWithTarget$1 = (SnapFlingBehaviorKt$animateWithTarget$1) continuationImpl;
            int i2 = snapFlingBehaviorKt$animateWithTarget$1.g;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                snapFlingBehaviorKt$animateWithTarget$1.g = i2 - Integer.MIN_VALUE;
            } else {
                snapFlingBehaviorKt$animateWithTarget$1 = new SnapFlingBehaviorKt$animateWithTarget$1(continuationImpl);
            }
        } else {
            snapFlingBehaviorKt$animateWithTarget$1 = new SnapFlingBehaviorKt$animateWithTarget$1(continuationImpl);
        }
        SnapFlingBehaviorKt$animateWithTarget$1 snapFlingBehaviorKt$animateWithTarget$2 = snapFlingBehaviorKt$animateWithTarget$1;
        Object obj = snapFlingBehaviorKt$animateWithTarget$2.f4875f;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = snapFlingBehaviorKt$animateWithTarget$2.g;
        if (i3 == 0) {
            ResultKt.b(obj);
            Ref$FloatRef ref$FloatRef2 = new Ref$FloatRef();
            fFloatValue = ((Number) animationState.h()).floatValue();
            Float f5 = new Float(f4);
            boolean z = ((Number) animationState.h()).floatValue() == Call.Parameters.DEFAULT_CAMERA_ZOOM;
            wz0 wz0Var = new wz0(f3, ref$FloatRef2, scrollScope, function1, 1);
            snapFlingBehaviorKt$animateWithTarget$2.d = animationState;
            snapFlingBehaviorKt$animateWithTarget$2.f4874e = ref$FloatRef2;
            snapFlingBehaviorKt$animateWithTarget$2.f4872b = f4;
            snapFlingBehaviorKt$animateWithTarget$2.f4873c = fFloatValue;
            snapFlingBehaviorKt$animateWithTarget$2.g = 1;
            if (SuspendAnimationKt.f(animationState, f5, animationSpec, !z, wz0Var, snapFlingBehaviorKt$animateWithTarget$2) == coroutineSingletons) {
                return coroutineSingletons;
            }
            animationState2 = animationState;
            ref$FloatRef = ref$FloatRef2;
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            float f6 = snapFlingBehaviorKt$animateWithTarget$2.f4873c;
            float f7 = snapFlingBehaviorKt$animateWithTarget$2.f4872b;
            ref$FloatRef = snapFlingBehaviorKt$animateWithTarget$2.f4874e;
            animationState2 = snapFlingBehaviorKt$animateWithTarget$2.d;
            ResultKt.b(obj);
            fFloatValue = f6;
            f4 = f7;
        }
        return new AnimationResult(new Float(f4 - ref$FloatRef.f71918b), AnimationStateKt.b(animationState2, Call.Parameters.DEFAULT_CAMERA_ZOOM, d(((Number) animationState2.h()).floatValue(), fFloatValue), 29));
    }

    public static final void c(AnimationScope animationScope, ScrollScope scrollScope, Function1 function1, float f2) {
        float fE;
        try {
            fE = scrollScope.e(f2);
        } catch (CancellationException unused) {
            animationScope.a();
            fE = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        function1.invoke(Float.valueOf(fE));
        if (Math.abs(f2 - fE) > 0.5f) {
            animationScope.a();
        }
    }

    public static final float d(float f2, float f3) {
        if (f3 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        return (f3 <= Call.Parameters.DEFAULT_CAMERA_ZOOM ? f2 >= f3 : f2 <= f3) ? f2 : f3;
    }

    public static final TargetedFlingBehavior e(SnapLayoutInfoProvider snapLayoutInfoProvider, Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Object obj = (Density) composer.k(CompositionLocalsKt.f10031h);
        DecayAnimationSpec decayAnimationSpecA = SplineBasedFloatDecayAnimationSpec_androidKt.a(composer);
        boolean zK = composer.K(obj) | composer.K(snapLayoutInfoProvider) | composer.K(decayAnimationSpecA);
        Object objX = composer.x();
        if (zK || objX == Composer.Companion.f7939a) {
            objX = new SnapFlingBehavior(snapLayoutInfoProvider, decayAnimationSpecA, AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 5, null));
            composer.q(objX);
        }
        return (TargetedFlingBehavior) objX;
    }
}
