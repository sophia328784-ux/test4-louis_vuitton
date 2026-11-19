package androidx.compose.runtime;

import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobImpl;
import kotlinx.coroutines.JobKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\bB\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/compose/runtime/RememberedCoroutineScope;", "Lkotlinx/coroutines/CoroutineScope;", "Landroidx/compose/runtime/RememberObserver;", "Lkotlin/coroutines/CoroutineContext;", "parentContext", "overlayContext", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V", "Companion", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RememberedCoroutineScope implements CoroutineScope, RememberObserver {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final CoroutineContext f8111f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CoroutineContext f8112b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CoroutineContext f8113c;
    public final RememberedCoroutineScope d = this;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile CoroutineContext f8114e;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/runtime/RememberedCoroutineScope$Companion;", "", "Lkotlin/coroutines/CoroutineContext;", "CancelledCoroutineContext", "Lkotlin/coroutines/CoroutineContext;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        f8111f = new CancelledCoroutineContext();
    }

    public RememberedCoroutineScope(CoroutineContext coroutineContext, CoroutineContext coroutineContext2) {
        this.f8112b = coroutineContext;
        this.f8113c = coroutineContext2;
    }

    public final void a() {
        synchronized (this.d) {
            try {
                CoroutineContext coroutineContext = this.f8114e;
                if (coroutineContext == null) {
                    this.f8114e = f8111f;
                } else {
                    JobKt.b(coroutineContext, new ForgottenCoroutineScopeException());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void d() {
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void f() {
        a();
    }

    @Override // kotlinx.coroutines.CoroutineScope
    /* JADX INFO: renamed from: getCoroutineContext */
    public final CoroutineContext getF13444c() {
        CoroutineContext coroutineContextPlus;
        CoroutineContext coroutineContext = this.f8114e;
        if (coroutineContext == null || coroutineContext == f8111f) {
            CompositionErrorContextImpl compositionErrorContextImpl = (CompositionErrorContextImpl) this.f8112b.get(CompositionErrorContextImpl.f8559c);
            CoroutineContext rememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1 = compositionErrorContextImpl != null ? new RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1(CoroutineExceptionHandler.Key.f74649b, compositionErrorContextImpl, this) : EmptyCoroutineContext.f71840b;
            synchronized (this.d) {
                try {
                    coroutineContextPlus = this.f8114e;
                    if (coroutineContextPlus == null) {
                        CoroutineContext coroutineContext2 = this.f8112b;
                        coroutineContextPlus = coroutineContext2.plus(new JobImpl((Job) coroutineContext2.get(Job.Key.f74677b))).plus(this.f8113c).plus(rememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1);
                    } else if (coroutineContextPlus == f8111f) {
                        CoroutineContext coroutineContext3 = this.f8112b;
                        JobImpl jobImpl = new JobImpl((Job) coroutineContext3.get(Job.Key.f74677b));
                        jobImpl.cancel((CancellationException) new ForgottenCoroutineScopeException());
                        coroutineContextPlus = coroutineContext3.plus(jobImpl).plus(this.f8113c).plus(rememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1);
                    }
                    this.f8114e = coroutineContextPlus;
                } catch (Throwable th) {
                    throw th;
                }
            }
            coroutineContext = coroutineContextPlus;
        }
        coroutineContext.getClass();
        return coroutineContext;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void i() {
        a();
    }
}
