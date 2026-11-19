package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import defpackage.v7;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.markers.KMutableCollection;
import kotlin.jvm.internal.markers.KMutableSet;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001f\n\u0002\u0010#\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0001\u000fB\u0013\b\u0007\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B\u001b\b\u0016\u0012\u0010\u0010\b\u001a\f\u0012\u0006\b\u0001\u0012\u00028\u0000\u0018\u00010\u0000¢\u0006\u0004\b\u0006\u0010\tB\u0019\b\u0016\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\u000bB\u001b\b\u0016\u0012\u0010\u0010\r\u001a\f\u0012\u0006\b\u0001\u0012\u00028\u0000\u0018\u00010\f¢\u0006\u0004\b\u0006\u0010\u000e¨\u0006\u0010"}, d2 = {"Landroidx/collection/ArraySet;", "E", "", "", "", "capacity", "<init>", "(I)V", "set", "(Landroidx/collection/ArraySet;)V", "", "(Ljava/util/Collection;)V", "", "array", "([Ljava/lang/Object;)V", "ElementIterator", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ArraySet<E> implements Collection<E>, Set<E>, KMutableCollection, KMutableSet {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f3229b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object[] f3230c;
    public int d;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/collection/ArraySet$ElementIterator;", "Landroidx/collection/IndexBasedArrayIterator;", "<init>", "(Landroidx/collection/ArraySet;)V", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public final class ElementIterator extends IndexBasedArrayIterator<E> {
        public ElementIterator() {
            super(ArraySet.this.d);
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        public final Object a(int i2) {
            return ArraySet.this.f3230c[i2];
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        public final void c(int i2) {
            ArraySet.this.h(i2);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ArraySet(ArraySet<? extends E> arraySet) {
        this(0);
        if (arraySet != null) {
            int i2 = arraySet.d;
            f(this.d + i2);
            if (this.d != 0) {
                for (int i3 = 0; i3 < i2; i3++) {
                    add(arraySet.f3230c[i3]);
                }
            } else if (i2 > 0) {
                ArraysKt.m(0, i2, 6, arraySet.f3229b, this.f3229b);
                ArraysKt.n(arraySet.f3230c, this.f3230c, 0, i2, 6);
                if (this.d != 0) {
                    v7.c();
                    throw null;
                }
                this.d = i2;
            }
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        int i2;
        int iA;
        int i3 = this.d;
        if (obj == null) {
            iA = ArraySetKt.a(this, null, 0);
            i2 = 0;
        } else {
            int iHashCode = obj.hashCode();
            i2 = iHashCode;
            iA = ArraySetKt.a(this, obj, iHashCode);
        }
        if (iA >= 0) {
            return false;
        }
        int i4 = ~iA;
        int[] iArr = this.f3229b;
        if (i3 >= iArr.length) {
            int i5 = 8;
            if (i3 >= 8) {
                i5 = (i3 >> 1) + i3;
            } else if (i3 < 4) {
                i5 = 4;
            }
            Object[] objArr = this.f3230c;
            int[] iArr2 = new int[i5];
            this.f3229b = iArr2;
            this.f3230c = new Object[i5];
            if (i3 != this.d) {
                v7.c();
                return false;
            }
            if (iArr2.length != 0) {
                ArraysKt.m(0, iArr.length, 6, iArr, iArr2);
                ArraysKt.n(objArr, this.f3230c, 0, objArr.length, 6);
            }
        }
        if (i4 < i3) {
            int[] iArr3 = this.f3229b;
            int i6 = i4 + 1;
            ArraysKt.i(i6, i4, i3, iArr3, iArr3);
            Object[] objArr2 = this.f3230c;
            ArraysKt.l(objArr2, objArr2, i6, i4, i3);
        }
        int i7 = this.d;
        if (i3 == i7) {
            int[] iArr4 = this.f3229b;
            if (i4 < iArr4.length) {
                iArr4[i4] = i2;
                this.f3230c[i4] = obj;
                this.d = i7 + 1;
                return true;
            }
        }
        v7.c();
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean addAll(Collection collection) {
        collection.getClass();
        f(collection.size() + this.d);
        Iterator<E> it = collection.iterator();
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= add(it.next());
        }
        return zAdd;
    }

    @Override // java.util.Collection, java.util.Set
    public final void clear() {
        if (this.d != 0) {
            this.f3229b = ContainerHelpersKt.f3399a;
            this.f3230c = ContainerHelpersKt.f3401c;
            this.d = 0;
        }
        if (this.d == 0) {
            return;
        }
        v7.c();
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return (obj == null ? ArraySetKt.a(this, null, 0) : ArraySetKt.a(this, obj, obj.hashCode())) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        collection.getClass();
        Iterator<E> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Set) || this.d != ((Set) obj).size()) {
            return false;
        }
        try {
            int i2 = this.d;
            for (int i3 = 0; i3 < i2; i3++) {
                if (!((Set) obj).contains(this.f3230c[i3])) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public final void f(int i2) {
        int i3 = this.d;
        int[] iArr = this.f3229b;
        if (iArr.length < i2) {
            Object[] objArr = this.f3230c;
            int[] iArr2 = new int[i2];
            this.f3229b = iArr2;
            this.f3230c = new Object[i2];
            if (i3 > 0) {
                ArraysKt.m(0, i3, 6, iArr, iArr2);
                ArraysKt.n(objArr, this.f3230c, 0, this.d, 6);
            }
        }
        if (this.d == i3) {
            return;
        }
        v7.c();
    }

    public final Object h(int i2) {
        int i3 = this.d;
        Object[] objArr = this.f3230c;
        Object obj = objArr[i2];
        if (i3 <= 1) {
            clear();
            return obj;
        }
        int i4 = i3 - 1;
        int[] iArr = this.f3229b;
        if (iArr.length <= 8 || i3 >= iArr.length / 3) {
            if (i2 < i4) {
                int i5 = i2 + 1;
                ArraysKt.i(i2, i5, i3, iArr, iArr);
                Object[] objArr2 = this.f3230c;
                ArraysKt.l(objArr2, objArr2, i2, i5, i3);
            }
            this.f3230c[i4] = null;
        } else {
            int i6 = i3 > 8 ? i3 + (i3 >> 1) : 8;
            int[] iArr2 = new int[i6];
            this.f3229b = iArr2;
            this.f3230c = new Object[i6];
            if (i2 > 0) {
                ArraysKt.m(0, i2, 6, iArr, iArr2);
                ArraysKt.n(objArr, this.f3230c, 0, i2, 6);
            }
            if (i2 < i4) {
                int i7 = i2 + 1;
                ArraysKt.i(i2, i7, i3, iArr, this.f3229b);
                ArraysKt.l(objArr, this.f3230c, i2, i7, i3);
            }
        }
        if (i3 == this.d) {
            this.d = i4;
            return obj;
        }
        v7.c();
        return null;
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        int[] iArr = this.f3229b;
        int i2 = this.d;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 += iArr[i4];
        }
        return i3;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.d <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new ElementIterator();
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int iA = obj == null ? ArraySetKt.a(this, null, 0) : ArraySetKt.a(this, obj, obj.hashCode());
        if (iA < 0) {
            return false;
        }
        h(iA);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean removeAll(Collection collection) {
        collection.getClass();
        Iterator<E> it = collection.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= remove(it.next());
        }
        return zRemove;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean retainAll(Collection collection) {
        collection.getClass();
        boolean z = false;
        for (int i2 = this.d - 1; -1 < i2; i2--) {
            if (!CollectionsKt.u(collection, this.f3230c[i2])) {
                h(i2);
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public final int size() {
        return this.d;
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray(Object[] objArr) {
        objArr.getClass();
        int i2 = this.d;
        if (objArr.length < i2) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i2);
        } else if (objArr.length > i2) {
            objArr[i2] = null;
        }
        ArraysKt.l(this.f3230c, objArr, 0, 0, this.d);
        return objArr;
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.d * 14);
        sb.append('{');
        int i2 = this.d;
        for (int i3 = 0; i3 < i2; i3++) {
            if (i3 > 0) {
                sb.append(", ");
            }
            Object obj = this.f3230c[i3];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray() {
        return ArraysKt.q(0, this.d, this.f3230c);
    }

    public ArraySet(int i2) {
        this.f3229b = ContainerHelpersKt.f3399a;
        this.f3230c = ContainerHelpersKt.f3401c;
        if (i2 > 0) {
            this.f3229b = new int[i2];
            this.f3230c = new Object[i2];
        }
    }

    public /* synthetic */ ArraySet(int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0 : i2);
    }

    public ArraySet() {
        this(0, 1, null);
    }

    public ArraySet(Collection<? extends E> collection) {
        this(0);
        if (collection != null) {
            addAll(collection);
        }
    }

    public ArraySet(E[] eArr) {
        this(0);
        if (eArr != null) {
            Iterator itA = ArrayIteratorKt.a(eArr);
            while (itA.hasNext()) {
                add(itA.next());
            }
        }
    }
}
