package com.google.common.collect;

import com.google.common.base.Preconditions;
import defpackage.pq0;
import defpackage.r81;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ImmutableSet<E> extends ImmutableCollection<E> implements Set<E> {
    public static final /* synthetic */ int d = 0;
    private static final long serialVersionUID = 912559;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public transient ImmutableList f33618c;

    public static class Builder<E> extends ImmutableCollection.ArrayBasedBuilder<E> {
        public Builder() {
            super(4);
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public Builder a(Object obj) {
            obj.getClass();
            d(obj);
            return this;
        }

        public Builder j(Iterable iterable) {
            iterable.getClass();
            f(iterable);
            return this;
        }

        public ImmutableSet k() {
            int i2 = this.f33585b;
            if (i2 == 0) {
                int i3 = ImmutableSet.d;
                return RegularImmutableSet.f33717k;
            }
            Object[] objArr = this.f33584a;
            if (i2 != 1) {
                ImmutableSet immutableSetR = ImmutableSet.r(i2, objArr);
                this.f33585b = immutableSetR.size();
                this.f33586c = true;
                return immutableSetR;
            }
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            int i4 = ImmutableSet.d;
            return new SingletonImmutableSet(obj);
        }
    }

    public static final class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object[] f33619b;

        public SerializedForm(Object[] objArr) {
            this.f33619b = objArr;
        }

        public Object readResolve() {
            return ImmutableSet.t(this.f33619b);
        }
    }

    public static int q(int i2) {
        int iMax = Math.max(i2, 2);
        if (iMax >= 751619276) {
            Preconditions.h(iMax < 1073741824, "collection too large");
            return 1073741824;
        }
        int iHighestOneBit = Integer.highestOneBit(iMax - 1) << 1;
        while (((double) iHighestOneBit) * 0.7d < iMax) {
            iHighestOneBit <<= 1;
        }
        return iHighestOneBit;
    }

    public static ImmutableSet r(int i2, Object... objArr) {
        if (i2 == 0) {
            return RegularImmutableSet.f33717k;
        }
        if (i2 == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            return new SingletonImmutableSet(obj);
        }
        int iQ = q(i2);
        Object[] objArr2 = new Object[iQ];
        int i3 = iQ - 1;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < i2; i6++) {
            Object obj2 = objArr[i6];
            if (obj2 == null) {
                r81.d(pq0.k(i6, "at index "));
                return null;
            }
            int iHashCode = obj2.hashCode();
            int iA = Hashing.a(iHashCode);
            while (true) {
                int i7 = iA & i3;
                Object obj3 = objArr2[i7];
                if (obj3 == null) {
                    objArr[i5] = obj2;
                    objArr2[i7] = obj2;
                    i4 += iHashCode;
                    i5++;
                    break;
                }
                if (obj3.equals(obj2)) {
                    break;
                }
                iA++;
            }
        }
        Arrays.fill(objArr, i5, i2, (Object) null);
        if (i5 == 1) {
            Object obj4 = objArr[0];
            Objects.requireNonNull(obj4);
            return new SingletonImmutableSet(obj4);
        }
        if (q(i5) < iQ / 2) {
            return r(i5, objArr);
        }
        int length = objArr.length;
        if (i5 < (length >> 1) + (length >> 2)) {
            objArr = Arrays.copyOf(objArr, i5);
        }
        return new RegularImmutableSet(objArr, objArr2, i4, i3, i5);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static ImmutableSet s(Collection collection) {
        if ((collection instanceof ImmutableSet) && !(collection instanceof SortedSet)) {
            ImmutableSet immutableSet = (ImmutableSet) collection;
            if (!immutableSet.o()) {
                return immutableSet;
            }
        }
        Object[] array = collection.toArray();
        return r(array.length, array);
    }

    public static ImmutableSet t(Object[] objArr) {
        int length = objArr.length;
        if (length != 0) {
            return length != 1 ? r(objArr.length, (Object[]) objArr.clone()) : new SingletonImmutableSet(objArr[0]);
        }
        return RegularImmutableSet.f33717k;
    }

    public static ImmutableSet v() {
        return RegularImmutableSet.f33717k;
    }

    public static ImmutableSet x(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object... objArr) {
        Preconditions.h(objArr.length <= 2147483641, "the total number of elements must fit in an int");
        int length = objArr.length + 6;
        Object[] objArr2 = new Object[length];
        objArr2[0] = obj;
        objArr2[1] = obj2;
        objArr2[2] = obj3;
        objArr2[3] = obj4;
        objArr2[4] = obj5;
        objArr2[5] = obj6;
        System.arraycopy(objArr, 0, objArr2, 6, objArr.length);
        return r(length, objArr2);
    }

    public static ImmutableSet z() {
        return new SingletonImmutableSet("CH");
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof ImmutableSet) && (this instanceof RegularImmutableSet) && (((ImmutableSet) obj) instanceof RegularImmutableSet) && ((RegularImmutableSet) this).f33719f != obj.hashCode()) {
            return false;
        }
        return Sets.a(this, obj);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public ImmutableList f() {
        ImmutableList immutableList = this.f33618c;
        if (immutableList != null) {
            return immutableList;
        }
        ImmutableList immutableListU = u();
        this.f33618c = immutableListU;
        return immutableListU;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return Sets.c(this);
    }

    public ImmutableList u() {
        Object[] array = toArray();
        UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
        return ImmutableList.q(array.length, array);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public Object writeReplace() {
        return new SerializedForm(toArray(ImmutableCollection.f33583b));
    }
}
