package com.perfectcorp.common.utility;

import com.perfectcorp.thirdparty.com.google.common.cache.CacheLoader;

/* JADX INFO: loaded from: classes3.dex */
final class h extends CacheLoader<String, DatabaseSharedPreferences> {
    @Override // com.perfectcorp.thirdparty.com.google.common.cache.CacheLoader
    public final /* synthetic */ Object a(Object obj) {
        return new DatabaseSharedPreferences((String) obj);
    }
}
