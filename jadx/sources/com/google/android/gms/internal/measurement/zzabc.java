package com.google.android.gms.internal.measurement;

import defpackage.r81;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
final class zzabc extends AbstractMap {
    public static final Comparator g = new zzaaz();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object[] f30334b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int[] f30335c;
    public final Set d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Integer f30336e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f30337f;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.measurement.zzabc, java.util.AbstractMap] */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.gms.internal.measurement.zzabc] */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v8 */
    public zzabc(zzabc zzabcVar, zzabc zzabcVar2) {
        Object obj;
        Object[] objArr;
        ?? abstractMap = new AbstractMap();
        abstractMap.d = new zzabb(abstractMap, -1);
        abstractMap.f30336e = null;
        abstractMap.f30337f = null;
        int size = zzabcVar2.size() + zzabcVar.size();
        int i2 = zzabcVar.f30335c[zzabcVar.size()] + zzabcVar2.f30335c[zzabcVar2.size()];
        int i3 = size + 1;
        Object[] objArr2 = new Object[i2];
        int[] iArr = new int[i3];
        int i4 = 0;
        iArr[0] = size;
        Map.Entry entryD = zzabcVar.d(0);
        Map.Entry entryD2 = zzabcVar2.d(0);
        int i5 = 0;
        int i6 = 0;
        int iA = size;
        int i7 = 0;
        while (true) {
            if (entryD == null && entryD2 == null) {
                break;
            }
            i7++;
            if (entryD != null) {
                if (entryD2 != null) {
                    int iCompareTo = ((String) entryD.getKey()).compareTo((String) entryD2.getKey());
                    if (iCompareTo == 0) {
                        int i8 = i5 + 1;
                        int i9 = i6 + 1;
                        objArr2[i7] = new AbstractMap.SimpleImmutableEntry((String) entryD.getKey(), new zzabb(abstractMap, i7));
                        zzabb zzabbVar = (zzabb) entryD.getValue();
                        zzabb zzabbVar2 = (zzabb) entryD2.getValue();
                        int i10 = 0;
                        int i11 = 0;
                        abstractMap = abstractMap;
                        while (true) {
                            int iH = zzabbVar.h();
                            zzabc zzabcVar3 = zzabbVar.f30333c;
                            if (i10 >= iH - zzabbVar.f() && i11 >= zzabbVar2.h() - zzabbVar2.f()) {
                                break;
                            }
                            int iCompare = i10 == zzabbVar.h() - zzabbVar.f() ? 1 : i11 == zzabbVar2.h() - zzabbVar2.f() ? -1 : 0;
                            if (iCompare == 0) {
                                Comparator comparator = zzabe.f30338b;
                                iCompare = ((zzaax) zzabe.f30338b).compare(zzabcVar3.f30334b[zzabbVar.f() + i10], zzabbVar2.f30333c.f30334b[zzabbVar2.f() + i11]);
                            }
                            if (iCompare < 0) {
                                i10++;
                                obj = zzabcVar3.f30334b[zzabbVar.f() + i10];
                            } else {
                                int i12 = i11 + 1;
                                Object obj2 = zzabbVar2.f30333c.f30334b[zzabbVar2.f() + i11];
                                if (iCompare == 0) {
                                    i11 = i12;
                                    obj = obj2;
                                    i10++;
                                } else {
                                    i11 = i12;
                                    obj = obj2;
                                    i10 = i10;
                                }
                            }
                            objArr2[iA] = obj;
                            abstractMap = this;
                            iA++;
                        }
                        iArr[i7] = iA;
                        entryD = zzabcVar.d(i9);
                        entryD2 = zzabcVar2.d(i8);
                        i6 = i9;
                        i5 = i8;
                        i4 = 0;
                    } else {
                        if (iCompareTo < 0) {
                        }
                        i4 = 0;
                        abstractMap = this;
                    }
                }
                i6++;
                iA = a(entryD, i7, iA, objArr2, iArr);
                entryD = zzabcVar.d(i6);
                i4 = 0;
                abstractMap = this;
            }
            Map.Entry entry = entryD;
            i5++;
            int iA2 = a(entryD2, i7, iA, objArr2, iArr);
            entryD2 = zzabcVar2.d(i5);
            iA = iA2;
            entryD = entry;
            i4 = 0;
            abstractMap = this;
        }
        int i13 = iArr[i4];
        int i14 = i13 - i7;
        if (i14 != 0) {
            for (int i15 = i4; i15 <= i7; i15++) {
                iArr[i15] = iArr[i15] - i14;
            }
            int i16 = iArr[i7];
            int i17 = i16 - i7;
            if (c(i2, i16)) {
                objArr = new Object[i16];
                System.arraycopy(objArr2, i4, objArr, i4, i7);
            } else {
                objArr = objArr2;
            }
            System.arraycopy(objArr2, i13, objArr, i7, i17);
            objArr2 = objArr;
        }
        abstractMap.f30334b = objArr2;
        int i18 = iArr[i4] + 1;
        abstractMap.f30335c = c(i3, i18) ? Arrays.copyOf(iArr, i18) : iArr;
    }

    public static boolean c(int i2, int i3) {
        return i2 > 16 && i2 * 9 > i3 * 10;
    }

    public final int a(Map.Entry entry, int i2, int i3, Object[] objArr, int[] iArr) {
        zzabb zzabbVar = (zzabb) entry.getValue();
        int iH = zzabbVar.h() - zzabbVar.f();
        System.arraycopy(zzabbVar.f30333c.f30334b, zzabbVar.f(), objArr, i3, iH);
        objArr[i2] = new AbstractMap.SimpleImmutableEntry((String) entry.getKey(), new zzabb(this, i2));
        int i4 = i3 + iH;
        iArr[i2 + 1] = i4;
        return i4;
    }

    public final Map.Entry d(int i2) {
        if (i2 < this.f30335c[0]) {
            return (Map.Entry) this.f30334b[i2];
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        return this.d;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        if (this.f30336e == null) {
            this.f30336e = Integer.valueOf(super.hashCode());
        }
        return this.f30336e.intValue();
    }

    @Override // java.util.AbstractMap
    public final String toString() {
        if (this.f30337f == null) {
            this.f30337f = super.toString();
        }
        return this.f30337f;
    }

    public zzabc() {
        List list = Collections.EMPTY_LIST;
        this.d = new zzabb(this, -1);
        this.f30336e = null;
        this.f30337f = null;
        Iterator it = list.iterator();
        if (!it.hasNext()) {
            int size = list.size();
            Object[] objArr = new Object[size];
            Iterator it2 = list.iterator();
            if (!it2.hasNext()) {
                int[] iArr = {0};
                this.f30334b = c(size, 0) ? Arrays.copyOf(objArr, 0) : objArr;
                this.f30335c = iArr;
                return;
            } else {
                it2.next().getClass();
                r81.h();
                throw null;
            }
        }
        it.next().getClass();
        r81.h();
        throw null;
    }
}
