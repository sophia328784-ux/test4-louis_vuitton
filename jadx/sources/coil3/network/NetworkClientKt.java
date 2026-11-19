package coil3.network;

import kotlin.Metadata;
import okio.BufferedSource;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"io.coil-kt.coil3:coil-network-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class NetworkClientKt {
    public static final NetworkResponseBody a(BufferedSource bufferedSource) {
        return new SourceResponseBody(bufferedSource);
    }
}
