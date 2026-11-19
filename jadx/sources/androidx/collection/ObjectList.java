package androidx.collection;

import defpackage.fc;
import defpackage.zy0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004"}, d2 = {"Landroidx/collection/ObjectList;", "E", "", "Landroidx/collection/MutableObjectList;", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class ObjectList<E> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object[] f3345a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3346b;

    public ObjectList(int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f3345a = i2 == 0 ? ObjectListKt.f3348a : new Object[i2];
    }

    public final Object a() {
        if (!d()) {
            return this.f3345a[0];
        }
        zy0.c("ObjectList is empty.");
        return null;
    }

    public final Object b(int i2) {
        if (i2 >= 0 && i2 < this.f3346b) {
            return this.f3345a[i2];
        }
        f(i2);
        throw null;
    }

    public final int c(Object obj) {
        Object[] objArr = this.f3345a;
        int i2 = 0;
        if (obj == null) {
            int i3 = this.f3346b;
            while (i2 < i3) {
                if (objArr[i2] == null) {
                    return i2;
                }
                i2++;
            }
            return -1;
        }
        int i4 = this.f3346b;
        while (i2 < i4) {
            if (obj.equals(objArr[i2])) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public final boolean d() {
        return this.f3346b == 0;
    }

    public final boolean e() {
        return this.f3346b != 0;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ObjectList) {
            ObjectList objectList = (ObjectList) obj;
            int i2 = objectList.f3346b;
            int i3 = this.f3346b;
            if (i2 == i3) {
                Object[] objArr = this.f3345a;
                Object[] objArr2 = objectList.f3345a;
                IntRange intRangeJ = RangesKt.j(0, i3);
                int i4 = intRangeJ.f71951b;
                int i5 = intRangeJ.f71952c;
                if (i4 > i5) {
                    return true;
                }
                while (Intrinsics.c(objArr[i4], objArr2[i4])) {
                    if (i4 == i5) {
                        return true;
                    }
                    i4++;
                }
                return false;
            }
        }
        return false;
    }

    public final void f(int i2) {
        StringBuilder sbQ = fc.q(i2, "Index ", " must be in 0..");
        sbQ.append(this.f3346b - 1);
        throw new IndexOutOfBoundsException(sbQ.toString());
    }

    public final int hashCode() {
        Object[] objArr = this.f3345a;
        int i2 = this.f3346b;
        int iHashCode = 0;
        for (int i3 = 0; i3 < i2; i3++) {
            Object obj = objArr[i3];
            iHashCode += (obj != null ? obj.hashCode() : 0) * 31;
        }
        return iHashCode;
    }

    public final String toString() {
        Function1<Object, CharSequence> function1 = new Function1<Object, CharSequence>() { // from class: androidx.collection.ObjectList.toString.1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return obj == ObjectList.this ? "(this)" : String.valueOf(obj);
            }
        };
        StringBuilder sb = new StringBuilder("[");
        Object[] objArr = this.f3345a;
        int i2 = this.f3346b;
        for (int i3 = 0; i3 < i2; i3++) {
            Object obj = objArr[i3];
            if (i3 == -1) {
                sb.append((CharSequence) "...");
                return sb.toString();
            }
            if (i3 != 0) {
                sb.append((CharSequence) ", ");
            }
            sb.append((CharSequence) function1.invoke(obj));
        }
        sb.append((CharSequence) "]");
        return sb.toString();
    }
}
