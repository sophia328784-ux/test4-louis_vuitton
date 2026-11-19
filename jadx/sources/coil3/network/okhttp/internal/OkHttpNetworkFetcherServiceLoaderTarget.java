package coil3.network.okhttp.internal;

import coil3.Uri;
import coil3.network.NetworkFetcher;
import coil3.util.FetcherServiceLoaderTarget;
import defpackage.mg0;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcoil3/network/okhttp/internal/OkHttpNetworkFetcherServiceLoaderTarget;", "Lcoil3/util/FetcherServiceLoaderTarget;", "Lcoil3/Uri;", "<init>", "()V", "io.coil-kt.coil3:coil-network-okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class OkHttpNetworkFetcherServiceLoaderTarget implements FetcherServiceLoaderTarget<Uri> {
    @Override // coil3.util.FetcherServiceLoaderTarget
    public final NetworkFetcher.Factory a() {
        return new NetworkFetcher.Factory(new mg0(4), null, null, null, 14, null);
    }

    @Override // coil3.util.FetcherServiceLoaderTarget
    public final int priority() {
        return 2;
    }

    @Override // coil3.util.FetcherServiceLoaderTarget
    public final KClass type() {
        return Reflection.f71922a.b(Uri.class);
    }
}
