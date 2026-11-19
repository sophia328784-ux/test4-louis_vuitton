package kotlin.reflect.jvm.internal.impl.km;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions;

/* JADX INFO: loaded from: classes4.dex */
public final class KmEnumEntry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f72713a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f72714b;

    public KmEnumEntry(String str) {
        str.getClass();
        this.f72713a = str;
        this.f72714b = new ArrayList(0);
        MetadataExtensions.f72792a.getClass();
        List listA = MetadataExtensions.Companion.a();
        new ArrayList();
        Iterator it = listA.iterator();
        while (it.hasNext()) {
            ((MetadataExtensions) it.next()).getClass();
        }
    }

    public final String toString() {
        return this.f72713a;
    }
}
