package com.perfectcorp.thirdparty.com.google.common.collect;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public interface Multimap<K, V> {
    Collection a(Object obj);

    void d();

    boolean equals(Object obj);

    Collection f();

    Collection get(Object obj);

    Map h();

    int hashCode();

    boolean i(Object obj, Object obj2);

    Set keySet();

    boolean m(Object obj, Object obj2);

    boolean n(Iterable iterable, Object obj);

    boolean put(Object obj, Object obj2);

    int size();

    Collection values();
}
