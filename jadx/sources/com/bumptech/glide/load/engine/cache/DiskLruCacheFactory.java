package com.bumptech.glide.load.engine.cache;

import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class DiskLruCacheFactory implements DiskCache.Factory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f24596a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CacheDirectoryGetter f24597b;

    public interface CacheDirectoryGetter {
        File a();
    }

    public DiskLruCacheFactory(final String str, long j2) {
        this(new CacheDirectoryGetter() { // from class: com.bumptech.glide.load.engine.cache.DiskLruCacheFactory.1
            @Override // com.bumptech.glide.load.engine.cache.DiskLruCacheFactory.CacheDirectoryGetter
            public final File a() {
                return new File(str);
            }
        }, j2);
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache.Factory
    public final DiskLruCacheWrapper build() {
        File fileA = this.f24597b.a();
        if (fileA == null) {
            return null;
        }
        if (fileA.isDirectory() || fileA.mkdirs()) {
            return new DiskLruCacheWrapper(fileA, this.f24596a);
        }
        return null;
    }

    public DiskLruCacheFactory(final String str, final String str2, long j2) {
        this(new CacheDirectoryGetter() { // from class: com.bumptech.glide.load.engine.cache.DiskLruCacheFactory.2
            @Override // com.bumptech.glide.load.engine.cache.DiskLruCacheFactory.CacheDirectoryGetter
            public final File a() {
                return new File(str, str2);
            }
        }, j2);
    }

    public DiskLruCacheFactory(CacheDirectoryGetter cacheDirectoryGetter, long j2) {
        this.f24596a = j2;
        this.f24597b = cacheDirectoryGetter;
    }
}
