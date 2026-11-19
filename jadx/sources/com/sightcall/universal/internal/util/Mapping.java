package com.sightcall.universal.internal.util;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class Mapping<K, V> {
    private final HashMap<K, V> zig = new HashMap<>();
    private final HashMap<V, K> zag = new HashMap<>();

    public void add(K k2, V v, Collection<V> collection) {
        this.zig.put(k2, v);
        this.zag.put(v, k2);
        Iterator<V> it = collection.iterator();
        while (it.hasNext()) {
            this.zag.put(it.next(), k2);
        }
    }

    public K getKey(V v) {
        return this.zag.get(v);
    }

    public V getValue(K k2) {
        return this.zig.get(k2);
    }

    public void add(K k2, V v) {
        this.zig.put(k2, v);
        this.zag.put(v, k2);
    }
}
