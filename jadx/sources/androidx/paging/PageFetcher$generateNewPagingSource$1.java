package androidx.paging;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.paging.PageFetcher", f = "PageFetcher.kt", l = {210}, m = "generateNewPagingSource")
final class PageFetcher$generateNewPagingSource$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public PageFetcher f18704b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PagingSource f18705c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ PageFetcher f18706e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f18707f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageFetcher$generateNewPagingSource$1(PageFetcher pageFetcher, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f18706e = pageFetcher;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f18707f |= Integer.MIN_VALUE;
        return PageFetcher.a(this.f18706e, null, this);
    }
}
