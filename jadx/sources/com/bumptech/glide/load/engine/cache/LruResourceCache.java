package com.bumptech.glide.load.engine.cache;

import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.LruCache;

/* JADX INFO: loaded from: classes2.dex */
public class LruResourceCache extends LruCache<Key, Resource<?>> implements MemoryCache {
    public Engine d;

    public LruResourceCache(long j2) {
        super(j2);
    }

    @Override // com.bumptech.glide.load.engine.cache.MemoryCache
    public final void a(int i2) {
        long j2;
        if (i2 >= 40) {
            b();
        } else if (i2 >= 20 || i2 == 15) {
            synchronized (this) {
                j2 = this.f24989b;
            }
            j(j2 / 2);
        }
    }

    @Override // com.bumptech.glide.load.engine.cache.MemoryCache
    public final void e(Engine engine) {
        this.d = engine;
    }

    @Override // com.bumptech.glide.util.LruCache
    public final int g(Object obj) {
        Resource resource = (Resource) obj;
        if (resource == null) {
            return 1;
        }
        return resource.getSize();
    }

    @Override // com.bumptech.glide.util.LruCache
    public final void h(Object obj, Object obj2) {
        Resource resource = (Resource) obj2;
        Engine engine = this.d;
        if (engine == null || resource == null) {
            return;
        }
        engine.f(resource);
    }
}
