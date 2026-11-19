package com.perfectcorp.thirdparty.com.google.common.collect;

import com.perfectcorp.thirdparty.com.google.common.base.Function;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.base.Predicate;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public abstract class FluentIterable<E> implements Iterable<E> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Optional f42198b;

    public FluentIterable(Iterable iterable) {
        iterable.getClass();
        this.f42198b = Optional.b(this == iterable ? null : iterable);
    }

    public static FluentIterable a(String str, Object... objArr) {
        return n(new Lists.a(str, objArr));
    }

    public static FluentIterable h(Iterable... iterableArr) {
        for (Iterable iterable : iterableArr) {
            iterable.getClass();
        }
        return new ab(iterableArr);
    }

    public static FluentIterable n(Iterable iterable) {
        return iterable instanceof FluentIterable ? (FluentIterable) iterable : new z(iterable, iterable);
    }

    public final Iterable f() {
        return (Iterable) this.f42198b.f(this);
    }

    public final FluentIterable i(Predicate predicate) {
        Iterable iterableF = f();
        iterableF.getClass();
        predicate.getClass();
        return n(new aq(iterableF, predicate));
    }

    public final Optional m() {
        Iterator it = f().iterator();
        return it.hasNext() ? Optional.e(it.next()) : Optional.a();
    }

    public final FluentIterable o() {
        Iterable iterableF = f();
        iterableF.getClass();
        return n(new as(iterableF));
    }

    public final ImmutableList p() {
        return ImmutableList.u(f());
    }

    public final ImmutableSet q() {
        return ImmutableSet.t(f());
    }

    public final FluentIterable r(Function function) {
        Iterable iterableF = f();
        iterableF.getClass();
        return n(new ar(iterableF, function));
    }

    public final FluentIterable s(Function function) {
        return new aa(r(function));
    }

    public final String toString() {
        return Iterables.c(f());
    }

    public FluentIterable() {
        this.f42198b = Optional.a();
    }
}
