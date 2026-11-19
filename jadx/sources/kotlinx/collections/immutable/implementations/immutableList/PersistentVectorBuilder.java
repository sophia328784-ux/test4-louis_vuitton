package kotlinx.collections.immutable.implementations.immutableList;

import defpackage.md;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.collections.AbstractMutableList;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Lambda;
import kotlinx.collections.immutable.PersistentList;
import kotlinx.collections.immutable.internal.ListImplementation;
import kotlinx.collections.immutable.internal.MutabilityOwnership;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B?\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0010\u0010\b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0006\u0012\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;", "E", "Lkotlin/collections/AbstractMutableList;", "Lkotlinx/collections/immutable/PersistentList$Builder;", "Lkotlinx/collections/immutable/PersistentList;", "vector", "", "", "vectorRoot", "vectorTail", "", "rootShift", "<init>", "(Lkotlinx/collections/immutable/PersistentList;[Ljava/lang/Object;[Ljava/lang/Object;I)V", "kotlinx-collections-immutable"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PersistentVectorBuilder<E> extends AbstractMutableList<E> implements PersistentList.Builder<E> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public PersistentList f74610b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object[] f74611c;
    public Object[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f74612e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public MutabilityOwnership f74613f;
    public Object[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Object[] f74614h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f74615i;

    /* JADX INFO: renamed from: kotlinx.collections.immutable.implementations.immutableList.PersistentVectorBuilder$removeAll$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", "E", "it", "invoke", "(Ljava/lang/Object;)Ljava/lang/Boolean;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    final class AnonymousClass1 extends Lambda implements Function1<Object, Boolean> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Collection f74616c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Collection collection) {
            super(1);
            this.f74616c = collection;
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return Boolean.valueOf(this.f74616c.contains(obj));
        }
    }

    public PersistentVectorBuilder(PersistentList<? extends E> persistentList, Object[] objArr, Object[] objArr2, int i2) {
        persistentList.getClass();
        objArr2.getClass();
        this.f74610b = persistentList;
        this.f74611c = objArr;
        this.d = objArr2;
        this.f74612e = i2;
        this.f74613f = new MutabilityOwnership();
        this.g = this.f74611c;
        this.f74614h = this.d;
        this.f74615i = this.f74610b.size();
    }

    public static void i(Object[] objArr, int i2, Iterator it) {
        while (i2 < 32 && it.hasNext()) {
            objArr[i2] = it.next();
            i2++;
        }
    }

    public final Object[] A(Object[] objArr, int i2, int i3, ObjectRef objectRef) {
        Object[] objArrA;
        int iA = UtilsKt.a(i3 - 1, i2);
        if (i2 == 5) {
            objectRef.f74606a = objArr[iA];
            objArrA = null;
        } else {
            Object obj = objArr[iA];
            obj.getClass();
            objArrA = A((Object[]) obj, i2 - 5, i3, objectRef);
        }
        if (objArrA == null && iA == 0) {
            return null;
        }
        Object[] objArrS = s(objArr);
        objArrS[iA] = objArrA;
        return objArrS;
    }

    public final void D(int i2, int i3, Object[] objArr) {
        if (i3 == 0) {
            this.g = null;
            if (objArr == null) {
                objArr = new Object[0];
            }
            this.f74614h = objArr;
            this.f74615i = i2;
            this.f74612e = i3;
            return;
        }
        ObjectRef objectRef = new ObjectRef(null);
        objArr.getClass();
        Object[] objArrA = A(objArr, i3, i2, objectRef);
        objArrA.getClass();
        Object obj = objectRef.f74606a;
        obj.getClass();
        this.f74614h = (Object[]) obj;
        this.f74615i = i2;
        if (objArrA[1] == null) {
            this.g = (Object[]) objArrA[0];
            this.f74612e = i3 - 5;
        } else {
            this.g = objArrA;
            this.f74612e = i3;
        }
    }

    public final Object[] E(Object[] objArr, int i2, int i3, Iterator it) {
        if (!it.hasNext()) {
            md.k("Check failed.");
            return null;
        }
        if (i3 < 0) {
            md.k("Check failed.");
            return null;
        }
        if (i3 == 0) {
            return (Object[]) it.next();
        }
        Object[] objArrS = s(objArr);
        int iA = UtilsKt.a(i2, i3);
        int i4 = i3 - 5;
        objArrS[iA] = E((Object[]) objArrS[iA], i2, i4, it);
        while (true) {
            iA++;
            if (iA >= 32 || !it.hasNext()) {
                break;
            }
            objArrS[iA] = E((Object[]) objArrS[iA], 0, i4, it);
        }
        return objArrS;
    }

    public final Object[] F(Object[] objArr, int i2, Object[][] objArr2) {
        Iterator itA = ArrayIteratorKt.a(objArr2);
        int i3 = i2 >> 5;
        int i4 = this.f74612e;
        Object[] objArrE = i3 < (1 << i4) ? E(objArr, i2, i4, itA) : s(objArr);
        while (itA.hasNext()) {
            this.f74612e += 5;
            objArrE = x(objArrE);
            int i5 = this.f74612e;
            E(objArrE, 1 << i5, i5, itA);
        }
        return objArrE;
    }

    public final void G(Object[] objArr, Object[] objArr2, Object[] objArr3) {
        int i2 = this.f74615i;
        int i3 = i2 >> 5;
        int i4 = this.f74612e;
        if (i3 > (1 << i4)) {
            this.g = I(this.f74612e + 5, x(objArr), objArr2);
            this.f74614h = objArr3;
            this.f74612e += 5;
            this.f74615i++;
            return;
        }
        if (objArr == null) {
            this.g = objArr2;
            this.f74614h = objArr3;
            this.f74615i = i2 + 1;
        } else {
            this.g = I(i4, objArr, objArr2);
            this.f74614h = objArr3;
            this.f74615i++;
        }
    }

    public final Object[] I(int i2, Object[] objArr, Object[] objArr2) {
        int iA = UtilsKt.a(getF8313i() - 1, i2);
        Object[] objArrS = s(objArr);
        if (i2 == 5) {
            objArrS[iA] = objArr2;
            return objArrS;
        }
        objArrS[iA] = I(i2 - 5, (Object[]) objArrS[iA], objArr2);
        return objArrS;
    }

    public final int J(Function1 function1, Object[] objArr, int i2, int i3, ObjectRef objectRef, ArrayList arrayList, ArrayList arrayList2) {
        if (q(objArr)) {
            arrayList.add(objArr);
        }
        Object obj = objectRef.f74606a;
        obj.getClass();
        Object[] objArr2 = (Object[]) obj;
        Object[] objArrU = objArr2;
        for (int i4 = 0; i4 < i2; i4++) {
            Object obj2 = objArr[i4];
            if (!((Boolean) ((AnonymousClass1) function1).invoke(obj2)).booleanValue()) {
                if (i3 == 32) {
                    objArrU = !arrayList.isEmpty() ? (Object[]) arrayList.remove(arrayList.size() - 1) : u();
                    i3 = 0;
                }
                objArrU[i3] = obj2;
                i3++;
            }
        }
        objectRef.f74606a = objArrU;
        if (objArr2 != objArrU) {
            arrayList2.add(objArr2);
        }
        return i3;
    }

    public final int K(Function1 function1, Object[] objArr, int i2, ObjectRef objectRef) {
        Object[] objArrS = objArr;
        int i3 = i2;
        boolean z = false;
        for (int i4 = 0; i4 < i2; i4++) {
            Object obj = objArr[i4];
            if (((Boolean) ((AnonymousClass1) function1).invoke(obj)).booleanValue()) {
                if (!z) {
                    objArrS = s(objArr);
                    z = true;
                    i3 = i4;
                }
            } else if (z) {
                objArrS[i3] = obj;
                i3++;
            }
        }
        objectRef.f74606a = objArrS;
        return i3;
    }

    public final int L(Function1 function1, int i2, ObjectRef objectRef) {
        int iK = K(function1, this.f74614h, i2, objectRef);
        Object obj = objectRef.f74606a;
        if (iK == i2) {
            return i2;
        }
        obj.getClass();
        Object[] objArr = (Object[]) obj;
        Arrays.fill(objArr, iK, i2, (Object) null);
        this.f74614h = objArr;
        this.f74615i -= i2 - iK;
        return iK;
    }

    public final Object[] M(Object[] objArr, int i2, int i3, ObjectRef objectRef) {
        int iA = UtilsKt.a(i3, i2);
        if (i2 == 0) {
            Object obj = objArr[iA];
            Object[] objArrS = s(objArr);
            ArraysKt.l(objArr, objArrS, iA, iA + 1, 32);
            objArrS[31] = objectRef.f74606a;
            objectRef.f74606a = obj;
            return objArrS;
        }
        int iA2 = objArr[31] == null ? UtilsKt.a(O() - 1, i2) : 31;
        Object[] objArrS2 = s(objArr);
        int i4 = i2 - 5;
        int i5 = iA + 1;
        if (i5 <= iA2) {
            while (true) {
                Object obj2 = objArrS2[iA2];
                obj2.getClass();
                objArrS2[iA2] = M((Object[]) obj2, i4, 0, objectRef);
                if (iA2 == i5) {
                    break;
                }
                iA2--;
            }
        }
        Object obj3 = objArrS2[iA];
        obj3.getClass();
        objArrS2[iA] = M((Object[]) obj3, i4, i3, objectRef);
        return objArrS2;
    }

    public final Object N(Object[] objArr, int i2, int i3, int i4) {
        int i5 = this.f74615i - i2;
        Object[] objArr2 = this.f74614h;
        if (i5 == 1) {
            Object obj = objArr2[0];
            D(i2, i3, objArr);
            return obj;
        }
        Object obj2 = objArr2[i4];
        Object[] objArrS = s(objArr2);
        ArraysKt.l(objArr2, objArrS, i4, i4 + 1, i5);
        objArrS[i5 - 1] = null;
        this.g = objArr;
        this.f74614h = objArrS;
        this.f74615i = (i2 + i5) - 1;
        this.f74612e = i3;
        return obj2;
    }

    public final int O() {
        int i2 = this.f74615i;
        if (i2 <= 32) {
            return 0;
        }
        return (i2 - 1) & (-32);
    }

    public final Object[] P(Object[] objArr, int i2, int i3, Object obj, ObjectRef objectRef) {
        int iA = UtilsKt.a(i3, i2);
        Object[] objArrS = s(objArr);
        if (i2 != 0) {
            Object obj2 = objArrS[iA];
            obj2.getClass();
            objArrS[iA] = P((Object[]) obj2, i2 - 5, i3, obj, objectRef);
            return objArrS;
        }
        if (objArrS != objArr) {
            ((AbstractList) this).modCount++;
        }
        objectRef.f74606a = objArrS[iA];
        objArrS[iA] = obj;
        return objArrS;
    }

    public final void Q(Collection collection, int i2, Object[] objArr, int i3, Object[][] objArr2, int i4, Object[] objArr3) {
        Object[] objArrU;
        if (i4 < 1) {
            md.k("Check failed.");
            return;
        }
        Object[] objArrS = s(objArr);
        objArr2[0] = objArrS;
        int i5 = i2 & 31;
        int size = ((collection.size() + i2) - 1) & 31;
        int i6 = (i3 - i5) + size;
        if (i6 < 32) {
            ArraysKt.l(objArrS, objArr3, size + 1, i5, i3);
        } else {
            int i7 = i6 - 31;
            if (i4 == 1) {
                objArrU = objArrS;
            } else {
                objArrU = u();
                i4--;
                objArr2[i4] = objArrU;
            }
            int i8 = i3 - i7;
            ArraysKt.l(objArrS, objArr3, 0, i8, i3);
            ArraysKt.l(objArrS, objArrU, size + 1, i5, i8);
            objArr3 = objArrU;
        }
        Iterator<E> it = collection.iterator();
        i(objArrS, i5, it);
        for (int i9 = 1; i9 < i4; i9++) {
            Object[] objArrU2 = u();
            i(objArrU2, 0, it);
            objArr2[i9] = objArrU2;
        }
        i(objArr3, 0, it);
    }

    public final int R() {
        int i2 = this.f74615i;
        return i2 <= 32 ? i2 : i2 - ((i2 - 1) & (-32));
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i2, Object obj) {
        ListImplementation.b(i2, getF8313i());
        if (i2 == getF8313i()) {
            add(obj);
            return;
        }
        ((AbstractList) this).modCount++;
        int iO = O();
        if (i2 >= iO) {
            p(i2 - iO, obj, this.g);
            return;
        }
        ObjectRef objectRef = new ObjectRef(null);
        Object[] objArr = this.g;
        objArr.getClass();
        p(0, objectRef.f74606a, n(objArr, this.f74612e, i2, obj, objectRef));
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i2, Collection collection) {
        Collection collection2;
        Object[] objArrU;
        collection.getClass();
        ListImplementation.b(i2, this.f74615i);
        if (i2 == this.f74615i) {
            return addAll(collection);
        }
        if (collection.isEmpty()) {
            return false;
        }
        ((AbstractList) this).modCount++;
        int i3 = (i2 >> 5) << 5;
        int size = ((collection.size() + (this.f74615i - i3)) - 1) / 32;
        if (size == 0) {
            int i4 = i2 & 31;
            int size2 = ((collection.size() + i2) - 1) & 31;
            Object[] objArr = this.f74614h;
            Object[] objArrS = s(objArr);
            ArraysKt.l(objArr, objArrS, size2 + 1, i4, R());
            i(objArrS, i4, collection.iterator());
            this.f74614h = objArrS;
            this.f74615i = collection.size() + this.f74615i;
            return true;
        }
        Object[][] objArr2 = new Object[size][];
        int iR = R();
        int size3 = collection.size() + this.f74615i;
        if (size3 > 32) {
            size3 -= (size3 - 1) & (-32);
        }
        if (i2 >= O()) {
            objArrU = u();
            collection2 = collection;
            Q(collection2, i2, this.f74614h, iR, objArr2, size, objArrU);
            objArr2 = objArr2;
        } else {
            collection2 = collection;
            Object[] objArr3 = this.f74614h;
            if (size3 > iR) {
                int i5 = size3 - iR;
                Object[] objArrT = t(i5, objArr3);
                o(collection2, i2, i5, objArr2, size, objArrT);
                objArr2 = objArr2;
                objArrU = objArrT;
            } else {
                objArrU = u();
                int i6 = iR - size3;
                ArraysKt.l(objArr3, objArrU, 0, i6, iR);
                int i7 = 32 - i6;
                Object[] objArrT2 = t(i7, this.f74614h);
                int i8 = size - 1;
                objArr2[i8] = objArrT2;
                o(collection2, i2, i7, objArr2, i8, objArrT2);
                collection2 = collection2;
            }
        }
        this.g = F(this.g, i3, objArr2);
        this.f74614h = objArrU;
        this.f74615i = collection2.size() + this.f74615i;
        return true;
    }

    @Override // kotlinx.collections.immutable.PersistentList.Builder
    public final PersistentList build() {
        PersistentList persistentVector;
        if (this.g == this.f74611c && this.f74614h == this.d) {
            persistentVector = this.f74610b;
        } else {
            this.f74613f = new MutabilityOwnership();
            Object[] objArr = this.g;
            this.f74611c = objArr;
            Object[] objArr2 = this.f74614h;
            this.d = objArr2;
            if (objArr == null) {
                persistentVector = objArr2.length == 0 ? UtilsKt.b() : new SmallPersistentVector(Arrays.copyOf(this.f74614h, this.f74615i));
            } else {
                Object[] objArr3 = this.g;
                objArr3.getClass();
                persistentVector = new PersistentVector(objArr3, this.f74614h, this.f74615i, this.f74612e);
            }
        }
        this.f74610b = persistentVector;
        return persistentVector;
    }

    @Override // kotlin.collections.AbstractMutableList
    /* JADX INFO: renamed from: f, reason: from getter */
    public final int getF8313i() {
        return this.f74615i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i2) {
        Object[] objArr;
        ListImplementation.a(i2, getF8313i());
        if (O() <= i2) {
            objArr = this.f74614h;
        } else {
            Object[] objArr2 = this.g;
            objArr2.getClass();
            for (int i3 = this.f74612e; i3 > 0; i3 -= 5) {
                Object[] objArr3 = objArr2[UtilsKt.a(i2, i3)];
                objArr3.getClass();
                objArr2 = objArr3;
            }
            objArr = objArr2;
        }
        return objArr[i2 & 31];
    }

    @Override // kotlin.collections.AbstractMutableList
    public final Object h(int i2) {
        ListImplementation.a(i2, getF8313i());
        ((AbstractList) this).modCount++;
        int iO = O();
        if (i2 >= iO) {
            return N(this.g, iO, this.f74612e, i2 - iO);
        }
        ObjectRef objectRef = new ObjectRef(this.f74614h[0]);
        Object[] objArr = this.g;
        objArr.getClass();
        N(M(objArr, this.f74612e, i2, objectRef), iO, this.f74612e, 0);
        return objectRef.f74606a;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i2) {
        ListImplementation.b(i2, getF8313i());
        return new PersistentVectorMutableIterator(this, i2);
    }

    public final int m() {
        return ((AbstractList) this).modCount;
    }

    public final Object[] n(Object[] objArr, int i2, int i3, Object obj, ObjectRef objectRef) {
        Object obj2;
        int iA = UtilsKt.a(i3, i2);
        if (i2 == 0) {
            objectRef.f74606a = objArr[31];
            Object[] objArrS = s(objArr);
            ArraysKt.l(objArr, objArrS, iA + 1, iA, 31);
            objArrS[iA] = obj;
            return objArrS;
        }
        Object[] objArrS2 = s(objArr);
        int i4 = i2 - 5;
        Object obj3 = objArrS2[iA];
        obj3.getClass();
        objArrS2[iA] = n((Object[]) obj3, i4, i3, obj, objectRef);
        while (true) {
            iA++;
            if (iA >= 32 || (obj2 = objArrS2[iA]) == null) {
                break;
            }
            objArrS2[iA] = n((Object[]) obj2, i4, 0, objectRef.f74606a, objectRef);
        }
        return objArrS2;
    }

    public final void o(Collection collection, int i2, int i3, Object[][] objArr, int i4, Object[] objArr2) {
        if (this.g == null) {
            md.k("Required value was null.");
            return;
        }
        int i5 = i2 >> 5;
        AbstractListIterator abstractListIteratorR = r(O() >> 5);
        int i6 = i4;
        Object[] objArrT = objArr2;
        while (abstractListIteratorR.previousIndex() != i5) {
            Object[] objArr3 = (Object[]) abstractListIteratorR.previous();
            ArraysKt.l(objArr3, objArrT, 0, 32 - i3, 32);
            objArrT = t(i3, objArr3);
            i6--;
            objArr[i6] = objArrT;
        }
        Object[] objArr4 = (Object[]) abstractListIteratorR.previous();
        int iO = i4 - (((O() >> 5) - 1) - i5);
        if (iO < i4) {
            objArr2 = objArr[iO];
            objArr2.getClass();
        }
        Q(collection, i2, objArr4, 32, objArr, iO, objArr2);
    }

    public final void p(int i2, Object obj, Object[] objArr) {
        int iR = R();
        Object[] objArrS = s(this.f74614h);
        Object[] objArr2 = this.f74614h;
        if (iR >= 32) {
            Object obj2 = objArr2[31];
            ArraysKt.l(objArr2, objArrS, i2 + 1, i2, 31);
            objArrS[i2] = obj;
            G(objArr, objArrS, x(obj2));
            return;
        }
        ArraysKt.l(objArr2, objArrS, i2 + 1, i2, iR);
        objArrS[i2] = obj;
        this.g = objArr;
        this.f74614h = objArrS;
        this.f74615i++;
    }

    public final boolean q(Object[] objArr) {
        return objArr.length == 33 && objArr[32] == this.f74613f;
    }

    public final AbstractListIterator r(int i2) {
        if (this.g == null) {
            md.k("Required value was null.");
            return null;
        }
        int iO = O() >> 5;
        ListImplementation.b(i2, iO);
        int i3 = this.f74612e;
        Object[] objArr = this.g;
        if (i3 == 0) {
            objArr.getClass();
            return new SingleElementListIterator(objArr, i2);
        }
        objArr.getClass();
        return new TrieIterator(objArr, i2, iO, i3 / 5);
    }

    /* JADX WARN: Code duplicated, block: B:6:0x001e  */
    /* JADX WARN: Code duplicated, block: B:8:0x0022  */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        PersistentVectorBuilder<E> persistentVectorBuilder;
        int i2;
        collection.getClass();
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(collection);
        int iR = R();
        Object[] objArrZ = null;
        ObjectRef objectRef = new ObjectRef(null);
        boolean z = false;
        if (this.g != null) {
            AbstractListIterator abstractListIteratorR = r(0);
            int iK = 32;
            while (iK == 32 && abstractListIteratorR.hasNext()) {
                iK = K(anonymousClass1, (Object[]) abstractListIteratorR.next(), 32, objectRef);
            }
            if (iK == 32) {
                abstractListIteratorR.hasNext();
                int iL = L(anonymousClass1, iR, objectRef);
                if (iL == 0) {
                    D(this.f74615i, this.f74612e, this.g);
                }
                if (iL != iR) {
                    persistentVectorBuilder = this;
                } else {
                    persistentVectorBuilder = this;
                }
            } else {
                int iPreviousIndex = abstractListIteratorR.previousIndex() << 5;
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                int iJ = iK;
                while (abstractListIteratorR.hasNext()) {
                    iJ = J(anonymousClass1, (Object[]) abstractListIteratorR.next(), 32, iJ, objectRef, arrayList2, arrayList);
                }
                persistentVectorBuilder = this;
                int iJ2 = persistentVectorBuilder.J(anonymousClass1, persistentVectorBuilder.f74614h, iR, iJ, objectRef, arrayList2, arrayList);
                Object obj = objectRef.f74606a;
                obj.getClass();
                Object[] objArr = (Object[]) obj;
                Arrays.fill(objArr, iJ2, 32, (Object) null);
                boolean zIsEmpty = arrayList.isEmpty();
                Object[] objArrE = persistentVectorBuilder.g;
                if (zIsEmpty) {
                    objArrE.getClass();
                } else {
                    objArrE = persistentVectorBuilder.E(objArrE, iPreviousIndex, persistentVectorBuilder.f74612e, arrayList.iterator());
                }
                int size = iPreviousIndex + (arrayList.size() << 5);
                if ((size & 31) != 0) {
                    md.k("Check failed.");
                    return false;
                }
                if (size == 0) {
                    persistentVectorBuilder.f74612e = 0;
                } else {
                    int i3 = size - 1;
                    while (true) {
                        i2 = persistentVectorBuilder.f74612e;
                        if ((i3 >> i2) != 0) {
                            break;
                        }
                        persistentVectorBuilder.f74612e = i2 - 5;
                        Object[] objArr2 = objArrE[0];
                        objArr2.getClass();
                        objArrE = objArr2;
                    }
                    objArrZ = persistentVectorBuilder.z(i3, i2, objArrE);
                }
                persistentVectorBuilder.g = objArrZ;
                persistentVectorBuilder.f74614h = objArr;
                persistentVectorBuilder.f74615i = size + iJ2;
            }
            z = true;
        } else if (L(anonymousClass1, iR, objectRef) != iR) {
            persistentVectorBuilder = this;
            z = true;
        } else {
            persistentVectorBuilder = this;
        }
        if (z) {
            ((AbstractList) persistentVectorBuilder).modCount++;
        }
        return z;
    }

    public final Object[] s(Object[] objArr) {
        if (objArr == null) {
            return u();
        }
        if (q(objArr)) {
            return objArr;
        }
        Object[] objArrU = u();
        int length = objArr.length;
        if (length > 32) {
            length = 32;
        }
        ArraysKt.n(objArr, objArrU, 0, length, 6);
        return objArrU;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i2, Object obj) {
        ListImplementation.a(i2, getF8313i());
        if (O() > i2) {
            ObjectRef objectRef = new ObjectRef(null);
            Object[] objArr = this.g;
            objArr.getClass();
            this.g = P(objArr, this.f74612e, i2, obj, objectRef);
            return objectRef.f74606a;
        }
        Object[] objArrS = s(this.f74614h);
        if (objArrS != this.f74614h) {
            ((AbstractList) this).modCount++;
        }
        int i3 = i2 & 31;
        Object obj2 = objArrS[i3];
        objArrS[i3] = obj;
        this.f74614h = objArrS;
        return obj2;
    }

    public final Object[] t(int i2, Object[] objArr) {
        if (q(objArr)) {
            ArraysKt.l(objArr, objArr, i2, 0, 32 - i2);
            return objArr;
        }
        Object[] objArrU = u();
        ArraysKt.l(objArr, objArrU, i2, 0, 32 - i2);
        return objArrU;
    }

    public final Object[] u() {
        Object[] objArr = new Object[33];
        objArr[32] = this.f74613f;
        return objArr;
    }

    public final Object[] x(Object obj) {
        Object[] objArr = new Object[33];
        objArr[0] = obj;
        objArr[32] = this.f74613f;
        return objArr;
    }

    public final Object[] z(int i2, int i3, Object[] objArr) {
        if (i3 < 0) {
            md.k("Check failed.");
            return null;
        }
        if (i3 == 0) {
            return objArr;
        }
        int iA = UtilsKt.a(i2, i3);
        Object obj = objArr[iA];
        obj.getClass();
        Object objZ = z(i2, i3 - 5, (Object[]) obj);
        if (iA < 31) {
            int i4 = iA + 1;
            if (objArr[i4] != null) {
                if (q(objArr)) {
                    Arrays.fill(objArr, i4, 32, (Object) null);
                }
                Object[] objArrU = u();
                ArraysKt.l(objArr, objArrU, 0, 0, i4);
                objArr = objArrU;
            }
        }
        if (objZ == objArr[iA]) {
            return objArr;
        }
        Object[] objArrS = s(objArr);
        objArrS[iA] = objZ;
        return objArrS;
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        ((AbstractList) this).modCount++;
        int iR = R();
        if (iR < 32) {
            Object[] objArrS = s(this.f74614h);
            objArrS[iR] = obj;
            this.f74614h = objArrS;
            this.f74615i = getF8313i() + 1;
        } else {
            G(this.g, this.f74614h, x(obj));
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        collection.getClass();
        if (collection.isEmpty()) {
            return false;
        }
        ((AbstractList) this).modCount++;
        int iR = R();
        Iterator<E> it = collection.iterator();
        if (32 - iR >= collection.size()) {
            Object[] objArrS = s(this.f74614h);
            i(objArrS, iR, it);
            this.f74614h = objArrS;
            this.f74615i = collection.size() + this.f74615i;
            return true;
        }
        int size = ((collection.size() + iR) - 1) / 32;
        Object[][] objArr = new Object[size][];
        Object[] objArrS2 = s(this.f74614h);
        i(objArrS2, iR, it);
        objArr[0] = objArrS2;
        for (int i2 = 1; i2 < size; i2++) {
            Object[] objArrU = u();
            i(objArrU, 0, it);
            objArr[i2] = objArrU;
        }
        this.g = F(this.g, O(), objArr);
        Object[] objArrU2 = u();
        i(objArrU2, 0, it);
        this.f74614h = objArrU2;
        this.f74615i = collection.size() + this.f74615i;
        return true;
    }
}
