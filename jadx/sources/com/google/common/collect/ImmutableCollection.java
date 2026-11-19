package com.google.common.collect;

import com.google.android.gms.internal.measurement.zzmv;
import com.google.errorprone.annotations.DoNotMock;
import defpackage.md;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Spliterator;
import java.util.Spliterators;

/* JADX INFO: loaded from: classes2.dex */
@DoNotMock
public abstract class ImmutableCollection<E> extends AbstractCollection<E> implements Serializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Object[] f33583b = new Object[0];
    private static final long serialVersionUID = 912559;

    public static abstract class ArrayBasedBuilder<E> extends Builder<E> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object[] f33584a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f33585b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f33586c;

        public ArrayBasedBuilder(int i2) {
            CollectPreconditions.b(i2, "initialCapacity");
            this.f33584a = new Object[i2];
            this.f33585b = 0;
        }

        public void c(zzmv zzmvVar) {
            d(zzmvVar);
        }

        public final void d(Object obj) {
            obj.getClass();
            h(1);
            Object[] objArr = this.f33584a;
            int i2 = this.f33585b;
            this.f33585b = i2 + 1;
            objArr[i2] = obj;
        }

        public void e(Object obj) {
            d(obj);
        }

        public final void f(Iterable iterable) {
            if (iterable instanceof Collection) {
                Collection collection = (Collection) iterable;
                h(collection.size());
                if (collection instanceof ImmutableCollection) {
                    this.f33585b = ((ImmutableCollection) collection).h(this.f33585b, this.f33584a);
                    return;
                }
            }
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                a(it.next());
            }
        }

        public void g(List list) {
            f(list);
        }

        public final void h(int i2) {
            Object[] objArr = this.f33584a;
            int iB = Builder.b(objArr.length, this.f33585b + i2);
            if (iB > objArr.length || this.f33586c) {
                this.f33584a = Arrays.copyOf(this.f33584a, iB);
                this.f33586c = false;
            }
        }
    }

    @DoNotMock
    public static abstract class Builder<E> {
        public static int b(int i2, int i3) {
            if (i3 < 0) {
                md.n("cannot store more than Integer.MAX_VALUE elements");
                return 0;
            }
            if (i3 <= i2) {
                return i2;
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

        public abstract Builder a(Object obj);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
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

    @Override // java.util.AbstractCollection, java.util.Collection
    public abstract boolean contains(Object obj);

    public ImmutableList f() {
        if (isEmpty()) {
            UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
            return RegularImmutableList.f33698f;
        }
        Object[] array = toArray(f33583b);
        UnmodifiableListIterator unmodifiableListIterator2 = ImmutableList.f33587c;
        return ImmutableList.q(array.length, array);
    }

    public int h(int i2, Object[] objArr) {
        UnmodifiableIterator it = iterator();
        while (it.hasNext()) {
            objArr[i2] = it.next();
            i2++;
        }
        return i2;
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

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public abstract UnmodifiableIterator iterator();

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

    @Override // java.util.Collection, java.lang.Iterable
    public final Spliterator spliterator() {
        return Spliterators.spliterator(this, 1296);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        objArr.getClass();
        int size = size();
        if (objArr.length < size) {
            Object[] objArrI = i();
            if (objArrI != null) {
                return Arrays.copyOfRange(objArrI, n(), m(), objArr.getClass());
            }
            if (objArr.length != 0) {
                objArr = Arrays.copyOf(objArr, 0);
            }
            objArr = Arrays.copyOf(objArr, size);
        } else if (objArr.length > size) {
            objArr[size] = null;
        }
        h(0, objArr);
        return objArr;
    }

    public Object writeReplace() {
        return new ImmutableList.SerializedForm(toArray(f33583b));
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        return toArray(f33583b);
    }
}
