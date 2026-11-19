package com.perfectcorp.common.utility;

import android.content.SharedPreferences;
import com.perfectcorp.thirdparty.com.google.common.cache.CacheLoader;

/* JADX INFO: loaded from: classes3.dex */
final class b extends CacheLoader<SharedPreferences, a> {
    @Override // com.perfectcorp.thirdparty.com.google.common.cache.CacheLoader
    public final /* synthetic */ Object a(Object obj) {
        return new a((SharedPreferences) obj);
    }
}
