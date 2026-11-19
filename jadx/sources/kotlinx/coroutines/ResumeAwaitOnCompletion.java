package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlinx/coroutines/ResumeAwaitOnCompletion;", "T", "Lkotlinx/coroutines/JobNode;", "Lkotlinx/coroutines/CancellableContinuationImpl;", "continuation", "<init>", "(Lkotlinx/coroutines/CancellableContinuationImpl;)V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
final class ResumeAwaitOnCompletion<T> extends JobNode {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CancellableContinuationImpl f74709i;

    public ResumeAwaitOnCompletion(CancellableContinuationImpl<? super T> cancellableContinuationImpl) {
        this.f74709i = cancellableContinuationImpl;
    }

    @Override // kotlinx.coroutines.JobNode
    public final boolean q() {
        return false;
    }

    @Override // kotlinx.coroutines.JobNode
    public final void r(Throwable th) {
        Object state$kotlinx_coroutines_core = p().getState$kotlinx_coroutines_core();
        boolean z = state$kotlinx_coroutines_core instanceof CompletedExceptionally;
        CancellableContinuationImpl cancellableContinuationImpl = this.f74709i;
        if (z) {
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(ResultKt.a(((CompletedExceptionally) state$kotlinx_coroutines_core).f74648a));
        } else {
            Result.Companion companion2 = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(JobSupportKt.a(state$kotlinx_coroutines_core));
        }
    }
}
