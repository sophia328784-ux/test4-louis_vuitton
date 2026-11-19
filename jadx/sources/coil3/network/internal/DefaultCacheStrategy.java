package coil3.network.internal;

import coil3.network.CacheStrategy;
import coil3.network.NetworkHeaders;
import coil3.network.NetworkResponse;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcoil3/network/internal/DefaultCacheStrategy;", "Lcoil3/network/CacheStrategy;", "<init>", "()V", "Companion", "io.coil-kt.coil3:coil-network-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class DefaultCacheStrategy implements CacheStrategy {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Set f21585b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\"\n\u0002\u0010\b\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcoil3/network/internal/DefaultCacheStrategy$Companion;", "", "", "", "CACHEABLE_STATUS_CODES", "Ljava/util/Set;", "io.coil-kt.coil3:coil-network-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        f21585b = ArraysKt.Z(new Integer[]{300, 301, 404, 405, 410, 414, 501});
    }

    @Override // coil3.network.CacheStrategy
    public final CacheStrategy.ReadResult a(NetworkResponse networkResponse) {
        return new CacheStrategy.ReadResult(networkResponse);
    }

    @Override // coil3.network.CacheStrategy
    public final CacheStrategy.WriteResult b(NetworkResponse networkResponse, NetworkResponse networkResponse2) {
        int i2 = networkResponse2.f21579a;
        if (i2 != 304 || networkResponse == null) {
            if (200 > i2 || i2 >= 300) {
                if (!f21585b.contains(new Integer(i2))) {
                    return CacheStrategy.WriteResult.f21535b;
                }
            }
            return new CacheStrategy.WriteResult(networkResponse2);
        }
        NetworkHeaders networkHeaders = networkResponse.d;
        NetworkHeaders networkHeaders2 = networkResponse2.d;
        networkHeaders.getClass();
        NetworkHeaders.Builder builder = new NetworkHeaders.Builder(networkHeaders);
        for (Map.Entry entry : networkHeaders2.f21573a.entrySet()) {
            String str = (String) entry.getKey();
            List list = (List) entry.getValue();
            String lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            builder.f21574a.put(lowerCase, CollectionsKt.z0(list));
        }
        return new CacheStrategy.WriteResult(new NetworkResponse(networkResponse2.f21579a, networkResponse2.f21580b, networkResponse2.f21581c, builder.b(), null, networkResponse2.f21583f));
    }
}
