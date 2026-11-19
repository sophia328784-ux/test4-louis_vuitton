package androidx.paging;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/paging/MutableCombinedLoadStateCollection;", "", "<init>", "()V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class MutableCombinedLoadStateCollection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CopyOnWriteArrayList f18652a = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableStateFlow f18653b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StateFlow f18654c;

    public MutableCombinedLoadStateCollection() {
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(null);
        this.f18653b = mutableStateFlowA;
        this.f18654c = FlowKt.b(mutableStateFlowA);
    }

    public static final CombinedLoadStates a(MutableCombinedLoadStateCollection mutableCombinedLoadStateCollection, CombinedLoadStates combinedLoadStates, LoadStates loadStates, LoadStates loadStates2) {
        LoadState loadState;
        LoadState loadState2;
        LoadState loadState3;
        mutableCombinedLoadStateCollection.getClass();
        if (combinedLoadStates == null || (loadState = combinedLoadStates.f18562a) == null) {
            LoadState.NotLoading.f18636b.getClass();
            loadState = LoadState.NotLoading.d;
        }
        LoadState loadState4 = loadStates.f18639a;
        LoadState loadStateB = b(loadState, loadState4, loadState4, loadStates2 != null ? loadStates2.f18639a : null);
        if (combinedLoadStates == null || (loadState2 = combinedLoadStates.f18563b) == null) {
            LoadState.NotLoading.f18636b.getClass();
            loadState2 = LoadState.NotLoading.d;
        }
        LoadState loadStateB2 = b(loadState2, loadState4, loadStates.f18640b, loadStates2 != null ? loadStates2.f18640b : null);
        if (combinedLoadStates == null || (loadState3 = combinedLoadStates.f18564c) == null) {
            LoadState.NotLoading.f18636b.getClass();
            loadState3 = LoadState.NotLoading.d;
        }
        return new CombinedLoadStates(loadStateB, loadStateB2, b(loadState3, loadState4, loadStates.f18641c, loadStates2 != null ? loadStates2.f18641c : null), loadStates, loadStates2);
    }

    public static LoadState b(LoadState loadState, LoadState loadState2, LoadState loadState3, LoadState loadState4) {
        if (loadState4 == null) {
            return loadState3;
        }
        if (loadState instanceof LoadState.Loading) {
            return (((loadState2 instanceof LoadState.NotLoading) && (loadState4 instanceof LoadState.NotLoading)) || (loadState4 instanceof LoadState.Error)) ? loadState4 : loadState;
        }
        return loadState4;
    }

    public final void c(Function1 function1) {
        MutableStateFlow mutableStateFlow;
        Object value;
        CombinedLoadStates combinedLoadStates;
        do {
            mutableStateFlow = this.f18653b;
            value = mutableStateFlow.getValue();
            CombinedLoadStates combinedLoadStates2 = (CombinedLoadStates) value;
            combinedLoadStates = (CombinedLoadStates) function1.invoke(combinedLoadStates2);
            if (Intrinsics.c(combinedLoadStates2, combinedLoadStates)) {
                return;
            }
        } while (!mutableStateFlow.i(value, combinedLoadStates));
        if (combinedLoadStates != null) {
            Iterator it = this.f18652a.iterator();
            while (it.hasNext()) {
                ((Function1) it.next()).invoke(combinedLoadStates);
            }
        }
    }
}
