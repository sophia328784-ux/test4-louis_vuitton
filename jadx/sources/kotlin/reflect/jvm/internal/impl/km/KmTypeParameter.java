package kotlin.reflect.jvm.internal.impl.km;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions;

/* JADX INFO: loaded from: classes4.dex */
public final class KmTypeParameter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f72745a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f72746b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f72747c;
    public final KmVariance d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f72748e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f72749f;

    public KmTypeParameter(int i2, String str, int i3, KmVariance kmVariance) {
        str.getClass();
        kmVariance.getClass();
        this.f72745a = i2;
        this.f72746b = str;
        this.f72747c = i3;
        this.d = kmVariance;
        this.f72748e = new ArrayList(1);
        MetadataExtensions.f72792a.getClass();
        List listA = MetadataExtensions.Companion.a();
        ArrayList arrayList = new ArrayList(CollectionsKt.t(listA, 10));
        Iterator it = listA.iterator();
        while (it.hasNext()) {
            arrayList.add(((MetadataExtensions) it.next()).o());
        }
        this.f72749f = arrayList;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public KmTypeParameter(String str, int i2, KmVariance kmVariance) {
        this(0, str, i2, kmVariance);
        str.getClass();
        kmVariance.getClass();
    }
}
