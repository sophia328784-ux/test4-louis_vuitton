package coil3.memory;

import coil3.Image;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b`\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Lcoil3/memory/StrongMemoryCache;", "", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public interface StrongMemoryCache {
    MemoryCache.Value a(MemoryCache.Key key);

    void b(long j2);

    boolean c(MemoryCache.Key key);

    void clear();

    long d();

    long e();

    void f(MemoryCache.Key key, Image image, Map map, long j2);

    void g(long j2);

    long getSize();
}
