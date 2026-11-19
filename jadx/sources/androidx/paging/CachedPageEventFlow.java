package androidx.paging;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001B#\u0012\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00040\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/paging/CachedPageEventFlow;", "", "T", "Lkotlinx/coroutines/flow/Flow;", "Landroidx/paging/PageEvent;", "src", "Lkotlinx/coroutines/CoroutineScope;", "scope", "<init>", "(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CachedPageEventFlow<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FlattenedPageController f18523a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SharedFlowImpl f18524b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SharedFlow f18525c;
    public final Job d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Flow f18526e;

    public CachedPageEventFlow(Flow<? extends PageEvent<T>> flow, CoroutineScope coroutineScope) {
        flow.getClass();
        coroutineScope.getClass();
        this.f18523a = new FlattenedPageController();
        SharedFlowImpl sharedFlowImplA = SharedFlowKt.a(1, Integer.MAX_VALUE, BufferOverflow.SUSPEND);
        this.f18524b = sharedFlowImplA;
        this.f18525c = FlowKt.x(sharedFlowImplA, new CachedPageEventFlow$sharedForDownstream$1(this, null));
        Job jobC = BuildersKt.c(coroutineScope, null, CoroutineStart.LAZY, new CachedPageEventFlow$job$1(flow, this, null), 1);
        jobC.invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: androidx.paging.CachedPageEventFlow$job$2$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                this.f18543c.f18524b.a(null);
                return Unit.f71739a;
            }
        });
        this.d = jobC;
        this.f18526e = FlowKt.t(new CachedPageEventFlow$downstreamFlow$1(this, null));
    }
}
