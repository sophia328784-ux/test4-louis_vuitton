package com.google.android.exoplayer2.upstream.cache;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public interface Cache {

    public interface Listener {
    }

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
