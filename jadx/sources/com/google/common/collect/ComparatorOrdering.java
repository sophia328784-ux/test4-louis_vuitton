package com.google.common.collect;

import defpackage.x5;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
final class ComparatorOrdering<T> extends Ordering<T> implements Serializable {
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final x5 f33574b;

    public ComparatorOrdering(x5 x5Var) {
        this.f33574b = x5Var;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.f33574b.compare(obj, obj2);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof ComparatorOrdering) && this.f33574b == ((ComparatorOrdering) obj).f33574b;
    }

    public final int hashCode() {
        return this.f33574b.hashCode();
    }

    public final String toString() {
        return this.f33574b.toString();
    }
}
