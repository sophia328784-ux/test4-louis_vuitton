package com.google.common.collect;

import defpackage.cj;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
abstract class Multisets$AbstractEntry<E> implements Multiset.Entry<E> {
    public final boolean equals(Object obj) {
        if (!(obj instanceof Multiset.Entry)) {
            return false;
        }
        Multiset.Entry entry = (Multiset.Entry) obj;
        ObjectCountHashMap.MapEntry mapEntry = (ObjectCountHashMap.MapEntry) this;
        return mapEntry.getCount() == entry.getCount() && Objects.equals(mapEntry.f33690a, entry.a());
    }

    public final int hashCode() {
        ObjectCountHashMap.MapEntry mapEntry = (ObjectCountHashMap.MapEntry) this;
        Object obj = mapEntry.f33690a;
        return mapEntry.getCount() ^ (obj == null ? 0 : obj.hashCode());
    }

    public final String toString() {
        ObjectCountHashMap.MapEntry mapEntry = (ObjectCountHashMap.MapEntry) this;
        String strValueOf = String.valueOf(mapEntry.f33690a);
        int count = mapEntry.getCount();
        return count == 1 ? strValueOf : cj.e(count, strValueOf, " x ");
    }
}
