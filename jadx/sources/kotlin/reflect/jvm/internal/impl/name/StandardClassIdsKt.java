package kotlin.reflect.jvm.internal.impl.name;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class StandardClassIdsKt {
    public static final ClassId a(String str) {
        FqName fqName = StandardClassIds.f73696a;
        return new ClassId(StandardClassIds.f73701h, Name.e(str));
    }

    public static final ClassId b(String str) {
        FqName fqName = StandardClassIds.f73696a;
        return new ClassId(StandardClassIds.f73696a, Name.e(str));
    }

    public static final ClassId c(String str) {
        FqName fqName = StandardClassIds.f73696a;
        return new ClassId(StandardClassIds.f73698c, Name.e(str));
    }

    public static final LinkedHashMap d(LinkedHashMap linkedHashMap) {
        Set<Map.Entry> setEntrySet = linkedHashMap.entrySet();
        int iG = MapsKt.g(CollectionsKt.t(setEntrySet, 10));
        if (iG < 16) {
            iG = 16;
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(iG);
        for (Map.Entry entry : setEntrySet) {
            Pair pair = new Pair(entry.getValue(), entry.getKey());
            linkedHashMap2.put(pair.f71705b, pair.f71706c);
        }
        return linkedHashMap2;
    }

    public static final ClassId e(Name name) {
        FqName fqName = StandardClassIds.f73696a;
        ClassId classId = StandardClassIds.n;
        return new ClassId(classId.f73675a, Name.e(name.c().concat(classId.f().c())));
    }

    public static final ClassId f(String str) {
        FqName fqName = StandardClassIds.f73696a;
        return new ClassId(StandardClassIds.f73697b, Name.e(str));
    }

    public static final ClassId g(ClassId classId) {
        FqName fqName = StandardClassIds.f73696a;
        return new ClassId(StandardClassIds.f73696a, Name.e("U".concat(classId.f().c())));
    }
}
