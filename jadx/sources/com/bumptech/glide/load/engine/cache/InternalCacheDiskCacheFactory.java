package com.bumptech.glide.load.engine.cache;

import android.content.Context;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public final class InternalCacheDiskCacheFactory extends DiskLruCacheFactory {
    public InternalCacheDiskCacheFactory(Context context) {
        this(context, "image_manager_disk_cache", 262144000L);
    }

    public InternalCacheDiskCacheFactory(Context context, long j2) {
        this(context, "image_manager_disk_cache", j2);
    }

    public InternalCacheDiskCacheFactory(final Context context, final String str, long j2) {
        super(new DiskLruCacheFactory.CacheDirectoryGetter() { // from class: com.bumptech.glide.load.engine.cache.InternalCacheDiskCacheFactory.1
            @Override // com.bumptech.glide.load.engine.cache.DiskLruCacheFactory.CacheDirectoryGetter
            public final File a() {
                File cacheDir = context.getCacheDir();
                if (cacheDir == null) {
                    return null;
                }
                String str2 = str;
                return str2 != null ? new File(cacheDir, str2) : cacheDir;
            }
        }, j2);
    }
}
