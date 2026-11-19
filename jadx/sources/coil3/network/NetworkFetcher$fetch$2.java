package coil3.network;

import coil3.fetch.FetchResult;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
final /* synthetic */ class NetworkFetcher$fetch$2 extends FunctionReferenceImpl implements Function1<Continuation<? super FetchResult>, Object>, SuspendFunction {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return NetworkFetcher.b((NetworkFetcher) this.receiver, (Continuation) obj);
    }
}
