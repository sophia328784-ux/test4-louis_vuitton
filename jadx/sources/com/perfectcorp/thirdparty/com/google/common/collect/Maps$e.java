package com.perfectcorp.thirdparty.com.google.common.collect;

import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
abstract class Maps$e<K, V> extends Sets.c<K> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f42216b;

    public Maps$e(Map map) {
        map.getClass();
        this.f42216b = map;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f42216b.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f42216b.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f42216b.size();
    }
}
