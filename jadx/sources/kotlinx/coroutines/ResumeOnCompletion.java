package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlinx/coroutines/ResumeOnCompletion;", "Lkotlinx/coroutines/JobNode;", "Lkotlin/coroutines/Continuation;", "", "continuation", "<init>", "(Lkotlin/coroutines/Continuation;)V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
final class ResumeOnCompletion extends JobNode {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Continuation f74710i;

    public ResumeOnCompletion(Continuation<? super Unit> continuation) {
        this.f74710i = continuation;
    }

    @Override // kotlinx.coroutines.JobNode
    public final boolean q() {
        return false;
    }

    @Override // kotlinx.coroutines.JobNode
    public final void r(Throwable th) {
        Result.Companion companion = Result.INSTANCE;
        this.f74710i.resumeWith(Unit.f71739a);
    }
}
