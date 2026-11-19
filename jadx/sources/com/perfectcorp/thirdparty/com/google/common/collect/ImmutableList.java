package com.perfectcorp.thirdparty.com.google.common.collect;

import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ImmutableList<E> extends ai<E> implements List<E>, RandomAccess {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final bz f42200c = new a(bj.f42269f, 0);

    public static final class Builder<E> extends ai.a<E> {
        public Builder() {
            super(4);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai.b
        public final ai.b b(Object obj) {
            e(obj);
            return this;
        }

        public final void h(Object... objArr) {
            al.a.d(objArr.length, objArr);
            d(this.f42229b + objArr.length);
            System.arraycopy(objArr, 0, this.f42228a, this.f42229b, objArr.length);
            this.f42229b += objArr.length;
        }

        public final ImmutableList i() {
            this.f42230c = true;
            return ImmutableList.s(this.f42229b, this.f42228a);
        }
    }

    public static class a<E> extends com.perfectcorp.thirdparty.com.google.common.collect.a<E> {
        public final ImmutableList d;

        public a(ImmutableList immutableList, int i2) {
            super(immutableList.size(), i2);
            this.d = immutableList;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.a
        public final Object a(int i2) {
            return this.d.get(i2);
        }
    }

    public static ImmutableList A(Object obj, Object obj2) {
        Object[] objArr = {obj, obj2};
        al.a.d(2, objArr);
        return s(2, objArr);
    }

    public static ImmutableList q(Collection collection) {
        if (!(collection instanceof ai)) {
            Object[] array = collection.toArray();
            al.a.d(array.length, array);
            return s(array.length, array);
        }
        ImmutableList immutableListH = ((ai) collection).h();
        if (!immutableListH.o()) {
            return immutableListH;
        }
        Object[] array2 = immutableListH.toArray(ai.f42227b);
        return s(array2.length, array2);
    }

    public static ImmutableList s(int i2, Object[] objArr) {
        return i2 == 0 ? bj.f42269f : new bj(objArr, i2);
    }

    public static Builder t(int i2) {
        al.a.c(i2, "expectedSize");
        return new Builder(i2);
    }

    public static ImmutableList u(Iterable iterable) {
        iterable.getClass();
        if (iterable instanceof Collection) {
            return q((Collection) iterable);
        }
        Iterator it = iterable.iterator();
        if (!it.hasNext()) {
            return bj.f42269f;
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return z(next);
        }
        Builder builder = new Builder();
        builder.e(next);
        while (it.hasNext()) {
            builder.e(it.next());
        }
        return builder.i();
    }

    public static ImmutableList v(Object[] objArr) {
        if (objArr.length == 0) {
            return bj.f42269f;
        }
        Object[] objArr2 = (Object[]) objArr.clone();
        al.a.d(objArr2.length, objArr2);
        return s(objArr2.length, objArr2);
    }

    public static ImmutableList x() {
        return bj.f42269f;
    }

    public static ImmutableList z(Object obj) {
        Object[] objArr = {obj};
        al.a.d(1, objArr);
        return s(1, objArr);
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai
    public int a(int i2, Object[] objArr) {
        int size = size();
        for (int i3 = 0; i3 < size; i3++) {
            objArr[i2 + i3] = get(i3);
        }
        return i2 + size;
    }

    @Override // java.util.List
    public final void add(int i2, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final boolean addAll(int i2, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            int size = size();
            if (size == list.size()) {
                if (list instanceof RandomAccess) {
                    for (int i2 = 0; i2 < size; i2++) {
                        if (com.perfectcorp.thirdparty.com.google.common.base.g.a.a(get(i2), list.get(i2))) {
                        }
                    }
                    return true;
                }
                Iterator<E> it = iterator();
                Iterator<E> it2 = list.iterator();
                while (it.hasNext()) {
                    if (!it2.hasNext() || !com.perfectcorp.thirdparty.com.google.common.base.g.a.a(it.next(), it2.next())) {
                    }
                }
                if (!it2.hasNext()) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai
    /* JADX INFO: renamed from: f */
    public final by iterator() {
        return listIterator(0);
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai
    public final ImmutableList h() {
        return this;
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int size = size();
        int i2 = 1;
        for (int i3 = 0; i3 < size; i3++) {
            i2 = ~(~(get(i3).hashCode() + (i2 * 31)));
        }
        return i2;
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            if (obj.equals(get(i2))) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public /* synthetic */ Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public /* synthetic */ ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: p */
    public ImmutableList subList(int i2, int i3) {
        Preconditions.c(i2, i3, size());
        int i4 = i3 - i2;
        if (i4 == size()) {
            return this;
        }
        return i4 == 0 ? bj.f42269f : new b(i2, i4);
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public final bz listIterator(int i2) {
        Preconditions.e(i2, size());
        return isEmpty() ? f42200c : new a(this, i2);
    }

    @Override // java.util.List
    public final Object remove(int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final Object set(int i2, Object obj) {
        throw new UnsupportedOperationException();
    }

    public class b extends ImmutableList<E> {
        public final transient int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final transient int f42201e;

        public b(int i2, int i3) {
            this.d = i2;
            this.f42201e = i3;
        }

        @Override // java.util.List
        public final Object get(int i2) {
            Preconditions.b(i2, this.f42201e);
            return ImmutableList.this.get(i2 + this.d);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai
        public final Object[] i() {
            return ImmutableList.this.i();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList, com.perfectcorp.thirdparty.com.google.common.collect.ai, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public final Iterator iterator() {
            return listIterator(0);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList, java.util.List
        public final ListIterator listIterator() {
            return listIterator(0);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai
        public final int m() {
            return ImmutableList.this.m() + this.d;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai
        public final int n() {
            return ImmutableList.this.m() + this.d + this.f42201e;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai
        public final boolean o() {
            return true;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList, java.util.List
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public final ImmutableList subList(int i2, int i3) {
            Preconditions.c(i2, i3, this.f42201e);
            int i4 = this.d;
            return ImmutableList.this.subList(i2 + i4, i3 + i4);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.f42201e;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList, java.util.List
        public final /* synthetic */ ListIterator listIterator(int i2) {
            return listIterator(i2);
        }
    }
}
