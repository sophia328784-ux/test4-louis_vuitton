package com.google.common.collect;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
final class ReverseOrdering<T> extends Ordering<T> implements Serializable {
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Ordering f33725b;

    public ReverseOrdering(Ordering ordering) {
        this.f33725b = ordering;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.f33725b.compare(obj2, obj);
    }

    @Override // com.google.common.collect.Ordering
    public final Ordering e() {
        return this.f33725b;
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ReverseOrdering) {
            return this.f33725b.equals(((ReverseOrdering) obj).f33725b);
        }
        return false;
    }

    public final int hashCode() {
        return -this.f33725b.hashCode();
    }

    public final String toString() {
        return this.f33725b + ".reverse()";
    }
}
