package com.google.common.collect;

import com.google.errorprone.annotations.DoNotMock;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
@DoNotMock
public interface Multimap<K, V> {
    Collection a(Object obj);

    void clear();

    Collection f();

    Collection get(Object obj);

    Map h();

    boolean i(Object obj, Object obj2);

    Set keySet();

    boolean put(Object obj, Object obj2);

    boolean remove(Object obj, Object obj2);

    int size();

    Collection values();
}
