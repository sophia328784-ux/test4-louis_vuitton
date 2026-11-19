package com.perfectcorp.thirdparty.com.google.common.cache;

import com.perfectcorp.thirdparty.com.google.common.base.Function;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes3.dex */
public interface LoadingCache<K, V> extends Function<K, V>, Cache<K, V> {
    Object a(Object obj);

    ConcurrentMap h();
}
