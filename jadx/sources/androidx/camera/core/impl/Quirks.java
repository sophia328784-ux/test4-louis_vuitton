package androidx.camera.core.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Quirks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f2323a;

    public Quirks(List<Quirk> list) {
        this.f2323a = new ArrayList(list);
    }

    public static void d(Quirks quirks) {
        ArrayList arrayList = new ArrayList();
        Iterator it = quirks.f2323a.iterator();
        while (it.hasNext()) {
            arrayList.add(((Quirk) it.next()).getClass().getSimpleName());
        }
        String.join(" | ", arrayList);
    }

    public final boolean a(Class cls) {
        Iterator it = this.f2323a.iterator();
        while (it.hasNext()) {
            if (cls.isAssignableFrom(((Quirk) it.next()).getClass())) {
                return true;
            }
        }
        return false;
    }

    public final Quirk b(Class cls) {
        for (Quirk quirk : this.f2323a) {
            if (quirk.getClass() == cls) {
                return quirk;
            }
        }
        return null;
    }

    public final ArrayList c(Class cls) {
        ArrayList arrayList = new ArrayList();
        for (Quirk quirk : this.f2323a) {
            if (cls.isAssignableFrom(quirk.getClass())) {
                arrayList.add(quirk);
            }
        }
        return arrayList;
    }
}
