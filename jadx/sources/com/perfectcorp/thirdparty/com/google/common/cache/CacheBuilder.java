package com.perfectcorp.thirdparty.com.google.common.cache;

import com.perfectcorp.thirdparty.com.google.common.base.MoreObjects;
import com.perfectcorp.thirdparty.com.google.common.base.r;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes3.dex */
public final class CacheBuilder<K, V> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final r f42110b = com.perfectcorp.thirdparty.com.google.common.base.s.a(new com.perfectcorp.thirdparty.com.google.common.cache.b());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final com.perfectcorp.thirdparty.com.google.common.base.t f42111c = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public r f42112a;

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class a implements ae<Object, Object> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f42113a = new a("INSTANCE", 0);
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class b implements ag<Object, Object> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f42114a = new b("INSTANCE", 0);
    }

    static {
        Logger.getLogger(CacheBuilder.class.getName());
    }

    public static CacheBuilder b() {
        CacheBuilder cacheBuilder = new CacheBuilder();
        cacheBuilder.f42112a = f42110b;
        return cacheBuilder;
    }

    public final LoadingCache a(CacheLoader cacheLoader) {
        return new d.k(new d(this, cacheLoader));
    }

    public final String toString() {
        return new MoreObjects.ToStringHelper("CacheBuilder").toString();
    }
}
