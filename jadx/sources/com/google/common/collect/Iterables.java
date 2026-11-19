package com.google.common.collect;

import com.google.common.base.Predicate;
import defpackage.b21;
import defpackage.fc;
import java.util.Iterator;
import java.util.List;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Iterables {
    public static Object a(Iterable iterable, String str) {
        Sets.AnonymousClass2 anonymousClass2 = (Sets.AnonymousClass2) iterable;
        Sets.AnonymousClass2.AnonymousClass1 anonymousClass1 = new Sets.AnonymousClass2.AnonymousClass1(anonymousClass2.f33726b, anonymousClass2.f33727c);
        return anonymousClass1.hasNext() ? anonymousClass1.next() : str;
    }

    public static Object b(Iterable iterable) {
        Object next;
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (!list.isEmpty()) {
                return fc.e(1, list);
            }
            b21.x();
            return null;
        }
        if (iterable instanceof SortedSet) {
            return ((SortedSet) iterable).last();
        }
        Iterator it = iterable.iterator();
        do {
            next = it.next();
        } while (it.hasNext());
        return next;
    }

    public static void c(List list, Predicate predicate, int i2, int i3) {
        for (int size = list.size() - 1; size > i3; size--) {
            if (predicate.apply(list.get(size))) {
                list.remove(size);
            }
        }
        for (int i4 = i3 - 1; i4 >= i2; i4--) {
            list.remove(i4);
        }
    }
}
