package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import defpackage.b21;
import defpackage.pq0;
import defpackage.v7;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
class CompactHashSet<E> extends AbstractSet<E> implements Serializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public transient Object f33567b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public transient int[] f33568c;
    public transient Object[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public transient int f33569e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public transient int f33570f;

    public static CompactHashSet b(int i2) {
        CompactHashSet compactHashSet = new CompactHashSet();
        Preconditions.h(i2 >= 0, "Expected size must be >= 0");
        compactHashSet.f33569e = Ints.c(i2, 1);
        return compactHashSet;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int i2 = objectInputStream.readInt();
        if (i2 < 0) {
            throw new InvalidObjectException(pq0.k(i2, "Invalid size: "));
        }
        Preconditions.h(i2 >= 0, "Expected size must be >= 0");
        this.f33569e = Ints.c(i2, 1);
        for (int i3 = 0; i3 < i2; i3++) {
            add(objectInputStream.readObject());
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        Iterator it = iterator();
        while (it.hasNext()) {
            objectOutputStream.writeObject(it.next());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        int iMin;
        char c2 = 31;
        if (h()) {
            Preconditions.p("Arrays already allocated", h());
            int i2 = this.f33569e;
            int iMax = Math.max(i2 + 1, 2);
            int iHighestOneBit = Integer.highestOneBit(iMax);
            if (iMax > ((int) (1.0d * ((double) iHighestOneBit))) && (iHighestOneBit = iHighestOneBit << 1) <= 0) {
                iHighestOneBit = 1073741824;
            }
            int iMax2 = Math.max(4, iHighestOneBit);
            this.f33567b = CompactHashing.a(iMax2);
            this.f33569e = CompactHashing.b(this.f33569e, 32 - Integer.numberOfLeadingZeros(iMax2 - 1), 31);
            this.f33568c = new int[i2];
            this.d = new Object[i2];
        }
        Set setF = f();
        if (setF != null) {
            return setF.add(obj);
        }
        int[] iArrM = m();
        Object[] objArrI = i();
        int i3 = this.f33570f;
        int i4 = i3 + 1;
        int iB = Hashing.b(obj);
        int iN = (1 << (this.f33569e & 31)) - 1;
        int i5 = iB & iN;
        Object obj2 = this.f33567b;
        Objects.requireNonNull(obj2);
        int iE = CompactHashing.e(i5, obj2);
        if (iE != 0) {
            int i6 = ~iN;
            int i7 = iB & i6;
            int i8 = 0;
            while (true) {
                int i9 = iE - 1;
                int i10 = iArrM[i9];
                char c3 = c2;
                if ((i10 & i6) == i7 && Objects.equals(obj, objArrI[i9])) {
                    return false;
                }
                int i11 = i10 & iN;
                i8++;
                if (i11 == 0) {
                    if (i8 < 9) {
                        if (i4 <= iN) {
                            iArrM[i9] = CompactHashing.b(i10, i4, iN);
                            break;
                        }
                        iN = n(iN, CompactHashing.c(iN), iB, i3);
                        break;
                    }
                    LinkedHashSet linkedHashSet = new LinkedHashSet(1 << (this.f33569e & 31), 1.0f);
                    int i12 = isEmpty() ? -1 : 0;
                    while (i12 >= 0) {
                        linkedHashSet.add(i()[i12]);
                        i12++;
                        if (i12 >= this.f33570f) {
                            i12 = -1;
                        }
                    }
                    this.f33567b = linkedHashSet;
                    this.f33568c = null;
                    this.d = null;
                    this.f33569e += 32;
                    return linkedHashSet.add(obj);
                }
                iE = i11;
                c2 = c3;
            }
        } else if (i4 > iN) {
            iN = n(iN, CompactHashing.c(iN), iB, i3);
        } else {
            Object obj3 = this.f33567b;
            Objects.requireNonNull(obj3);
            CompactHashing.f(i5, i4, obj3);
        }
        int length = m().length;
        if (i4 > length && (iMin = Math.min(1073741823, (Math.max(1, length >>> 1) + length) | 1)) != length) {
            this.f33568c = Arrays.copyOf(m(), iMin);
            this.d = Arrays.copyOf(i(), iMin);
        }
        m()[i3] = CompactHashing.b(iB, 0, iN);
        i()[i3] = obj;
        this.f33570f = i4;
        this.f33569e += 32;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        if (h()) {
            return;
        }
        this.f33569e += 32;
        Set setF = f();
        if (setF != null) {
            this.f33569e = Ints.c(size(), 3);
            setF.clear();
            this.f33567b = null;
            this.f33570f = 0;
            return;
        }
        Arrays.fill(i(), 0, this.f33570f, (Object) null);
        Object obj = this.f33567b;
        Objects.requireNonNull(obj);
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
        Arrays.fill(m(), 0, this.f33570f, 0);
        this.f33570f = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (h()) {
            return false;
        }
        Set setF = f();
        if (setF != null) {
            return setF.contains(obj);
        }
        int iB = Hashing.b(obj);
        int i2 = (1 << (this.f33569e & 31)) - 1;
        Object obj2 = this.f33567b;
        Objects.requireNonNull(obj2);
        int iE = CompactHashing.e(iB & i2, obj2);
        if (iE == 0) {
            return false;
        }
        int i3 = ~i2;
        int i4 = iB & i3;
        do {
            int i5 = iE - 1;
            int i6 = m()[i5];
            if ((i6 & i3) == i4 && Objects.equals(obj, i()[i5])) {
                return true;
            }
            iE = i6 & i2;
        } while (iE != 0);
        return false;
    }

    public final Set f() {
        Object obj = this.f33567b;
        if (obj instanceof Set) {
            return (Set) obj;
        }
        return null;
    }

    public final boolean h() {
        return this.f33567b == null;
    }

    public final Object[] i() {
        Object[] objArr = this.d;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        Set setF = f();
        return setF != null ? setF.iterator() : new Iterator<Object>() { // from class: com.google.common.collect.CompactHashSet.1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f33571b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f33572c;
            public int d;

            {
                this.f33571b = CompactHashSet.this.f33569e;
                this.f33572c = CompactHashSet.this.isEmpty() ? -1 : 0;
                this.d = -1;
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                return this.f33572c >= 0;
            }

            @Override // java.util.Iterator
            public final Object next() {
                CompactHashSet compactHashSet = CompactHashSet.this;
                if (compactHashSet.f33569e != this.f33571b) {
                    v7.c();
                    return null;
                }
                if (!hasNext()) {
                    b21.x();
                    return null;
                }
                int i2 = this.f33572c;
                this.d = i2;
                Object obj = compactHashSet.i()[i2];
                int i3 = this.f33572c + 1;
                if (i3 >= compactHashSet.f33570f) {
                    i3 = -1;
                }
                this.f33572c = i3;
                return obj;
            }

            @Override // java.util.Iterator
            public final void remove() {
                CompactHashSet compactHashSet = CompactHashSet.this;
                if (compactHashSet.f33569e != this.f33571b) {
                    v7.c();
                    return;
                }
                Preconditions.p("no calls to next() since the last call to remove()", this.d >= 0);
                this.f33571b += 32;
                compactHashSet.remove(compactHashSet.i()[this.d]);
                this.f33572c--;
                this.d = -1;
            }
        };
    }

    public final int[] m() {
        int[] iArr = this.f33568c;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    public final int n(int i2, int i3, int i4, int i5) {
        Object objA = CompactHashing.a(i3);
        int i6 = i3 - 1;
        if (i5 != 0) {
            CompactHashing.f(i4 & i6, i5 + 1, objA);
        }
        Object obj = this.f33567b;
        Objects.requireNonNull(obj);
        int[] iArrM = m();
        for (int i7 = 0; i7 <= i2; i7++) {
            int iE = CompactHashing.e(i7, obj);
            while (iE != 0) {
                int i8 = iE - 1;
                int i9 = iArrM[i8];
                int i10 = ((~i2) & i9) | i7;
                int i11 = i10 & i6;
                int iE2 = CompactHashing.e(i11, objA);
                CompactHashing.f(i11, iE, objA);
                iArrM[i8] = CompactHashing.b(i10, iE2, i6);
                iE = i9 & i2;
            }
        }
        this.f33567b = objA;
        this.f33569e = CompactHashing.b(this.f33569e, 32 - Integer.numberOfLeadingZeros(i6), 31);
        return i6;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int i2;
        int i3;
        if (!h()) {
            Set setF = f();
            if (setF != null) {
                return setF.remove(obj);
            }
            int i4 = (1 << (this.f33569e & 31)) - 1;
            Object obj2 = this.f33567b;
            Objects.requireNonNull(obj2);
            int iD = CompactHashing.d(obj, null, i4, obj2, m(), i(), null);
            if (iD != -1) {
                Object obj3 = this.f33567b;
                Objects.requireNonNull(obj3);
                int[] iArrM = m();
                Object[] objArrI = i();
                int size = size();
                int i5 = size - 1;
                if (iD < i5) {
                    Object obj4 = objArrI[i5];
                    objArrI[iD] = obj4;
                    objArrI[i5] = null;
                    iArrM[iD] = iArrM[i5];
                    iArrM[i5] = 0;
                    int iB = Hashing.b(obj4) & i4;
                    int iE = CompactHashing.e(iB, obj3);
                    if (iE == size) {
                        CompactHashing.f(iB, iD + 1, obj3);
                    } else {
                        while (true) {
                            i2 = iE - 1;
                            i3 = iArrM[i2];
                            int i6 = i3 & i4;
                            if (i6 == size) {
                                break;
                            }
                            iE = i6;
                        }
                        iArrM[i2] = CompactHashing.b(i3, iD + 1, i4);
                    }
                } else {
                    objArrI[iD] = null;
                    iArrM[iD] = 0;
                }
                this.f33570f--;
                this.f33569e += 32;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        Set setF = f();
        return setF != null ? setF.size() : this.f33570f;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final Object[] toArray(Object[] objArr) {
        if (h()) {
            if (objArr.length > 0) {
                objArr[0] = null;
            }
            return objArr;
        }
        Set setF = f();
        if (setF != null) {
            return setF.toArray(objArr);
        }
        Object[] objArrI = i();
        int i2 = this.f33570f;
        Preconditions.o(0, i2, objArrI.length);
        if (objArr.length < i2) {
            if (objArr.length != 0) {
                objArr = Arrays.copyOf(objArr, 0);
            }
            objArr = Arrays.copyOf(objArr, i2);
        } else if (objArr.length > i2) {
            objArr[i2] = null;
        }
        System.arraycopy(objArrI, 0, objArr, 0, i2);
        return objArr;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final Object[] toArray() {
        if (h()) {
            return new Object[0];
        }
        Set setF = f();
        return setF != null ? setF.toArray() : Arrays.copyOf(i(), this.f33570f);
    }
}
