package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Pair;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.internal.ScopeCoroutine;
import kotlinx.coroutines.internal.ThreadContextKt;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\u0004\b\u0007\u0010\bR\u0016\u0010\n\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/UndispatchedCoroutine;", "T", "Lkotlinx/coroutines/internal/ScopeCoroutine;", "Lkotlin/coroutines/CoroutineContext;", MvelScriptManager.VAR_CONTEXT, "Lkotlin/coroutines/Continuation;", "uCont", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V", "", "threadLocalIsSet", "Z", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class UndispatchedCoroutine<T> extends ScopeCoroutine<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ThreadLocal f74719b;
    private volatile boolean threadLocalIsSet;

    /* JADX WARN: Illegal instructions before constructor call */
    public UndispatchedCoroutine(CoroutineContext coroutineContext, Continuation<? super T> continuation) {
        UndispatchedMarker undispatchedMarker = UndispatchedMarker.f74720b;
        super(coroutineContext.get(undispatchedMarker) == null ? coroutineContext.plus(undispatchedMarker) : coroutineContext, continuation);
        this.f74719b = new ThreadLocal();
        if (continuation.getContext().get(ContinuationInterceptor.INSTANCE) instanceof CoroutineDispatcher) {
            return;
        }
        Object objC = ThreadContextKt.c(coroutineContext, null);
        ThreadContextKt.a(coroutineContext, objC);
        P(coroutineContext, objC);
    }

    public final boolean N() {
        boolean z = this.threadLocalIsSet && this.f74719b.get() == null;
        this.f74719b.remove();
        return !z;
    }

    public final void O() {
        if (this.threadLocalIsSet) {
            Pair pair = (Pair) this.f74719b.get();
            if (pair != null) {
                ThreadContextKt.a((CoroutineContext) pair.f71705b, pair.f71706c);
            }
            this.f74719b.remove();
        }
    }

    public final void P(CoroutineContext coroutineContext, Object obj) {
        this.threadLocalIsSet = true;
        this.f74719b.set(new Pair(coroutineContext, obj));
    }

    @Override // kotlinx.coroutines.internal.ScopeCoroutine
    public final void afterCompletionUndispatched() {
        O();
    }

    @Override // kotlinx.coroutines.internal.ScopeCoroutine, kotlinx.coroutines.JobSupport
    public final void afterResume(Object obj) {
        O();
        Object objA = CompletionStateKt.a(obj);
        Continuation<T> continuation = this.uCont;
        CoroutineContext context = continuation.getContext();
        Object objC = ThreadContextKt.c(context, null);
        UndispatchedCoroutine undispatchedCoroutineC = objC != ThreadContextKt.f75141a ? CoroutineContextKt.c(continuation, context, objC) : null;
        try {
            this.uCont.resumeWith(objA);
        } finally {
            if (undispatchedCoroutineC == null || undispatchedCoroutineC.N()) {
                ThreadContextKt.a(context, objC);
            }
        }
    }
}
