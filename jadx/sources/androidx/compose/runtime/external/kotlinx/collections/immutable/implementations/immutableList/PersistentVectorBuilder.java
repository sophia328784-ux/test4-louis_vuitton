package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.ListImplementation;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.MutabilityOwnership;
import defpackage.d2;
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

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0001\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B?\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0010\u0010\b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0006\u0012\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;", "E", "Lkotlin/collections/AbstractMutableList;", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList$Builder;", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;", "vector", "", "", "vectorRoot", "vectorTail", "", "rootShift", "<init>", "(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;[Ljava/lang/Object;[Ljava/lang/Object;I)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PersistentVectorBuilder<E> extends AbstractMutableList<E> implements PersistentList.Builder<E> {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ int f8307j = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public PersistentList f8308b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object[] f8309c;
    public Object[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8310e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public MutabilityOwnership f8311f = new MutabilityOwnership();
    public Object[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Object[] f8312h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f8313i;

    public PersistentVectorBuilder(PersistentList<? extends E> persistentList, Object[] objArr, Object[] objArr2, int i2) {
        this.f8308b = persistentList;
        this.f8309c = objArr;
        this.d = objArr2;
        this.f8310e = i2;
        this.g = this.f8309c;
        this.f8312h = this.d;
        this.f8313i = this.f8308b.size();
    }

    public static void m(Object[] objArr, int i2, Iterator it) {
        while (i2 < 32 && it.hasNext()) {
            objArr[i2] = it.next();
            i2++;
        }
    }

    public final Object[] A(int i2, int i3, Object[] objArr) {
        if (i3 < 0) {
            PreconditionsKt.a("shift should be positive");
        }
        if (i3 == 0) {
            return objArr;
        }
        int iA = UtilsKt.a(i2, i3);
        Object obj = objArr[iA];
        obj.getClass();
        Object objA = A(i2, i3 - 5, (Object[]) obj);
        if (iA < 31) {
            int i4 = iA + 1;
            if (objArr[i4] != null) {
                if (r(objArr)) {
                    Arrays.fill(objArr, i4, 32, (Object) null);
                }
                Object[] objArrX = x();
                ArraysKt.l(objArr, objArrX, 0, 0, i4);
                objArr = objArrX;
            }
        }
        if (objA == objArr[iA]) {
            return objArr;
        }
        Object[] objArrT = t(objArr);
        objArrT[iA] = objA;
        return objArrT;
    }

    public final Object[] D(Object[] objArr, int i2, int i3, ObjectRef objectRef) {
        Object[] objArrD;
        int iA = UtilsKt.a(i3 - 1, i2);
        if (i2 == 5) {
            objectRef.f8304a = objArr[iA];
            objArrD = null;
        } else {
            Object obj = objArr[iA];
            obj.getClass();
            objArrD = D((Object[]) obj, i2 - 5, i3, objectRef);
        }
        if (objArrD == null && iA == 0) {
            return null;
        }
        Object[] objArrT = t(objArr);
        objArrT[iA] = objArrD;
        return objArrT;
    }

    public final void E(int i2, int i3, Object[] objArr) {
        if (i3 == 0) {
            this.g = null;
            if (objArr == null) {
                objArr = new Object[0];
            }
            this.f8312h = objArr;
            this.f8313i = i2;
            this.f8310e = i3;
            return;
        }
        ObjectRef objectRef = new ObjectRef(null);
        objArr.getClass();
        Object[] objArrD = D(objArr, i3, i2, objectRef);
        objArrD.getClass();
        Object obj = objectRef.f8304a;
        obj.getClass();
        this.f8312h = (Object[]) obj;
        this.f8313i = i2;
        if (objArrD[1] == null) {
            this.g = (Object[]) objArrD[0];
            this.f8310e = i3 - 5;
        } else {
            this.g = objArrD;
            this.f8310e = i3;
        }
    }

    public final Object[] F(Object[] objArr, int i2, int i3, Iterator it) {
        if (!it.hasNext()) {
            PreconditionsKt.a("invalid buffersIterator");
        }
        if (!(i3 >= 0)) {
            PreconditionsKt.a("negative shift");
        }
        if (i3 == 0) {
            return (Object[]) it.next();
        }
        Object[] objArrT = t(objArr);
        int iA = UtilsKt.a(i2, i3);
        int i4 = i3 - 5;
        objArrT[iA] = F((Object[]) objArrT[iA], i2, i4, it);
        while (true) {
            iA++;
            if (iA >= 32 || !it.hasNext()) {
                break;
            }
            objArrT[iA] = F((Object[]) objArrT[iA], 0, i4, it);
        }
        return objArrT;
    }

    public final Object[] G(Object[] objArr, int i2, Object[][] objArr2) {
        Iterator itA = ArrayIteratorKt.a(objArr2);
        int i3 = i2 >> 5;
        int i4 = this.f8310e;
        Object[] objArrF = i3 < (1 << i4) ? F(objArr, i2, i4, itA) : t(objArr);
        while (itA.hasNext()) {
            this.f8310e += 5;
            objArrF = z(objArrF);
            int i5 = this.f8310e;
            F(objArrF, 1 << i5, i5, itA);
        }
        return objArrF;
    }

    public final void I(Object[] objArr, Object[] objArr2, Object[] objArr3) {
        int i2 = this.f8313i;
        int i3 = i2 >> 5;
        int i4 = this.f8310e;
        if (i3 > (1 << i4)) {
            this.g = J(this.f8310e + 5, z(objArr), objArr2);
            this.f8312h = objArr3;
            this.f8310e += 5;
            this.f8313i++;
            return;
        }
        if (objArr == null) {
            this.g = objArr2;
            this.f8312h = objArr3;
            this.f8313i = i2 + 1;
        } else {
            this.g = J(i4, objArr, objArr2);
            this.f8312h = objArr3;
            this.f8313i++;
        }
    }

    public final Object[] J(int i2, Object[] objArr, Object[] objArr2) {
        int iA = UtilsKt.a(getF8313i() - 1, i2);
        Object[] objArrT = t(objArr);
        if (i2 == 5) {
            objArrT[iA] = objArr2;
            return objArrT;
        }
        objArrT[iA] = J(i2 - 5, (Object[]) objArrT[iA], objArr2);
        return objArrT;
    }

    public final int K(Function1 function1, Object[] objArr, int i2, int i3, ObjectRef objectRef, ArrayList arrayList, ArrayList arrayList2) {
        if (r(objArr)) {
            arrayList.add(objArr);
        }
        Object obj = objectRef.f8304a;
        obj.getClass();
        Object[] objArr2 = (Object[]) obj;
        Object[] objArrX = objArr2;
        for (int i4 = 0; i4 < i2; i4++) {
            Object obj2 = objArr[i4];
            if (!((Boolean) function1.invoke(obj2)).booleanValue()) {
                if (i3 == 32) {
                    objArrX = !arrayList.isEmpty() ? (Object[]) arrayList.remove(arrayList.size() - 1) : x();
                    i3 = 0;
                }
                objArrX[i3] = obj2;
                i3++;
            }
        }
        objectRef.f8304a = objArrX;
        if (objArr2 != objArrX) {
            arrayList2.add(objArr2);
        }
        return i3;
    }

    public final int L(Function1 function1, Object[] objArr, int i2, ObjectRef objectRef) {
        Object[] objArrT = objArr;
        int i3 = i2;
        boolean z = false;
        for (int i4 = 0; i4 < i2; i4++) {
            Object obj = objArr[i4];
            if (((Boolean) function1.invoke(obj)).booleanValue()) {
                if (!z) {
                    objArrT = t(objArr);
                    z = true;
                    i3 = i4;
                }
            } else if (z) {
                objArrT[i3] = obj;
                i3++;
            }
        }
        objectRef.f8304a = objArrT;
        return i3;
    }

    public final int M(Function1 function1, int i2, ObjectRef objectRef) {
        int iL = L(function1, this.f8312h, i2, objectRef);
        Object obj = objectRef.f8304a;
        if (iL == i2) {
            return i2;
        }
        obj.getClass();
        Object[] objArr = (Object[]) obj;
        Arrays.fill(objArr, iL, i2, (Object) null);
        this.f8312h = objArr;
        this.f8313i -= i2 - iL;
        return iL;
    }

    public final boolean N(Function1 function1) {
        int i2;
        Function1 function2 = function1;
        int iT = T();
        Object[] objArrA = null;
        ObjectRef objectRef = new ObjectRef(null);
        boolean z = false;
        if (this.g != null) {
            AbstractListIterator abstractListIteratorS = s(0);
            int iL = 32;
            while (iL == 32 && abstractListIteratorS.hasNext()) {
                iL = L(function2, (Object[]) abstractListIteratorS.next(), 32, objectRef);
            }
            if (iL == 32) {
                abstractListIteratorS.hasNext();
                int iM = M(function2, iT, objectRef);
                if (iM == 0) {
                    E(this.f8313i, this.f8310e, this.g);
                }
                if (iM != iT) {
                }
            } else {
                int iPreviousIndex = abstractListIteratorS.previousIndex() << 5;
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                int iK = iL;
                while (abstractListIteratorS.hasNext()) {
                    iK = K(function2, (Object[]) abstractListIteratorS.next(), 32, iK, objectRef, arrayList2, arrayList);
                    function2 = function1;
                }
                int iK2 = K(function1, this.f8312h, iT, iK, objectRef, arrayList2, arrayList);
                Object obj = objectRef.f8304a;
                obj.getClass();
                Object[] objArr = (Object[]) obj;
                Arrays.fill(objArr, iK2, 32, (Object) null);
                boolean zIsEmpty = arrayList.isEmpty();
                Object[] objArrF = this.g;
                if (zIsEmpty) {
                    objArrF.getClass();
                } else {
                    objArrF = F(objArrF, iPreviousIndex, this.f8310e, arrayList.iterator());
                }
                int size = iPreviousIndex + (arrayList.size() << 5);
                if ((size & 31) != 0) {
                    PreconditionsKt.a("invalid size");
                }
                if (size == 0) {
                    this.f8310e = 0;
                } else {
                    int i3 = size - 1;
                    while (true) {
                        i2 = this.f8310e;
                        if ((i3 >> i2) != 0) {
                            break;
                        }
                        this.f8310e = i2 - 5;
                        Object[] objArr2 = objArrF[0];
                        objArr2.getClass();
                        objArrF = objArr2;
                    }
                    objArrA = A(i3, i2, objArrF);
                }
                this.g = objArrA;
                this.f8312h = objArr;
                this.f8313i = size + iK2;
            }
            z = true;
        } else if (M(function2, iT, objectRef) != iT) {
            z = true;
        }
        if (z) {
            ((AbstractList) this).modCount++;
        }
        return z;
    }

    public final Object[] O(Object[] objArr, int i2, int i3, ObjectRef objectRef) {
        int iA = UtilsKt.a(i3, i2);
        if (i2 == 0) {
            Object obj = objArr[iA];
            Object[] objArrT = t(objArr);
            ArraysKt.l(objArr, objArrT, iA, iA + 1, 32);
            objArrT[31] = objectRef.f8304a;
            objectRef.f8304a = obj;
            return objArrT;
        }
        int iA2 = objArr[31] == null ? UtilsKt.a(Q() - 1, i2) : 31;
        Object[] objArrT2 = t(objArr);
        int i4 = i2 - 5;
        int i5 = iA + 1;
        if (i5 <= iA2) {
            while (true) {
                Object obj2 = objArrT2[iA2];
                obj2.getClass();
                objArrT2[iA2] = O((Object[]) obj2, i4, 0, objectRef);
                if (iA2 == i5) {
                    break;
                }
                iA2--;
            }
        }
        Object obj3 = objArrT2[iA];
        obj3.getClass();
        objArrT2[iA] = O((Object[]) obj3, i4, i3, objectRef);
        return objArrT2;
    }

    public final Object P(Object[] objArr, int i2, int i3, int i4) {
        int i5 = this.f8313i - i2;
        Object[] objArr2 = this.f8312h;
        if (i5 == 1) {
            Object obj = objArr2[0];
            E(i2, i3, objArr);
            return obj;
        }
        Object obj2 = objArr2[i4];
        Object[] objArrT = t(objArr2);
        ArraysKt.l(objArr2, objArrT, i4, i4 + 1, i5);
        objArrT[i5 - 1] = null;
        this.g = objArr;
        this.f8312h = objArrT;
        this.f8313i = (i2 + i5) - 1;
        this.f8310e = i3;
        return obj2;
    }

    public final int Q() {
        int i2 = this.f8313i;
        if (i2 <= 32) {
            return 0;
        }
        return (i2 - 1) & (-32);
    }

    public final Object[] R(Object[] objArr, int i2, int i3, Object obj, ObjectRef objectRef) {
        int iA = UtilsKt.a(i3, i2);
        Object[] objArrT = t(objArr);
        if (i2 != 0) {
            Object obj2 = objArrT[iA];
            obj2.getClass();
            objArrT[iA] = R((Object[]) obj2, i2 - 5, i3, obj, objectRef);
            return objArrT;
        }
        if (objArrT != objArr) {
            ((AbstractList) this).modCount++;
        }
        objectRef.f8304a = objArrT[iA];
        objArrT[iA] = obj;
        return objArrT;
    }

    public final void S(Collection collection, int i2, Object[] objArr, int i3, Object[][] objArr2, int i4, Object[] objArr3) {
        Object[] objArrX;
        if (i4 < 1) {
            PreconditionsKt.a("requires at least one nullBuffer");
        }
        Object[] objArrT = t(objArr);
        objArr2[0] = objArrT;
        int i5 = i2 & 31;
        int size = ((collection.size() + i2) - 1) & 31;
        int i6 = (i3 - i5) + size;
        if (i6 < 32) {
            ArraysKt.l(objArrT, objArr3, size + 1, i5, i3);
        } else {
            int i7 = i6 - 31;
            if (i4 == 1) {
                objArrX = objArrT;
            } else {
                objArrX = x();
                i4--;
                objArr2[i4] = objArrX;
            }
            int i8 = i3 - i7;
            ArraysKt.l(objArrT, objArr3, 0, i8, i3);
            ArraysKt.l(objArrT, objArrX, size + 1, i5, i8);
            objArr3 = objArrX;
        }
        Iterator<E> it = collection.iterator();
        m(objArrT, i5, it);
        for (int i9 = 1; i9 < i4; i9++) {
            Object[] objArrX2 = x();
            m(objArrX2, 0, it);
            objArr2[i9] = objArrX2;
        }
        m(objArr3, 0, it);
    }

    public final int T() {
        int i2 = this.f8313i;
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
        int iQ = Q();
        if (i2 >= iQ) {
            q(i2 - iQ, obj, this.g);
            return;
        }
        ObjectRef objectRef = new ObjectRef(null);
        Object[] objArr = this.g;
        objArr.getClass();
        q(0, objectRef.f8304a, p(objArr, this.f8310e, i2, obj, objectRef));
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i2, Collection collection) {
        Collection collection2;
        Object[] objArrX;
        ListImplementation.b(i2, this.f8313i);
        if (i2 == this.f8313i) {
            return addAll(collection);
        }
        if (collection.isEmpty()) {
            return false;
        }
        ((AbstractList) this).modCount++;
        int i3 = (i2 >> 5) << 5;
        int size = ((collection.size() + (this.f8313i - i3)) - 1) / 32;
        if (size == 0) {
            int i4 = i2 & 31;
            int size2 = ((collection.size() + i2) - 1) & 31;
            Object[] objArr = this.f8312h;
            Object[] objArrT = t(objArr);
            ArraysKt.l(objArr, objArrT, size2 + 1, i4, T());
            m(objArrT, i4, collection.iterator());
            this.f8312h = objArrT;
            this.f8313i = collection.size() + this.f8313i;
            return true;
        }
        Object[][] objArr2 = new Object[size][];
        int iT = T();
        int size3 = collection.size() + this.f8313i;
        if (size3 > 32) {
            size3 -= (size3 - 1) & (-32);
        }
        if (i2 >= Q()) {
            objArrX = x();
            collection2 = collection;
            S(collection2, i2, this.f8312h, iT, objArr2, size, objArrX);
            objArr2 = objArr2;
        } else {
            collection2 = collection;
            Object[] objArr3 = this.f8312h;
            if (size3 > iT) {
                int i5 = size3 - iT;
                Object[] objArrU = u(i5, objArr3);
                o(collection2, i2, i5, objArr2, size, objArrU);
                objArr2 = objArr2;
                objArrX = objArrU;
            } else {
                objArrX = x();
                int i6 = iT - size3;
                ArraysKt.l(objArr3, objArrX, 0, i6, iT);
                int i7 = 32 - i6;
                Object[] objArrU2 = u(i7, this.f8312h);
                int i8 = size - 1;
                objArr2[i8] = objArrU2;
                o(collection2, i2, i7, objArr2, i8, objArrU2);
                collection2 = collection2;
            }
        }
        this.g = G(this.g, i3, objArr2);
        this.f8312h = objArrX;
        this.f8313i = collection2.size() + this.f8313i;
        return true;
    }

    @Override // kotlin.collections.AbstractMutableList
    /* JADX INFO: renamed from: f, reason: from getter */
    public final int getF8313i() {
        return this.f8313i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i2) {
        Object[] objArr;
        ListImplementation.a(i2, getF8313i());
        if (Q() <= i2) {
            objArr = this.f8312h;
        } else {
            Object[] objArr2 = this.g;
            objArr2.getClass();
            for (int i3 = this.f8310e; i3 > 0; i3 -= 5) {
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
        int iQ = Q();
        if (i2 >= iQ) {
            return P(this.g, iQ, this.f8310e, i2 - iQ);
        }
        ObjectRef objectRef = new ObjectRef(this.f8312h[0]);
        Object[] objArr = this.g;
        objArr.getClass();
        P(O(objArr, this.f8310e, i2, objectRef), iQ, this.f8310e, 0);
        return objectRef.f8304a;
    }

    public final PersistentList i() {
        PersistentList persistentVector;
        if (this.g == this.f8309c && this.f8312h == this.d) {
            persistentVector = this.f8308b;
        } else {
            this.f8311f = new MutabilityOwnership();
            Object[] objArr = this.g;
            this.f8309c = objArr;
            Object[] objArr2 = this.f8312h;
            this.d = objArr2;
            if (objArr != null) {
                Object[] objArr3 = this.g;
                objArr3.getClass();
                persistentVector = new PersistentVector(objArr3, this.f8312h, this.f8313i, this.f8310e);
            } else if (objArr2.length == 0) {
                SmallPersistentVector.f8317e.getClass();
                persistentVector = SmallPersistentVector.f8318f;
            } else {
                persistentVector = new SmallPersistentVector(Arrays.copyOf(this.f8312h, this.f8313i));
            }
        }
        this.f8308b = persistentVector;
        return persistentVector;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i2) {
        ListImplementation.b(i2, this.f8313i);
        return new PersistentVectorMutableIterator(this, i2);
    }

    public final int n() {
        return ((AbstractList) this).modCount;
    }

    public final void o(Collection collection, int i2, int i3, Object[][] objArr, int i4, Object[] objArr2) {
        if (this.g == null) {
            md.k("root is null");
            return;
        }
        int i5 = i2 >> 5;
        AbstractListIterator abstractListIteratorS = s(Q() >> 5);
        int i6 = i4;
        Object[] objArrU = objArr2;
        while (abstractListIteratorS.previousIndex() != i5) {
            Object[] objArr3 = (Object[]) abstractListIteratorS.previous();
            ArraysKt.l(objArr3, objArrU, 0, 32 - i3, 32);
            objArrU = u(i3, objArr3);
            i6--;
            objArr[i6] = objArrU;
        }
        Object[] objArr4 = (Object[]) abstractListIteratorS.previous();
        int iQ = i4 - (((Q() >> 5) - 1) - i5);
        if (iQ < i4) {
            objArr2 = objArr[iQ];
            objArr2.getClass();
        }
        S(collection, i2, objArr4, 32, objArr, iQ, objArr2);
    }

    public final Object[] p(Object[] objArr, int i2, int i3, Object obj, ObjectRef objectRef) {
        Object obj2;
        int iA = UtilsKt.a(i3, i2);
        if (i2 == 0) {
            objectRef.f8304a = objArr[31];
            Object[] objArrT = t(objArr);
            ArraysKt.l(objArr, objArrT, iA + 1, iA, 31);
            objArrT[iA] = obj;
            return objArrT;
        }
        Object[] objArrT2 = t(objArr);
        int i4 = i2 - 5;
        Object obj3 = objArrT2[iA];
        obj3.getClass();
        objArrT2[iA] = p((Object[]) obj3, i4, i3, obj, objectRef);
        while (true) {
            iA++;
            if (iA >= 32 || (obj2 = objArrT2[iA]) == null) {
                break;
            }
            objArrT2[iA] = p((Object[]) obj2, i4, 0, objectRef.f8304a, objectRef);
        }
        return objArrT2;
    }

    public final void q(int i2, Object obj, Object[] objArr) {
        int iT = T();
        Object[] objArrT = t(this.f8312h);
        Object[] objArr2 = this.f8312h;
        if (iT >= 32) {
            Object obj2 = objArr2[31];
            ArraysKt.l(objArr2, objArrT, i2 + 1, i2, 31);
            objArrT[i2] = obj;
            I(objArr, objArrT, z(obj2));
            return;
        }
        ArraysKt.l(objArr2, objArrT, i2 + 1, i2, iT);
        objArrT[i2] = obj;
        this.g = objArr;
        this.f8312h = objArrT;
        this.f8313i++;
    }

    public final boolean r(Object[] objArr) {
        return objArr.length == 33 && objArr[32] == this.f8311f;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        return N(new d2(collection, 1));
    }

    public final AbstractListIterator s(int i2) {
        Object[] objArr = this.g;
        if (objArr == null) {
            md.k("Invalid root");
            return null;
        }
        int iQ = Q() >> 5;
        ListImplementation.b(i2, iQ);
        int i3 = this.f8310e;
        return i3 == 0 ? new SingleElementListIterator(objArr, i2) : new TrieIterator(objArr, i2, iQ, i3 / 5);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i2, Object obj) {
        ListImplementation.a(i2, getF8313i());
        if (Q() > i2) {
            ObjectRef objectRef = new ObjectRef(null);
            Object[] objArr = this.g;
            objArr.getClass();
            this.g = R(objArr, this.f8310e, i2, obj, objectRef);
            return objectRef.f8304a;
        }
        Object[] objArrT = t(this.f8312h);
        if (objArrT != this.f8312h) {
            ((AbstractList) this).modCount++;
        }
        int i3 = i2 & 31;
        Object obj2 = objArrT[i3];
        objArrT[i3] = obj;
        this.f8312h = objArrT;
        return obj2;
    }

    public final Object[] t(Object[] objArr) {
        if (objArr == null) {
            return x();
        }
        if (r(objArr)) {
            return objArr;
        }
        Object[] objArrX = x();
        int length = objArr.length;
        if (length > 32) {
            length = 32;
        }
        ArraysKt.n(objArr, objArrX, 0, length, 6);
        return objArrX;
    }

    public final Object[] u(int i2, Object[] objArr) {
        if (r(objArr)) {
            ArraysKt.l(objArr, objArr, i2, 0, 32 - i2);
            return objArr;
        }
        Object[] objArrX = x();
        ArraysKt.l(objArr, objArrX, i2, 0, 32 - i2);
        return objArrX;
    }

    public final Object[] x() {
        Object[] objArr = new Object[33];
        objArr[32] = this.f8311f;
        return objArr;
    }

    public final Object[] z(Object obj) {
        Object[] objArr = new Object[33];
        objArr[0] = obj;
        objArr[32] = this.f8311f;
        return objArr;
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        ((AbstractList) this).modCount++;
        int iT = T();
        if (iT < 32) {
            Object[] objArrT = t(this.f8312h);
            objArrT[iT] = obj;
            this.f8312h = objArrT;
            this.f8313i = getF8313i() + 1;
        } else {
            I(this.g, this.f8312h, z(obj));
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        ((AbstractList) this).modCount++;
        int iT = T();
        Iterator<E> it = collection.iterator();
        if (32 - iT >= collection.size()) {
            Object[] objArrT = t(this.f8312h);
            m(objArrT, iT, it);
            this.f8312h = objArrT;
            this.f8313i = collection.size() + this.f8313i;
            return true;
        }
        int size = ((collection.size() + iT) - 1) / 32;
        Object[][] objArr = new Object[size][];
        Object[] objArrT2 = t(this.f8312h);
        m(objArrT2, iT, it);
        objArr[0] = objArrT2;
        for (int i2 = 1; i2 < size; i2++) {
            Object[] objArrX = x();
            m(objArrX, 0, it);
            objArr[i2] = objArrX;
        }
        this.g = G(this.g, Q(), objArr);
        Object[] objArrX2 = x();
        m(objArrX2, 0, it);
        this.f8312h = objArrX2;
        this.f8313i = collection.size() + this.f8313i;
        return true;
    }
}
