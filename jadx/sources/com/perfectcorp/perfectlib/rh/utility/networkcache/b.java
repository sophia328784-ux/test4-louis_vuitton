package com.perfectcorp.perfectlib.rh.utility.networkcache;

import com.perfectcorp.common.cache.CacheProviders$StringPreferenceCacheProvider;
import com.perfectcorp.common.cache.PreferencesCache;
import com.perfectcorp.common.utility.BasicPreferences;
import com.perfectcorp.common.utility.DatabaseSharedPreferences;

/* JADX INFO: loaded from: classes3.dex */
final class b extends CacheProviders$StringPreferenceCacheProvider {
    @Override // com.perfectcorp.common.cache.CacheProviders$StringPreferenceCacheProvider
    public final PreferencesCache a() {
        PreferencesCache.Builder builder = new PreferencesCache.Builder(new BasicPreferences(DatabaseSharedPreferences.a("GetShadeFinderRecommendInfoDataHandler")), "GetShadeFinderRecommendInfoDataHandler");
        builder.a();
        return new PreferencesCache(builder);
    }
}
