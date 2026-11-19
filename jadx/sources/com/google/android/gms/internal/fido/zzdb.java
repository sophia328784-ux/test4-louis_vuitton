package com.google.android.gms.internal.fido;

import java.util.Collection;
import java.util.Comparator;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzdb {
    public static boolean a(Comparator comparator, Collection collection) {
        Comparator comparator2;
        comparator.getClass();
        collection.getClass();
        if (collection instanceof SortedSet) {
            comparator2 = ((SortedSet) collection).comparator();
            if (comparator2 == null) {
                comparator2 = zzcq.f29861b;
            }
        } else {
            if (!(collection instanceof zzda)) {
                return false;
            }
            comparator2 = ((zzda) collection).comparator();
        }
        return comparator.equals(comparator2);
    }
}
