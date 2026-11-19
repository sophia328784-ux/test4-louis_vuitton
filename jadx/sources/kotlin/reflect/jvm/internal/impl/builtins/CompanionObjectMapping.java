package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: loaded from: classes4.dex */
public abstract class CompanionObjectMapping {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LinkedHashSet f72239a;

    static {
        Set<PrimitiveType> set = PrimitiveType.NUMBER_TYPES;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(set, 10));
        for (PrimitiveType primitiveType : set) {
            primitiveType.getClass();
            arrayList.add(StandardNames.l.a(primitiveType.f()));
        }
        ArrayList<FqName> arrayListX = CollectionsKt.X(StandardNames.FqNames.f72278j.i(), CollectionsKt.X(StandardNames.FqNames.f72276h.i(), CollectionsKt.X(StandardNames.FqNames.f72275f.i(), arrayList)));
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ClassId.Companion companion = ClassId.d;
        for (FqName fqName : arrayListX) {
            companion.getClass();
            linkedHashSet.add(ClassId.Companion.b(fqName));
        }
        f72239a = linkedHashSet;
    }
}
