package coil3.network;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcoil3/network/UncoordinatedConcurrentRequestStrategy;", "Lcoil3/network/ConcurrentRequestStrategy;", "<init>", "()V", "io.coil-kt.coil3:coil-network-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
final class UncoordinatedConcurrentRequestStrategy implements ConcurrentRequestStrategy {
    @Override // coil3.network.ConcurrentRequestStrategy
    public final Object a(Continuation continuation, Function1 function1) {
        return ((NetworkFetcher$fetch$2) function1).invoke(continuation);
    }
}
