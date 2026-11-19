package com.perfectcorp.thirdparty.com.google.common.collect;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class HashMultimap<K, V> extends ah<K, V> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final transient int f42199h;

    public HashMultimap() {
        super(q.f());
        this.f42199h = 2;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.e
    public final Collection e() {
        return u.b(this.f42199h);
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.l, com.perfectcorp.thirdparty.com.google.common.collect.Multimap, com.perfectcorp.thirdparty.com.google.common.collect.ListMultimap
    public final Set get(Object obj) {
        Collection collectionE = (Collection) ((q) this.f42297f).get(obj);
        if (collectionE == null) {
            collectionE = e();
        }
        return (Set) c(obj, collectionE);
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap
    public final Map h() {
        Map map = this.f42318e;
        if (map != null) {
            return map;
        }
        Map mapL = l();
        this.f42318e = mapL;
        return mapL;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap
    public final Set keySet() {
        Set set = this.f42317c;
        if (set != null) {
            return set;
        }
        Set setJ = j();
        this.f42317c = setJ;
        return setJ;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap
    public final boolean m(Object obj, Object obj2) {
        Collection collection = (Collection) h().get(obj);
        return collection != null && collection.remove(obj2);
    }

    public final boolean o(Object obj) {
        return this.f42297f.containsKey(obj);
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.Multimap
    public final int size() {
        return this.g;
    }
}
