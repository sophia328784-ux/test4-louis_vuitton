package androidx.compose.foundation.gestures.snapping;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpecKt;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004H\n"}, d2 = {"<anonymous>", "Landroidx/compose/foundation/gestures/snapping/AnimationResult;", "", "Landroidx/compose/animation/core/AnimationVector1D;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.snapping.SnapFlingBehavior$fling$result$1", f = "SnapFlingBehavior.kt", l = {134, 150}, m = "invokeSuspend", v = 1)
final class SnapFlingBehavior$fling$result$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super AnimationResult<Float, AnimationVector1D>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Ref$FloatRef f4859b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4860c;
    public final /* synthetic */ SnapFlingBehavior d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ float f4861e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function1 f4862f;
    public final /* synthetic */ ScrollScope g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SnapFlingBehavior$fling$result$1(SnapFlingBehavior snapFlingBehavior, float f2, Function1 function1, ScrollScope scrollScope, Continuation continuation) {
        super(2, continuation);
        this.d = snapFlingBehavior;
        this.f4861e = f2;
        this.f4862f = function1;
        this.g = scrollScope;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SnapFlingBehavior$fling$result$1(this.d, this.f4861e, this.f4862f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SnapFlingBehavior$fling$result$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [vz0] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        final Ref$FloatRef ref$FloatRef;
        Object objC;
        SnapFlingBehavior snapFlingBehavior = this.d;
        SnapLayoutInfoProvider snapLayoutInfoProvider = snapFlingBehavior.f4853a;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f4860c;
        final int i3 = 1;
        final Function1 function1 = this.f4862f;
        if (i2 == 0) {
            ResultKt.b(obj);
            DecayAnimationSpec decayAnimationSpec = snapFlingBehavior.f4854b;
            float f2 = this.f4861e;
            float fB = snapLayoutInfoProvider.b(f2, DecayAnimationSpecKt.a(decayAnimationSpec, Call.Parameters.DEFAULT_CAMERA_ZOOM, f2));
            if (Float.isNaN(fB)) {
                InlineClassHelperKt.c("calculateApproachOffset returned NaN. Please use a valid value.");
            }
            ref$FloatRef = new Ref$FloatRef();
            float fSignum = Math.signum(f2) * Math.abs(fB);
            ref$FloatRef.f71918b = fSignum;
            function1.invoke(new Float(fSignum));
            float f3 = ref$FloatRef.f71918b;
            final int i4 = 0;
            ?? r4 = new Function1() { // from class: vz0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    int i5 = i4;
                    Function1 function2 = function1;
                    Ref$FloatRef ref$FloatRef2 = ref$FloatRef;
                    float fFloatValue = ((Float) obj2).floatValue();
                    switch (i5) {
                        case 0:
                            float f4 = ref$FloatRef2.f71918b - fFloatValue;
                            ref$FloatRef2.f71918b = f4;
                            function2.invoke(Float.valueOf(f4));
                            break;
                        default:
                            float f5 = ref$FloatRef2.f71918b - fFloatValue;
                            ref$FloatRef2.f71918b = f5;
                            function2.invoke(Float.valueOf(f5));
                            break;
                    }
                    return Unit.f71739a;
                }
            };
            this.f4859b = ref$FloatRef;
            this.f4860c = 1;
            objC = SnapFlingBehavior.c(snapFlingBehavior, this.g, f3, this.f4861e, r4, this);
            if (objC != coroutineSingletons) {
            }
        }
        if (i2 != 1) {
            if (i2 == 2) {
                ResultKt.b(obj);
                return obj;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        Ref$FloatRef ref$FloatRef2 = this.f4859b;
        ResultKt.b(obj);
        ref$FloatRef = ref$FloatRef2;
        objC = obj;
        AnimationState animationState = (AnimationState) objC;
        float fA = snapLayoutInfoProvider.a(((Number) animationState.h()).floatValue());
        if (Float.isNaN(fA)) {
            InlineClassHelperKt.c("calculateSnapOffset returned NaN. Please use a valid value.");
        }
        ref$FloatRef.f71918b = fA;
        AnimationState animationStateB = AnimationStateKt.b(animationState, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 30);
        AnimationSpec animationSpec = snapFlingBehavior.f4855c;
        Function1 function2 = new Function1() { // from class: vz0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                int i5 = i3;
                Function1 function3 = function1;
                Ref$FloatRef ref$FloatRef3 = ref$FloatRef;
                float fFloatValue = ((Float) obj2).floatValue();
                switch (i5) {
                    case 0:
                        float f4 = ref$FloatRef3.f71918b - fFloatValue;
                        ref$FloatRef3.f71918b = f4;
                        function3.invoke(Float.valueOf(f4));
                        break;
                    default:
                        float f5 = ref$FloatRef3.f71918b - fFloatValue;
                        ref$FloatRef3.f71918b = f5;
                        function3.invoke(Float.valueOf(f5));
                        break;
                }
                return Unit.f71739a;
            }
        };
        this.f4859b = null;
        this.f4860c = 2;
        Object objB = SnapFlingBehaviorKt.b(this.g, fA, fA, animationStateB, animationSpec, function2, this);
        return objB == coroutineSingletons ? coroutineSingletons : objB;
    }
}
