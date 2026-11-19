package com.google.android.gms.measurement.internal;

import androidx.collection.LruCache;
import com.google.android.gms.common.internal.Preconditions;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
final class zzhm extends LruCache {
    public final /* synthetic */ zzht g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzhm(zzht zzhtVar) {
        super(20);
        this.g = zzhtVar;
    }

    @Override // androidx.collection.LruCache
    public final Object a(Object obj) throws Throwable {
        LinkedHashMap linkedHashMap;
        String str = (String) obj;
        Preconditions.e(str);
        zzht zzhtVar = this.g;
        zzhtVar.h();
        Preconditions.e(str);
        zzaw zzawVar = zzhtVar.f31948b.f31982c;
        zzpg.U(zzawVar);
        zzaq zzaqVarO0 = zzawVar.o0(str);
        if (zzaqVarO0 == null) {
            return null;
        }
        zzgu zzguVar = zzhtVar.f31850a.f31842f;
        zzic.m(zzguVar);
        zzguVar.n.b(str, "Populate EES config from database on cache miss. appId");
        zzhtVar.o(str, zzhtVar.p(str, zzaqVarO0.f31557a));
        LruCache lruCache = zzhtVar.f31827k;
        synchronized (lruCache.f3292c) {
            Set setEntrySet = lruCache.f3291b.f3402a.entrySet();
            setEntrySet.getClass();
            linkedHashMap = new LinkedHashMap(setEntrySet.size());
            Set<Map.Entry> setEntrySet2 = lruCache.f3291b.f3402a.entrySet();
            setEntrySet2.getClass();
            for (Map.Entry entry : setEntrySet2) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return (com.google.android.gms.internal.measurement.zzc) linkedHashMap.get(str);
    }
}
