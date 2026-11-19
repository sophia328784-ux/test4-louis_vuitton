package com.bumptech.glide.util;

import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;

/* JADX INFO: loaded from: classes2.dex */
public final class CachedHashCodeArrayMap<K, V> extends ArrayMap<K, V> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f24978h;

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public final void clear() {
        this.f24978h = 0;
        super.clear();
    }

    @Override // androidx.collection.SimpleArrayMap
    public final void h(SimpleArrayMap simpleArrayMap) {
        this.f24978h = 0;
        super.h(simpleArrayMap);
    }

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public final int hashCode() {
        if (this.f24978h == 0) {
            this.f24978h = super.hashCode();
        }
        return this.f24978h;
    }

    @Override // androidx.collection.SimpleArrayMap
    public final Object i(int i2) {
        this.f24978h = 0;
        return super.i(i2);
    }

    @Override // androidx.collection.SimpleArrayMap
    public final Object j(int i2, Object obj) {
        this.f24978h = 0;
        return super.j(i2, obj);
    }

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        this.f24978h = 0;
        return super.put(obj, obj2);
    }
}
