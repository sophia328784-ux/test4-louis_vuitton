package okhttp3.internal.proxy;

import defpackage.md;
import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/proxy/NullProxySelector;", "Ljava/net/ProxySelector;", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class NullProxySelector extends ProxySelector {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final NullProxySelector f77334a = new NullProxySelector();

    @Override // java.net.ProxySelector
    public final void connectFailed(URI uri, SocketAddress socketAddress, IOException iOException) {
    }

    @Override // java.net.ProxySelector
    public final List select(URI uri) {
        if (uri != null) {
            return CollectionsKt.O(Proxy.NO_PROXY);
        }
        md.n("uri must not be null");
        return null;
    }
}
