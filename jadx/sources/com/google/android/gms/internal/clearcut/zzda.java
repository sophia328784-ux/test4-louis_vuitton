package com.google.android.gms.internal.clearcut;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class zzda extends zzcy {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Class f29682c = Collections.unmodifiableList(Collections.EMPTY_LIST).getClass();

    @Override // com.google.android.gms.internal.clearcut.zzcy
    public final void a(long j2, Object obj) {
        Object objUnmodifiableList;
        List list = (List) zzfd.k(j2, obj);
        if (list instanceof zzcx) {
            objUnmodifiableList = ((zzcx) list).K1();
        } else if (f29682c.isAssignableFrom(list.getClass())) {
            return;
        } else {
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        zzfd.b(j2, obj, objUnmodifiableList);
    }

    @Override // com.google.android.gms.internal.clearcut.zzcy
    public final void b(long j2, Object obj, Object obj2) {
        List list;
        List list2;
        List list3 = (List) zzfd.k(j2, obj2);
        int size = list3.size();
        List list4 = (List) zzfd.k(j2, obj);
        if (list4.isEmpty()) {
            List zzcwVar = list4 instanceof zzcx ? new zzcw(size) : new ArrayList(size);
            zzfd.b(j2, obj, zzcwVar);
            list2 = zzcwVar;
        } else {
            if (f29682c.isAssignableFrom(list4.getClass())) {
                ArrayList arrayList = new ArrayList(list4.size() + size);
                arrayList.addAll(list4);
                list = arrayList;
            } else if (list4 instanceof zzfa) {
                list2 = list4;
                zzcw zzcwVar2 = new zzcw(list4.size() + size);
                zzcwVar2.addAll((zzfa) list4);
                list = zzcwVar2;
            }
            zzfd.b(j2, obj, list);
            list2 = list;
        }
        list2 = list4;
        int size2 = list2.size();
        int size3 = list3.size();
        if (size2 > 0 && size3 > 0) {
            list2.addAll(list3);
        }
        if (size2 > 0) {
            list3 = list2;
        }
        zzfd.b(j2, obj, list3);
    }
}
