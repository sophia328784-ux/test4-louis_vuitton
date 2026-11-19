package androidx.compose.runtime;

import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.internal.ContextScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002B8\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012'\u0010\u000b\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0005¢\u0006\u0002\b\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/compose/runtime/LaunchedEffectImpl;", "Landroidx/compose/runtime/RememberObserver;", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "Lkotlin/coroutines/CoroutineContext;", "parentCoroutineContext", "Lkotlin/Function2;", "Lkotlinx/coroutines/CoroutineScope;", "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", "task", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LaunchedEffectImpl implements RememberObserver, CoroutineExceptionHandler {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CoroutineContext f8016b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function2 f8017c;
    public final ContextScope d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Job f8018e;

    public LaunchedEffectImpl(CoroutineContext coroutineContext, Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object> function2) {
        this.f8016b = coroutineContext;
        this.f8017c = function2;
        this.d = CoroutineScopeKt.a(coroutineContext.plus(this));
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void d() {
        Job job = this.f8018e;
        if (job != null) {
            CancellationException cancellationException = new CancellationException("Old job was still running!");
            cancellationException.initCause(null);
            job.cancel(cancellationException);
        }
        this.f8018e = BuildersKt.c(this.d, null, null, this.f8017c, 3);
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void f() {
        Job job = this.f8018e;
        if (job != null) {
            job.cancel(new LeftCompositionCancellationException());
        }
        this.f8018e = null;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final Object fold(Object obj, Function2 function2) {
        return CoroutineContext.Element.DefaultImpls.a(this, obj, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext.Element get(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.b(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public final CoroutineContext.Key getKey() {
        return CoroutineExceptionHandler.Key.f74649b;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void i() {
        Job job = this.f8018e;
        if (job != null) {
            job.cancel(new LeftCompositionCancellationException());
        }
        this.f8018e = null;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext minusKey(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.c(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext plus(CoroutineContext coroutineContext) {
        return CoroutineContext.Element.DefaultImpls.d(coroutineContext, this);
    }

    @Override // kotlinx.coroutines.CoroutineExceptionHandler
    public final void q(Throwable th, CoroutineContext coroutineContext) throws Throwable {
        CompositionErrorContextImpl compositionErrorContextImpl = (CompositionErrorContextImpl) coroutineContext.get(CompositionErrorContextImpl.f8559c);
        if (compositionErrorContextImpl != null) {
            compositionErrorContextImpl.d(this, th);
        }
        CoroutineExceptionHandler coroutineExceptionHandler = (CoroutineExceptionHandler) this.f8016b.get(CoroutineExceptionHandler.Key.f74649b);
        if (coroutineExceptionHandler == null) {
            throw th;
        }
        coroutineExceptionHandler.q(th, coroutineContext);
    }
}
