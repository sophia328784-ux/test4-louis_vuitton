package androidx.compose.animation.core;

import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.MutexImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.animation.core.TransitionKt$rememberTransition$2$1", f = "Transition.kt", l = {2194}, m = "invokeSuspend", v = 1)
final class TransitionKt$rememberTransition$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MutexImpl f4024b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TransitionState f4025c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ TransitionState f4026e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransitionKt$rememberTransition$2$1(TransitionState transitionState, Continuation continuation) {
        super(2, continuation);
        this.f4026e = transitionState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new TransitionKt$rememberTransition$2$1(this.f4026e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((TransitionKt$rememberTransition$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        TransitionState transitionState;
        MutexImpl mutexImpl;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.d;
        if (i2 == 0) {
            ResultKt.b(obj);
            TransitionState transitionState2 = this.f4026e;
            SeekableTransitionState seekableTransitionState = (SeekableTransitionState) transitionState2;
            SnapshotStateObserver snapshotStateObserver = seekableTransitionState.f3925h;
            if (snapshotStateObserver != null) {
                snapshotStateObserver.e(seekableTransitionState, TransitionKt.f4016a, seekableTransitionState.g);
            }
            MutexImpl mutexImpl2 = seekableTransitionState.f3928k;
            this.f4024b = mutexImpl2;
            this.f4025c = transitionState2;
            this.d = 1;
            if (mutexImpl2.c(this) == coroutineSingletons) {
                return coroutineSingletons;
            }
            transitionState = transitionState2;
            mutexImpl = mutexImpl2;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            transitionState = this.f4025c;
            mutexImpl = this.f4024b;
            ResultKt.b(obj);
        }
        try {
            ((SeekableTransitionState) transitionState).d = ((SnapshotMutableStateImpl) ((SeekableTransitionState) transitionState).f3921b).getF10755b();
            CancellableContinuationImpl cancellableContinuationImpl = ((SeekableTransitionState) transitionState).f3927j;
            if (cancellableContinuationImpl != null) {
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuationImpl.resumeWith(((SnapshotMutableStateImpl) ((SeekableTransitionState) transitionState).f3921b).getF10755b());
            }
            ((SeekableTransitionState) transitionState).f3927j = null;
            return Unit.f71739a;
        } finally {
            mutexImpl.d(null);
        }
    }
}
