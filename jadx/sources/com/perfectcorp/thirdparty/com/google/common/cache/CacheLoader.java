package com.perfectcorp.thirdparty.com.google.common.cache;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CacheLoader<K, V> {

    public static final class a extends RuntimeException {
        public a(String str) {
            super(str);
        }
    }

    public abstract Object a(Object obj);
}
