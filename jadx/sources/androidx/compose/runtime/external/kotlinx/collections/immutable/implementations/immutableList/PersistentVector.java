package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.ListImplementation;
import defpackage.d2;
import java.util.Arrays;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0001\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B7\u0012\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004\u0012\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVector;", "E", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;", "", "", "root", "tail", "", "size", "rootShift", "<init>", "([Ljava/lang/Object;[Ljava/lang/Object;II)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PersistentVector<E> extends AbstractPersistentList<E> implements PersistentList<E> {
    public final Object[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object[] f8305e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f8306f;
    public final int g;

    public PersistentVector(Object[] objArr, Object[] objArr2, int i2, int i3) {
        this.d = objArr;
        this.f8305e = objArr2;
        this.f8306f = i2;
        this.g = i3;
        if (!(getF74608e() > 32)) {
            PreconditionsKt.a("Trie-based persistent vector should have at least 33 elements, got " + getF74608e());
        }
        int length = objArr2.length;
    }

    public static Object[] i(Object[] objArr, int i2, int i3, Object obj, ObjectRef objectRef) {
        int iA = UtilsKt.a(i3, i2);
        if (i2 == 0) {
            Object[] objArrCopyOf = iA == 0 ? new Object[32] : Arrays.copyOf(objArr, 32);
            ArraysKt.l(objArr, objArrCopyOf, iA + 1, iA, 31);
            objectRef.f8304a = objArr[31];
            objArrCopyOf[iA] = obj;
            return objArrCopyOf;
        }
        Object[] objArrCopyOf2 = Arrays.copyOf(objArr, 32);
        int i4 = i2 - 5;
        Object obj2 = objArr[iA];
        obj2.getClass();
        objArrCopyOf2[iA] = i((Object[]) obj2, i4, i3, obj, objectRef);
        while (true) {
            iA++;
            if (iA >= 32 || objArrCopyOf2[iA] == null) {
                break;
            }
            Object obj3 = objArr[iA];
            obj3.getClass();
            objArrCopyOf2[iA] = i((Object[]) obj3, i4, 0, objectRef.f8304a, objectRef);
        }
        return objArrCopyOf2;
    }

    public static Object[] n(Object[] objArr, int i2, int i3, ObjectRef objectRef) {
        Object[] objArrN;
        int iA = UtilsKt.a(i3, i2);
        if (i2 == 5) {
            objectRef.f8304a = objArr[iA];
            objArrN = null;
        } else {
            Object obj = objArr[iA];
            obj.getClass();
            objArrN = n((Object[]) obj, i2 - 5, i3, objectRef);
        }
        if (objArrN == null && iA == 0) {
            return null;
        }
        Object[] objArrCopyOf = Arrays.copyOf(objArr, 32);
        objArrCopyOf[iA] = objArrN;
        return objArrCopyOf;
    }

    public static Object[] t(Object[] objArr, int i2, int i3, Object obj) {
        int iA = UtilsKt.a(i3, i2);
        Object[] objArrCopyOf = Arrays.copyOf(objArr, 32);
        if (i2 == 0) {
            objArrCopyOf[iA] = obj;
            return objArrCopyOf;
        }
        Object obj2 = objArrCopyOf[iA];
        obj2.getClass();
        objArrCopyOf[iA] = t((Object[]) obj2, i2 - 5, i3, obj);
        return objArrCopyOf;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    public final PersistentList B(int i2) {
        ListImplementation.a(i2, this.f8306f);
        int iS = s();
        int i3 = this.g;
        Object[] objArr = this.d;
        return i2 >= iS ? r(objArr, iS, i3, i2 - iS) : r(q(objArr, i3, i2, new ObjectRef(this.f8305e[0])), iS, i3, 0);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    public final PersistentList J1(d2 d2Var) {
        PersistentVectorBuilder persistentVectorBuilderBuilder = builder();
        persistentVectorBuilderBuilder.N(d2Var);
        return persistentVectorBuilderBuilder.i();
    }

    @Override // java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    public final PersistentList add(int i2, Object obj) {
        int i3 = this.f8306f;
        ListImplementation.b(i2, i3);
        if (i2 == i3) {
            return add(obj);
        }
        int iS = s();
        Object[] objArr = this.d;
        if (i2 >= iS) {
            return m(i2 - iS, obj, objArr);
        }
        ObjectRef objectRef = new ObjectRef(null);
        return m(0, objectRef.f8304a, i(objArr, this.g, i2, obj, objectRef));
    }

    @Override // kotlin.collections.AbstractCollection
    /* JADX INFO: renamed from: f, reason: from getter */
    public final int getF74608e() {
        return this.f8306f;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final Object get(int i2) {
        Object[] objArr;
        ListImplementation.a(i2, getF74608e());
        if (s() <= i2) {
            objArr = this.f8305e;
        } else {
            Object[] objArr2 = this.d;
            for (int i3 = this.g; i3 > 0; i3 -= 5) {
                Object[] objArr3 = objArr2[UtilsKt.a(i2, i3)];
                objArr3.getClass();
                objArr2 = objArr3;
            }
            objArr = objArr2;
        }
        return objArr[i2 & 31];
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public final PersistentVectorBuilder builder() {
        return new PersistentVectorBuilder(this, this.d, this.f8305e, this.g);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final ListIterator listIterator(int i2) {
        ListImplementation.b(i2, this.f8306f);
        return new PersistentVectorIterator(this.d, this.f8305e, i2, this.f8306f, (this.g / 5) + 1);
    }

    public final PersistentVector m(int i2, Object obj, Object[] objArr) {
        int iS = s();
        int i3 = this.f8306f;
        int i4 = i3 - iS;
        Object[] objArr2 = this.f8305e;
        Object[] objArrCopyOf = Arrays.copyOf(objArr2, 32);
        if (i4 < 32) {
            ArraysKt.l(objArr2, objArrCopyOf, i2 + 1, i2, i4);
            objArrCopyOf[i2] = obj;
            return new PersistentVector(objArr, objArrCopyOf, i3 + 1, this.g);
        }
        Object obj2 = objArr2[31];
        ArraysKt.l(objArr2, objArrCopyOf, i2 + 1, i2, i4 - 1);
        objArrCopyOf[i2] = obj;
        Object[] objArr3 = new Object[32];
        objArr3[0] = obj2;
        return o(objArr, objArrCopyOf, objArr3);
    }

    public final PersistentVector o(Object[] objArr, Object[] objArr2, Object[] objArr3) {
        int i2 = this.f8306f;
        int i3 = i2 >> 5;
        int i4 = this.g;
        if (i3 <= (1 << i4)) {
            return new PersistentVector(p(i4, objArr, objArr2), objArr3, i2 + 1, i4);
        }
        Object[] objArr4 = new Object[32];
        objArr4[0] = objArr;
        int i5 = i4 + 5;
        return new PersistentVector(p(i5, objArr4, objArr2), objArr3, i2 + 1, i5);
    }

    public final Object[] p(int i2, Object[] objArr, Object[] objArr2) {
        int iA = UtilsKt.a(getF74608e() - 1, i2);
        Object[] objArrCopyOf = objArr != null ? Arrays.copyOf(objArr, 32) : new Object[32];
        if (i2 == 5) {
            objArrCopyOf[iA] = objArr2;
            return objArrCopyOf;
        }
        objArrCopyOf[iA] = p(i2 - 5, (Object[]) objArrCopyOf[iA], objArr2);
        return objArrCopyOf;
    }

    public final Object[] q(Object[] objArr, int i2, int i3, ObjectRef objectRef) {
        int iA = UtilsKt.a(i3, i2);
        if (i2 == 0) {
            Object[] objArrCopyOf = iA == 0 ? new Object[32] : Arrays.copyOf(objArr, 32);
            ArraysKt.l(objArr, objArrCopyOf, iA, iA + 1, 32);
            objArrCopyOf[31] = objectRef.f8304a;
            objectRef.f8304a = objArr[iA];
            return objArrCopyOf;
        }
        int iA2 = objArr[31] == null ? UtilsKt.a(s() - 1, i2) : 31;
        Object[] objArrCopyOf2 = Arrays.copyOf(objArr, 32);
        int i4 = i2 - 5;
        int i5 = iA + 1;
        if (i5 <= iA2) {
            while (true) {
                Object obj = objArrCopyOf2[iA2];
                obj.getClass();
                objArrCopyOf2[iA2] = q((Object[]) obj, i4, 0, objectRef);
                if (iA2 == i5) {
                    break;
                }
                iA2--;
            }
        }
        Object obj2 = objArrCopyOf2[iA];
        obj2.getClass();
        objArrCopyOf2[iA] = q((Object[]) obj2, i4, i3, objectRef);
        return objArrCopyOf2;
    }

    public final AbstractPersistentList r(Object[] objArr, int i2, int i3, int i4) {
        int i5 = this.f8306f - i2;
        if (i5 != 1) {
            Object[] objArr2 = this.f8305e;
            Object[] objArrCopyOf = Arrays.copyOf(objArr2, 32);
            int i6 = i5 - 1;
            if (i4 < i6) {
                ArraysKt.l(objArr2, objArrCopyOf, i4, i4 + 1, i5);
            }
            objArrCopyOf[i6] = null;
            return new PersistentVector(objArr, objArrCopyOf, (i2 + i5) - 1, i3);
        }
        if (i3 == 0) {
            if (objArr.length == 33) {
                objArr = Arrays.copyOf(objArr, 32);
            }
            return new SmallPersistentVector(objArr);
        }
        ObjectRef objectRef = new ObjectRef(null);
        Object[] objArrN = n(objArr, i3, i2 - 1, objectRef);
        objArrN.getClass();
        Object obj = objectRef.f8304a;
        obj.getClass();
        Object[] objArr3 = (Object[]) obj;
        if (objArrN[1] != null) {
            return new PersistentVector(objArrN, objArr3, i2, i3);
        }
        Object obj2 = objArrN[0];
        obj2.getClass();
        return new PersistentVector((Object[]) obj2, objArr3, i2, i3 - 5);
    }

    public final int s() {
        return (this.f8306f - 1) & (-32);
    }

    @Override // kotlin.collections.AbstractList, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    public final PersistentList set(int i2, Object obj) {
        int i3 = this.f8306f;
        ListImplementation.a(i2, i3);
        int iS = s();
        Object[] objArr = this.d;
        Object[] objArr2 = this.f8305e;
        int i4 = this.g;
        if (iS > i2) {
            return new PersistentVector(t(objArr, i4, i2, obj), objArr2, i3, i4);
        }
        Object[] objArrCopyOf = Arrays.copyOf(objArr2, 32);
        objArrCopyOf[i2 & 31] = obj;
        return new PersistentVector(objArr, objArrCopyOf, i3, i4);
    }

    @Override // java.util.Collection, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    public final PersistentList add(Object obj) {
        int iS = s();
        int i2 = this.f8306f;
        int i3 = i2 - iS;
        Object[] objArr = this.d;
        Object[] objArr2 = this.f8305e;
        if (i3 < 32) {
            Object[] objArrCopyOf = Arrays.copyOf(objArr2, 32);
            objArrCopyOf[i3] = obj;
            return new PersistentVector(objArr, objArrCopyOf, i2 + 1, this.g);
        }
        Object[] objArr3 = new Object[32];
        objArr3[0] = obj;
        return o(objArr, objArr2, objArr3);
    }
}
