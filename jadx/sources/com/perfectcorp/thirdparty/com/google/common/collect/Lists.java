package com.perfectcorp.thirdparty.com.google.common.collect;

import com.perfectcorp.thirdparty.com.google.common.base.Function;
import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import com.perfectcorp.thirdparty.com.google.common.primitives.Ints;
import java.io.Serializable;
import java.math.RoundingMode;
import java.util.AbstractList;
import java.util.AbstractSequentialList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Lists {

    public static class a<E> extends AbstractList<E> implements Serializable, RandomAccess {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f42208b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Object[] f42209c;

        public a(Object obj, Object[] objArr) {
            this.f42208b = obj;
            this.f42209c = objArr;
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object get(int i2) {
            Preconditions.b(i2, size());
            if (i2 == 0) {
                return this.f42208b;
            }
            return this.f42209c[i2 - 1];
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return Ints.a(((long) this.f42209c.length) + 1);
        }
    }

    public static class b<T> extends AbstractList<List<T>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f42210b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f42211c;

        public b(List list, int i2) {
            this.f42210b = list;
            this.f42211c = i2;
        }

        @Override // java.util.AbstractList, java.util.List
        public final /* synthetic */ Object get(int i2) {
            Preconditions.b(i2, size());
            int i3 = this.f42211c;
            int i4 = i2 * i3;
            List list = this.f42210b;
            return list.subList(i4, Math.min(i3 + i4, list.size()));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean isEmpty() {
            return this.f42210b.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            int size = this.f42210b.size();
            RoundingMode roundingMode = RoundingMode.CEILING;
            return com.perfectcorp.thirdparty.com.google.common.math.a.a(size, this.f42211c);
        }
    }

    public static class c<T> extends b<T> implements RandomAccess {
    }

    public static class d<F, T> extends AbstractList<T> implements Serializable, RandomAccess {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f42212b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function f42213c;

        public d(List list, Function function) {
            list.getClass();
            this.f42212b = list;
            this.f42213c = function;
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final void clear() {
            this.f42212b.clear();
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object get(int i2) {
            return this.f42213c.apply(this.f42212b.get(i2));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean isEmpty() {
            return this.f42212b.isEmpty();
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public final Iterator iterator() {
            return listIterator();
        }

        @Override // java.util.AbstractList, java.util.List
        public final ListIterator listIterator(int i2) {
            return new ba(this, this.f42212b.listIterator(i2));
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object remove(int i2) {
            return this.f42213c.apply(this.f42212b.remove(i2));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.f42212b.size();
        }
    }

    public static class e<F, T> extends AbstractSequentialList<T> implements Serializable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f42214b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function f42215c;

        public e(List list, Function function) {
            list.getClass();
            this.f42214b = list;
            this.f42215c = function;
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final void clear() {
            this.f42214b.clear();
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public final ListIterator listIterator(int i2) {
            return new bb(this, this.f42214b.listIterator(i2));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.f42214b.size();
        }
    }

    public static ArrayList a(Object... objArr) {
        objArr.getClass();
        int length = objArr.length;
        al.a.c(length, "arraySize");
        ArrayList arrayList = new ArrayList(Ints.a(((long) length) + 5 + ((long) (length / 10))));
        Collections.addAll(arrayList, objArr);
        return arrayList;
    }

    public static List b(int i2, List list) {
        list.getClass();
        Preconditions.f(i2 > 0);
        return list instanceof RandomAccess ? new c(list, i2) : new b(list, i2);
    }

    public static AbstractList c(List list, Function function) {
        return list instanceof RandomAccess ? new d(list, function) : new e(list, function);
    }
}
