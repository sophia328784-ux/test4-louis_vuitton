package com.perfectcorp.thirdparty.com.google.common.collect;

import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ae<K, V> extends af implements Map.Entry<K, V> {
    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        return ((bu) this).n.equals(obj);
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return ((bu) this).n.getKey();
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return ((bu) this).n.hashCode();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        return ((bu) this).n.setValue(obj);
    }
}
