package okhttp3.internal.cache;

import kotlin.Metadata;
import okhttp3.Cache;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Lokhttp3/internal/cache/CacheRequest;", "", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface CacheRequest {
    /* JADX INFO: renamed from: a */
    Cache.RealCacheRequest.AnonymousClass1 getF76838c();

    void abort();
}
