package com.perfectcorp.thirdparty.com.google.common.collect;

import com.perfectcorp.thirdparty.com.google.common.base.Function;
import java.io.Serializable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
final class p<F, T> extends Ordering<F> implements Serializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Function f42322b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Ordering f42323c;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Ordering ordering = this.f42323c;
        Function function = this.f42322b;
        return ordering.compare(function.apply(obj), function.apply(obj2));
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof p) {
            p pVar = (p) obj;
            if (this.f42322b.equals(pVar.f42322b) && this.f42323c.equals(pVar.f42323c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f42322b, this.f42323c});
    }

    public final String toString() {
        return this.f42323c + ".onResultOf(" + this.f42322b + ")";
    }
}
