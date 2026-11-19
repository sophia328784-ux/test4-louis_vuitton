package kotlinx.coroutines;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlinx/coroutines/ChildHandleNode;", "Lkotlinx/coroutines/JobNode;", "Lkotlinx/coroutines/ChildHandle;", "Lkotlinx/coroutines/ChildJob;", "childJob", "<init>", "(Lkotlinx/coroutines/ChildJob;)V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
final class ChildHandleNode extends JobNode implements ChildHandle {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ChildJob f74642i;

    public ChildHandleNode(ChildJob childJob) {
        this.f74642i = childJob;
    }

    @Override // kotlinx.coroutines.ChildHandle
    public final boolean a(Throwable th) {
        return p().childCancelled(th);
    }

    @Override // kotlinx.coroutines.JobNode
    public final boolean q() {
        return true;
    }

    @Override // kotlinx.coroutines.JobNode
    public final void r(Throwable th) {
        this.f74642i.parentCancelled(p());
    }
}
