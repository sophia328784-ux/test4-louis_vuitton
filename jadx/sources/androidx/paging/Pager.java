package androidx.paging;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\u00020\u0001BM\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00018\u0000\u0012\u0014\u0010\b\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0007\u0012\u0018\u0010\u000b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\n0\t¢\u0006\u0004\b\f\u0010\rB7\b\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00018\u0000\u0012\u0018\u0010\u000b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\n0\t¢\u0006\u0004\b\f\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/paging/Pager;", "", "Key", "Value", "Landroidx/paging/PagingConfig;", "config", "initialKey", "Landroidx/paging/RemoteMediator;", "remoteMediator", "Lkotlin/Function0;", "Landroidx/paging/PagingSource;", "pagingSourceFactory", "<init>", "(Landroidx/paging/PagingConfig;Ljava/lang/Object;Landroidx/paging/RemoteMediator;Lkotlin/jvm/functions/Function0;)V", "(Landroidx/paging/PagingConfig;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class Pager<Key, Value> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Flow f18835a;

    public Pager(PagingConfig pagingConfig, Key key, RemoteMediator<Key, Value> remoteMediator, Function0<? extends PagingSource<Key, Value>> function0) {
        pagingConfig.getClass();
        function0.getClass();
        this.f18835a = new PageFetcher(function0 instanceof SuspendingPagingSourceFactory ? new Pager$flow$1(1, function0, SuspendingPagingSourceFactory.class, "create", "create(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0) : new Pager$flow$2(function0, null), key, pagingConfig, remoteMediator).f18682f;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Pager(PagingConfig pagingConfig, Function0<? extends PagingSource<Key, Value>> function0) {
        this(pagingConfig, null, function0, 2, null);
        pagingConfig.getClass();
        function0.getClass();
    }

    public /* synthetic */ Pager(PagingConfig pagingConfig, Object obj, RemoteMediator remoteMediator, Function0 function0, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(pagingConfig, (i2 & 2) != 0 ? null : obj, remoteMediator, function0);
    }

    public /* synthetic */ Pager(PagingConfig pagingConfig, Object obj, Function0 function0, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(pagingConfig, (i2 & 2) != 0 ? null : obj, function0);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Pager(PagingConfig pagingConfig, Key key, Function0<? extends PagingSource<Key, Value>> function0) {
        this(pagingConfig, key, null, function0);
        pagingConfig.getClass();
        function0.getClass();
    }
}
