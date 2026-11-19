package coil3.memory;

import coil3.util.LruCache;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001¨\u0006\u0004"}, d2 = {"coil3/memory/RealStrongMemoryCache$cache$1", "Lcoil3/util/LruCache;", "Lcoil3/memory/MemoryCache$Key;", "Lcoil3/memory/RealStrongMemoryCache$InternalValue;", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class RealStrongMemoryCache$cache$1 extends LruCache<MemoryCache.Key, RealStrongMemoryCache.InternalValue> {
    public final /* synthetic */ RealStrongMemoryCache d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealStrongMemoryCache$cache$1(RealStrongMemoryCache realStrongMemoryCache, long j2) {
        super(j2);
        this.d = realStrongMemoryCache;
    }

    @Override // coil3.util.LruCache
    public final void a(Object obj, Object obj2, Object obj3) {
        RealStrongMemoryCache.InternalValue internalValue = (RealStrongMemoryCache.InternalValue) obj2;
        this.d.f21522b.f((MemoryCache.Key) obj, internalValue.f21524a, internalValue.f21525b, internalValue.f21526c);
    }

    @Override // coil3.util.LruCache
    public final long d(Object obj, Object obj2) {
        return ((RealStrongMemoryCache.InternalValue) obj2).f21526c;
    }
}
