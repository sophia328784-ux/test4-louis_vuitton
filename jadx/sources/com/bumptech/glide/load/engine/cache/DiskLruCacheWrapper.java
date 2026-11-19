package com.bumptech.glide.load.engine.cache;

import android.util.Log;
import com.bumptech.glide.disklrucache.DiskLruCache;
import com.bumptech.glide.load.Key;
import java.io.File;
import java.io.IOException;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class DiskLruCacheWrapper implements DiskCache {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final File f24602b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f24603c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public DiskLruCache f24604e;
    public final DiskCacheWriteLocker d = new DiskCacheWriteLocker();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SafeKeyGenerator f24601a = new SafeKeyGenerator();

    public DiskLruCacheWrapper(File file, long j2) {
        this.f24602b = file;
        this.f24603c = j2;
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache
    public final void a(Key key, DiskCache.Writer writer) {
        DiskCacheWriteLocker.WriteLock writeLock;
        String strA = this.f24601a.a(key);
        DiskCacheWriteLocker diskCacheWriteLocker = this.d;
        synchronized (diskCacheWriteLocker) {
            writeLock = (DiskCacheWriteLocker.WriteLock) diskCacheWriteLocker.f24591a.get(strA);
            if (writeLock == null) {
                DiskCacheWriteLocker.WriteLockPool writeLockPool = diskCacheWriteLocker.f24592b;
                synchronized (writeLockPool.f24595a) {
                    writeLock = (DiskCacheWriteLocker.WriteLock) writeLockPool.f24595a.poll();
                }
                if (writeLock == null) {
                    writeLock = new DiskCacheWriteLocker.WriteLock();
                }
                diskCacheWriteLocker.f24591a.put(strA, writeLock);
            }
            writeLock.f24594b++;
        }
        writeLock.f24593a.lock();
        try {
            if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
                Objects.toString(key);
            }
            try {
                DiskLruCache diskLruCacheC = c();
                if (diskLruCacheC.j(strA) == null) {
                    DiskLruCache.Editor editorG = diskLruCacheC.g(strA);
                    if (editorG == null) {
                        throw new IllegalStateException("Had two simultaneous puts for: ".concat(strA));
                    }
                    try {
                        if (writer.a(editorG.b())) {
                            DiskLruCache.c(DiskLruCache.this, editorG, true);
                            editorG.f24335c = true;
                        }
                        if (!editorG.f24335c) {
                            try {
                                editorG.a();
                            } catch (IOException unused) {
                            }
                        }
                    } catch (Throwable th) {
                        if (!editorG.f24335c) {
                            try {
                                editorG.a();
                            } catch (IOException unused2) {
                            }
                        }
                        throw th;
                    }
                }
            } catch (IOException unused3) {
                Log.isLoggable("DiskLruCacheWrapper", 5);
            }
            this.d.a(strA);
        } catch (Throwable th2) {
            this.d.a(strA);
            throw th2;
        }
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache
    public final File b(Key key) {
        String strA = this.f24601a.a(key);
        if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
            Objects.toString(key);
        }
        try {
            DiskLruCache.Value valueJ = c().j(strA);
            if (valueJ != null) {
                return valueJ.f24341a[0];
            }
            return null;
        } catch (IOException unused) {
            Log.isLoggable("DiskLruCacheWrapper", 5);
            return null;
        }
    }

    public final synchronized DiskLruCache c() {
        try {
            if (this.f24604e == null) {
                this.f24604e = DiskLruCache.m(this.f24602b, this.f24603c);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f24604e;
    }
}
