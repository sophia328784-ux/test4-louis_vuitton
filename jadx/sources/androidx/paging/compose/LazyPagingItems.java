package androidx.paging.compose;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.platform.AndroidUiDispatcher;
import androidx.paging.CombinedLoadStates;
import androidx.paging.HintReceiver;
import androidx.paging.ItemSnapshotList;
import androidx.paging.LoadStates;
import androidx.paging.PageStore;
import androidx.paging.PagingData;
import androidx.paging.PagingDataPresenter;
import androidx.paging.PagingLogger;
import defpackage.fc;
import defpackage.no0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001B\u001d\b\u0000\u0012\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00040\u0003¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/paging/compose/LazyPagingItems;", "", "T", "Lkotlinx/coroutines/flow/Flow;", "Landroidx/paging/PagingData;", "flow", "<init>", "(Lkotlinx/coroutines/flow/Flow;)V", "paging-compose_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class LazyPagingItems<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Flow f19000a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CoroutineContext f19001b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LazyPagingItems$pagingDataPresenter$1 f19002c;
    public final MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableState f19003e;

    public LazyPagingItems(Flow<PagingData<T>> flow) {
        flow.getClass();
        this.f19000a = flow;
        AndroidUiDispatcher.l.getClass();
        final CoroutineContext coroutineContext = (CoroutineContext) AndroidUiDispatcher.m.getF71699b();
        this.f19001b = coroutineContext;
        final PagingData pagingData = flow instanceof SharedFlow ? (PagingData) CollectionsKt.firstOrNull(((SharedFlow) flow).e()) : null;
        PagingDataPresenter<T> pagingDataPresenter = new PagingDataPresenter<T>(coroutineContext, pagingData) { // from class: androidx.paging.compose.LazyPagingItems$pagingDataPresenter$1
            @Override // androidx.paging.PagingDataPresenter
            public final Unit c() {
                LazyPagingItems lazyPagingItems = this.m;
                ((SnapshotMutableStateImpl) lazyPagingItems.d).setValue(lazyPagingItems.f19002c.d());
                return Unit.f71739a;
            }
        };
        this.f19002c = pagingDataPresenter;
        this.d = SnapshotStateKt.g(pagingDataPresenter.d());
        CombinedLoadStates combinedLoadStates = (CombinedLoadStates) pagingDataPresenter.f18871k.getValue();
        if (combinedLoadStates == null) {
            LoadStates loadStates = LazyPagingItemsKt.f19007a;
            combinedLoadStates = new CombinedLoadStates(loadStates.f18639a, loadStates.f18640b, loadStates.f18641c, loadStates, null, 16, null);
        }
        this.f19003e = SnapshotStateKt.g(combinedLoadStates);
    }

    public final Object a(int i2) {
        Object value;
        Object value2;
        LazyPagingItems$pagingDataPresenter$1 lazyPagingItems$pagingDataPresenter$1 = this.f19002c;
        MutableStateFlow mutableStateFlow = lazyPagingItems$pagingDataPresenter$1.f18870j;
        do {
            value = mutableStateFlow.getValue();
            ((Boolean) value).getClass();
        } while (!mutableStateFlow.i(value, Boolean.TRUE));
        lazyPagingItems$pagingDataPresenter$1.f18868h = true;
        lazyPagingItems$pagingDataPresenter$1.f18869i = i2;
        PagingLogger.a(2);
        HintReceiver hintReceiver = lazyPagingItems$pagingDataPresenter$1.f18864b;
        if (hintReceiver != null) {
            hintReceiver.a(lazyPagingItems$pagingDataPresenter$1.d.d(i2));
        }
        PageStore pageStore = lazyPagingItems$pagingDataPresenter$1.d;
        if (i2 < 0) {
            pageStore.getClass();
        } else if (i2 < pageStore.getSize()) {
            int i3 = i2 - pageStore.f18833c;
            if (i3 >= 0 && i3 < pageStore.f18832b) {
                pageStore.e(i3);
            }
            MutableStateFlow mutableStateFlow2 = lazyPagingItems$pagingDataPresenter$1.f18870j;
            do {
                value2 = mutableStateFlow2.getValue();
                ((Boolean) value2).getClass();
            } while (!mutableStateFlow2.i(value2, Boolean.FALSE));
            return c().get(i2);
        }
        no0.s(fc.q(i2, "Index: ", ", Size: "), pageStore.getSize());
        return null;
    }

    public final int b() {
        return c().getF8300e();
    }

    public final ItemSnapshotList c() {
        return (ItemSnapshotList) ((SnapshotMutableStateImpl) this.d).getF10755b();
    }

    public final CombinedLoadStates d() {
        return (CombinedLoadStates) ((SnapshotMutableStateImpl) this.f19003e).getF10755b();
    }
}
