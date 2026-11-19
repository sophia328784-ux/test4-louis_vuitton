package kotlin.collections;

import defpackage.md;
import defpackage.pq0;
import defpackage.zy0;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0002\b\u0005\b\u0007\u0018\u0000 \u000b*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0001\fB\u0011\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\t\b\u0016¢\u0006\u0004\b\u0005\u0010\u0007B\u0017\b\u0016\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\b¢\u0006\u0004\b\u0005\u0010\n¨\u0006\r"}, d2 = {"Lkotlin/collections/ArrayDeque;", "E", "Lkotlin/collections/AbstractMutableList;", "", "initialCapacity", "<init>", "(I)V", "()V", "", "elements", "(Ljava/util/Collection;)V", "e", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class ArrayDeque<E> extends AbstractMutableList<E> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Object[] f71759f = new Object[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f71760b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object[] f71761c;
    public int d;

    public ArrayDeque(int i2) {
        Object[] objArr;
        if (i2 == 0) {
            objArr = f71759f;
        } else {
            if (i2 <= 0) {
                md.n(pq0.k(i2, "Illegal Capacity: "));
                throw null;
            }
            objArr = new Object[i2];
        }
        this.f71761c = objArr;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i2, Object obj) {
        AbstractList.Companion companion = AbstractList.INSTANCE;
        int i3 = this.d;
        companion.getClass();
        AbstractList.Companion.c(i2, i3);
        if (i2 == this.d) {
            addLast(obj);
            return;
        }
        if (i2 == 0) {
            addFirst(obj);
            return;
        }
        t();
        m(this.d + 1);
        int iS = s(this.f71760b + i2);
        int i4 = this.d;
        if (i2 < ((i4 + 1) >> 1)) {
            int iA = iS == 0 ? ArraysKt.A(this.f71761c) : iS - 1;
            int i5 = this.f71760b;
            int iA2 = i5 == 0 ? ArraysKt.A(this.f71761c) : i5 - 1;
            int i6 = this.f71760b;
            Object[] objArr = this.f71761c;
            if (iA >= i6) {
                objArr[iA2] = objArr[i6];
                ArraysKt.l(objArr, objArr, i6, i6 + 1, iA + 1);
            } else {
                ArraysKt.l(objArr, objArr, i6 - 1, i6, objArr.length);
                Object[] objArr2 = this.f71761c;
                objArr2[objArr2.length - 1] = objArr2[0];
                ArraysKt.l(objArr2, objArr2, 0, 1, iA + 1);
            }
            this.f71761c[iA] = obj;
            this.f71760b = iA2;
        } else {
            int iS2 = s(i4 + this.f71760b);
            Object[] objArr3 = this.f71761c;
            if (iS < iS2) {
                ArraysKt.l(objArr3, objArr3, iS + 1, iS, iS2);
            } else {
                ArraysKt.l(objArr3, objArr3, 1, 0, iS2);
                Object[] objArr4 = this.f71761c;
                objArr4[0] = objArr4[objArr4.length - 1];
                ArraysKt.l(objArr4, objArr4, iS + 1, iS, objArr4.length - 1);
            }
            this.f71761c[iS] = obj;
        }
        this.d++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i2, Collection collection) {
        collection.getClass();
        AbstractList.Companion companion = AbstractList.INSTANCE;
        int i3 = this.d;
        companion.getClass();
        AbstractList.Companion.c(i2, i3);
        if (collection.isEmpty()) {
            return false;
        }
        if (i2 == this.d) {
            return addAll(collection);
        }
        t();
        m(collection.size() + this.d);
        int iS = s(this.d + this.f71760b);
        int iS2 = s(this.f71760b + i2);
        int size = collection.size();
        if (i2 >= ((this.d + 1) >> 1)) {
            int i4 = iS2 + size;
            Object[] objArr = this.f71761c;
            if (iS2 < iS) {
                int i5 = size + iS;
                if (i5 <= objArr.length) {
                    ArraysKt.l(objArr, objArr, i4, iS2, iS);
                } else if (i4 >= objArr.length) {
                    ArraysKt.l(objArr, objArr, i4 - objArr.length, iS2, iS);
                } else {
                    int length = iS - (i5 - objArr.length);
                    ArraysKt.l(objArr, objArr, 0, length, iS);
                    Object[] objArr2 = this.f71761c;
                    ArraysKt.l(objArr2, objArr2, i4, iS2, length);
                }
            } else {
                ArraysKt.l(objArr, objArr, size, 0, iS);
                Object[] objArr3 = this.f71761c;
                if (i4 >= objArr3.length) {
                    ArraysKt.l(objArr3, objArr3, i4 - objArr3.length, iS2, objArr3.length);
                } else {
                    ArraysKt.l(objArr3, objArr3, 0, objArr3.length - size, objArr3.length);
                    Object[] objArr4 = this.f71761c;
                    ArraysKt.l(objArr4, objArr4, i4, iS2, objArr4.length - size);
                }
            }
            i(iS2, collection);
            return true;
        }
        int i6 = this.f71760b;
        int length2 = i6 - size;
        Object[] objArr5 = this.f71761c;
        if (iS2 < i6) {
            ArraysKt.l(objArr5, objArr5, length2, i6, objArr5.length);
            Object[] objArr6 = this.f71761c;
            if (size >= iS2) {
                ArraysKt.l(objArr6, objArr6, objArr6.length - size, 0, iS2);
            } else {
                ArraysKt.l(objArr6, objArr6, objArr6.length - size, 0, size);
                Object[] objArr7 = this.f71761c;
                ArraysKt.l(objArr7, objArr7, 0, size, iS2);
            }
        } else if (length2 >= 0) {
            ArraysKt.l(objArr5, objArr5, length2, i6, iS2);
        } else {
            length2 += objArr5.length;
            int i7 = iS2 - i6;
            int length3 = objArr5.length - length2;
            if (length3 >= i7) {
                ArraysKt.l(objArr5, objArr5, length2, i6, iS2);
            } else {
                ArraysKt.l(objArr5, objArr5, length2, i6, i6 + length3);
                Object[] objArr8 = this.f71761c;
                ArraysKt.l(objArr8, objArr8, 0, this.f71760b + length3, iS2);
            }
        }
        this.f71760b = length2;
        i(q(iS2 - size), collection);
        return true;
    }

    public final void addFirst(Object obj) {
        t();
        m(this.d + 1);
        int i2 = this.f71760b;
        int iA = i2 == 0 ? ArraysKt.A(this.f71761c) : i2 - 1;
        this.f71760b = iA;
        this.f71761c[iA] = obj;
        this.d++;
    }

    public final void addLast(Object obj) {
        t();
        m(getF71797c() + 1);
        this.f71761c[s(getF71797c() + this.f71760b)] = obj;
        this.d = getF71797c() + 1;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        if (!isEmpty()) {
            t();
            r(this.f71760b, s(getF71797c() + this.f71760b));
        }
        this.f71760b = 0;
        this.d = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // kotlin.collections.AbstractMutableList
    /* JADX INFO: renamed from: f, reason: from getter */
    public final int getF71797c() {
        return this.d;
    }

    public final Object first() {
        if (!isEmpty()) {
            return this.f71761c[this.f71760b];
        }
        zy0.c("ArrayDeque is empty.");
        return null;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i2) {
        AbstractList.Companion companion = AbstractList.INSTANCE;
        int i3 = this.d;
        companion.getClass();
        AbstractList.Companion.b(i2, i3);
        return this.f71761c[s(this.f71760b + i2)];
    }

    @Override // kotlin.collections.AbstractMutableList
    public final Object h(int i2) {
        AbstractList.Companion companion = AbstractList.INSTANCE;
        int i3 = this.d;
        companion.getClass();
        AbstractList.Companion.b(i2, i3);
        if (i2 == getF71797c() - 1) {
            return removeLast();
        }
        if (i2 == 0) {
            return removeFirst();
        }
        t();
        int iS = s(this.f71760b + i2);
        Object[] objArr = this.f71761c;
        Object obj = objArr[iS];
        int i4 = this.d >> 1;
        int i5 = this.f71760b;
        if (i2 < i4) {
            if (iS >= i5) {
                ArraysKt.l(objArr, objArr, i5 + 1, i5, iS);
            } else {
                ArraysKt.l(objArr, objArr, 1, 0, iS);
                Object[] objArr2 = this.f71761c;
                objArr2[0] = objArr2[objArr2.length - 1];
                int i6 = this.f71760b;
                ArraysKt.l(objArr2, objArr2, i6 + 1, i6, objArr2.length - 1);
            }
            Object[] objArr3 = this.f71761c;
            int i7 = this.f71760b;
            objArr3[i7] = null;
            this.f71760b = o(i7);
        } else {
            int iS2 = s((getF71797c() - 1) + i5);
            Object[] objArr4 = this.f71761c;
            if (iS <= iS2) {
                ArraysKt.l(objArr4, objArr4, iS, iS + 1, iS2 + 1);
            } else {
                ArraysKt.l(objArr4, objArr4, iS, iS + 1, objArr4.length);
                Object[] objArr5 = this.f71761c;
                objArr5[objArr5.length - 1] = objArr5[0];
                ArraysKt.l(objArr5, objArr5, 0, 1, iS2 + 1);
            }
            this.f71761c[iS2] = null;
        }
        this.d--;
        return obj;
    }

    public final void i(int i2, Collection collection) {
        Iterator<E> it = collection.iterator();
        int length = this.f71761c.length;
        while (i2 < length && it.hasNext()) {
            this.f71761c[i2] = it.next();
            i2++;
        }
        int i3 = this.f71760b;
        for (int i4 = 0; i4 < i3 && it.hasNext(); i4++) {
            this.f71761c[i4] = it.next();
        }
        this.d = collection.size() + this.d;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        int i2;
        int iS = s(getF71797c() + this.f71760b);
        int length = this.f71760b;
        if (length < iS) {
            while (length < iS) {
                if (Intrinsics.c(obj, this.f71761c[length])) {
                    i2 = this.f71760b;
                } else {
                    length++;
                }
            }
            return -1;
        }
        if (isEmpty() || (length = this.f71760b) < iS) {
            return -1;
        }
        int length2 = this.f71761c.length;
        while (length < length2) {
            if (Intrinsics.c(obj, this.f71761c[length])) {
                i2 = this.f71760b;
            } else {
                length++;
            }
        }
        for (int i3 = 0; i3 < iS; i3++) {
            if (Intrinsics.c(obj, this.f71761c[i3])) {
                length = i3 + this.f71761c.length;
                i2 = this.f71760b;
            }
        }
        return -1;
        return length - i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return getF71797c() == 0;
    }

    public final Object last() {
        if (isEmpty()) {
            zy0.c("ArrayDeque is empty.");
            return null;
        }
        return this.f71761c[s((size() - 1) + this.f71760b)];
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        Object[] objArr;
        int iA;
        int i2;
        int iS = s(getF71797c() + this.f71760b);
        int i3 = this.f71760b;
        if (i3 < iS) {
            iA = iS - 1;
            if (i3 <= iA) {
                while (!Intrinsics.c(obj, this.f71761c[iA])) {
                    if (iA != i3) {
                        iA--;
                    }
                }
                i2 = this.f71760b;
                return iA - i2;
            }
            return -1;
        }
        if (!isEmpty() && this.f71760b >= iS) {
            do {
                iS--;
                objArr = this.f71761c;
                if (-1 >= iS) {
                    iA = ArraysKt.A(objArr);
                    int i4 = this.f71760b;
                    if (i4 <= iA) {
                        while (!Intrinsics.c(obj, this.f71761c[iA])) {
                            if (iA != i4) {
                                iA--;
                            }
                        }
                        i2 = this.f71760b;
                    }
                }
                return iA - i2;
            } while (!Intrinsics.c(obj, objArr[iS]));
            iA = iS + this.f71761c.length;
            i2 = this.f71760b;
            return iA - i2;
        }
        return -1;
    }

    public final void m(int i2) {
        if (i2 < 0) {
            md.k("Deque is too big.");
            return;
        }
        Object[] objArr = this.f71761c;
        if (i2 <= objArr.length) {
            return;
        }
        if (objArr == f71759f) {
            if (i2 < 10) {
                i2 = 10;
            }
            this.f71761c = new Object[i2];
            return;
        }
        AbstractList.Companion companion = AbstractList.INSTANCE;
        int length = objArr.length;
        companion.getClass();
        Object[] objArr2 = new Object[AbstractList.Companion.e(length, i2)];
        Object[] objArr3 = this.f71761c;
        ArraysKt.l(objArr3, objArr2, 0, this.f71760b, objArr3.length);
        Object[] objArr4 = this.f71761c;
        int length2 = objArr4.length;
        int i3 = this.f71760b;
        ArraysKt.l(objArr4, objArr2, length2 - i3, 0, i3);
        this.f71760b = 0;
        this.f71761c = objArr2;
    }

    public final Object n() {
        if (isEmpty()) {
            return null;
        }
        return this.f71761c[this.f71760b];
    }

    public final int o(int i2) {
        if (i2 == ArraysKt.A(this.f71761c)) {
            return 0;
        }
        return i2 + 1;
    }

    public final Object p() {
        if (isEmpty()) {
            return null;
        }
        return this.f71761c[s((size() - 1) + this.f71760b)];
    }

    public final int q(int i2) {
        return i2 < 0 ? i2 + this.f71761c.length : i2;
    }

    public final void r(int i2, int i3) {
        Object[] objArr = this.f71761c;
        if (i2 < i3) {
            ArraysKt.r(objArr, i2, i3, null);
        } else {
            ArraysKt.r(objArr, i2, objArr.length, null);
            ArraysKt.r(this.f71761c, 0, i3, null);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf == -1) {
            return false;
        }
        h(iIndexOf);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        int iS;
        Object[] objArr;
        collection.getClass();
        boolean z = false;
        z = false;
        z = false;
        if (!isEmpty() && this.f71761c.length != 0) {
            int iS2 = s(getF71797c() + this.f71760b);
            int i2 = this.f71760b;
            if (i2 < iS2) {
                iS = i2;
                while (true) {
                    objArr = this.f71761c;
                    if (i2 >= iS2) {
                        break;
                    }
                    Object obj = objArr[i2];
                    if (collection.contains(obj)) {
                        z = true;
                    } else {
                        this.f71761c[iS] = obj;
                        iS++;
                    }
                    i2++;
                }
                ArraysKt.r(objArr, iS, iS2, null);
            } else {
                int length = this.f71761c.length;
                boolean z2 = false;
                int i3 = i2;
                while (i2 < length) {
                    Object[] objArr2 = this.f71761c;
                    Object obj2 = objArr2[i2];
                    objArr2[i2] = null;
                    if (collection.contains(obj2)) {
                        z2 = true;
                    } else {
                        this.f71761c[i3] = obj2;
                        i3++;
                    }
                    i2++;
                }
                iS = s(i3);
                for (int i4 = 0; i4 < iS2; i4++) {
                    Object[] objArr3 = this.f71761c;
                    Object obj3 = objArr3[i4];
                    objArr3[i4] = null;
                    if (collection.contains(obj3)) {
                        z2 = true;
                    } else {
                        this.f71761c[iS] = obj3;
                        iS = o(iS);
                    }
                }
                z = z2;
            }
            if (z) {
                t();
                this.d = q(iS - this.f71760b);
            }
        }
        return z;
    }

    public final Object removeFirst() {
        if (isEmpty()) {
            zy0.c("ArrayDeque is empty.");
            return null;
        }
        t();
        Object[] objArr = this.f71761c;
        int i2 = this.f71760b;
        Object obj = objArr[i2];
        objArr[i2] = null;
        this.f71760b = o(i2);
        this.d = getF71797c() - 1;
        return obj;
    }

    public final Object removeLast() {
        if (isEmpty()) {
            zy0.c("ArrayDeque is empty.");
            return null;
        }
        t();
        int iS = s((size() - 1) + this.f71760b);
        Object[] objArr = this.f71761c;
        Object obj = objArr[iS];
        objArr[iS] = null;
        this.d = getF71797c() - 1;
        return obj;
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i2, int i3) {
        AbstractList.Companion companion = AbstractList.INSTANCE;
        int i4 = this.d;
        companion.getClass();
        AbstractList.Companion.d(i2, i3, i4);
        int i5 = i3 - i2;
        if (i5 == 0) {
            return;
        }
        if (i5 == this.d) {
            clear();
            return;
        }
        if (i5 == 1) {
            h(i2);
            return;
        }
        t();
        int i6 = this.d - i3;
        int i7 = this.f71760b;
        if (i2 < i6) {
            int iS = s((i2 - 1) + i7);
            int iS2 = s(this.f71760b + (i3 - 1));
            while (i2 > 0) {
                int i8 = iS + 1;
                int iMin = Math.min(i2, Math.min(i8, iS2 + 1));
                Object[] objArr = this.f71761c;
                int i9 = iS2 - iMin;
                int i10 = iS - iMin;
                ArraysKt.l(objArr, objArr, i9 + 1, i10 + 1, i8);
                iS = q(i10);
                iS2 = q(i9);
                i2 -= iMin;
            }
            int iS3 = s(this.f71760b + i5);
            r(this.f71760b, iS3);
            this.f71760b = iS3;
        } else {
            int iS4 = s(i7 + i3);
            int iS5 = s(this.f71760b + i2);
            int i11 = this.d;
            while (true) {
                i11 -= i3;
                if (i11 <= 0) {
                    break;
                }
                Object[] objArr2 = this.f71761c;
                i3 = Math.min(i11, Math.min(objArr2.length - iS4, objArr2.length - iS5));
                Object[] objArr3 = this.f71761c;
                int i12 = iS4 + i3;
                ArraysKt.l(objArr3, objArr3, iS5, iS4, i12);
                iS4 = s(i12);
                iS5 = s(iS5 + i3);
            }
            int iS6 = s(this.d + this.f71760b);
            r(q(iS6 - i5), iS6);
        }
        this.d -= i5;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        int iS;
        Object[] objArr;
        collection.getClass();
        boolean z = false;
        z = false;
        z = false;
        if (!isEmpty() && this.f71761c.length != 0) {
            int iS2 = s(getF71797c() + this.f71760b);
            int i2 = this.f71760b;
            if (i2 < iS2) {
                iS = i2;
                while (true) {
                    objArr = this.f71761c;
                    if (i2 >= iS2) {
                        break;
                    }
                    Object obj = objArr[i2];
                    if (collection.contains(obj)) {
                        this.f71761c[iS] = obj;
                        iS++;
                    } else {
                        z = true;
                    }
                    i2++;
                }
                ArraysKt.r(objArr, iS, iS2, null);
            } else {
                int length = this.f71761c.length;
                boolean z2 = false;
                int i3 = i2;
                while (i2 < length) {
                    Object[] objArr2 = this.f71761c;
                    Object obj2 = objArr2[i2];
                    objArr2[i2] = null;
                    if (collection.contains(obj2)) {
                        this.f71761c[i3] = obj2;
                        i3++;
                    } else {
                        z2 = true;
                    }
                    i2++;
                }
                iS = s(i3);
                for (int i4 = 0; i4 < iS2; i4++) {
                    Object[] objArr3 = this.f71761c;
                    Object obj3 = objArr3[i4];
                    objArr3[i4] = null;
                    if (collection.contains(obj3)) {
                        this.f71761c[iS] = obj3;
                        iS = o(iS);
                    } else {
                        z2 = true;
                    }
                }
                z = z2;
            }
            if (z) {
                t();
                this.d = q(iS - this.f71760b);
            }
        }
        return z;
    }

    public final int s(int i2) {
        Object[] objArr = this.f71761c;
        return i2 >= objArr.length ? i2 - objArr.length : i2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i2, Object obj) {
        AbstractList.Companion companion = AbstractList.INSTANCE;
        int i3 = this.d;
        companion.getClass();
        AbstractList.Companion.b(i2, i3);
        int iS = s(this.f71760b + i2);
        Object[] objArr = this.f71761c;
        Object obj2 = objArr[iS];
        objArr[iS] = obj;
        return obj2;
    }

    public final void t() {
        ((java.util.AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) {
        objArr.getClass();
        int length = objArr.length;
        int i2 = this.d;
        if (length < i2) {
            Object objNewInstance = Array.newInstance(objArr.getClass().getComponentType(), i2);
            objNewInstance.getClass();
            objArr = (Object[]) objNewInstance;
        }
        int iS = s(this.d + this.f71760b);
        int i3 = this.f71760b;
        if (i3 < iS) {
            ArraysKt.n(this.f71761c, objArr, i3, iS, 2);
        } else if (!isEmpty()) {
            Object[] objArr2 = this.f71761c;
            ArraysKt.l(objArr2, objArr, 0, this.f71760b, objArr2.length);
            Object[] objArr3 = this.f71761c;
            ArraysKt.l(objArr3, objArr, objArr3.length - this.f71760b, 0, iS);
        }
        int i4 = this.d;
        if (i4 < objArr.length) {
            objArr[i4] = null;
        }
        return objArr;
    }

    public ArrayDeque() {
        this.f71761c = f71759f;
    }

    public ArrayDeque(Collection<? extends E> collection) {
        collection.getClass();
        Object[] array = collection.toArray(new Object[0]);
        this.f71761c = array;
        this.d = array.length;
        if (array.length == 0) {
            this.f71761c = f71759f;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return toArray(new Object[getF71797c()]);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        addLast(obj);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        collection.getClass();
        if (collection.isEmpty()) {
            return false;
        }
        t();
        m(collection.size() + getF71797c());
        i(s(getF71797c() + this.f71760b), collection);
        return true;
    }
}
