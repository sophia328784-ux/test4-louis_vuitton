package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.internal.Symbol;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00020\u0003B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;", "Lkotlinx/coroutines/flow/StateFlow;", "", "Lkotlinx/coroutines/flow/SharedFlowImpl;", "initialValue", "<init>", "(I)V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
final class SubscriptionCountStateFlow extends SharedFlowImpl<Integer> implements StateFlow<Integer> {
    public SubscriptionCountStateFlow(int i2) {
        super(1, Integer.MAX_VALUE, BufferOverflow.DROP_OLDEST);
        a(Integer.valueOf(i2));
    }

    @Override // kotlinx.coroutines.flow.StateFlow
    public final Object getValue() {
        Integer numValueOf;
        synchronized (this) {
            Object[] objArr = this.f74967i;
            objArr.getClass();
            long jS = (this.f74968j + ((long) ((int) ((s() + ((long) this.l)) - this.f74968j)))) - 1;
            Symbol symbol = SharedFlowKt.f74979a;
            numValueOf = Integer.valueOf(((Number) objArr[((int) jS) & (objArr.length - 1)]).intValue());
        }
        return numValueOf;
    }

    public final void z(int i2) {
        synchronized (this) {
            Object[] objArr = this.f74967i;
            objArr.getClass();
            long jS = (this.f74968j + ((long) ((int) ((s() + ((long) this.l)) - this.f74968j)))) - 1;
            Symbol symbol = SharedFlowKt.f74979a;
            a(Integer.valueOf(((Number) objArr[((int) jS) & (objArr.length - 1)]).intValue() + i2));
        }
    }
}
