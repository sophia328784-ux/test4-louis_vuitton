package com.google.common.collect;

import defpackage.n00;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: loaded from: classes2.dex */
final class CompoundOrdering<T> extends Ordering<T> implements Serializable {
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Comparator[] f33578b;

    public CompoundOrdering(Ordering ordering, Comparator comparator) {
        this.f33578b = new Comparator[]{ordering, comparator};
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i2 = 0;
        while (true) {
            Comparator[] comparatorArr = this.f33578b;
            if (i2 >= comparatorArr.length) {
                return 0;
            }
            int iCompare = comparatorArr[i2].compare(obj, obj2);
            if (iCompare != 0) {
                return iCompare;
            }
            i2++;
        }
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CompoundOrdering) {
            return Arrays.equals(this.f33578b, ((CompoundOrdering) obj).f33578b);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f33578b);
    }

    public final String toString() {
        return n00.r(Arrays.toString(this.f33578b), ")", new StringBuilder("Ordering.compound("));
    }
}
