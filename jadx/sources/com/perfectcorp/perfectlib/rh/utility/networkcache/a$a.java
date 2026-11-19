package com.perfectcorp.perfectlib.rh.utility.networkcache;

import com.perfectcorp.common.cache.CacheProviders$StringPreferenceCacheProvider;
import com.perfectcorp.common.cache.PreferencesCache;
import com.perfectcorp.common.utility.CacheStrategies;
import com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.shadefinder.a;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import com.perfectcorp.thirdparty.com.google.gson.Gson;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes3.dex */
public final class a$a implements CacheStrategies.CacheHandler<a, a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Gson f41833a = GsonBaseResponse.f41999a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CacheProviders$StringPreferenceCacheProvider f41834b = new b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Type f41835c = new c().f42556b;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.perfectcorp.common.utility.CacheStrategies.CacheHandler
    public final Object a(Object obj) {
        a aVar = (a) obj;
        String strK = this.f41833a.k(aVar);
        CacheProviders$StringPreferenceCacheProvider cacheProviders$StringPreferenceCacheProvider = this.f41834b;
        if (cacheProviders$StringPreferenceCacheProvider.f39160a == null) {
            cacheProviders$StringPreferenceCacheProvider.f39160a = cacheProviders$StringPreferenceCacheProvider.a();
        }
        PreferencesCache preferencesCache = cacheProviders$StringPreferenceCacheProvider.f39160a;
        preferencesCache.f39161a.o(preferencesCache.f39162b, strK);
        bz bzVarListIterator = ((ImmutableList) preferencesCache.f39163c).listIterator(0);
        while (bzVarListIterator.hasNext()) {
            ((PreferencesCache.Component) bzVarListIterator.next()).a();
        }
        return aVar;
    }
}
