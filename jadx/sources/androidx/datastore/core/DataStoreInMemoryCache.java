package androidx.datastore.core;

import defpackage.v40;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/datastore/core/DataStoreInMemoryCache;", "T", "", "<init>", "()V", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DataStoreInMemoryCache<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableStateFlow f12740a;

    public DataStoreInMemoryCache() {
        UnInitialized unInitialized = UnInitialized.f12844b;
        unInitialized.getClass();
        this.f12740a = StateFlowKt.a(unInitialized);
    }

    public final State a() {
        return (State) this.f12740a.getValue();
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0025  */
    public final void b(State state) {
        MutableStateFlow mutableStateFlow;
        Object value;
        State state2;
        state.getClass();
        do {
            mutableStateFlow = this.f12740a;
            value = mutableStateFlow.getValue();
            state2 = (State) value;
            if (state2 instanceof ReadException ? true : Intrinsics.c(state2, UnInitialized.f12844b)) {
                state2 = state;
            } else if (state2 instanceof Data) {
                if (state.f12841a > state2.f12841a) {
                    state2 = state;
                }
            } else if (!(state2 instanceof Final)) {
                v40.g();
                return;
            }
        } while (!mutableStateFlow.i(value, state2));
    }
}
