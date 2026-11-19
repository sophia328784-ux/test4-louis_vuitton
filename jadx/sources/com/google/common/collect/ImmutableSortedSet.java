package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.NavigableSet;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ImmutableSortedSet<E> extends ImmutableSet<E> implements NavigableSet<E>, SortedIterable<E> {
    public static final /* synthetic */ int g = 0;
    private static final long serialVersionUID = 912559;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final transient Comparator f33620e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public transient ImmutableSortedSet f33621f;

    public static final class Builder<E> extends ImmutableSet.Builder<E> {
        public final Comparator d;

        public Builder(Comparator<? super E> comparator) {
            comparator.getClass();
            this.d = comparator;
        }

        @Override // com.google.common.collect.ImmutableSet.Builder, com.google.common.collect.ImmutableCollection.Builder
        public final ImmutableCollection.Builder a(Object obj) {
            super.a(obj);
            return this;
        }

        @Override // com.google.common.collect.ImmutableSet.Builder
        /* JADX INFO: renamed from: i */
        public final ImmutableSet.Builder a(Object obj) {
            super.a(obj);
            return this;
        }

        @Override // com.google.common.collect.ImmutableSet.Builder
        public final ImmutableSet.Builder j(Iterable iterable) {
            throw null;
        }

        @Override // com.google.common.collect.ImmutableSet.Builder
        public final /* bridge */ /* synthetic */ ImmutableSet k() {
            throw null;
        }

        public final ImmutableSortedSet l() {
            RegularImmutableSortedSet regularImmutableSortedSet;
            Object[] objArrCopyOf = this.f33584a;
            int i2 = this.f33585b;
            Comparator comparator = this.d;
            if (i2 == 0) {
                int i3 = ImmutableSortedSet.g;
                regularImmutableSortedSet = NaturalOrdering.f33684b != comparator ? new RegularImmutableSortedSet(RegularImmutableList.f33698f, comparator) : RegularImmutableSortedSet.f33722i;
            } else {
                int i4 = ImmutableSortedSet.g;
                ObjectArrays.a(i2, objArrCopyOf);
                Arrays.sort(objArrCopyOf, 0, i2, comparator);
                int i5 = 1;
                for (int i6 = 1; i6 < i2; i6++) {
                    Object obj = objArrCopyOf[i6];
                    if (comparator.compare(obj, objArrCopyOf[i5 - 1]) != 0) {
                        objArrCopyOf[i5] = obj;
                        i5++;
                    }
                }
                Arrays.fill(objArrCopyOf, i5, i2, (Object) null);
                if (i5 < objArrCopyOf.length / 2) {
                    objArrCopyOf = Arrays.copyOf(objArrCopyOf, i5);
                }
                regularImmutableSortedSet = new RegularImmutableSortedSet(ImmutableList.q(i5, objArrCopyOf), comparator);
            }
            this.f33585b = regularImmutableSortedSet.f33723h.size();
            this.f33586c = true;
            return regularImmutableSortedSet;
        }
    }

    public static final class SerializedForm<E> implements Serializable {
        private static final long serialVersionUID = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Comparator f33622b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Object[] f33623c;

        public SerializedForm(Comparator comparator, Object[] objArr) {
            this.f33622b = comparator;
            this.f33623c = objArr;
        }

        public Object readResolve() {
            Builder builder = new Builder(this.f33622b);
            Object[] objArr = this.f33623c;
            int length = objArr.length;
            ObjectArrays.a(length, objArr);
            builder.h(length);
            System.arraycopy(objArr, 0, builder.f33584a, builder.f33585b, length);
            builder.f33585b += length;
            return builder.l();
        }
    }

    public ImmutableSortedSet(Comparator comparator) {
        this.f33620e = comparator;
    }

    public static Builder A() {
        return new Builder(NaturalOrdering.f33684b);
    }

    public static ImmutableSortedSet D() {
        return RegularImmutableSortedSet.f33722i;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    @Override // java.util.NavigableSet
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public final ImmutableSortedSet subSet(Object obj, boolean z, Object obj2, boolean z2) {
        obj.getClass();
        obj2.getClass();
        Preconditions.g(this.f33620e.compare(obj, obj2) <= 0);
        RegularImmutableSortedSet regularImmutableSortedSet = (RegularImmutableSortedSet) this;
        RegularImmutableSortedSet regularImmutableSortedSetF = regularImmutableSortedSet.F(regularImmutableSortedSet.I(obj, z), regularImmutableSortedSet.f33723h.size());
        return regularImmutableSortedSetF.F(0, regularImmutableSortedSetF.G(obj2, z2));
    }

    @Override // java.util.SortedSet, com.google.common.collect.SortedIterable
    public final Comparator comparator() {
        return this.f33620e;
    }

    @Override // java.util.NavigableSet
    public final NavigableSet descendingSet() {
        ImmutableSortedSet regularImmutableSortedSet = this.f33621f;
        if (regularImmutableSortedSet == null) {
            RegularImmutableSortedSet regularImmutableSortedSet2 = (RegularImmutableSortedSet) this;
            Comparator comparatorReverseOrder = Collections.reverseOrder(regularImmutableSortedSet2.f33620e);
            if (regularImmutableSortedSet2.isEmpty()) {
                regularImmutableSortedSet = NaturalOrdering.f33684b != comparatorReverseOrder ? new RegularImmutableSortedSet(RegularImmutableList.f33698f, comparatorReverseOrder) : RegularImmutableSortedSet.f33722i;
            } else {
                regularImmutableSortedSet = new RegularImmutableSortedSet(regularImmutableSortedSet2.f33723h.F(), comparatorReverseOrder);
            }
            this.f33621f = regularImmutableSortedSet;
            regularImmutableSortedSet.f33621f = this;
        }
        return regularImmutableSortedSet;
    }

    @Override // java.util.NavigableSet
    public final NavigableSet headSet(Object obj, boolean z) {
        obj.getClass();
        RegularImmutableSortedSet regularImmutableSortedSet = (RegularImmutableSortedSet) this;
        return regularImmutableSortedSet.F(0, regularImmutableSortedSet.G(obj, z));
    }

    @Override // java.util.NavigableSet
    public final Object pollFirst() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet
    public final Object pollLast() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public final SortedSet subSet(Object obj, Object obj2) {
        return subSet(obj, true, obj2, false);
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public final SortedSet tailSet(Object obj) {
        obj.getClass();
        RegularImmutableSortedSet regularImmutableSortedSet = (RegularImmutableSortedSet) this;
        return regularImmutableSortedSet.F(regularImmutableSortedSet.I(obj, true), regularImmutableSortedSet.f33723h.size());
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    public Object writeReplace() {
        return new SerializedForm(this.f33620e, toArray(ImmutableCollection.f33583b));
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public final SortedSet headSet(Object obj) {
        obj.getClass();
        RegularImmutableSortedSet regularImmutableSortedSet = (RegularImmutableSortedSet) this;
        return regularImmutableSortedSet.F(0, regularImmutableSortedSet.G(obj, false));
    }

    @Override // java.util.NavigableSet
    public final NavigableSet tailSet(Object obj, boolean z) {
        obj.getClass();
        RegularImmutableSortedSet regularImmutableSortedSet = (RegularImmutableSortedSet) this;
        return regularImmutableSortedSet.F(regularImmutableSortedSet.I(obj, z), regularImmutableSortedSet.f33723h.size());
    }
}
