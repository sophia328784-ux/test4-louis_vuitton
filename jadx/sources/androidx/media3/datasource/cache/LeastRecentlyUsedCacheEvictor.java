package androidx.media3.datasource.cache;

import defpackage.x5;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes.dex */
public final class LeastRecentlyUsedCacheEvictor implements CacheEvictor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f14515a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TreeSet f14516b = new TreeSet(new x5(13));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f14517c;

    public LeastRecentlyUsedCacheEvictor(long j2) {
        this.f14515a = j2;
    }

    @Override // androidx.media3.datasource.cache.Cache.Listener
    public final void a(CacheSpan cacheSpan) {
        this.f14516b.remove(cacheSpan);
        this.f14517c -= cacheSpan.d;
    }

    @Override // androidx.media3.datasource.cache.CacheEvictor
    public final void b(SimpleCache simpleCache, long j2) {
        if (j2 != -1) {
            TreeSet treeSet = this.f14516b;
            while (this.f14517c + j2 > this.f14515a && !treeSet.isEmpty()) {
                CacheSpan cacheSpan = (CacheSpan) treeSet.first();
                synchronized (simpleCache) {
                    simpleCache.p(cacheSpan);
                }
            }
        }
    }

    @Override // androidx.media3.datasource.cache.Cache.Listener
    public final void c(SimpleCache simpleCache, CacheSpan cacheSpan, CacheSpan cacheSpan2) {
        a(cacheSpan);
        d(simpleCache, cacheSpan2);
    }

    @Override // androidx.media3.datasource.cache.Cache.Listener
    public final void d(SimpleCache simpleCache, CacheSpan cacheSpan) {
        this.f14516b.add(cacheSpan);
        this.f14517c += cacheSpan.d;
        TreeSet treeSet = this.f14516b;
        while (this.f14517c > this.f14515a && !treeSet.isEmpty()) {
            CacheSpan cacheSpan2 = (CacheSpan) treeSet.first();
            synchronized (simpleCache) {
                simpleCache.p(cacheSpan2);
            }
        }
    }
}
