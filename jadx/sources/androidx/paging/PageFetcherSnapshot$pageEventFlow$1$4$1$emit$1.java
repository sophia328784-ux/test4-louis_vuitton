package androidx.paging;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.paging.PageFetcherSnapshot$pageEventFlow$1$4$1", f = "PageFetcherSnapshot.kt", l = {646, 658, 125, 669, 128, 680, 692, 125, 703, 128, 714, 726, 125, 737, 128, 748}, m = "emit")
final class PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f18791b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f18792c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f18793e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f18794f;
    public Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Object f18795h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public PageFetcherSnapshot f18796i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public /* synthetic */ Object f18797j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ PageFetcherSnapshot$pageEventFlow$1.AnonymousClass4.AnonymousClass1 f18798k;
    public int l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1(PageFetcherSnapshot$pageEventFlow$1.AnonymousClass4.AnonymousClass1 anonymousClass1, Continuation continuation) {
        super(continuation);
        this.f18798k = anonymousClass1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f18797j = obj;
        this.l |= Integer.MIN_VALUE;
        return this.f18798k.b(this);
    }
}
