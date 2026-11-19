package kotlinx.coroutines;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/DisposeOnCompletion;", "Lkotlinx/coroutines/JobNode;", "Lkotlinx/coroutines/DisposableHandle;", "handle", "<init>", "(Lkotlinx/coroutines/DisposableHandle;)V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
final class DisposeOnCompletion extends JobNode {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final DisposableHandle f74663i;

    public DisposeOnCompletion(DisposableHandle disposableHandle) {
        this.f74663i = disposableHandle;
    }

    @Override // kotlinx.coroutines.JobNode
    public final boolean q() {
        return false;
    }

    @Override // kotlinx.coroutines.JobNode
    public final void r(Throwable th) {
        this.f74663i.dispose();
    }
}
