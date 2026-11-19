package androidx.paging;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001B)\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/paging/MulticastedPagingData;", "", "T", "Lkotlinx/coroutines/CoroutineScope;", "scope", "Landroidx/paging/PagingData;", "parent", "Landroidx/paging/ActiveFlowTracker;", "tracker", "<init>", "(Lkotlinx/coroutines/CoroutineScope;Landroidx/paging/PagingData;Landroidx/paging/ActiveFlowTracker;)V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
final class MulticastedPagingData<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CoroutineScope f18644a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PagingData f18645b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ActiveFlowTracker f18646c;
    public final CachedPageEventFlow d;

    public MulticastedPagingData(CoroutineScope coroutineScope, PagingData<T> pagingData, ActiveFlowTracker activeFlowTracker) {
        coroutineScope.getClass();
        pagingData.getClass();
        this.f18644a = coroutineScope;
        this.f18645b = pagingData;
        this.f18646c = activeFlowTracker;
        CachedPageEventFlow cachedPageEventFlow = new CachedPageEventFlow(pagingData.f18844a, coroutineScope);
        if (activeFlowTracker != null) {
            activeFlowTracker.a();
        }
        this.d = cachedPageEventFlow;
    }

    public /* synthetic */ MulticastedPagingData(CoroutineScope coroutineScope, PagingData pagingData, ActiveFlowTracker activeFlowTracker, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(coroutineScope, pagingData, (i2 & 4) != 0 ? null : activeFlowTracker);
    }
}
