package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {}, d2 = {}, k = 4, mv = {2, 2, 0}, xi = 48)
public abstract class ChannelsKt {
    public static final void a(ReceiveChannel receiveChannel, Throwable th) {
        CancellationException cancellationException = th instanceof CancellationException ? (CancellationException) th : null;
        if (cancellationException == null) {
            cancellationException = new CancellationException("Channel was consumed, consumer had failed");
            cancellationException.initCause(th);
        }
        receiveChannel.cancel(cancellationException);
    }

    public static final void b(SendChannel sendChannel, Unit unit) {
        Object objB = sendChannel.b(unit);
        if (objB instanceof ChannelResult.Failed) {
            Object obj = ((ChannelResult) BuildersKt.e(EmptyCoroutineContext.f71840b, new ChannelsKt__ChannelsKt$trySendBlocking$2(sendChannel, unit, null))).f74761a;
        } else {
            ChannelResult.f74759b.getClass();
        }
    }
}
