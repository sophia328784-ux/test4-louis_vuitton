package com.perfectcorp.thirdparty.com.google.common.collect;

import defpackage.md;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ai<E> extends AbstractCollection<E> implements Serializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Object[] f42227b = new Object[0];

    public static abstract class a<E> extends b<E> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object[] f42228a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f42229b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f42230c;

        public a(int i2) {
            al.a.c(i2, "initialCapacity");
            this.f42228a = new Object[i2];
            this.f42229b = 0;
        }

        public final b c(Iterable iterable) {
            if (iterable instanceof Collection) {
                Collection collection = (Collection) iterable;
                d(collection.size() + this.f42229b);
                if (collection instanceof ai) {
                    this.f42229b = ((ai) collection).a(this.f42229b, this.f42228a);
                    return this;
                }
            }
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                b(it.next());
            }
            return this;
        }

        public final void d(int i2) {
            Object[] objArr = this.f42228a;
            if (objArr.length < i2) {
                this.f42228a = Arrays.copyOf(objArr, b.a(objArr.length, i2));
            } else if (!this.f42230c) {
                return;
            } else {
                this.f42228a = (Object[]) objArr.clone();
            }
            this.f42230c = false;
        }

        public final void e(Object obj) {
            obj.getClass();
            d(this.f42229b + 1);
            Object[] objArr = this.f42228a;
            int i2 = this.f42229b;
            this.f42229b = i2 + 1;
            objArr[i2] = obj;
        }

        public void f(Object obj) {
            e(obj);
        }

        public void g(List list) {
            c(list);
        }
    }

    public static abstract class b<E> {
        public static int a(int i2, int i3) {
            if (i3 < 0) {
                md.h("cannot store more than MAX_VALUE elements");
                return 0;
            }
            int iHighestOneBit = i2 + (i2 >> 1) + 1;
            if (iHighestOneBit < i3) {
                iHighestOneBit = Integer.highestOneBit(i3 - 1) << 1;
            }
            if (iHighestOneBit < 0) {
                return Integer.MAX_VALUE;
            }
            return iHighestOneBit;
        }

        public abstract b b(Object obj);
    }

    public int a(int i2, Object[] objArr) {
        by it = iterator();
        while (it.hasNext()) {
            objArr[i2] = it.next();
            i2++;
        }
        return i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public abstract boolean contains(Object obj);

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public abstract by iterator();

    public ImmutableList h() {
        if (isEmpty()) {
            bz bzVar = ImmutableList.f42200c;
            return bj.f42269f;
        }
        Object[] array = toArray(f42227b);
        bz bzVar2 = ImmutableList.f42200c;
        return ImmutableList.s(array.length, array);
    }

    public Object[] i() {
        return null;
    }

    public int m() {
        throw new UnsupportedOperationException();
    }

    public int n() {
        throw new UnsupportedOperationException();
    }

    public abstract boolean o();

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        objArr.getClass();
        int size = size();
        if (objArr.length < size) {
            Object[] objArrI = i();
            if (objArrI != null) {
                return Arrays.copyOfRange(objArrI, m(), n(), objArr.getClass());
            }
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), size);
        } else if (objArr.length > size) {
            objArr[size] = null;
        }
        a(0, objArr);
        return objArr;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        return toArray(f42227b);
    }
}
