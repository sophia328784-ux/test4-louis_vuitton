package com.google.common.collect;

import com.google.common.base.Function;
import defpackage.x5;
import java.util.Comparator;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Ordering<T> implements Comparator<T> {
    public static Ordering b(x5 x5Var) {
        return new ComparatorOrdering(x5Var);
    }

    public static Ordering c() {
        return NaturalOrdering.f33684b;
    }

    public final Ordering a(Comparator comparator) {
        return new CompoundOrdering(this, comparator);
    }

    public final Ordering d(Function function) {
        return new ByFunctionOrdering(function, this);
    }

    public Ordering e() {
        return new ReverseOrdering(this);
    }
}
