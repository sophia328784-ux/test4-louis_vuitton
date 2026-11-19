package kotlinx.coroutines.flow;

import defpackage.b21;
import defpackage.pq0;
import defpackage.tg0;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.ChannelFlowOperatorImpl;
import kotlinx.coroutines.internal.Symbol;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class SharedFlowKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Symbol f74979a = new Symbol("NO_VALUE");

    public static final SharedFlowImpl a(int i2, int i3, BufferOverflow bufferOverflow) {
        if (i2 < 0) {
            b21.n(pq0.k(i2, "replay cannot be negative, but was "));
            return null;
        }
        if (i3 < 0) {
            b21.n(pq0.k(i3, "extraBufferCapacity cannot be negative, but was "));
            return null;
        }
        if (i2 <= 0 && i3 <= 0 && bufferOverflow != BufferOverflow.SUSPEND) {
            tg0.n(bufferOverflow, "replay or extraBufferCapacity must be positive with non-default onBufferOverflow strategy ");
            return null;
        }
        int i4 = i3 + i2;
        if (i4 < 0) {
            i4 = Integer.MAX_VALUE;
        }
        return new SharedFlowImpl(i2, i4, bufferOverflow);
    }

    public static /* synthetic */ SharedFlowImpl b(int i2, int i3, BufferOverflow bufferOverflow, int i4) {
        if ((i4 & 1) != 0) {
            i2 = 0;
        }
        if ((i4 & 2) != 0) {
            i3 = 0;
        }
        if ((i4 & 4) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        return a(i2, i3, bufferOverflow);
    }

    public static final Object c(Object[] objArr, long j2) {
        return objArr[((int) j2) & (objArr.length - 1)];
    }

    public static final void d(Object[] objArr, long j2, Object obj) {
        objArr[((int) j2) & (objArr.length - 1)] = obj;
    }

    public static final Flow e(SharedFlow sharedFlow, CoroutineContext coroutineContext, int i2, BufferOverflow bufferOverflow) {
        return ((i2 == 0 || i2 == -3) && bufferOverflow == BufferOverflow.SUSPEND) ? sharedFlow : new ChannelFlowOperatorImpl(sharedFlow, coroutineContext, i2, bufferOverflow);
    }
}
