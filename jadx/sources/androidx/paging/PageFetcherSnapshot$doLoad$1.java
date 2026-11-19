package androidx.paging;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.sync.MutexImpl;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.paging.PageFetcherSnapshot", f = "PageFetcherSnapshot.kt", l = {647, 658, 415, 424, 679, Sink.Video.MAX_DIMENSION_LOW, 472, 741, 495, 521, 752}, m = "doLoad")
final class PageFetcherSnapshot$doLoad$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f18765b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f18766c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f18767e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f18768f;
    public Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Object f18769h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Object f18770i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Object f18771j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Object f18772k;
    public MutexImpl l;
    public int m;
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ PageFetcherSnapshot p;
    public int q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageFetcherSnapshot$doLoad$1(PageFetcherSnapshot pageFetcherSnapshot, Continuation continuation) {
        super(continuation);
        this.p = pageFetcherSnapshot;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.o = obj;
        this.q |= Integer.MIN_VALUE;
        return PageFetcherSnapshot.b(this.p, null, null, this);
    }
}
