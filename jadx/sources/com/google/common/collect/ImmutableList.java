package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ImmutableList<E> extends ImmutableCollection<E> implements List<E>, RandomAccess {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final UnmodifiableListIterator f33587c = new Itr(0, RegularImmutableList.f33698f);
    private static final long serialVersionUID = -889275714;

    public static final class Builder<E> extends ImmutableCollection.ArrayBasedBuilder<E> {
        public Builder() {
            super(4);
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        public final ImmutableCollection.Builder a(Object obj) {
            d(obj);
            return this;
        }

        public final void i(Object... objArr) {
            int length = objArr.length;
            ObjectArrays.a(length, objArr);
            h(length);
            System.arraycopy(objArr, 0, this.f33584a, this.f33585b, length);
            this.f33585b += length;
        }

        public final ImmutableList j() {
            this.f33586c = true;
            return ImmutableList.q(this.f33585b, this.f33584a);
        }
    }

    public static final class Itr<E> extends AbstractIndexedListIterator<E> {
        public final ImmutableList d;

        public Itr(int i2, ImmutableList immutableList) {
            super(immutableList.size(), i2);
            this.d = immutableList;
        }

        @Override // com.google.common.collect.AbstractIndexedListIterator
        public final Object a(int i2) {
            return this.d.get(i2);
        }
    }

    public static final class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object[] f33588b;

        public SerializedForm(Object[] objArr) {
            this.f33588b = objArr;
        }

        public Object readResolve() {
            return ImmutableList.u(this.f33588b);
        }
    }

    public static ImmutableList A(Object obj) {
        Object[] objArr = {obj};
        ObjectArrays.a(1, objArr);
        return q(1, objArr);
    }

    public static ImmutableList D(Object obj, Object obj2) {
        Object[] objArr = {obj, obj2};
        ObjectArrays.a(2, objArr);
        return q(2, objArr);
    }

    public static ImmutableList E(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, Object... objArr) {
        Preconditions.h(objArr.length <= 2147483635, "the total number of elements must fit in an int");
        int length = objArr.length + 12;
        Object[] objArr2 = new Object[length];
        objArr2[0] = str;
        objArr2[1] = str2;
        objArr2[2] = str3;
        objArr2[3] = str4;
        objArr2[4] = str5;
        objArr2[5] = str6;
        objArr2[6] = str7;
        objArr2[7] = str8;
        objArr2[8] = str9;
        objArr2[9] = str10;
        objArr2[10] = str11;
        objArr2[11] = str12;
        System.arraycopy(objArr, 0, objArr2, 12, objArr.length);
        ObjectArrays.a(length, objArr2);
        return q(length, objArr2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ImmutableList G(Comparator comparator, List list) {
        Collection collection;
        comparator.getClass();
        if (list instanceof Collection) {
            collection = list;
        } else {
            Iterator it = list.iterator();
            ArrayList arrayList = new ArrayList();
            it.getClass();
            while (it.hasNext()) {
                arrayList.add(it.next());
            }
            collection = arrayList;
        }
        Object[] array = collection.toArray();
        ObjectArrays.a(array.length, array);
        Arrays.sort(array, comparator);
        return q(array.length, array);
    }

    public static ImmutableList q(int i2, Object[] objArr) {
        return i2 == 0 ? RegularImmutableList.f33698f : new RegularImmutableList(objArr, i2);
    }

    public static Builder r(int i2) {
        CollectPreconditions.b(i2, "expectedSize");
        return new Builder(i2);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static ImmutableList s(Iterable iterable) {
        iterable.getClass();
        if (iterable instanceof Collection) {
            return t((Collection) iterable);
        }
        Iterator it = iterable.iterator();
        if (!it.hasNext()) {
            return RegularImmutableList.f33698f;
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return A(next);
        }
        Builder builder = new Builder();
        builder.d(next);
        while (it.hasNext()) {
            builder.d(it.next());
        }
        return builder.j();
    }

    public static ImmutableList t(Collection collection) {
        if (!(collection instanceof ImmutableCollection)) {
            Object[] array = collection.toArray();
            ObjectArrays.a(array.length, array);
            return q(array.length, array);
        }
        ImmutableList immutableListF = ((ImmutableCollection) collection).f();
        if (!immutableListF.o()) {
            return immutableListF;
        }
        Object[] array2 = immutableListF.toArray(ImmutableCollection.f33583b);
        return q(array2.length, array2);
    }

    public static ImmutableList u(Object[] objArr) {
        if (objArr.length == 0) {
            return RegularImmutableList.f33698f;
        }
        Object[] objArr2 = (Object[]) objArr.clone();
        ObjectArrays.a(objArr2.length, objArr2);
        return q(objArr2.length, objArr2);
    }

    public static ImmutableList x() {
        return RegularImmutableList.f33698f;
    }

    public static ImmutableList z(Long l, Long l2, Long l3, Long l4, Long l5) {
        Object[] objArr = {l, l2, l3, l4, l5};
        ObjectArrays.a(5, objArr);
        return q(5, objArr);
    }

    public ImmutableList F() {
        return size() <= 1 ? this : new ReverseImmutableList(this);
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: I */
    public ImmutableList subList(int i2, int i3) {
        Preconditions.o(i2, i3, size());
        int i4 = i3 - i2;
        if (i4 == size()) {
            return this;
        }
        return i4 == 0 ? RegularImmutableList.f33698f : new SubList(i2, i4);
    }

    @Override // java.util.List
    public final void add(int i2, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final boolean addAll(int i2, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof List) {
                List list = (List) obj;
                int size = size();
                if (size == list.size()) {
                    if (!(list instanceof RandomAccess)) {
                        Iterator<E> it = iterator();
                        Iterator<E> it2 = list.iterator();
                        while (it.hasNext()) {
                            if (it2.hasNext() && Objects.equals(it.next(), it2.next())) {
                            }
                        }
                        return !it2.hasNext();
                    }
                    for (int i2 = 0; i2 < size; i2++) {
                        if (Objects.equals(get(i2), list.get(i2))) {
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final ImmutableList f() {
        return this;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public int h(int i2, Object[] objArr) {
        int size = size();
        for (int i3 = 0; i3 < size; i3++) {
            objArr[i2 + i3] = get(i3);
        }
        return i2 + size;
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
    public int indexOf(Object obj) {
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

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
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
    public ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // com.google.common.collect.ImmutableCollection
    /* JADX INFO: renamed from: p */
    public final UnmodifiableIterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final Object remove(int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final Object set(int i2, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public final UnmodifiableListIterator listIterator(int i2) {
        Preconditions.n(i2, size());
        return isEmpty() ? f33587c : new Itr(i2, this);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public Object writeReplace() {
        return new SerializedForm(toArray(ImmutableCollection.f33583b));
    }

    public static final class ReverseImmutableList<E> extends ImmutableList<E> {
        public final transient ImmutableList d;

        public ReverseImmutableList(ImmutableList immutableList) {
            this.d = immutableList;
        }

        @Override // com.google.common.collect.ImmutableList
        public final ImmutableList F() {
            return this.d;
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
        public final ImmutableList subList(int i2, int i3) {
            ImmutableList immutableList = this.d;
            Preconditions.o(i2, i3, immutableList.size());
            return immutableList.subList(immutableList.size() - i3, immutableList.size() - i2).F();
        }

        @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            return this.d.contains(obj);
        }

        @Override // java.util.List
        public final Object get(int i2) {
            ImmutableList immutableList = this.d;
            Preconditions.j(i2, immutableList.size());
            return immutableList.get((immutableList.size() - 1) - i2);
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public final int indexOf(Object obj) {
            ImmutableList immutableList = this.d;
            int iLastIndexOf = immutableList.lastIndexOf(obj);
            if (iLastIndexOf >= 0) {
                return (immutableList.size() - 1) - iLastIndexOf;
            }
            return -1;
        }

        @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return listIterator(0);
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public final int lastIndexOf(Object obj) {
            ImmutableList immutableList = this.d;
            int iIndexOf = immutableList.indexOf(obj);
            if (iIndexOf >= 0) {
                return (immutableList.size() - 1) - iIndexOf;
            }
            return -1;
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public final ListIterator listIterator() {
            return listIterator(0);
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean o() {
            return this.d.o();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.d.size();
        }

        @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
        public Object writeReplace() {
            return super.writeReplace();
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public final /* bridge */ /* synthetic */ ListIterator listIterator(int i2) {
            return listIterator(i2);
        }
    }

    public final class SubList extends ImmutableList<E> {
        public final transient int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final transient int f33589e;

        public SubList(int i2, int i3) {
            this.d = i2;
            this.f33589e = i3;
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        /* JADX INFO: renamed from: I */
        public final ImmutableList subList(int i2, int i3) {
            Preconditions.o(i2, i3, this.f33589e);
            int i4 = this.d;
            return ImmutableList.this.subList(i2 + i4, i3 + i4);
        }

        @Override // java.util.List
        public final Object get(int i2) {
            Preconditions.j(i2, this.f33589e);
            return ImmutableList.this.get(i2 + this.d);
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final Object[] i() {
            return ImmutableList.this.i();
        }

        @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return listIterator(0);
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public final ListIterator listIterator() {
            return listIterator(0);
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final int m() {
            return ImmutableList.this.n() + this.d + this.f33589e;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final int n() {
            return ImmutableList.this.n() + this.d;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean o() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.f33589e;
        }

        @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
        public Object writeReplace() {
            return super.writeReplace();
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public final /* bridge */ /* synthetic */ ListIterator listIterator(int i2) {
            return listIterator(i2);
        }
    }
}
