package com.bumptech.glide.load.engine.bitmap_recycle;

import com.bumptech.glide.load.engine.bitmap_recycle.Poolable;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
class GroupedLinkedMap<K extends Poolable, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedEntry f24563a = new LinkedEntry(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f24564b = new HashMap();

    public static class LinkedEntry<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f24565a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ArrayList f24566b;
        public LinkedEntry d = this;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public LinkedEntry f24567c = this;

        public LinkedEntry(Object obj) {
            this.f24565a = obj;
        }
    }

    public final Object a(Poolable poolable) {
        HashMap map = this.f24564b;
        LinkedEntry linkedEntry = (LinkedEntry) map.get(poolable);
        if (linkedEntry == null) {
            linkedEntry = new LinkedEntry(poolable);
            map.put(poolable, linkedEntry);
        } else {
            poolable.a();
        }
        LinkedEntry linkedEntry2 = linkedEntry.d;
        linkedEntry2.f24567c = linkedEntry.f24567c;
        linkedEntry.f24567c.d = linkedEntry2;
        LinkedEntry linkedEntry3 = this.f24563a;
        linkedEntry.d = linkedEntry3;
        LinkedEntry linkedEntry4 = linkedEntry3.f24567c;
        linkedEntry.f24567c = linkedEntry4;
        linkedEntry4.d = linkedEntry;
        linkedEntry.d.f24567c = linkedEntry;
        ArrayList arrayList = linkedEntry.f24566b;
        int size = arrayList != null ? arrayList.size() : 0;
        if (size > 0) {
            return linkedEntry.f24566b.remove(size - 1);
        }
        return null;
    }

    public final void b(Poolable poolable, Object obj) {
        HashMap map = this.f24564b;
        LinkedEntry linkedEntry = (LinkedEntry) map.get(poolable);
        if (linkedEntry == null) {
            linkedEntry = new LinkedEntry(poolable);
            linkedEntry.d = linkedEntry;
            LinkedEntry linkedEntry2 = this.f24563a;
            linkedEntry.d = linkedEntry2.d;
            linkedEntry.f24567c = linkedEntry2;
            linkedEntry2.d = linkedEntry;
            linkedEntry.d.f24567c = linkedEntry;
            map.put(poolable, linkedEntry);
        } else {
            poolable.a();
        }
        if (linkedEntry.f24566b == null) {
            linkedEntry.f24566b = new ArrayList();
        }
        linkedEntry.f24566b.add(obj);
    }

    public final Object c() {
        LinkedEntry linkedEntry = this.f24563a;
        LinkedEntry linkedEntry2 = linkedEntry.d;
        while (true) {
            boolean zEquals = linkedEntry2.equals(linkedEntry);
            Object obj = linkedEntry2.f24565a;
            if (zEquals) {
                return null;
            }
            ArrayList arrayList = linkedEntry2.f24566b;
            int size = arrayList != null ? arrayList.size() : 0;
            Object objRemove = size > 0 ? linkedEntry2.f24566b.remove(size - 1) : null;
            if (objRemove != null) {
                return objRemove;
            }
            LinkedEntry linkedEntry3 = linkedEntry2.d;
            linkedEntry3.f24567c = linkedEntry2.f24567c;
            linkedEntry2.f24567c.d = linkedEntry3;
            this.f24564b.remove(obj);
            ((Poolable) obj).a();
            linkedEntry2 = linkedEntry2.d;
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("GroupedLinkedMap( ");
        LinkedEntry linkedEntry = this.f24563a;
        LinkedEntry linkedEntry2 = linkedEntry.f24567c;
        boolean z = false;
        while (!linkedEntry2.equals(linkedEntry)) {
            sb.append('{');
            sb.append(linkedEntry2.f24565a);
            sb.append(':');
            ArrayList arrayList = linkedEntry2.f24566b;
            sb.append(arrayList != null ? arrayList.size() : 0);
            sb.append("}, ");
            linkedEntry2 = linkedEntry2.f24567c;
            z = true;
        }
        if (z) {
            sb.delete(sb.length() - 2, sb.length());
        }
        sb.append(" )");
        return sb.toString();
    }
}
