package kotlinx.coroutines;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0011\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlinx/coroutines/JobImpl;", "Lkotlinx/coroutines/JobSupport;", "Lkotlinx/coroutines/CompletableJob;", "Lkotlinx/coroutines/Job;", "parent", "<init>", "(Lkotlinx/coroutines/Job;)V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public class JobImpl extends JobSupport implements CompletableJob {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f74679b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JobImpl(Job job) {
        super(true);
        boolean z = true;
        initParentJob(job);
        ChildHandle parentHandle$kotlinx_coroutines_core = getParentHandle$kotlinx_coroutines_core();
        ChildHandleNode childHandleNode = parentHandle$kotlinx_coroutines_core instanceof ChildHandleNode ? (ChildHandleNode) parentHandle$kotlinx_coroutines_core : null;
        if (childHandleNode == null) {
            z = false;
            break;
        }
        JobSupport jobSupportP = childHandleNode.p();
        while (!jobSupportP.getF74679b()) {
            ChildHandle parentHandle$kotlinx_coroutines_core2 = jobSupportP.getParentHandle$kotlinx_coroutines_core();
            ChildHandleNode childHandleNode2 = parentHandle$kotlinx_coroutines_core2 instanceof ChildHandleNode ? (ChildHandleNode) parentHandle$kotlinx_coroutines_core2 : null;
            if (childHandleNode2 == null) {
                z = false;
                break;
            }
            jobSupportP = childHandleNode2.p();
        }
        this.f74679b = z;
    }

    @Override // kotlinx.coroutines.JobSupport
    /* JADX INFO: renamed from: getHandlesException$kotlinx_coroutines_core, reason: from getter */
    public final boolean getF74679b() {
        return this.f74679b;
    }

    @Override // kotlinx.coroutines.JobSupport
    public final boolean getOnCancelComplete$kotlinx_coroutines_core() {
        return true;
    }
}
