package com.google.android.datatransport.runtime.util;

import android.util.SparseArray;
import com.google.android.datatransport.Priority;
import defpackage.a61;
import defpackage.md;
import defpackage.pq0;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public final class PriorityMapping {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SparseArray f28138a = new SparseArray();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final HashMap f28139b;

    static {
        HashMap map = new HashMap();
        f28139b = map;
        map.put(Priority.DEFAULT, 0);
        map.put(Priority.VERY_LOW, 1);
        map.put(Priority.HIGHEST, 2);
        for (Priority priority : map.keySet()) {
            f28138a.append(((Integer) f28139b.get(priority)).intValue(), priority);
        }
    }

    public static int a(Priority priority) {
        Integer num = (Integer) f28139b.get(priority);
        if (num != null) {
            return num.intValue();
        }
        a61.q(priority, "PriorityMapping is missing known Priority value ");
        return 0;
    }

    public static Priority b(int i2) {
        Priority priority = (Priority) f28138a.get(i2);
        if (priority != null) {
            return priority;
        }
        md.n(pq0.k(i2, "Unknown Priority for value "));
        return null;
    }
}
