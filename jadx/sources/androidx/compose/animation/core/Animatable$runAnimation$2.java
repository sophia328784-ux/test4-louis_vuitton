package androidx.compose.animation.core;

import androidx.compose.runtime.SnapshotMutableStateImpl;
import defpackage.k3;
import defpackage.md;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$BooleanRef;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\b\u0000\u0010\u0002\"\b\b\u0001\u0010\u0003*\u00020\u0004H\n"}, d2 = {"<anonymous>", "Landroidx/compose/animation/core/AnimationResult;", "T", "V", "Landroidx/compose/animation/core/AnimationVector;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.animation.core.Animatable$runAnimation$2", f = "Animatable.kt", l = {308}, m = "invokeSuspend", v = 1)
final class Animatable$runAnimation$2 extends SuspendLambda implements Function1<Continuation<? super AnimationResult<Object, AnimationVector>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AnimationState f3781b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Ref$BooleanRef f3782c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Animatable f3783e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f3784f;
    public final /* synthetic */ TargetBasedAnimation g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ long f3785h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Function1 f3786i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Animatable$runAnimation$2(Animatable animatable, Object obj, TargetBasedAnimation targetBasedAnimation, long j2, Function1 function1, Continuation continuation) {
        super(1, continuation);
        this.f3783e = animatable;
        this.f3784f = obj;
        this.g = targetBasedAnimation;
        this.f3785h = j2;
        this.f3786i = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new Animatable$runAnimation$2(this.f3783e, this.f3784f, this.g, this.f3785h, this.f3786i, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((Animatable$runAnimation$2) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        AnimationState animationState;
        Ref$BooleanRef ref$BooleanRef;
        TargetBasedAnimation targetBasedAnimation = this.g;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.d;
        Animatable animatable = this.f3783e;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                animatable.f3774c.d = (AnimationVector) animatable.f3772a.getF4034a().invoke(this.f3784f);
                ((SnapshotMutableStateImpl) animatable.f3775e).setValue(targetBasedAnimation.f3983c);
                ((SnapshotMutableStateImpl) animatable.d).setValue(Boolean.TRUE);
                AnimationState animationState2 = animatable.f3774c;
                AnimationState animationState3 = new AnimationState(animationState2.f3817b, ((SnapshotMutableStateImpl) animationState2.f3818c).getF10755b(), AnimationVectorsKt.a(animationState2.d), animationState2.f3819e, Long.MIN_VALUE, animationState2.g);
                Ref$BooleanRef ref$BooleanRef2 = new Ref$BooleanRef();
                long j2 = this.f3785h;
                k3 k3Var = new k3(1, animatable, animationState3, this.f3786i, ref$BooleanRef2, false);
                this.f3781b = animationState3;
                this.f3782c = ref$BooleanRef2;
                this.d = 1;
                if (SuspendAnimationKt.b(animationState3, targetBasedAnimation, j2, k3Var, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
                animationState = animationState3;
                ref$BooleanRef = ref$BooleanRef2;
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ref$BooleanRef = this.f3782c;
                animationState = this.f3781b;
                ResultKt.b(obj);
            }
            AnimationEndReason animationEndReason = ref$BooleanRef.f71917b ? AnimationEndReason.BoundReached : AnimationEndReason.Finished;
            Animatable.b(animatable);
            return new AnimationResult(animationState, animationEndReason);
        } catch (CancellationException e2) {
            Animatable.b(animatable);
            throw e2;
        }
    }
}
