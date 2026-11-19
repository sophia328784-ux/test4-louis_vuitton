package com.perfectcorp.thirdparty.com.google.common.collect;

import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
abstract class i<K, V> implements Map.Entry<K, V> {
    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            if (com.perfectcorp.thirdparty.com.google.common.base.g.a.a(getKey(), entry.getKey()) && com.perfectcorp.thirdparty.com.google.common.base.g.a.a(getValue(), entry.getValue())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        K key = getKey();
        V value = getValue();
        return (key == null ? 0 : key.hashCode()) ^ (value != null ? value.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public Object setValue(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        return getKey() + "=" + getValue();
    }
}
