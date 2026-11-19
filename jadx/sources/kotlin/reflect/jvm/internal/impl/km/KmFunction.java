package kotlin.reflect.jvm.internal.impl.km;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions;

/* JADX INFO: loaded from: classes4.dex */
public final class KmFunction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f72717a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f72718b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f72719c;
    public final ArrayList d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f72720e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f72721f;
    public final ArrayList g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList f72722h;

    public KmFunction(int i2, String str) {
        str.getClass();
        this.f72717a = i2;
        this.f72718b = new ArrayList(0);
        this.f72719c = new ArrayList(0);
        new ArrayList(0);
        this.d = new ArrayList();
        this.f72720e = new ArrayList();
        this.f72721f = new ArrayList(0);
        this.g = new ArrayList(0);
        MetadataExtensions.f72792a.getClass();
        List listA = MetadataExtensions.Companion.a();
        ArrayList arrayList = new ArrayList(CollectionsKt.t(listA, 10));
        Iterator it = listA.iterator();
        while (it.hasNext()) {
            arrayList.add(((MetadataExtensions) it.next()).n());
        }
        this.f72722h = arrayList;
    }
}
