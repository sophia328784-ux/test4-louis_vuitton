package androidx.compose.runtime;

import androidx.compose.runtime.internal.AwaiterQueue;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0007B\u0019\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Landroidx/compose/runtime/BroadcastFrameClock;", "Landroidx/compose/runtime/MonotonicFrameClock;", "Lkotlin/Function0;", "", "onNewAwaiters", "<init>", "(Lkotlin/jvm/functions/Function0;)V", "FrameAwaiter", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class BroadcastFrameClock implements MonotonicFrameClock {
    public static final /* synthetic */ int d = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function0 f7921b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AwaiterQueue f7922c;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B)\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00028\u00000\u0003\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;", "R", "Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;", "Lkotlin/Function1;", "", "onFrame", "Lkotlinx/coroutines/CancellableContinuation;", "continuation", "<init>", "(Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CancellableContinuation;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class FrameAwaiter<R> extends AwaiterQueue.Awaiter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public CancellableContinuation f7923a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Function1 f7924b;

        public FrameAwaiter(Function1<? super Long, ? extends R> function1, CancellableContinuation<? super R> cancellableContinuation) {
            this.f7923a = cancellableContinuation;
            this.f7924b = function1;
        }

        @Override // androidx.compose.runtime.internal.AwaiterQueue.Awaiter
        public final void a() {
            this.f7924b = null;
            this.f7923a = null;
        }

        @Override // androidx.compose.runtime.internal.AwaiterQueue.Awaiter
        public final void b(Throwable th) {
            CancellableContinuation cancellableContinuation = this.f7923a;
            if (cancellableContinuation != null) {
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuation.resumeWith(ResultKt.a(th));
            }
        }
    }

    public BroadcastFrameClock(Function0<Unit> function0) {
        this.f7921b = function0;
        this.f7922c = new AwaiterQueue();
    }

    @Override // androidx.compose.runtime.MonotonicFrameClock
    public final Object c(Continuation continuation, Function1 function1) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.b(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        final CancellationHandle cancellationHandleA = this.f7922c.a(new FrameAwaiter(function1, cancellableContinuationImpl), this.f7921b);
        cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: androidx.compose.runtime.BroadcastFrameClock$withFrameNanos$2$1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                cancellationHandleA.cancel();
                return Unit.f71739a;
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        return result;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final Object fold(Object obj, Function2 function2) {
        return CoroutineContext.Element.DefaultImpls.a(this, obj, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext.Element get(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.b(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext minusKey(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.c(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext plus(CoroutineContext coroutineContext) {
        return CoroutineContext.Element.DefaultImpls.d(coroutineContext, this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BroadcastFrameClock() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ BroadcastFrameClock(Function0 function0, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : function0);
    }
}
