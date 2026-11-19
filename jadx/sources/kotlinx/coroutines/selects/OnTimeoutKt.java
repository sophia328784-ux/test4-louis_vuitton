package kotlinx.coroutines.selects;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class OnTimeoutKt {
    public static final void a(SelectImplementation selectImplementation, long j2, Function1 function1) {
        OnTimeout onTimeout = new OnTimeout(j2);
        OnTimeout$selectClause$1 onTimeout$selectClause$1 = OnTimeout$selectClause$1.f75178b;
        onTimeout$selectClause$1.getClass();
        TypeIntrinsics.e(3, onTimeout$selectClause$1);
        SelectClause0Impl selectClause0Impl = new SelectClause0Impl(onTimeout, onTimeout$selectClause$1, null, 4, null);
        selectImplementation.j(new SelectImplementation.ClauseData(selectClause0Impl.f75179a, selectClause0Impl.f75180b, selectClause0Impl.d, SelectKt.f75203f, function1, selectClause0Impl.f75181c), false);
    }
}
