package androidx.compose.animation.core;

import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.foundation.layout.g;
import androidx.compose.runtime.MonotonicFrameClockKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.MotionDurationScale;
import defpackage.jo0;
import defpackage.k21;
import defpackage.l01;
import defpackage.m21;
import defpackage.md;
import defpackage.p11;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"animation-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SuspendAnimationKt {
    public static final Object a(float f2, float f3, float f4, AnimationSpec animationSpec, Function2 function2, SuspendLambda suspendLambda) {
        TwoWayConverter twoWayConverter = VectorConvertersKt.f4036a;
        Float f5 = new Float(f2);
        Float f6 = new Float(f3);
        TwoWayConverterImpl twoWayConverterImpl = (TwoWayConverterImpl) twoWayConverter;
        AnimationVector animationVectorC = (AnimationVector) twoWayConverterImpl.f4034a.invoke(new Float(f4));
        if (animationVectorC == null) {
            animationVectorC = ((AnimationVector) twoWayConverterImpl.f4034a.invoke(f5)).c();
        }
        AnimationVector animationVector = animationVectorC;
        Object objB = b(new AnimationState(twoWayConverter, f5, animationVector, 0L, 0L, false, 56, null), new TargetBasedAnimation((AnimationSpec<Float>) animationSpec, (TwoWayConverter<Float, AnimationVector>) twoWayConverter, f5, f6, animationVector), Long.MIN_VALUE, new m21(function2, twoWayConverter, 0), suspendLambda);
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (objB != coroutineSingletons) {
            objB = Unit.f71739a;
        }
        return objB == coroutineSingletons ? objB : Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:65:0x0160  */
    /* JADX WARN: Code duplicated, block: B:68:0x016f  */
    /* JADX WARN: Code duplicated, block: B:8:0x0018  */
    public static final Object b(AnimationState animationState, Animation animation, long j2, final Function1 function1, ContinuationImpl continuationImpl) {
        SuspendAnimationKt$animate$4 suspendAnimationKt$animate$4;
        final Ref$ObjectRef ref$ObjectRef;
        final AnimationState animationState2;
        AnimationState animationState3;
        Ref$ObjectRef ref$ObjectRef2;
        Object objC;
        Function1 function2;
        AnimationScope animationScope;
        AnimationScope animationScope2;
        Object objC2;
        final Animation animation2 = animation;
        if (continuationImpl instanceof SuspendAnimationKt$animate$4) {
            suspendAnimationKt$animate$4 = (SuspendAnimationKt$animate$4) continuationImpl;
            int i2 = suspendAnimationKt$animate$4.g;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                suspendAnimationKt$animate$4.g = i2 - Integer.MIN_VALUE;
            } else {
                suspendAnimationKt$animate$4 = new SuspendAnimationKt$animate$4(continuationImpl);
            }
        } else {
            suspendAnimationKt$animate$4 = new SuspendAnimationKt$animate$4(continuationImpl);
        }
        SuspendAnimationKt$animate$4 suspendAnimationKt$animate$5 = suspendAnimationKt$animate$4;
        Object obj = suspendAnimationKt$animate$5.f3980f;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = suspendAnimationKt$animate$5.g;
        int i4 = 7;
        if (i3 == 0) {
            ResultKt.b(obj);
            final Object objF = animation2.f(0L);
            final AnimationVector animationVectorB = animation2.b(0L);
            ref$ObjectRef = new Ref$ObjectRef();
            if (j2 == Long.MIN_VALUE) {
                try {
                    final float fI = i(suspendAnimationKt$animate$5.getContext());
                    animationState2 = animationState;
                    try {
                        Function1 function3 = new Function1() { // from class: j21
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj2) {
                                long jLongValue = ((Long) obj2).longValue();
                                Animation animation3 = animation2;
                                TwoWayConverter f3855b = animation3.getF3855b();
                                Object g = animation3.getG();
                                AnimationState animationState4 = animationState2;
                                AnimationScope animationScope3 = new AnimationScope(objF, f3855b, animationVectorB, jLongValue, g, jLongValue, true, new k21(1, animationState4));
                                SuspendAnimationKt.h(animationScope3, jLongValue, fI, animation3, animationState4, function1);
                                ref$ObjectRef.f71921b = animationScope3;
                                return Unit.f71739a;
                            }
                        };
                        ref$ObjectRef2 = ref$ObjectRef;
                        try {
                            suspendAnimationKt$animate$5.f3977b = animationState2;
                            suspendAnimationKt$animate$5.f3978c = animation2;
                            suspendAnimationKt$animate$5.d = function1;
                            suspendAnimationKt$animate$5.f3979e = ref$ObjectRef2;
                            suspendAnimationKt$animate$5.g = 1;
                            if (animation2.a()) {
                                objC = InfiniteAnimationPolicyKt.a(function3, suspendAnimationKt$animate$5);
                            } else {
                                objC = MonotonicFrameClockKt.a(suspendAnimationKt$animate$5.getContext()).c(suspendAnimationKt$animate$5, new jo0(function3, i4));
                            }
                            if (objC != coroutineSingletons) {
                                animationState3 = animationState2;
                                function2 = function1;
                                ref$ObjectRef = ref$ObjectRef2;
                            }
                            return coroutineSingletons;
                        } catch (CancellationException e2) {
                            e = e2;
                            animationState3 = animationState2;
                            ref$ObjectRef = ref$ObjectRef2;
                            animationScope = (AnimationScope) ref$ObjectRef.f71921b;
                            if (animationScope != null) {
                                ((SnapshotMutableStateImpl) animationScope.f3816i).setValue(Boolean.FALSE);
                            }
                            animationScope2 = (AnimationScope) ref$ObjectRef.f71921b;
                            if (animationScope2 != null) {
                                animationState3.g = false;
                            }
                            throw e;
                        }
                    } catch (CancellationException e3) {
                        e = e3;
                        animationState3 = animationState2;
                        animationScope = (AnimationScope) ref$ObjectRef.f71921b;
                        if (animationScope != null) {
                            ((SnapshotMutableStateImpl) animationScope.f3816i).setValue(Boolean.FALSE);
                        }
                        animationScope2 = (AnimationScope) ref$ObjectRef.f71921b;
                        if (animationScope2 != null) {
                            animationState3.g = false;
                        }
                        throw e;
                    }
                } catch (CancellationException e4) {
                    e = e4;
                    animationState2 = animationState;
                }
            } else {
                ref$ObjectRef2 = ref$ObjectRef;
                try {
                    AnimationScope animationScope3 = new AnimationScope(objF, animation2.getF3855b(), animationVectorB, j2, animation2.getG(), j2, true, new k21(0, animationState));
                    h(animationScope3, j2, i(suspendAnimationKt$animate$5.getContext()), animation2, animationState, function1);
                    ref$ObjectRef2.f71921b = animationScope3;
                    animationState3 = animationState;
                    animation2 = animation;
                    function2 = function1;
                    ref$ObjectRef = ref$ObjectRef2;
                } catch (CancellationException e5) {
                    e = e5;
                    animationState3 = animationState;
                    ref$ObjectRef = ref$ObjectRef2;
                    animationScope = (AnimationScope) ref$ObjectRef.f71921b;
                    if (animationScope != null) {
                        ((SnapshotMutableStateImpl) animationScope.f3816i).setValue(Boolean.FALSE);
                    }
                    animationScope2 = (AnimationScope) ref$ObjectRef.f71921b;
                    if (animationScope2 != null) {
                        animationState3.g = false;
                    }
                    throw e;
                }
            }
        } else {
            if (i3 != 1 && i3 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ref$ObjectRef = suspendAnimationKt$animate$5.f3979e;
            function2 = suspendAnimationKt$animate$5.d;
            animation2 = suspendAnimationKt$animate$5.f3978c;
            animationState3 = suspendAnimationKt$animate$5.f3977b;
            try {
                ResultKt.b(obj);
            } catch (CancellationException e6) {
                e = e6;
                animationScope = (AnimationScope) ref$ObjectRef.f71921b;
                if (animationScope != null) {
                    ((SnapshotMutableStateImpl) animationScope.f3816i).setValue(Boolean.FALSE);
                }
                animationScope2 = (AnimationScope) ref$ObjectRef.f71921b;
                if (animationScope2 != null && animationScope2.g == animationState3.f3819e) {
                    animationState3.g = false;
                }
                throw e;
            }
        }
        do {
            Object obj2 = ref$ObjectRef.f71921b;
            obj2.getClass();
            if (!((Boolean) ((SnapshotMutableStateImpl) ((AnimationScope) obj2).f3816i).getF10755b()).booleanValue()) {
                return Unit.f71739a;
            }
            final float fI2 = i(suspendAnimationKt$animate$5.getContext());
            final Ref$ObjectRef ref$ObjectRef3 = ref$ObjectRef;
            final Function1 function4 = function2;
            final Animation animation3 = animation2;
            final AnimationState animationState4 = animationState3;
            try {
                Function1 function5 = new Function1() { // from class: l21
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        long jLongValue = ((Long) obj3).longValue();
                        Object obj4 = ref$ObjectRef3.f71921b;
                        obj4.getClass();
                        SuspendAnimationKt.h((AnimationScope) obj4, jLongValue, fI2, animation3, animationState4, function4);
                        return Unit.f71739a;
                    }
                };
                ref$ObjectRef = ref$ObjectRef3;
                animation2 = animation3;
                animationState3 = animationState4;
                function2 = function4;
                suspendAnimationKt$animate$5.f3977b = animationState3;
                suspendAnimationKt$animate$5.f3978c = animation2;
                suspendAnimationKt$animate$5.d = function2;
                suspendAnimationKt$animate$5.f3979e = ref$ObjectRef;
                suspendAnimationKt$animate$5.g = 2;
                if (animation2.a()) {
                    objC2 = InfiniteAnimationPolicyKt.a(function5, suspendAnimationKt$animate$5);
                } else {
                    objC2 = MonotonicFrameClockKt.a(suspendAnimationKt$animate$5.getContext()).c(suspendAnimationKt$animate$5, new jo0(function5, i4));
                }
            } catch (CancellationException e7) {
                e = e7;
                ref$ObjectRef = ref$ObjectRef3;
                animationState3 = animationState4;
                animationScope = (AnimationScope) ref$ObjectRef.f71921b;
                if (animationScope != null) {
                    ((SnapshotMutableStateImpl) animationScope.f3816i).setValue(Boolean.FALSE);
                }
                animationScope2 = (AnimationScope) ref$ObjectRef.f71921b;
                if (animationScope2 != null) {
                    animationState3.g = false;
                }
                throw e;
            }
        } while (objC2 != coroutineSingletons);
        return coroutineSingletons;
    }

    public static /* synthetic */ Object c(float f2, float f3, AnimationSpec animationSpec, Function2 function2, SuspendLambda suspendLambda, int i2) {
        if ((i2 & 8) != 0) {
            animationSpec = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 7, null);
        }
        return a(f2, f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, animationSpec, function2, suspendLambda);
    }

    public static final Object d(float f2, float f3, FloatDecayAnimationSpec floatDecayAnimationSpec, g gVar, Continuation continuation) {
        Object objB = b(AnimationStateKt.a(f2, f3, 28), new DecayAnimation(new DecayAnimationSpecImpl(floatDecayAnimationSpec), (TwoWayConverter<Float, AnimationVector1D>) VectorConvertersKt.f4036a, Float.valueOf(f2), new AnimationVector1D(f3)), Long.MIN_VALUE, new p11(gVar, 1), (SuspendLambda) continuation);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : Unit.f71739a;
    }

    public static final Object e(AnimationState animationState, DecayAnimationSpec decayAnimationSpec, boolean z, Function1 function1, ContinuationImpl continuationImpl) {
        Object objB = b(animationState, new DecayAnimation((DecayAnimationSpec<Object>) decayAnimationSpec, (TwoWayConverter<Object, AnimationVector>) animationState.f3817b, ((SnapshotMutableStateImpl) animationState.f3818c).getF10755b(), animationState.d), z ? animationState.f3819e : Long.MIN_VALUE, function1, continuationImpl);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : Unit.f71739a;
    }

    public static final Object f(AnimationState animationState, Float f2, AnimationSpec animationSpec, boolean z, Function1 function1, ContinuationImpl continuationImpl) {
        Object objB = b(animationState, new TargetBasedAnimation((AnimationSpec<Float>) animationSpec, (TwoWayConverter<Float, AnimationVector>) animationState.f3817b, (Float) ((SnapshotMutableStateImpl) animationState.f3818c).getF10755b(), f2, animationState.d), z ? animationState.f3819e : Long.MIN_VALUE, function1, continuationImpl);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : Unit.f71739a;
    }

    public static /* synthetic */ Object g(AnimationState animationState, Float f2, AnimationSpec animationSpec, boolean z, Function1 function1, ContinuationImpl continuationImpl, int i2) {
        if ((i2 & 2) != 0) {
            animationSpec = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 7, null);
        }
        AnimationSpec animationSpec2 = animationSpec;
        if ((i2 & 4) != 0) {
            z = false;
        }
        boolean z2 = z;
        if ((i2 & 8) != 0) {
            function1 = new l01(21);
        }
        return f(animationState, f2, animationSpec2, z2, function1, continuationImpl);
    }

    public static final void h(AnimationScope animationScope, long j2, float f2, Animation animation, AnimationState animationState, Function1 function1) {
        long jD = f2 == Call.Parameters.DEFAULT_CAMERA_ZOOM ? animation.getF3859h() : (long) ((j2 - animationScope.f3812c) / f2);
        animationScope.g = j2;
        ((SnapshotMutableStateImpl) animationScope.f3813e).setValue(animation.f(jD));
        animationScope.f3814f = animation.b(jD);
        if (animation.c(jD)) {
            animationScope.f3815h = animationScope.g;
            ((SnapshotMutableStateImpl) animationScope.f3816i).setValue(Boolean.FALSE);
        }
        j(animationScope, animationState);
        function1.invoke(animationScope);
    }

    public static final float i(CoroutineContext coroutineContext) {
        MotionDurationScale motionDurationScale = (MotionDurationScale) coroutineContext.get(MotionDurationScale.Key.f8616b);
        float fM = motionDurationScale != null ? motionDurationScale.m() : 1.0f;
        if (fM >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return fM;
        }
        PreconditionsKt.b("negative scale factor");
        return fM;
    }

    public static final void j(AnimationScope animationScope, AnimationState animationState) {
        ((SnapshotMutableStateImpl) animationState.f3818c).setValue(((SnapshotMutableStateImpl) animationScope.f3813e).getF10755b());
        AnimationVector animationVector = animationState.d;
        AnimationVector animationVector2 = animationScope.f3814f;
        int f3832e = animationVector.getF3832e();
        for (int i2 = 0; i2 < f3832e; i2++) {
            animationVector.e(animationVector2.a(i2), i2);
        }
        animationState.f3820f = animationScope.f3815h;
        animationState.f3819e = animationScope.g;
        animationState.g = ((Boolean) ((SnapshotMutableStateImpl) animationScope.f3816i).getF10755b()).booleanValue();
    }
}
