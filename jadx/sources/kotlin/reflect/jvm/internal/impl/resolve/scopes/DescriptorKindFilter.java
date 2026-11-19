package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import defpackage.pq0;
import defpackage.tr;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class DescriptorKindFilter {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f73910c = new Companion(null);
    public static final int d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f73911e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f73912f;
    public static final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f73913h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f73914i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f73915j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f73916k;
    public static final DescriptorKindFilter l;
    public static final DescriptorKindFilter m;
    public static final DescriptorKindFilter n;
    public static final DescriptorKindFilter o;
    public static final DescriptorKindFilter p;
    public static final ArrayList q;
    public static final ArrayList r;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f73917a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f73918b;

    public static final class Companion {

        public static final class MaskToName {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final int f73919a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73920b;

            public MaskToName(int i2, String str) {
                str.getClass();
                this.f73919a = i2;
                this.f73920b = str;
            }
        }

        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        Companion.MaskToName maskToName;
        Companion.MaskToName maskToName2;
        int i2 = 1 << 1;
        int i3 = i2 << 1;
        f73911e = i2;
        int i4 = i2 << 2;
        f73912f = i3;
        int i5 = i2 << 3;
        g = i4;
        int i6 = i2 << 4;
        f73913h = i5;
        f73914i = i6;
        int i7 = (i2 << 5) - 1;
        f73915j = i7;
        int i8 = 1 | i2 | i3;
        f73916k = i8;
        l = new DescriptorKindFilter(i7, null, 2, null);
        m = new DescriptorKindFilter(i5 | i6, null, 2, null);
        new DescriptorKindFilter(1, null, 2, null);
        new DescriptorKindFilter(i2, null, 2, null);
        new DescriptorKindFilter(i3, null, 2, null);
        n = new DescriptorKindFilter(i8, null, 2, null);
        new DescriptorKindFilter(i4, null, 2, null);
        o = new DescriptorKindFilter(i5, null, 2, null);
        p = new DescriptorKindFilter(i6, null, 2, null);
        new DescriptorKindFilter(i2 | i5 | i6, null, 2, null);
        Field[] fields = DescriptorKindFilter.class.getFields();
        fields.getClass();
        ArrayList<Field> arrayList = new ArrayList();
        for (Field field : fields) {
            if (Modifier.isStatic(field.getModifiers())) {
                arrayList.add(field);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Field field2 : arrayList) {
            Object obj = field2.get(null);
            DescriptorKindFilter descriptorKindFilter = obj instanceof DescriptorKindFilter ? (DescriptorKindFilter) obj : null;
            if (descriptorKindFilter != null) {
                int i9 = descriptorKindFilter.f73918b;
                String name = field2.getName();
                name.getClass();
                maskToName2 = new Companion.MaskToName(i9, name);
            } else {
                maskToName2 = null;
            }
            if (maskToName2 != null) {
                arrayList2.add(maskToName2);
            }
        }
        q = arrayList2;
        Field[] fields2 = DescriptorKindFilter.class.getFields();
        fields2.getClass();
        ArrayList arrayList3 = new ArrayList();
        for (Field field3 : fields2) {
            if (Modifier.isStatic(field3.getModifiers())) {
                arrayList3.add(field3);
            }
        }
        ArrayList<Field> arrayList4 = new ArrayList();
        for (Object obj2 : arrayList3) {
            if (Intrinsics.c(((Field) obj2).getType(), Integer.TYPE)) {
                arrayList4.add(obj2);
            }
        }
        ArrayList arrayList5 = new ArrayList();
        for (Field field4 : arrayList4) {
            Object obj3 = field4.get(null);
            obj3.getClass();
            int iIntValue = ((Integer) obj3).intValue();
            if (iIntValue == ((-iIntValue) & iIntValue)) {
                String name2 = field4.getName();
                name2.getClass();
                maskToName = new Companion.MaskToName(iIntValue, name2);
            } else {
                maskToName = null;
            }
            if (maskToName != null) {
                arrayList5.add(maskToName);
            }
        }
        r = arrayList5;
    }

    public DescriptorKindFilter(int i2, List<? extends DescriptorKindExclude> list) {
        list.getClass();
        this.f73917a = list;
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            i2 &= ~((DescriptorKindExclude) it.next()).a();
        }
        this.f73918b = i2;
    }

    public final boolean a(int i2) {
        return (this.f73918b & i2) != 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!DescriptorKindFilter.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        DescriptorKindFilter descriptorKindFilter = (DescriptorKindFilter) obj;
        return Intrinsics.c(this.f73917a, descriptorKindFilter.f73917a) && this.f73918b == descriptorKindFilter.f73918b;
    }

    public final int hashCode() {
        return (this.f73917a.hashCode() * 31) + this.f73918b;
    }

    public final String toString() {
        Object next;
        Iterator it = q.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((Companion.MaskToName) next).f73919a != this.f73918b);
        Companion.MaskToName maskToName = (Companion.MaskToName) next;
        String strK = maskToName != null ? maskToName.f73920b : null;
        if (strK == null) {
            ArrayList arrayList = new ArrayList();
            for (Companion.MaskToName maskToName2 : r) {
                String str = a(maskToName2.f73919a) ? maskToName2.f73920b : null;
                if (str != null) {
                    arrayList.add(str);
                }
            }
            strK = CollectionsKt.K(arrayList, " | ", null, null, null, 62);
        }
        return tr.m(pq0.r("DescriptorKindFilter(", strK, ", "), this.f73917a, ')');
    }

    public DescriptorKindFilter(int i2, List list, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, (i3 & 2) != 0 ? EmptyList.f71768b : list);
    }
}
