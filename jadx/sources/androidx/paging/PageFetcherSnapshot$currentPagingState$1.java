package androidx.paging;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.sync.MutexImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.paging.PageFetcherSnapshot", f = "PageFetcherSnapshot.kt", l = {646}, m = "currentPagingState")
final class PageFetcherSnapshot$currentPagingState$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public PageFetcherSnapshot f18756b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PageFetcherSnapshotState.Holder f18757c;
    public MutexImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f18758e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ PageFetcherSnapshot f18759f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageFetcherSnapshot$currentPagingState$1(PageFetcherSnapshot pageFetcherSnapshot, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f18759f = pageFetcherSnapshot;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f18758e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f18759f.e(this);
    }
}
