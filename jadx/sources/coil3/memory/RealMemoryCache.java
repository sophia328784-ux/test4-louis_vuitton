package coil3.memory;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcoil3/memory/RealMemoryCache;", "Lcoil3/memory/MemoryCache;", "Lcoil3/memory/StrongMemoryCache;", "strongMemoryCache", "Lcoil3/memory/WeakMemoryCache;", "weakMemoryCache", "<init>", "(Lcoil3/memory/StrongMemoryCache;Lcoil3/memory/WeakMemoryCache;)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class RealMemoryCache implements MemoryCache {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StrongMemoryCache f21518a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WeakMemoryCache f21519b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f21520c = new Object();

    public RealMemoryCache(StrongMemoryCache strongMemoryCache, WeakMemoryCache weakMemoryCache) {
        this.f21518a = strongMemoryCache;
        this.f21519b = weakMemoryCache;
    }

    @Override // coil3.memory.MemoryCache
    public final MemoryCache.Value a(MemoryCache.Key key) {
        MemoryCache.Value valueA;
        synchronized (this.f21520c) {
            try {
                valueA = this.f21518a.a(key);
                if (valueA == null) {
                    valueA = this.f21519b.a(key);
                }
                if (valueA != null && !valueA.f21511a.getF21215b()) {
                    synchronized (this.f21520c) {
                        this.f21518a.c(key);
                        this.f21519b.c(key);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return valueA;
    }

    @Override // coil3.memory.MemoryCache
    public final void b(long j2) {
        synchronized (this.f21520c) {
            this.f21518a.b(j2);
        }
    }

    @Override // coil3.memory.MemoryCache
    public final void clear() {
        synchronized (this.f21520c) {
            this.f21518a.clear();
            this.f21519b.clear();
        }
    }

    @Override // coil3.memory.MemoryCache
    public final long d() {
        long jD;
        synchronized (this.f21520c) {
            jD = this.f21518a.d();
        }
        return jD;
    }

    @Override // coil3.memory.MemoryCache
    public final long e() {
        long jE;
        synchronized (this.f21520c) {
            jE = this.f21518a.e();
        }
        return jE;
    }

    @Override // coil3.memory.MemoryCache
    public final void g(long j2) {
        synchronized (this.f21520c) {
            this.f21518a.g(j2);
        }
    }

    @Override // coil3.memory.MemoryCache
    public final long getSize() {
        long size;
        synchronized (this.f21520c) {
            size = this.f21518a.getSize();
        }
        return size;
    }

    @Override // coil3.memory.MemoryCache
    public final void h(MemoryCache.Key key, MemoryCache.Value value) {
        synchronized (this.f21520c) {
            long size = value.f21511a.getSize();
            if (size < 0) {
                throw new IllegalStateException(("Image size must be non-negative: " + size).toString());
            }
            this.f21518a.f(key, value.f21511a, value.f21512b, size);
        }
    }
}
