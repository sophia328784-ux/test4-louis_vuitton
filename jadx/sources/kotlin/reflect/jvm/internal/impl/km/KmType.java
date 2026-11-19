package kotlin.reflect.jvm.internal.impl.km;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions;

/* JADX INFO: loaded from: classes4.dex */
public final class KmType {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f72737a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public KmClassifier f72738b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f72739c;
    public KmType d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public KmType f72740e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public KmFlexibleTypeUpperBound f72741f;
    public final ArrayList g;

    public KmType(int i2) {
        this.f72737a = i2;
        this.f72739c = new ArrayList(0);
        MetadataExtensions.f72792a.getClass();
        List listA = MetadataExtensions.Companion.a();
        ArrayList arrayList = new ArrayList(CollectionsKt.t(listA, 10));
        Iterator it = listA.iterator();
        while (it.hasNext()) {
            arrayList.add(((MetadataExtensions) it.next()).k());
        }
        this.g = arrayList;
    }

    public final KmClassifier a() {
        KmClassifier kmClassifier = this.f72738b;
        if (kmClassifier != null) {
            return kmClassifier;
        }
        Intrinsics.h("classifier");
        throw null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!KmType.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        KmType kmType = (KmType) obj;
        return this.f72737a == kmType.f72737a && a().equals(kmType.a()) && Intrinsics.c(this.f72739c, kmType.f72739c) && Intrinsics.c(this.f72740e, kmType.f72740e) && Intrinsics.c(this.d, kmType.d) && Intrinsics.c(this.f72741f, kmType.f72741f) && Intrinsics.c(this.g, kmType.g);
    }

    public final int hashCode() {
        return this.f72739c.hashCode() + ((a().hashCode() + (this.f72737a * 31)) * 31);
    }

    public KmType() {
        this(0);
    }
}
