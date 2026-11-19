package kotlin.reflect.jvm.internal.impl.km;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions;

/* JADX INFO: loaded from: classes4.dex */
public final class KmClass implements KmDeclarationContainer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f72691a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f72692b;
    public KmType m;
    public final ArrayList q;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f72693c = new ArrayList(0);
    public final ArrayList d = new ArrayList(1);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f72694e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f72695f = new ArrayList();
    public final ArrayList g = new ArrayList(0);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList f72696h = new ArrayList(1);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayList f72697i = new ArrayList(0);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ArrayList f72698j = new ArrayList(0);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ArrayList f72699k = new ArrayList(0);
    public final ArrayList l = new ArrayList(0);
    public final ArrayList n = new ArrayList(0);
    public final ArrayList o = new ArrayList(0);
    public final ArrayList p = new ArrayList(0);

    public KmClass() {
        MetadataExtensions.f72792a.getClass();
        List listA = MetadataExtensions.Companion.a();
        ArrayList arrayList = new ArrayList(CollectionsKt.t(listA, 10));
        Iterator it = listA.iterator();
        while (it.hasNext()) {
            arrayList.add(((MetadataExtensions) it.next()).e());
        }
        this.q = arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.km.KmDeclarationContainer
    public final ArrayList a() {
        return this.f72695f;
    }

    @Override // kotlin.reflect.jvm.internal.impl.km.KmDeclarationContainer
    public final ArrayList b() {
        return this.g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.km.KmDeclarationContainer
    public final ArrayList c() {
        return this.f72694e;
    }
}
