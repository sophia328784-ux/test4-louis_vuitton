package com.perfectcorp.common.utility;

import android.content.SharedPreferences;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.thirdparty.com.google.common.cache.LoadingCache;

/* JADX INFO: loaded from: classes3.dex */
public class BasicPreferences extends j {
    public final SharedPreferences n;

    public BasicPreferences(String str) {
        LoadingCache loadingCache = a.g;
        this.n = (SharedPreferences) a.g.a(PfCommons.b().getSharedPreferences(str, 0));
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.af
    public final /* bridge */ /* synthetic */ Object delegate() {
        return this.n;
    }

    public BasicPreferences(DatabaseSharedPreferences databaseSharedPreferences) {
        this.n = databaseSharedPreferences;
    }
}
