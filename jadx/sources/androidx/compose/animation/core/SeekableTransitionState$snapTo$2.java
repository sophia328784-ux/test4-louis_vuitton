package androidx.compose.animation.core;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.animation.core.SeekableTransitionState$snapTo$2", f = "Transition.kt", l = {465}, m = "invokeSuspend", v = 1)
final class SeekableTransitionState$snapTo$2 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3955b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SeekableTransitionState f3956c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Transition f3957e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SeekableTransitionState$snapTo$2(SeekableTransitionState seekableTransitionState, Transition transition, Object obj, Continuation continuation) {
        super(1, continuation);
        this.f3956c = seekableTransitionState;
        this.d = obj;
        this.f3957e = transition;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        Object obj = this.d;
        return new SeekableTransitionState$snapTo$2(this.f3956c, this.f3957e, obj, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((SeekableTransitionState$snapTo$2) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        float f2;
        SeekableTransitionState seekableTransitionState = this.f3956c;
        MutableState mutableState = seekableTransitionState.f3921b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f3955b;
        Transition transition = this.f3957e;
        if (i2 == 0) {
            ResultKt.b(obj);
            SeekableTransitionState.Companion companion = SeekableTransitionState.s;
            seekableTransitionState.l();
            seekableTransitionState.m = Long.MIN_VALUE;
            seekableTransitionState.p(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            Object f10755b = ((SnapshotMutableStateImpl) seekableTransitionState.f3922c).getF10755b();
            Object obj2 = this.d;
            if (Intrinsics.c(obj2, f10755b)) {
                f2 = -4.0f;
            } else {
                f2 = Intrinsics.c(obj2, ((SnapshotMutableStateImpl) mutableState).getF10755b()) ? -5.0f : -3.0f;
            }
            transition.r(obj2);
            transition.p(0L);
            ((SnapshotMutableStateImpl) mutableState).setValue(obj2);
            seekableTransitionState.p(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            seekableTransitionState.c(obj2);
            transition.l(f2);
            if (f2 == -3.0f) {
                this.f3955b = 1;
                if (SeekableTransitionState.i(seekableTransitionState, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        transition.k();
        return Unit.f71739a;
    }
}
