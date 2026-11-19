package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.selects.SelectClause1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\bf\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\u00020\u0002¨\u0006\u0003À\u0006\u0003"}, d2 = {"Lkotlinx/coroutines/channels/ReceiveChannel;", "E", "", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public interface ReceiveChannel<E> {
    void cancel(CancellationException cancellationException);

    SelectClause1 d();

    Object f();

    Object i(Continuation continuation);

    ChannelIterator iterator();

    Object w(SuspendLambda suspendLambda);
}
