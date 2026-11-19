package com.perfectcorp.common.utility;

import defpackage.az;
import defpackage.b21;
import defpackage.o60;
import defpackage.pq0;
import defpackage.r81;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Lists {

    public static class a<E> extends AbstractList<E> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Iterable f39426b;

        public a(List list) {
            this.f39426b = list;
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object get(int i2) {
            String strK;
            if (i2 >= 0) {
                int i3 = 0;
                for (List list : this.f39426b) {
                    int size = list.size() + i3;
                    if (i2 < size) {
                        return list.get(i2 - i3);
                    }
                    i3 = size;
                }
                strK = o60.h(i2, i3, "Invalid index ", ", size is ");
            } else {
                strK = pq0.k(i2, "Invalid index ");
            }
            az.v(strK);
            return null;
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public final Iterator iterator() {
            final Iterable iterable = this.f39426b;
            return new Iterator<E>(iterable) { // from class: com.perfectcorp.common.utility.l$b

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final Iterator f39455b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public Iterator f39456c;

                {
                    this.f39455b = iterable.iterator();
                    a();
                }

                public final void a() {
                    Iterator it;
                    do {
                        Iterator it2 = this.f39455b;
                        if (!it2.hasNext()) {
                            break;
                        }
                        it = ((Iterable) it2.next()).iterator();
                        this.f39456c = it;
                    } while (!it.hasNext());
                    Iterator it3 = this.f39456c;
                    if (it3 == null || it3.hasNext()) {
                        return;
                    }
                    this.f39456c = null;
                }

                @Override // java.util.Iterator
                public final boolean hasNext() {
                    Iterator it = this.f39456c;
                    return it != null && it.hasNext();
                }

                @Override // java.util.Iterator
                public final Object next() {
                    Iterator it = this.f39456c;
                    if (it == null) {
                        b21.x();
                        return null;
                    }
                    Object next = it.next();
                    if (!this.f39456c.hasNext()) {
                        a();
                    }
                    return next;
                }

                @Override // java.util.Iterator
                public final void remove() {
                    Iterator it = this.f39456c;
                    if (it == null) {
                        r81.b();
                        return;
                    }
                    it.remove();
                    if (this.f39456c.hasNext()) {
                        return;
                    }
                    a();
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            Iterator it = this.f39426b.iterator();
            int size = 0;
            while (it.hasNext()) {
                size += ((List) it.next()).size();
            }
            return size;
        }
    }

    public static List a(List... listArr) {
        return new a(Arrays.asList(listArr));
    }
}
