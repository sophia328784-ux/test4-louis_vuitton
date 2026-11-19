package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bg\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002¨\u0006\u0003À\u0006\u0003"}, d2 = {"Lkotlinx/coroutines/flow/internal/FusibleFlow;", "T", "Lkotlinx/coroutines/flow/Flow;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public interface FusibleFlow<T> extends Flow<T> {
    static /* synthetic */ Flow b(FusibleFlow fusibleFlow, CoroutineContext coroutineContext, int i2, BufferOverflow bufferOverflow, int i3) {
        if ((i3 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.f71840b;
        }
        if ((i3 & 2) != 0) {
            i2 = -3;
        }
        if ((i3 & 4) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        return fusibleFlow.d(coroutineContext, i2, bufferOverflow);
    }

    Flow d(CoroutineContext coroutineContext, int i2, BufferOverflow bufferOverflow);
}
