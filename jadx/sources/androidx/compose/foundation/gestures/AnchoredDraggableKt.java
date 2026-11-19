package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpecKt;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Dp;
import defpackage.f0;
import defpackage.md;
import defpackage.p;
import defpackage.v40;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlinx.coroutines.CoroutineScopeKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class AnchoredDraggableKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p f4345a = new p(25);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final p f4346b = new p(26);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final DecayAnimationSpec f4347c;

    static {
        Dp.Companion companion = Dp.f11004c;
        f4347c = DecayAnimationSpecKt.c(new AnchoredDraggableKt$NoOpDecayAnimationSpec$1());
    }

    public static final DraggableAnchors a(Function1 function1) {
        DraggableAnchorsConfig draggableAnchorsConfig = new DraggableAnchorsConfig();
        function1.invoke(draggableAnchorsConfig);
        float[] fArr = draggableAnchorsConfig.f4557b;
        ArrayList arrayList = draggableAnchorsConfig.f4556a;
        return new DefaultDraggableAnchors(arrayList, ArraysKt.p(fArr, arrayList.size()));
    }

    public static final Object b(AnchoredDraggableState anchoredDraggableState, float f2, AnchoredDragScope anchoredDragScope, DraggableAnchors draggableAnchors, Object obj, AnimationSpec animationSpec, SuspendLambda suspendLambda) {
        Object objA;
        float fC = draggableAnchors.c(obj);
        Ref$FloatRef ref$FloatRef = new Ref$FloatRef();
        ref$FloatRef.f71918b = Float.isNaN(((SnapshotMutableFloatStateImpl) anchoredDraggableState.f4404j).a()) ? Call.Parameters.DEFAULT_CAMERA_ZOOM : ((SnapshotMutableFloatStateImpl) anchoredDraggableState.f4404j).a();
        if (!Float.isNaN(fC)) {
            float f3 = ref$FloatRef.f71918b;
            if (f3 != fC && (objA = SuspendAnimationKt.a(f3, fC, f2, animationSpec, new f0(anchoredDragScope, ref$FloatRef, 6), suspendLambda)) == CoroutineSingletons.COROUTINE_SUSPENDED) {
                return objA;
            }
        }
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x008b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:33:0x008c A[RETURN] */
    public static final Object c(DraggableAnchors draggableAnchors, float f2, float f3, Function1 function1, Function0 function0) {
        if (Float.isNaN(f2)) {
            md.n("The offset provided to computeTarget must not be NaN.");
            return null;
        }
        boolean z = Math.abs(f3) > Call.Parameters.DEFAULT_CAMERA_ZOOM;
        boolean z2 = z && f3 > Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if (!z) {
            Object objB = draggableAnchors.b(f2);
            objB.getClass();
            return objB;
        }
        if (Math.abs(f3) >= Math.abs(((Number) function0.mo47invoke()).floatValue())) {
            Object objA = draggableAnchors.a(f2, z2);
            objA.getClass();
            return objA;
        }
        Object objA2 = draggableAnchors.a(f2, false);
        objA2.getClass();
        float fC = draggableAnchors.c(objA2);
        Object objA3 = draggableAnchors.a(f2, true);
        objA3.getClass();
        float fC2 = draggableAnchors.c(objA3);
        float fAbs = Math.abs(((Number) function1.invoke(Float.valueOf(Math.abs(fC - fC2)))).floatValue());
        if (!z2) {
            fC = fC2;
        }
        boolean z3 = Math.abs(fC - f2) >= fAbs;
        if (z3) {
            if (z2) {
                return objA3;
            }
            return objA2;
        }
        if (z3) {
            v40.g();
            return null;
        }
        if (z2) {
            return objA2;
        }
        return objA3;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object d(Function0 function0, Function2 function2, ContinuationImpl continuationImpl) {
        AnchoredDraggableKt$restartable$1 anchoredDraggableKt$restartable$1;
        if (continuationImpl instanceof AnchoredDraggableKt$restartable$1) {
            anchoredDraggableKt$restartable$1 = (AnchoredDraggableKt$restartable$1) continuationImpl;
            int i2 = anchoredDraggableKt$restartable$1.f4366c;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                anchoredDraggableKt$restartable$1.f4366c = i2 - Integer.MIN_VALUE;
            } else {
                anchoredDraggableKt$restartable$1 = new AnchoredDraggableKt$restartable$1(continuationImpl);
            }
        } else {
            anchoredDraggableKt$restartable$1 = new AnchoredDraggableKt$restartable$1(continuationImpl);
        }
        Object obj = anchoredDraggableKt$restartable$1.f4365b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = anchoredDraggableKt$restartable$1.f4366c;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                AnchoredDraggableKt$restartable$2 anchoredDraggableKt$restartable$2 = new AnchoredDraggableKt$restartable$2(function0, function2, null);
                anchoredDraggableKt$restartable$1.f4366c = 1;
                if (CoroutineScopeKt.d(anchoredDraggableKt$restartable$2, anchoredDraggableKt$restartable$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
        } catch (AnchoredDragFinishedSignal unused) {
        }
        return Unit.f71739a;
    }

    public static Modifier e(Modifier modifier, AnchoredDraggableState anchoredDraggableState, Orientation orientation, boolean z, TargetedFlingBehavior targetedFlingBehavior) {
        return modifier.o(new AnchoredDraggableElement(anchoredDraggableState, orientation, z, null, null, null, null, targetedFlingBehavior, 32, null));
    }

    public static Modifier f(Modifier modifier, AnchoredDraggableState anchoredDraggableState, boolean z, Orientation orientation, TargetedFlingBehavior targetedFlingBehavior) {
        return modifier.o(new AnchoredDraggableElement(anchoredDraggableState, orientation, true, Boolean.valueOf(z), null, null, null, targetedFlingBehavior, 32, null));
    }

    public static Object g(AnchoredDraggableState anchoredDraggableState, Object obj, Continuation continuation) {
        AnimationSpec animationSpec;
        if (anchoredDraggableState.c()) {
            animationSpec = anchoredDraggableState.d;
            if (animationSpec == null) {
                Intrinsics.h("snapAnimationSpec");
                throw null;
            }
        } else {
            animationSpec = AnchoredDraggableDefaults.f4336a;
        }
        int i2 = AnchoredDraggableState.p;
        Object objA = anchoredDraggableState.a(obj, MutatePriority.Default, new AnchoredDraggableKt$animateTo$4(anchoredDraggableState, animationSpec, null), (ContinuationImpl) continuation);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public static final Object h(AnchoredDraggableState anchoredDraggableState, Object obj, float f2, AnimationSpec animationSpec, DecayAnimationSpec decayAnimationSpec, ContinuationImpl continuationImpl) {
        AnchoredDraggableKt$animateToWithDecay$1 anchoredDraggableKt$animateToWithDecay$1;
        float f3;
        Ref$FloatRef ref$FloatRef;
        if (continuationImpl instanceof AnchoredDraggableKt$animateToWithDecay$1) {
            anchoredDraggableKt$animateToWithDecay$1 = (AnchoredDraggableKt$animateToWithDecay$1) continuationImpl;
            int i2 = anchoredDraggableKt$animateToWithDecay$1.f4357e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                anchoredDraggableKt$animateToWithDecay$1.f4357e = i2 - Integer.MIN_VALUE;
            } else {
                anchoredDraggableKt$animateToWithDecay$1 = new AnchoredDraggableKt$animateToWithDecay$1(continuationImpl);
            }
        } else {
            anchoredDraggableKt$animateToWithDecay$1 = new AnchoredDraggableKt$animateToWithDecay$1(continuationImpl);
        }
        AnchoredDraggableKt$animateToWithDecay$1 anchoredDraggableKt$animateToWithDecay$2 = anchoredDraggableKt$animateToWithDecay$1;
        Object obj2 = anchoredDraggableKt$animateToWithDecay$2.d;
        Object obj3 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = anchoredDraggableKt$animateToWithDecay$2.f4357e;
        if (i3 == 0) {
            ResultKt.b(obj2);
            Ref$FloatRef ref$FloatRef2 = new Ref$FloatRef();
            ref$FloatRef2.f71918b = f2;
            Function4 anchoredDraggableKt$animateToWithDecay$3 = new AnchoredDraggableKt$animateToWithDecay$2(anchoredDraggableState, f2, animationSpec, ref$FloatRef2, decayAnimationSpec, null);
            anchoredDraggableKt$animateToWithDecay$2.f4356c = ref$FloatRef2;
            anchoredDraggableKt$animateToWithDecay$2.f4355b = f2;
            anchoredDraggableKt$animateToWithDecay$2.f4357e = 1;
            int i4 = AnchoredDraggableState.p;
            if (anchoredDraggableState.a(obj, MutatePriority.Default, anchoredDraggableKt$animateToWithDecay$3, anchoredDraggableKt$animateToWithDecay$2) == obj3) {
                return obj3;
            }
            f3 = f2;
            ref$FloatRef = ref$FloatRef2;
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            f3 = anchoredDraggableKt$animateToWithDecay$2.f4355b;
            ref$FloatRef = anchoredDraggableKt$animateToWithDecay$2.f4356c;
            ResultKt.b(obj2);
        }
        return new Float(f3 - ref$FloatRef.f71918b);
    }

    public static Object i(AnchoredDraggableState anchoredDraggableState, Object obj, float f2, Continuation continuation) {
        AnimationSpec animationSpec;
        DecayAnimationSpec decayAnimationSpec;
        if (anchoredDraggableState.c()) {
            animationSpec = anchoredDraggableState.d;
            if (animationSpec == null) {
                Intrinsics.h("snapAnimationSpec");
                throw null;
            }
        } else {
            animationSpec = AnchoredDraggableDefaults.f4336a;
        }
        AnimationSpec animationSpec2 = animationSpec;
        if (anchoredDraggableState.c()) {
            decayAnimationSpec = anchoredDraggableState.f4400e;
            if (decayAnimationSpec == null) {
                Intrinsics.h("decayAnimationSpec");
                throw null;
            }
        } else {
            decayAnimationSpec = AnchoredDraggableDefaults.f4338c;
        }
        return h(anchoredDraggableState, obj, f2, animationSpec2, decayAnimationSpec, (ContinuationImpl) continuation);
    }

    public static final Object j(AnchoredDraggableState anchoredDraggableState, Object obj, Continuation continuation) {
        int i2 = AnchoredDraggableState.p;
        Object objA = anchoredDraggableState.a(obj, MutatePriority.Default, new AnchoredDraggableKt$snapTo$2(4, null), (ContinuationImpl) continuation);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
    }
}
