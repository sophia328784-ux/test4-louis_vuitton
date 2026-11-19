package androidx.compose.foundation.gestures.snapping;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpecKt;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.foundation.gestures.ScrollableKt$DefaultScrollMotionDurationScale$1;
import androidx.compose.foundation.gestures.TargetedFlingBehavior;
import defpackage.md;
import defpackage.vz0;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;", "Landroidx/compose/foundation/gestures/TargetedFlingBehavior;", "Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;", "snapLayoutInfoProvider", "Landroidx/compose/animation/core/DecayAnimationSpec;", "", "decayAnimationSpec", "Landroidx/compose/animation/core/AnimationSpec;", "snapAnimationSpec", "<init>", "(Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SnapFlingBehavior implements TargetedFlingBehavior {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SnapLayoutInfoProvider f4853a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DecayAnimationSpec f4854b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AnimationSpec f4855c;
    public final ScrollableKt$DefaultScrollMotionDurationScale$1 d = ScrollableKt.f4676c;

    public SnapFlingBehavior(SnapLayoutInfoProvider snapLayoutInfoProvider, DecayAnimationSpec<Float> decayAnimationSpec, AnimationSpec<Float> animationSpec) {
        this.f4853a = snapLayoutInfoProvider;
        this.f4854b = decayAnimationSpec;
        this.f4855c = animationSpec;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public static final Object c(SnapFlingBehavior snapFlingBehavior, ScrollScope scrollScope, float f2, float f3, vz0 vz0Var, ContinuationImpl continuationImpl) {
        SnapFlingBehavior$tryApproach$1 snapFlingBehavior$tryApproach$1;
        if (continuationImpl instanceof SnapFlingBehavior$tryApproach$1) {
            snapFlingBehavior$tryApproach$1 = (SnapFlingBehavior$tryApproach$1) continuationImpl;
            int i2 = snapFlingBehavior$tryApproach$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                snapFlingBehavior$tryApproach$1.d = i2 - Integer.MIN_VALUE;
            } else {
                snapFlingBehavior$tryApproach$1 = new SnapFlingBehavior$tryApproach$1(snapFlingBehavior, continuationImpl);
            }
        } else {
            snapFlingBehavior$tryApproach$1 = new SnapFlingBehavior$tryApproach$1(snapFlingBehavior, continuationImpl);
        }
        SnapFlingBehavior$tryApproach$1 snapFlingBehavior$tryApproach$2 = snapFlingBehavior$tryApproach$1;
        Object objA = snapFlingBehavior$tryApproach$2.f4865b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = snapFlingBehavior$tryApproach$2.d;
        if (i3 == 0) {
            ResultKt.b(objA);
            if (Math.abs(f2) == Call.Parameters.DEFAULT_CAMERA_ZOOM || Math.abs(f3) == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                return AnimationStateKt.a(f2, f3, 28);
            }
            snapFlingBehavior$tryApproach$2.d = 1;
            DecayAnimationSpec decayAnimationSpec = snapFlingBehavior.f4854b;
            ApproachAnimation decayApproachAnimation = Math.abs(DecayAnimationSpecKt.a(decayAnimationSpec, Call.Parameters.DEFAULT_CAMERA_ZOOM, f3)) >= Math.abs(f2) ? new DecayApproachAnimation(decayAnimationSpec) : new TargetApproachAnimation(snapFlingBehavior.f4855c);
            float f4 = SnapFlingBehaviorKt.f4867a;
            objA = decayApproachAnimation.a(scrollScope, new Float(f2), new Float(f3), vz0Var, snapFlingBehavior$tryApproach$2);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objA);
        }
        return ((AnimationResult) objA).f4843b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.compose.foundation.gestures.TargetedFlingBehavior
    public final Object b(ScrollScope scrollScope, float f2, Function1 function1, ContinuationImpl continuationImpl) throws Throwable {
        SnapFlingBehavior$performFling$1 snapFlingBehavior$performFling$1;
        if (continuationImpl instanceof SnapFlingBehavior$performFling$1) {
            snapFlingBehavior$performFling$1 = (SnapFlingBehavior$performFling$1) continuationImpl;
            int i2 = snapFlingBehavior$performFling$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                snapFlingBehavior$performFling$1.d = i2 - Integer.MIN_VALUE;
            } else {
                snapFlingBehavior$performFling$1 = new SnapFlingBehavior$performFling$1(this, continuationImpl);
            }
        } else {
            snapFlingBehavior$performFling$1 = new SnapFlingBehavior$performFling$1(this, continuationImpl);
        }
        Object objD = snapFlingBehavior$performFling$1.f4863b;
        Object obj = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = snapFlingBehavior$performFling$1.d;
        if (i3 == 0) {
            ResultKt.b(objD);
            snapFlingBehavior$performFling$1.d = 1;
            objD = d(scrollScope, f2, function1, snapFlingBehavior$performFling$1);
            if (objD == obj) {
                return obj;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objD);
        }
        AnimationResult animationResult = (AnimationResult) objD;
        float fFloatValue = ((Number) animationResult.f4842a).floatValue();
        AnimationState animationState = animationResult.f4843b;
        float fFloatValue2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if (fFloatValue != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            fFloatValue2 = ((Number) animationState.h()).floatValue();
        }
        return new Float(fFloatValue2);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object d(ScrollScope scrollScope, float f2, Function1 function1, ContinuationImpl continuationImpl) throws Throwable {
        SnapFlingBehavior$fling$1 snapFlingBehavior$fling$1;
        Function1 function2;
        if (continuationImpl instanceof SnapFlingBehavior$fling$1) {
            snapFlingBehavior$fling$1 = (SnapFlingBehavior$fling$1) continuationImpl;
            int i2 = snapFlingBehavior$fling$1.f4858e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                snapFlingBehavior$fling$1.f4858e = i2 - Integer.MIN_VALUE;
            } else {
                snapFlingBehavior$fling$1 = new SnapFlingBehavior$fling$1(this, continuationImpl);
            }
        } else {
            snapFlingBehavior$fling$1 = new SnapFlingBehavior$fling$1(this, continuationImpl);
        }
        Object objF = snapFlingBehavior$fling$1.f4857c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = snapFlingBehavior$fling$1.f4858e;
        if (i3 == 0) {
            ResultKt.b(objF);
            SnapFlingBehavior$fling$result$1 snapFlingBehavior$fling$result$1 = new SnapFlingBehavior$fling$result$1(this, f2, function1, scrollScope, null);
            snapFlingBehavior$fling$1.f4856b = function1;
            snapFlingBehavior$fling$1.f4858e = 1;
            objF = BuildersKt.f(this.d, snapFlingBehavior$fling$result$1, snapFlingBehavior$fling$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
            function2 = function1;
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            function2 = snapFlingBehavior$fling$1.f4856b;
            ResultKt.b(objF);
        }
        AnimationResult animationResult = (AnimationResult) objF;
        function2.invoke(new Float(Call.Parameters.DEFAULT_CAMERA_ZOOM));
        return animationResult;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof SnapFlingBehavior) {
            SnapFlingBehavior snapFlingBehavior = (SnapFlingBehavior) obj;
            if (Intrinsics.c(snapFlingBehavior.f4855c, this.f4855c) && Intrinsics.c(snapFlingBehavior.f4854b, this.f4854b) && Intrinsics.c(snapFlingBehavior.f4853a, this.f4853a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f4853a.hashCode() + ((this.f4854b.hashCode() + (this.f4855c.hashCode() * 31)) * 31);
    }
}
