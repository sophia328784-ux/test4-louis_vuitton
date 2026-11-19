package kotlin.reflect.jvm.internal.impl.km;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions;

/* JADX INFO: loaded from: classes4.dex */
public final class KmConstructor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f72704a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f72705b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f72706c;
    public final ArrayList d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f72707e;

    public KmConstructor(int i2) {
        this.f72704a = i2;
        this.f72705b = new ArrayList();
        this.f72706c = new ArrayList(0);
        this.d = new ArrayList(0);
        MetadataExtensions.f72792a.getClass();
        List listA = MetadataExtensions.Companion.a();
        ArrayList arrayList = new ArrayList(CollectionsKt.t(listA, 10));
        Iterator it = listA.iterator();
        while (it.hasNext()) {
            arrayList.add(((MetadataExtensions) it.next()).g());
        }
        this.f72707e = arrayList;
    }

    public KmConstructor() {
        this(0);
    }
}
