package com.bumptech.glide.load.engine.cache;

import com.bumptech.glide.load.Key;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public interface DiskCache {

    public interface Factory {
        DiskLruCacheWrapper build();
    }

    public interface Writer {
        boolean a(File file);
    }

    void a(Key key, Writer writer);

    File b(Key key);
}
