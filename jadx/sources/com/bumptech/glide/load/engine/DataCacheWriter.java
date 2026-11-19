package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.engine.cache.DiskCache;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
class DataCacheWriter<DataType> implements DiskCache.Writer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Encoder f24450a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f24451b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Options f24452c;

    public DataCacheWriter(Encoder encoder, Object obj, Options options) {
        this.f24450a = encoder;
        this.f24451b = obj;
        this.f24452c = options;
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache.Writer
    public final boolean a(File file) {
        return this.f24450a.a(this.f24451b, file, this.f24452c);
    }
}
