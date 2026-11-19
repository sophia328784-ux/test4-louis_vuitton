package com.perfectcorp.thirdparty.com.google.common.collect;

import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import defpackage.pq0;
import defpackage.r81;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ImmutableSet<E> extends ai<E> implements Set<E> {
    public static final /* synthetic */ int d = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public transient ImmutableList f42207c;

    public static class Builder<E> extends ai.a<E> {
        public Builder() {
            super(4);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai.b
        public final /* synthetic */ ai.b b(Object obj) {
            h(obj);
            return this;
        }

        public final void h(Object obj) {
            obj.getClass();
            e(obj);
        }

        public final void i(List list) {
            list.getClass();
            c(list);
        }

        public final ImmutableSet j() {
            int i2 = this.f42229b;
            if (i2 == 0) {
                int i3 = ImmutableSet.d;
                return bm.f42280j;
            }
            Object[] objArr = this.f42228a;
            if (i2 == 1) {
                Object obj = objArr[0];
                int i4 = ImmutableSet.d;
                return new bn(obj);
            }
            ImmutableSet immutableSetR = ImmutableSet.r(i2, objArr);
            this.f42229b = immutableSetR.size();
            this.f42230c = true;
            return immutableSetR;
        }
    }

    public static ImmutableSet A(BeautyMode beautyMode) {
        return new bn(beautyMode);
    }

    public static int p(int i2) {
        int iMax = Math.max(i2, 2);
        if (iMax >= 751619276) {
            Preconditions.g(iMax < 1073741824, "collection too large");
            return 1073741824;
        }
        int iHighestOneBit = Integer.highestOneBit(iMax - 1) << 1;
        while (((double) iHighestOneBit) * 0.7d < iMax) {
            iHighestOneBit <<= 1;
        }
        return iHighestOneBit;
    }

    public static ImmutableSet q(Collection collection) {
        if ((collection instanceof ImmutableSet) && !(collection instanceof SortedSet)) {
            ImmutableSet immutableSet = (ImmutableSet) collection;
            if (!immutableSet.o()) {
                return immutableSet;
            }
        }
        Object[] array = collection.toArray();
        return r(array.length, array);
    }

    public static ImmutableSet r(int i2, Object... objArr) {
        while (i2 != 0) {
            if (i2 == 1) {
                return new bn(objArr[0]);
            }
            int iP = p(i2);
            Object[] objArr2 = new Object[iP];
            int i3 = iP - 1;
            int i4 = 0;
            int i5 = 0;
            for (int i6 = 0; i6 < i2; i6++) {
                Object obj = objArr[i6];
                if (obj == null) {
                    r81.d(pq0.k(i6, "at index "));
                    return null;
                }
                int iHashCode = obj.hashCode();
                int iA = al.a.a(iHashCode);
                while (true) {
                    int i7 = iA & i3;
                    Object obj2 = objArr2[i7];
                    if (obj2 == null) {
                        objArr[i5] = obj;
                        objArr2[i7] = obj;
                        i4 += iHashCode;
                        i5++;
                        break;
                    }
                    if (obj2.equals(obj)) {
                        break;
                    }
                    iA++;
                }
            }
            Arrays.fill(objArr, i5, i2, (Object) null);
            if (i5 == 1) {
                return new bn(objArr[0], i4);
            }
            if (p(i5) >= iP / 2) {
                int length = objArr.length;
                if (i5 < (length >> 1) + (length >> 2)) {
                    objArr = Arrays.copyOf(objArr, i5);
                }
                return new bm(objArr, objArr2, i4, i3, i5);
            }
            i2 = i5;
        }
        return bm.f42280j;
    }

    public static Builder s() {
        return new Builder();
    }

    public static ImmutableSet t(Iterable iterable) {
        if (iterable instanceof Collection) {
            return q((Collection) iterable);
        }
        Iterator it = iterable.iterator();
        if (!it.hasNext()) {
            return bm.f42280j;
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return new bn(next);
        }
        Builder builder = new Builder();
        builder.h(next);
        while (it.hasNext()) {
            builder.h(it.next());
        }
        return builder.j();
    }

    public static ImmutableSet u(Object[] objArr) {
        int length = objArr.length;
        if (length != 0) {
            return length != 1 ? r(objArr.length, (Object[]) objArr.clone()) : new bn(objArr[0]);
        }
        return bm.f42280j;
    }

    public static ImmutableSet v() {
        return bm.f42280j;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof ImmutableSet) && x() && ((ImmutableSet) obj).x() && hashCode() != obj.hashCode()) {
            return false;
        }
        return Sets.b(this, obj);
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.collect.ai
    public ImmutableList h() {
        ImmutableList immutableList = this.f42207c;
        if (immutableList != null) {
            return immutableList;
        }
        ImmutableList immutableListZ = z();
        this.f42207c = immutableListZ;
        return immutableListZ;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return Sets.a(this);
    }

    public boolean x() {
        return this instanceof bm;
    }

    public ImmutableList z() {
        Object[] array = toArray(ai.f42227b);
        bz bzVar = ImmutableList.f42200c;
        return ImmutableList.s(array.length, array);
    }
}
