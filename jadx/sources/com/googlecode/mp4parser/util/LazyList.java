package com.googlecode.mp4parser.util;

import defpackage.b21;
import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class LazyList<E> extends AbstractList<E> {
    public static final Logger d = Logger.a(LazyList.class);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f35733b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Iterator f35734c;

    public LazyList(List<E> list, Iterator<E> it) {
        this.f35733b = list;
        this.f35734c = it;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i2) {
        List list = this.f35733b;
        if (list.size() > i2) {
            return list.get(i2);
        }
        Iterator it = this.f35734c;
        if (it.hasNext()) {
            list.add(it.next());
            return get(i2);
        }
        b21.x();
        return null;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new Iterator<Object>() { // from class: com.googlecode.mp4parser.util.LazyList.1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f35735b = 0;

            @Override // java.util.Iterator
            public final boolean hasNext() {
                int i2 = this.f35735b;
                LazyList lazyList = LazyList.this;
                return i2 < lazyList.f35733b.size() || lazyList.f35734c.hasNext();
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Iterator
            public final Object next() {
                int i2 = this.f35735b;
                LazyList lazyList = LazyList.this;
                List list = lazyList.f35733b;
                if (i2 >= list.size()) {
                    list.add(lazyList.f35734c.next());
                    return next();
                }
                int i3 = this.f35735b;
                this.f35735b = i3 + 1;
                return list.get(i3);
            }

            @Override // java.util.Iterator
            public final void remove() {
                throw new UnsupportedOperationException();
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        Logger logger = d;
        logger.b("potentially expensive size() call");
        logger.b("blowup running");
        while (true) {
            Iterator it = this.f35734c;
            boolean zHasNext = it.hasNext();
            List list = this.f35733b;
            if (!zHasNext) {
                return list.size();
            }
            list.add(it.next());
        }
    }
}
