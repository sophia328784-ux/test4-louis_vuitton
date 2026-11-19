package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import defpackage.md;
import defpackage.pq0;
import defpackage.v7;
import java.util.Arrays;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0016\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003B\u0013\b\u0007\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B#\b\u0016\u0012\u0018\u0010\b\u001a\u0014\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0006\b\u0001\u0012\u00028\u0001\u0018\u00010\u0000¢\u0006\u0004\b\u0006\u0010\t¨\u0006\n"}, d2 = {"Landroidx/collection/SimpleArrayMap;", "K", "V", "", "", "capacity", "<init>", "(I)V", "map", "(Landroidx/collection/SimpleArrayMap;)V", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
public class SimpleArrayMap<K, V> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f3381b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object[] f3382c;
    public int d;

    public SimpleArrayMap(int i2) {
        this.f3381b = i2 == 0 ? ContainerHelpersKt.f3399a : new int[i2];
        this.f3382c = i2 == 0 ? ContainerHelpersKt.f3401c : new Object[i2 << 1];
    }

    public final int a(Object obj) {
        int i2 = this.d * 2;
        Object[] objArr = this.f3382c;
        if (obj == null) {
            for (int i3 = 1; i3 < i2; i3 += 2) {
                if (objArr[i3] == null) {
                    return i3 >> 1;
                }
            }
            return -1;
        }
        for (int i4 = 1; i4 < i2; i4 += 2) {
            if (obj.equals(objArr[i4])) {
                return i4 >> 1;
            }
        }
        return -1;
    }

    public final void c(int i2) {
        int i3 = this.d;
        int[] iArr = this.f3381b;
        if (iArr.length < i2) {
            this.f3381b = Arrays.copyOf(iArr, i2);
            this.f3382c = Arrays.copyOf(this.f3382c, i2 * 2);
        }
        if (this.d == i3) {
            return;
        }
        v7.c();
    }

    public void clear() {
        if (this.d > 0) {
            this.f3381b = ContainerHelpersKt.f3399a;
            this.f3382c = ContainerHelpersKt.f3401c;
            this.d = 0;
        }
        if (this.d <= 0) {
            return;
        }
        v7.c();
    }

    public boolean containsKey(Object obj) {
        return e(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return a(obj) >= 0;
    }

    public final int d(int i2, Object obj) {
        int i3 = this.d;
        if (i3 == 0) {
            return -1;
        }
        int iA = ContainerHelpersKt.a(i3, i2, this.f3381b);
        if (iA < 0 || Intrinsics.c(obj, this.f3382c[iA << 1])) {
            return iA;
        }
        int i4 = iA + 1;
        while (i4 < i3 && this.f3381b[i4] == i2) {
            if (Intrinsics.c(obj, this.f3382c[i4 << 1])) {
                return i4;
            }
            i4++;
        }
        for (int i5 = iA - 1; i5 >= 0 && this.f3381b[i5] == i2; i5--) {
            if (Intrinsics.c(obj, this.f3382c[i5 << 1])) {
                return i5;
            }
        }
        return ~i4;
    }

    public final int e(Object obj) {
        return obj == null ? f() : d(obj.hashCode(), obj);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        try {
            if (obj instanceof SimpleArrayMap) {
                int i2 = this.d;
                if (i2 != ((SimpleArrayMap) obj).d) {
                    return false;
                }
                SimpleArrayMap simpleArrayMap = (SimpleArrayMap) obj;
                for (int i3 = 0; i3 < i2; i3++) {
                    Object objG = g(i3);
                    Object objK = k(i3);
                    Object obj2 = simpleArrayMap.get(objG);
                    if (objK == null) {
                        if (obj2 != null || !simpleArrayMap.containsKey(objG)) {
                            return false;
                        }
                    } else if (!objK.equals(obj2)) {
                        return false;
                    }
                }
                return true;
            }
            if (!(obj instanceof Map) || this.d != ((Map) obj).size()) {
                return false;
            }
            int i4 = this.d;
            for (int i5 = 0; i5 < i4; i5++) {
                Object objG2 = g(i5);
                Object objK2 = k(i5);
                Object obj3 = ((Map) obj).get(objG2);
                if (objK2 == null) {
                    if (obj3 != null || !((Map) obj).containsKey(objG2)) {
                        return false;
                    }
                } else if (!objK2.equals(obj3)) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NullPointerException unused) {
        }
        return false;
    }

    public final int f() {
        int i2 = this.d;
        if (i2 == 0) {
            return -1;
        }
        int iA = ContainerHelpersKt.a(i2, 0, this.f3381b);
        if (iA < 0 || this.f3382c[iA << 1] == null) {
            return iA;
        }
        int i3 = iA + 1;
        while (i3 < i2 && this.f3381b[i3] == 0) {
            if (this.f3382c[i3 << 1] == null) {
                return i3;
            }
            i3++;
        }
        for (int i4 = iA - 1; i4 >= 0 && this.f3381b[i4] == 0; i4--) {
            if (this.f3382c[i4 << 1] == null) {
                return i4;
            }
        }
        return ~i3;
    }

    public final Object g(int i2) {
        boolean z = false;
        if (i2 >= 0 && i2 < this.d) {
            z = true;
        }
        if (z) {
            return this.f3382c[i2 << 1];
        }
        md.n(pq0.k(i2, "Expected index to be within 0..size()-1, but was "));
        return null;
    }

    public Object get(Object obj) {
        int iE = e(obj);
        if (iE >= 0) {
            return this.f3382c[(iE << 1) + 1];
        }
        return null;
    }

    public final Object getOrDefault(Object obj, Object obj2) {
        int iE = e(obj);
        return iE >= 0 ? this.f3382c[(iE << 1) + 1] : obj2;
    }

    public void h(SimpleArrayMap simpleArrayMap) {
        simpleArrayMap.getClass();
        int i2 = simpleArrayMap.d;
        c(this.d + i2);
        if (this.d != 0) {
            for (int i3 = 0; i3 < i2; i3++) {
                put(simpleArrayMap.g(i3), simpleArrayMap.k(i3));
            }
        } else if (i2 > 0) {
            ArraysKt.i(0, 0, i2, simpleArrayMap.f3381b, this.f3381b);
            ArraysKt.l(simpleArrayMap.f3382c, this.f3382c, 0, 0, i2 << 1);
            this.d = i2;
        }
    }

    public int hashCode() {
        int[] iArr = this.f3381b;
        Object[] objArr = this.f3382c;
        int i2 = this.d;
        int i3 = 1;
        int i4 = 0;
        int iHashCode = 0;
        while (i4 < i2) {
            Object obj = objArr[i3];
            iHashCode += (obj != null ? obj.hashCode() : 0) ^ iArr[i4];
            i4++;
            i3 += 2;
        }
        return iHashCode;
    }

    public Object i(int i2) {
        int i3;
        if (i2 < 0 || i2 >= (i3 = this.d)) {
            md.n(pq0.k(i2, "Expected index to be within 0..size()-1, but was "));
            return null;
        }
        Object[] objArr = this.f3382c;
        int i4 = i2 << 1;
        Object obj = objArr[i4 + 1];
        if (i3 <= 1) {
            clear();
            return obj;
        }
        int i5 = i3 - 1;
        int[] iArr = this.f3381b;
        if (iArr.length <= 8 || i3 >= iArr.length / 3) {
            if (i2 < i5) {
                int i6 = i2 + 1;
                ArraysKt.i(i2, i6, i3, iArr, iArr);
                Object[] objArr2 = this.f3382c;
                ArraysKt.l(objArr2, objArr2, i4, i6 << 1, i3 << 1);
            }
            Object[] objArr3 = this.f3382c;
            int i7 = i5 << 1;
            objArr3[i7] = null;
            objArr3[i7 + 1] = null;
        } else {
            int i8 = i3 > 8 ? i3 + (i3 >> 1) : 8;
            this.f3381b = Arrays.copyOf(iArr, i8);
            this.f3382c = Arrays.copyOf(this.f3382c, i8 << 1);
            if (i3 != this.d) {
                v7.c();
                return null;
            }
            if (i2 > 0) {
                ArraysKt.i(0, 0, i2, iArr, this.f3381b);
                ArraysKt.l(objArr, this.f3382c, 0, 0, i4);
            }
            if (i2 < i5) {
                int i9 = i2 + 1;
                ArraysKt.i(i2, i9, i3, iArr, this.f3381b);
                ArraysKt.l(objArr, this.f3382c, i4, i9 << 1, i3 << 1);
            }
        }
        if (i3 == this.d) {
            this.d = i5;
            return obj;
        }
        v7.c();
        return null;
    }

    public final boolean isEmpty() {
        return this.d <= 0;
    }

    public Object j(int i2, Object obj) {
        boolean z = false;
        if (i2 >= 0 && i2 < this.d) {
            z = true;
        }
        if (!z) {
            md.n(pq0.k(i2, "Expected index to be within 0..size()-1, but was "));
            return null;
        }
        int i3 = (i2 << 1) + 1;
        Object[] objArr = this.f3382c;
        Object obj2 = objArr[i3];
        objArr[i3] = obj;
        return obj2;
    }

    public final Object k(int i2) {
        boolean z = false;
        if (i2 >= 0 && i2 < this.d) {
            z = true;
        }
        if (z) {
            return this.f3382c[(i2 << 1) + 1];
        }
        md.n(pq0.k(i2, "Expected index to be within 0..size()-1, but was "));
        return null;
    }

    public Object put(Object obj, Object obj2) {
        int i2 = this.d;
        int iHashCode = obj != null ? obj.hashCode() : 0;
        int iD = obj != null ? d(iHashCode, obj) : f();
        if (iD >= 0) {
            int i3 = (iD << 1) + 1;
            Object[] objArr = this.f3382c;
            Object obj3 = objArr[i3];
            objArr[i3] = obj2;
            return obj3;
        }
        int i4 = ~iD;
        int[] iArr = this.f3381b;
        if (i2 >= iArr.length) {
            int i5 = 8;
            if (i2 >= 8) {
                i5 = (i2 >> 1) + i2;
            } else if (i2 < 4) {
                i5 = 4;
            }
            this.f3381b = Arrays.copyOf(iArr, i5);
            this.f3382c = Arrays.copyOf(this.f3382c, i5 << 1);
            if (i2 != this.d) {
                v7.c();
                return null;
            }
        }
        if (i4 < i2) {
            int[] iArr2 = this.f3381b;
            int i6 = i4 + 1;
            ArraysKt.i(i6, i4, i2, iArr2, iArr2);
            Object[] objArr2 = this.f3382c;
            ArraysKt.l(objArr2, objArr2, i6 << 1, i4 << 1, this.d << 1);
        }
        int i7 = this.d;
        if (i2 == i7) {
            int[] iArr3 = this.f3381b;
            if (i4 < iArr3.length) {
                iArr3[i4] = iHashCode;
                Object[] objArr3 = this.f3382c;
                int i8 = i4 << 1;
                objArr3[i8] = obj;
                objArr3[i8 + 1] = obj2;
                this.d = i7 + 1;
                return null;
            }
        }
        v7.c();
        return null;
    }

    public final Object putIfAbsent(Object obj, Object obj2) {
        Object obj3 = get(obj);
        return obj3 == null ? put(obj, obj2) : obj3;
    }

    public final boolean remove(Object obj, Object obj2) {
        int iE = e(obj);
        if (iE < 0 || !Intrinsics.c(obj2, k(iE))) {
            return false;
        }
        i(iE);
        return true;
    }

    public final boolean replace(Object obj, Object obj2, Object obj3) {
        int iE = e(obj);
        if (iE < 0 || !Intrinsics.c(obj2, k(iE))) {
            return false;
        }
        j(iE, obj3);
        return true;
    }

    /* JADX INFO: renamed from: size, reason: from getter */
    public final int getD() {
        return this.d;
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.d * 28);
        sb.append('{');
        int i2 = this.d;
        for (int i3 = 0; i3 < i2; i3++) {
            if (i3 > 0) {
                sb.append(", ");
            }
            Object objG = g(i3);
            if (objG != sb) {
                sb.append(objG);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            Object objK = k(i3);
            if (objK != sb) {
                sb.append(objK);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public Object remove(Object obj) {
        int iE = e(obj);
        if (iE >= 0) {
            return i(iE);
        }
        return null;
    }

    public final Object replace(Object obj, Object obj2) {
        int iE = e(obj);
        if (iE >= 0) {
            return j(iE, obj2);
        }
        return null;
    }

    public SimpleArrayMap() {
        this(0, 1, null);
    }

    public /* synthetic */ SimpleArrayMap(int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0 : i2);
    }

    public SimpleArrayMap(SimpleArrayMap<? extends K, ? extends V> simpleArrayMap) {
        this(0, 1, null);
        if (simpleArrayMap != null) {
            h(simpleArrayMap);
        }
    }
}
