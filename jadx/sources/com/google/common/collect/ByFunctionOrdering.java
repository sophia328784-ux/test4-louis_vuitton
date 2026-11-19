package com.google.common.collect;

import com.google.common.base.Function;
import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class ByFunctionOrdering<F, T> extends Ordering<F> implements Serializable {
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function f33542b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Ordering f33543c;

    public ByFunctionOrdering(Function function, Ordering ordering) {
        this.f33542b = function;
        this.f33543c = ordering;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Function function = this.f33542b;
        return this.f33543c.compare(function.apply(obj), function.apply(obj2));
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ByFunctionOrdering)) {
            return false;
        }
        ByFunctionOrdering byFunctionOrdering = (ByFunctionOrdering) obj;
        return this.f33542b.equals(byFunctionOrdering.f33542b) && this.f33543c.equals(byFunctionOrdering.f33543c);
    }

    public final int hashCode() {
        return Objects.hash(this.f33542b, this.f33543c);
    }

    public final String toString() {
        return this.f33543c + ".onResultOf(" + this.f33542b + ")";
    }
}
