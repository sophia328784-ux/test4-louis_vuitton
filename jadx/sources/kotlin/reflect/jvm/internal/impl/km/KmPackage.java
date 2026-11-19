package kotlin.reflect.jvm.internal.impl.km;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions;

/* JADX INFO: loaded from: classes4.dex */
public final class KmPackage implements KmDeclarationContainer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f72723a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f72724b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f72725c = new ArrayList(0);
    public final ArrayList d;

    public KmPackage() {
        MetadataExtensions.f72792a.getClass();
        List listA = MetadataExtensions.Companion.a();
        ArrayList arrayList = new ArrayList(CollectionsKt.t(listA, 10));
        Iterator it = listA.iterator();
        while (it.hasNext()) {
            arrayList.add(((MetadataExtensions) it.next()).c());
        }
        this.d = arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.km.KmDeclarationContainer
    public final ArrayList a() {
        return this.f72724b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.km.KmDeclarationContainer
    public final ArrayList b() {
        return this.f72725c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.km.KmDeclarationContainer
    public final ArrayList c() {
        return this.f72723a;
    }
}
