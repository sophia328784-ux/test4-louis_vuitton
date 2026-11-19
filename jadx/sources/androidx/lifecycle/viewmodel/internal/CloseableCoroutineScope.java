package androidx.lifecycle.viewmodel.internal;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00060\u0001j\u0002`\u00022\u00020\u0003B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B\u0011\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\t¨\u0006\n"}, d2 = {"Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;", "Ljava/lang/AutoCloseable;", "Lkotlin/AutoCloseable;", "Lkotlinx/coroutines/CoroutineScope;", "Lkotlin/coroutines/CoroutineContext;", "coroutineContext", "<init>", "(Lkotlin/coroutines/CoroutineContext;)V", "coroutineScope", "(Lkotlinx/coroutines/CoroutineScope;)V", "lifecycle-viewmodel"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CloseableCoroutineScope implements AutoCloseable, CoroutineScope {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CoroutineContext f13609b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CloseableCoroutineScope(CoroutineScope coroutineScope) {
        this(coroutineScope.getF13609b());
        coroutineScope.getClass();
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        JobKt.b(this.f13609b, null);
    }

    @Override // kotlinx.coroutines.CoroutineScope
    /* JADX INFO: renamed from: getCoroutineContext, reason: from getter */
    public final CoroutineContext getF13609b() {
        return this.f13609b;
    }

    public CloseableCoroutineScope(CoroutineContext coroutineContext) {
        coroutineContext.getClass();
        this.f13609b = coroutineContext;
    }
}
