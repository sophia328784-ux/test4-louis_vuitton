package androidx.compose.animation.core;

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
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.animation.core.SeekableTransitionState$seekTo$3", f = "Transition.kt", l = {496}, m = "invokeSuspend", v = 1)
final class SeekableTransitionState$seekTo$3 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3944b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f3945c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SeekableTransitionState f3946e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Transition f3947f;
    public final /* synthetic */ float g;

    /* JADX INFO: renamed from: androidx.compose.animation.core.SeekableTransitionState$seekTo$3$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.animation.core.SeekableTransitionState$seekTo$3$1", f = "Transition.kt", l = {518}, m = "invokeSuspend", v = 1)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f3948b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public /* synthetic */ Object f3949c;
        public final /* synthetic */ Object d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ Object f3950e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ SeekableTransitionState f3951f;
        public final /* synthetic */ Transition g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ float f3952h;

        /* JADX INFO: renamed from: androidx.compose.animation.core.SeekableTransitionState$seekTo$3$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
        @DebugMetadata(c = "androidx.compose.animation.core.SeekableTransitionState$seekTo$3$1$1", f = "Transition.kt", l = {514}, m = "invokeSuspend", v = 1)
        final class C00121 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f3953b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ SeekableTransitionState f3954c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00121(SeekableTransitionState seekableTransitionState, Continuation continuation) {
                super(2, continuation);
                this.f3954c = seekableTransitionState;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new C00121(this.f3954c, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C00121) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f3953b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    this.f3953b = 1;
                    if (SeekableTransitionState.g(this.f3954c, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } else {
                    if (i2 != 1) {
                        md.k("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.b(obj);
                }
                return Unit.f71739a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Object obj, Object obj2, SeekableTransitionState seekableTransitionState, Transition transition, float f2, Continuation continuation) {
            super(2, continuation);
            this.d = obj;
            this.f3950e = obj2;
            this.f3951f = seekableTransitionState;
            this.g = transition;
            this.f3952h = f2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f3950e, this.f3951f, this.g, this.f3952h, continuation);
            anonymousClass1.f3949c = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f3948b;
            SeekableTransitionState seekableTransitionState = this.f3951f;
            if (i2 == 0) {
                ResultKt.b(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.f3949c;
                Object obj2 = this.d;
                Object obj3 = this.f3950e;
                if (Intrinsics.c(obj2, obj3)) {
                    seekableTransitionState.o = null;
                    if (Intrinsics.c(((SnapshotMutableStateImpl) seekableTransitionState.f3922c).getF10755b(), obj2)) {
                        return Unit.f71739a;
                    }
                } else {
                    SeekableTransitionState.f(seekableTransitionState);
                }
                boolean zC = Intrinsics.c(obj2, obj3);
                float f2 = this.f3952h;
                if (!zC) {
                    Transition transition = this.g;
                    transition.r(obj2);
                    transition.p(0L);
                    ((SnapshotMutableStateImpl) seekableTransitionState.f3921b).setValue(obj2);
                    transition.l(f2);
                }
                SeekableTransitionState.Companion companion = SeekableTransitionState.s;
                seekableTransitionState.p(f2);
                if (seekableTransitionState.n.e()) {
                    BuildersKt.c(coroutineScope, null, null, new C00121(seekableTransitionState, null), 3);
                } else {
                    seekableTransitionState.m = Long.MIN_VALUE;
                }
                this.f3948b = 1;
                if (SeekableTransitionState.i(seekableTransitionState, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            SeekableTransitionState.Companion companion2 = SeekableTransitionState.s;
            seekableTransitionState.o();
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SeekableTransitionState$seekTo$3(Object obj, Object obj2, SeekableTransitionState seekableTransitionState, Transition transition, float f2, Continuation continuation) {
        super(1, continuation);
        this.f3945c = obj;
        this.d = obj2;
        this.f3946e = seekableTransitionState;
        this.f3947f = transition;
        this.g = f2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new SeekableTransitionState$seekTo$3(this.f3945c, this.d, this.f3946e, this.f3947f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((SeekableTransitionState$seekTo$3) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f3944b;
        if (i2 == 0) {
            ResultKt.b(obj);
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f3945c, this.d, this.f3946e, this.f3947f, this.g, null);
            this.f3944b = 1;
            if (CoroutineScopeKt.d(anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
