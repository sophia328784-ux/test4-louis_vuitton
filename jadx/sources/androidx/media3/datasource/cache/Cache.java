package androidx.media3.datasource.cache;

import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public interface Cache {

    public interface Listener {
        void a(CacheSpan cacheSpan);

        void c(SimpleCache simpleCache, CacheSpan cacheSpan, CacheSpan cacheSpan2);

        void d(SimpleCache simpleCache, CacheSpan cacheSpan);
    }

    DefaultContentMetadata a(String str);

    long b();

    long c(long j2, long j3, String str);

    CacheSpan d(long j2, long j3, String str);

    CacheSpan e(long j2, long j3, String str);

    void f(CacheSpan cacheSpan);

    long g(long j2, long j3, String str);

    File h(long j2, long j3, String str);

    void i(File file, long j2);

    void j(String str, ContentMetadataMutations contentMetadataMutations);

    public static class CacheException extends IOException {
        public CacheException(String str) {
            super(str);
        }

        public CacheException(Throwable th) {
            super(th);
        }

        public CacheException(String str, Throwable th) {
            super(str, th);
        }
    }
}
