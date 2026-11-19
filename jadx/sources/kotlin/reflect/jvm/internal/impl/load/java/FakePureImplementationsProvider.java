package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.MapsKt;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.StandardClassIds;

/* JADX INFO: loaded from: classes4.dex */
public abstract class FakePureImplementationsProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LinkedHashMap f72832a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Map f72833b;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        f72832a = linkedHashMap;
        b(StandardClassIds.A, a("java.util.ArrayList", "java.util.LinkedList"));
        b(StandardClassIds.B, a("java.util.HashSet", "java.util.TreeSet", "java.util.LinkedHashSet"));
        b(StandardClassIds.C, a("java.util.HashMap", "java.util.TreeMap", "java.util.LinkedHashMap", "java.util.concurrent.ConcurrentHashMap", "java.util.concurrent.ConcurrentSkipListMap"));
        ClassId.Companion companion = ClassId.d;
        FqName fqName = new FqName("java.util.function.Function");
        companion.getClass();
        b(ClassId.Companion.b(fqName), a("java.util.function.UnaryOperator"));
        b(ClassId.Companion.b(new FqName("java.util.function.BiFunction")), a("java.util.function.BinaryOperator"));
        ArrayList arrayList = new ArrayList(linkedHashMap.size());
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            arrayList.add(new Pair(((ClassId) entry.getKey()).a(), ((ClassId) entry.getValue()).a()));
        }
        f72833b = MapsKt.n(arrayList);
    }

    public static ArrayList a(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            ClassId.Companion companion = ClassId.d;
            FqName fqName = new FqName(str);
            companion.getClass();
            arrayList.add(ClassId.Companion.b(fqName));
        }
        return arrayList;
    }

    public static void b(ClassId classId, ArrayList arrayList) {
        for (Object obj : arrayList) {
            f72832a.put(obj, classId);
        }
    }
}
