package com.google.common.collect;

import defpackage.uh;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public abstract class FluentIterable<E> implements Iterable<E> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Iterable f33580b;

    public FluentIterable(Iterable iterable) {
        iterable.getClass();
        this.f33580b = iterable;
    }

    public static FluentIterable a(final Iterable iterable) {
        return iterable instanceof FluentIterable ? (FluentIterable) iterable : new FluentIterable<Object>(iterable) { // from class: com.google.common.collect.FluentIterable.1
            @Override // java.lang.Iterable
            public final Iterator iterator() {
                return iterable.iterator();
            }
        };
    }

    public final FluentIterable b(final uh uhVar) {
        Iterable iterable = this.f33580b;
        if (iterable != null) {
            this = (FluentIterable<E>) iterable;
        }
        return a(new FluentIterable<Object>() { // from class: com.google.common.collect.Iterables.5

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ Iterable f33624c;
            public final /* synthetic */ uh d;

            public AnonymousClass5() {
                iterable = this;
                uhVar = uhVar;
            }

            @Override // java.lang.Iterable
            public final Iterator iterator() {
                return new Iterators.AnonymousClass6(iterable.iterator(), uhVar);
            }
        });
    }

    public final String toString() {
        Iterable iterable = this.f33580b;
        if (iterable != null) {
            this = (FluentIterable<E>) iterable;
        }
        Iterator<E> it = this.iterator();
        StringBuilder sb = new StringBuilder("[");
        boolean z = true;
        while (it.hasNext()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append(it.next());
            z = false;
        }
        sb.append(']');
        return sb.toString();
    }

    public FluentIterable() {
        this.f33580b = null;
    }
}
