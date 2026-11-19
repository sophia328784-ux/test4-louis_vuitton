package com.perfectcorp.thirdparty.com.google.common.collect;

import defpackage.cj;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
final class y<T> extends Ordering<T> implements Serializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ImmutableMap f42354b;

    public final int c(Object obj) {
        Integer num = (Integer) this.f42354b.get(obj);
        if (num != null) {
            return num.intValue();
        }
        Ordering.a aVar = new Ordering.a(cj.i(obj, "Cannot compare value: "));
        aVar.f42220b = obj;
        throw aVar;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return c(obj) - c(obj2);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj instanceof y) {
            return this.f42354b.equals(((y) obj).f42354b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f42354b.hashCode();
    }

    public final String toString() {
        return "Ordering.explicit(" + this.f42354b.keySet() + ")";
    }
}
