package kotlinx.coroutines;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/ChildContinuation;", "Lkotlinx/coroutines/JobNode;", "Lkotlinx/coroutines/CancellableContinuationImpl;", "child", "<init>", "(Lkotlinx/coroutines/CancellableContinuationImpl;)V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
final class ChildContinuation extends JobNode {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CancellableContinuationImpl f74641i;

    public ChildContinuation(CancellableContinuationImpl<?> cancellableContinuationImpl) {
        this.f74641i = cancellableContinuationImpl;
    }

    @Override // kotlinx.coroutines.JobNode
    public final boolean q() {
        return true;
    }

    @Override // kotlinx.coroutines.JobNode
    public final void r(Throwable th) {
        JobSupport jobSupportP = p();
        CancellableContinuationImpl cancellableContinuationImpl = this.f74641i;
        cancellableContinuationImpl.parentCancelled$kotlinx_coroutines_core(cancellableContinuationImpl.getContinuationCancellationCause(jobSupportP));
    }
}
