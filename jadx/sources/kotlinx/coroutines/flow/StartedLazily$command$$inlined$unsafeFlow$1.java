package kotlinx.coroutines.flow;

import defpackage.md;
import defpackage.os;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref$BooleanRef;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001¨\u0006\u0002"}, d2 = {"kotlinx/coroutines/flow/StartedLazily$command$$inlined$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class StartedLazily$command$$inlined$unsafeFlow$1 implements Flow<SharingCommand> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ StateFlow f74989b;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.StartedLazily$command$$inlined$unsafeFlow$1$1, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.StartedLazily$command$$inlined$unsafeFlow$1", f = "SharingStarted.kt", l = {113}, m = "collect", v = 1)
    public final class AnonymousClass1 extends ContinuationImpl {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f74990b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f74991c;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f74990b = obj;
            this.f74991c |= Integer.MIN_VALUE;
            return StartedLazily$command$$inlined$unsafeFlow$1.this.f(null, this);
        }
    }

    public StartedLazily$command$$inlined$unsafeFlow$1(StateFlow stateFlow) {
        this.f74989b = stateFlow;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.Flow
    public final Object f(FlowCollector flowCollector, Continuation continuation) {
        AnonymousClass1 anonymousClass1;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            int i2 = anonymousClass1.f74991c;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                anonymousClass1.f74991c = i2 - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        Object obj = anonymousClass1.f74990b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = anonymousClass1.f74991c;
        if (i3 == 0) {
            ResultKt.b(obj);
            StartedLazily$command$1$1 startedLazily$command$1$1 = new StartedLazily$command$1$1(new Ref$BooleanRef(), flowCollector);
            anonymousClass1.f74991c = 1;
            if (this.f74989b.f(startedLazily$command$1$1, anonymousClass1) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        os.d();
        return null;
    }
}
