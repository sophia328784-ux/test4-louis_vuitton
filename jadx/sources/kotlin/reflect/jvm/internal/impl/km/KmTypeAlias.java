package kotlin.reflect.jvm.internal.impl.km;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions;

/* JADX INFO: loaded from: classes4.dex */
public final class KmTypeAlias {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f72742a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f72743b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f72744c;
    public final ArrayList d;

    public KmTypeAlias(int i2, String str) {
        str.getClass();
        this.f72742a = i2;
        this.f72743b = new ArrayList(0);
        this.f72744c = new ArrayList(0);
        this.d = new ArrayList(0);
        MetadataExtensions.f72792a.getClass();
        List listA = MetadataExtensions.Companion.a();
        new ArrayList();
        Iterator it = listA.iterator();
        while (it.hasNext()) {
            ((MetadataExtensions) it.next()).getClass();
        }
    }
}
