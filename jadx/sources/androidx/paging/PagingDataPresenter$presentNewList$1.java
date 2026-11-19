package androidx.paging;

import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.paging.PagingDataPresenter", f = "PagingDataPresenter.kt", l = {478}, m = "presentNewList")
final class PagingDataPresenter$presentNewList$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public PagingDataPresenter f18882b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List f18883c;
    public LoadStates d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public LoadStates f18884e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public HintReceiver f18885f;
    public PageStore g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f18886h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f18887i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f18888j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public /* synthetic */ Object f18889k;
    public final /* synthetic */ PagingDataPresenter l;
    public int m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagingDataPresenter$presentNewList$1(PagingDataPresenter pagingDataPresenter, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.l = pagingDataPresenter;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f18889k = obj;
        this.m |= Integer.MIN_VALUE;
        return PagingDataPresenter.a(this.l, null, 0, 0, false, null, null, null, this);
    }
}
