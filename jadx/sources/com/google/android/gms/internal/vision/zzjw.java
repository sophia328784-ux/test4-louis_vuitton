package com.google.android.gms.internal.vision;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class zzjw extends zzju {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Class f31232c = Collections.unmodifiableList(Collections.EMPTY_LIST).getClass();

    @Override // com.google.android.gms.internal.vision.zzju
    public final void a(long j2, Object obj, Object obj2) {
        List list;
        List list2;
        List listE;
        List list3 = (List) zzma.m(j2, obj2);
        int size = list3.size();
        List list4 = (List) zzma.m(j2, obj);
        if (list4.isEmpty()) {
            if (list4 instanceof zzjv) {
                listE = new zzjs(size);
            } else {
                listE = ((list4 instanceof zzkw) && (list4 instanceof zzjl)) ? ((zzjl) list4).e(size) : new ArrayList(size);
            }
            zzma.d(j2, obj, listE);
            list2 = listE;
        } else {
            if (f31232c.isAssignableFrom(list4.getClass())) {
                ArrayList arrayList = new ArrayList(list4.size() + size);
                arrayList.addAll(list4);
                zzma.d(j2, obj, arrayList);
                list = arrayList;
            } else if (list4 instanceof zzlz) {
                zzlz zzlzVar = (zzlz) list4;
                zzjs zzjsVar = new zzjs(zzlzVar.f31286b.size() + size);
                zzjsVar.addAll(zzlzVar);
                zzma.d(j2, obj, zzjsVar);
                list = zzjsVar;
            } else if ((list4 instanceof zzkw) && (list4 instanceof zzjl)) {
                zzjl zzjlVar = (zzjl) list4;
                if (!zzjlVar.d0()) {
                    list2 = list4;
                    list2 = list4;
                    list2 = list4;
                    zzjl zzjlVarE = zzjlVar.e(list4.size() + size);
                    zzma.d(j2, obj, zzjlVarE);
                    list2 = zzjlVarE;
                }
            }
            list2 = list;
        }
        list2 = list4;
        list2 = list4;
        list2 = list4;
        list2 = list4;
        list2 = list4;
        list2 = list4;
        int size2 = list2.size();
        int size3 = list3.size();
        if (size2 > 0 && size3 > 0) {
            list2.addAll(list3);
        }
        if (size2 > 0) {
            list3 = list2;
        }
        zzma.d(j2, obj, list3);
    }

    @Override // com.google.android.gms.internal.vision.zzju
    public final void b(long j2, Object obj) {
        Object objUnmodifiableList;
        List list = (List) zzma.m(j2, obj);
        if (list instanceof zzjv) {
            objUnmodifiableList = ((zzjv) list).h0();
        } else {
            if (f31232c.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof zzkw) && (list instanceof zzjl)) {
                zzjl zzjlVar = (zzjl) list;
                if (zzjlVar.d0()) {
                    zzjlVar.e0();
                    return;
                }
                return;
            }
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        zzma.d(j2, obj, objUnmodifiableList);
    }
}
