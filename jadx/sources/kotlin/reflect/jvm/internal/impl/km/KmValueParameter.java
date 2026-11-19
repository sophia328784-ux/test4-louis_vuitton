package kotlin.reflect.jvm.internal.impl.km;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions;

/* JADX INFO: loaded from: classes4.dex */
public final class KmValueParameter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f72753a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f72754b;

    public KmValueParameter(int i2, String str) {
        str.getClass();
        this.f72753a = i2;
        this.f72754b = new ArrayList(0);
        MetadataExtensions.f72792a.getClass();
        List listA = MetadataExtensions.Companion.a();
        new ArrayList();
        Iterator it = listA.iterator();
        while (it.hasNext()) {
            ((MetadataExtensions) it.next()).getClass();
        }
    }
}
