package kotlinx.coroutines.channels;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.mt;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.internal.Segment;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00000\u0002B7\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bR\u0013\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\f8\u0002X\u0082\u0004¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/channels/ChannelSegment;", "E", "Lkotlinx/coroutines/internal/Segment;", "", b.a.f24015b, "prev", "Lkotlinx/coroutines/channels/BufferedChannel;", "channel", "", "pointers", "<init>", "(JLkotlinx/coroutines/channels/ChannelSegment;Lkotlinx/coroutines/channels/BufferedChannel;I)V", "Lkotlinx/atomicfu/AtomicArray;", "", DbParams.KEY_DATA, "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class ChannelSegment<E> extends Segment<ChannelSegment<E>> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final BufferedChannel f74763h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ AtomicReferenceArray f74764i;

    public ChannelSegment(long j2, ChannelSegment<E> channelSegment, BufferedChannel<E> bufferedChannel, int i2) {
        super(j2, channelSegment, i2);
        this.f74763h = bufferedChannel;
        this.f74764i = new AtomicReferenceArray(BufferedChannelKt.f74747b * 2);
    }

    @Override // kotlinx.coroutines.internal.Segment
    public final int l() {
        return BufferedChannelKt.f74747b;
    }

    @Override // kotlinx.coroutines.internal.Segment
    public final void m(CoroutineContext coroutineContext, int i2) {
        BufferedChannel bufferedChannel;
        int i3 = BufferedChannelKt.f74747b;
        boolean z = i2 >= i3;
        if (z) {
            i2 -= i3;
        }
        Object obj = this.f74764i.get(i2 * 2);
        while (true) {
            Object objQ = q(i2);
            boolean z2 = objQ instanceof Waiter;
            bufferedChannel = this.f74763h;
            if (z2 || (objQ instanceof WaiterEB)) {
                if (p(objQ, z ? BufferedChannelKt.f74753j : BufferedChannelKt.f74754k, i2)) {
                    s(i2, null);
                    r(i2, !z);
                    if (z) {
                        bufferedChannel.getClass();
                        Function1 function1 = bufferedChannel.f74735c;
                        if (function1 != null) {
                            OnUndeliveredElementKt.a(function1, obj, coroutineContext);
                            return;
                        }
                        return;
                    }
                    return;
                }
            } else {
                if (objQ == BufferedChannelKt.f74753j || objQ == BufferedChannelKt.f74754k) {
                    break;
                }
                if (objQ != BufferedChannelKt.g && objQ != BufferedChannelKt.f74750f) {
                    if (objQ == BufferedChannelKt.f74752i || objQ == BufferedChannelKt.d || objQ == BufferedChannelKt.l) {
                        return;
                    }
                    mt.f(objQ, "unexpected state: ");
                    return;
                }
            }
        }
        s(i2, null);
        if (z) {
            bufferedChannel.getClass();
            Function1 function2 = bufferedChannel.f74735c;
            if (function2 != null) {
                OnUndeliveredElementKt.a(function2, obj, coroutineContext);
            }
        }
    }

    public final boolean p(Object obj, Object obj2, int i2) {
        AtomicReferenceArray atomicReferenceArray;
        int i3 = (i2 * 2) + 1;
        do {
            atomicReferenceArray = this.f74764i;
            if (atomicReferenceArray.compareAndSet(i3, obj, obj2)) {
                return true;
            }
        } while (atomicReferenceArray.get(i3) == obj);
        return false;
    }

    public final Object q(int i2) {
        return this.f74764i.get((i2 * 2) + 1);
    }

    public final void r(int i2, boolean z) {
        if (z) {
            BufferedChannel bufferedChannel = this.f74763h;
            bufferedChannel.getClass();
            bufferedChannel.V((this.f75137f * ((long) BufferedChannelKt.f74747b)) + ((long) i2));
        }
        n();
    }

    public final void s(int i2, Object obj) {
        this.f74764i.set(i2 * 2, obj);
    }

    public final void t(int i2, Object obj) {
        this.f74764i.set((i2 * 2) + 1, obj);
    }
}
