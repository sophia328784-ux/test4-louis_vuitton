package com.google.common.collect;

import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import defpackage.b21;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.AbstractSequentialList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Lists {

    public static final class RandomAccessReverseList<T> extends ReverseList<T> implements RandomAccess {
    }

    public static class ReverseList<T> extends AbstractList<T> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int f33658c = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f33659b;

        public ReverseList(List list) {
            list.getClass();
            this.f33659b = list;
        }

        @Override // java.util.AbstractList, java.util.List
        public final void add(int i2, Object obj) {
            this.f33659b.add(b(i2), obj);
        }

        public final int b(int i2) {
            int size = this.f33659b.size();
            Preconditions.n(i2, size);
            return size - i2;
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final void clear() {
            this.f33659b.clear();
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object get(int i2) {
            List list = this.f33659b;
            int size = list.size();
            Preconditions.j(i2, size);
            return list.get((size - 1) - i2);
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public final Iterator iterator() {
            return listIterator();
        }

        @Override // java.util.AbstractList, java.util.List
        public final ListIterator listIterator(int i2) {
            final ListIterator listIterator = this.f33659b.listIterator(b(i2));
            return new ListIterator<Object>(this) { // from class: com.google.common.collect.Lists.ReverseList.1

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public boolean f33660b;
                public final /* synthetic */ ReverseList d;

                {
                    this.d = this;
                }

                @Override // java.util.ListIterator
                public final void add(Object obj) {
                    ListIterator listIterator2 = listIterator;
                    listIterator2.add(obj);
                    listIterator2.previous();
                    this.f33660b = false;
                }

                @Override // java.util.ListIterator, java.util.Iterator
                public final boolean hasNext() {
                    return listIterator.hasPrevious();
                }

                @Override // java.util.ListIterator
                public final boolean hasPrevious() {
                    return listIterator.hasNext();
                }

                @Override // java.util.ListIterator, java.util.Iterator
                public final Object next() {
                    ListIterator listIterator2 = listIterator;
                    if (listIterator2.hasPrevious()) {
                        this.f33660b = true;
                        return listIterator2.previous();
                    }
                    b21.x();
                    return null;
                }

                @Override // java.util.ListIterator
                public final int nextIndex() {
                    int iNextIndex = listIterator.nextIndex();
                    int i3 = ReverseList.f33658c;
                    return this.d.b(iNextIndex);
                }

                @Override // java.util.ListIterator
                public final Object previous() {
                    ListIterator listIterator2 = listIterator;
                    if (listIterator2.hasNext()) {
                        this.f33660b = true;
                        return listIterator2.next();
                    }
                    b21.x();
                    return null;
                }

                @Override // java.util.ListIterator
                public final int previousIndex() {
                    return nextIndex() - 1;
                }

                @Override // java.util.ListIterator, java.util.Iterator
                public final void remove() {
                    Preconditions.p("no calls to next() since the last call to remove()", this.f33660b);
                    listIterator.remove();
                    this.f33660b = false;
                }

                @Override // java.util.ListIterator
                public final void set(Object obj) {
                    Preconditions.q(this.f33660b);
                    listIterator.set(obj);
                }
            };
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object remove(int i2) {
            List list = this.f33659b;
            int size = list.size();
            Preconditions.j(i2, size);
            return list.remove((size - 1) - i2);
        }

        @Override // java.util.AbstractList
        public final void removeRange(int i2, int i3) {
            subList(i2, i3).clear();
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object set(int i2, Object obj) {
            List list = this.f33659b;
            int size = list.size();
            Preconditions.j(i2, size);
            return list.set((size - 1) - i2, obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.f33659b.size();
        }

        @Override // java.util.AbstractList, java.util.List
        public final List subList(int i2, int i3) {
            List list = this.f33659b;
            Preconditions.o(i2, i3, list.size());
            return Lists.c(list.subList(b(i3), b(i2)));
        }
    }

    public static final class TransformingRandomAccessList<F, T> extends AbstractList<T> implements RandomAccess, Serializable {
        private static final long serialVersionUID = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f33662b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function f33663c;

        public TransformingRandomAccessList(Function function, List list) {
            list.getClass();
            this.f33662b = list;
            this.f33663c = function;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractList, java.util.List
        public final Object get(int i2) {
            return this.f33663c.apply(this.f33662b.get(i2));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean isEmpty() {
            return this.f33662b.isEmpty();
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public final Iterator iterator() {
            return listIterator();
        }

        @Override // java.util.AbstractList, java.util.List
        public final ListIterator listIterator(int i2) {
            return new TransformedListIterator<Object, Object>(this.f33662b.listIterator(i2)) { // from class: com.google.common.collect.Lists.TransformingRandomAccessList.1
                @Override // com.google.common.collect.TransformedIterator
                public final Object a(Object obj) {
                    return TransformingRandomAccessList.this.f33663c.apply(obj);
                }
            };
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractList, java.util.List
        public final Object remove(int i2) {
            return this.f33663c.apply(this.f33662b.remove(i2));
        }

        @Override // java.util.AbstractList
        public final void removeRange(int i2, int i3) {
            this.f33662b.subList(i2, i3).clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.f33662b.size();
        }
    }

    public static final class TransformingSequentialList<F, T> extends AbstractSequentialList<T> implements Serializable {
        private static final long serialVersionUID = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f33665b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function f33666c;

        public TransformingSequentialList(Function function, List list) {
            list.getClass();
            this.f33665b = list;
            this.f33666c = function;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean isEmpty() {
            return this.f33665b.isEmpty();
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public final ListIterator listIterator(int i2) {
            return new TransformedListIterator<Object, Object>(this.f33665b.listIterator(i2)) { // from class: com.google.common.collect.Lists.TransformingSequentialList.1
                @Override // com.google.common.collect.TransformedIterator
                public final Object a(Object obj) {
                    return TransformingSequentialList.this.f33666c.apply(obj);
                }
            };
        }

        @Override // java.util.AbstractList
        public final void removeRange(int i2, int i3) {
            this.f33665b.subList(i2, i3).clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.f33665b.size();
        }
    }

    public static ArrayList a(Iterable iterable) {
        iterable.getClass();
        if (iterable instanceof Collection) {
            return new ArrayList((Collection) iterable);
        }
        Iterator it = iterable.iterator();
        ArrayList arrayList = new ArrayList();
        it.getClass();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    public static ArrayList b(Object... objArr) {
        objArr.getClass();
        int length = objArr.length;
        CollectPreconditions.b(length, "arraySize");
        ArrayList arrayList = new ArrayList(Ints.f(((long) length) + 5 + ((long) (length / 10))));
        Collections.addAll(arrayList, objArr);
        return arrayList;
    }

    public static List c(List list) {
        if (list instanceof ImmutableList) {
            return ((ImmutableList) list).F();
        }
        if (list instanceof ReverseList) {
            return ((ReverseList) list).f33659b;
        }
        return list instanceof RandomAccess ? new RandomAccessReverseList(list) : new ReverseList(list);
    }

    public static AbstractList d(Function function, List list) {
        return list instanceof RandomAccess ? new TransformingRandomAccessList(function, list) : new TransformingSequentialList(function, list);
    }
}
