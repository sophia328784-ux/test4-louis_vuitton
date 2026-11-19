package kotlin.reflect.jvm.internal.impl.name;

import com.sightcall.universal.fcm.messages.Test;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class StandardClassIds {
    public static final ClassId A;
    public static final ClassId B;
    public static final ClassId C;
    public static final ClassId D;
    public static final Map E;
    public static final Map F;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final FqName f73696a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final FqName f73697b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final FqName f73698c;
    public static final FqName d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final FqName f73699e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final FqName f73700f;
    public static final FqName g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final FqName f73701h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Set f73702i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Set f73703j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final ClassId f73704k;
    public static final ClassId l;
    public static final ClassId m;
    public static final ClassId n;
    public static final ClassId o;
    public static final ClassId p;
    public static final ClassId q;
    public static final ClassId r;
    public static final ClassId s;
    public static final ClassId t;
    public static final ClassId u;
    public static final ClassId v;
    public static final ClassId w;
    public static final Set x;
    public static final Set y;
    public static final Set z;

    static {
        FqName fqName = new FqName("kotlin");
        f73696a = fqName;
        FqName fqNameA = fqName.a(Name.e("reflect"));
        f73697b = fqNameA;
        fqName.a(Name.e("experimental"));
        FqName fqNameA2 = fqName.a(Name.e("collections"));
        f73698c = fqNameA2;
        fqName.a(Name.e("sequences"));
        FqName fqNameA3 = fqName.a(Name.e("ranges"));
        d = fqNameA3;
        FqName fqNameA4 = fqName.a(Name.e("jvm"));
        fqName.a(Name.e("js"));
        fqName.a(Name.e("annotations")).a(Name.e("jvm"));
        fqNameA4.a(Name.e("internal"));
        fqNameA4.a(Name.e("functions"));
        FqName fqNameA5 = fqName.a(Name.e("annotation"));
        f73699e = fqNameA5;
        FqName fqNameA6 = fqName.a(Name.e("internal"));
        fqNameA6.a(Name.e("ir"));
        FqName fqNameA7 = fqName.a(Name.e("coroutines"));
        f73700f = fqNameA7;
        fqNameA7.a(Name.e("intrinsics"));
        g = fqName.a(Name.e("enums"));
        fqName.a(Name.e("contracts"));
        FqName fqNameA8 = fqName.a(Name.e("concurrent")).a(Name.e("atomics"));
        f73701h = fqNameA8;
        fqName.a(Name.e(Test.KEY));
        fqName.a(Name.e("text"));
        f73702i = ArraysKt.Z(new FqName[]{fqName, fqNameA2, fqNameA3, fqNameA5});
        f73703j = ArraysKt.Z(new FqName[]{fqName, fqNameA2, fqNameA3, fqNameA5, fqNameA, fqNameA6, fqNameA7, fqNameA8});
        StandardClassIdsKt.b("Nothing");
        f73704k = StandardClassIdsKt.b("Unit");
        l = StandardClassIdsKt.b("Any");
        m = StandardClassIdsKt.b("Enum");
        StandardClassIdsKt.b("Annotation");
        n = StandardClassIdsKt.b("Array");
        ClassId classIdB = StandardClassIdsKt.b("Boolean");
        o = classIdB;
        ClassId classIdB2 = StandardClassIdsKt.b("Char");
        ClassId classIdB3 = StandardClassIdsKt.b("Byte");
        ClassId classIdB4 = StandardClassIdsKt.b("Short");
        ClassId classIdB5 = StandardClassIdsKt.b("Int");
        p = classIdB5;
        ClassId classIdB6 = StandardClassIdsKt.b("Long");
        q = classIdB6;
        ClassId classIdB7 = StandardClassIdsKt.b("Float");
        ClassId classIdB8 = StandardClassIdsKt.b("Double");
        r = StandardClassIdsKt.g(classIdB3);
        s = StandardClassIdsKt.g(classIdB4);
        t = StandardClassIdsKt.g(classIdB5);
        u = StandardClassIdsKt.g(classIdB6);
        StandardClassIdsKt.b("CharSequence");
        v = StandardClassIdsKt.b("String");
        StandardClassIdsKt.b("Throwable");
        StandardClassIdsKt.b("Cloneable");
        StandardClassIdsKt.f("KProperty");
        StandardClassIdsKt.f("KMutableProperty");
        StandardClassIdsKt.f("KProperty0");
        StandardClassIdsKt.f("KMutableProperty0");
        StandardClassIdsKt.f("KProperty1");
        StandardClassIdsKt.f("KMutableProperty1");
        StandardClassIdsKt.f("KProperty2");
        StandardClassIdsKt.f("KMutableProperty2");
        w = StandardClassIdsKt.f("KFunction");
        StandardClassIdsKt.f("KClass");
        StandardClassIdsKt.f("KCallable");
        StandardClassIdsKt.f("KType");
        StandardClassIdsKt.b("Comparable");
        StandardClassIdsKt.b("Number");
        StandardClassIdsKt.b("Function");
        Set setZ = ArraysKt.Z(new ClassId[]{classIdB, classIdB2, classIdB3, classIdB4, classIdB5, classIdB6, classIdB7, classIdB8});
        x = setZ;
        y = ArraysKt.Z(new ClassId[]{classIdB3, classIdB4, classIdB5, classIdB6});
        Set set = setZ;
        int iG = MapsKt.g(CollectionsKt.t(set, 10));
        if (iG < 16) {
            iG = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iG);
        for (Object obj : set) {
            linkedHashMap.put(obj, StandardClassIdsKt.e(((ClassId) obj).f()));
        }
        StandardClassIdsKt.d(linkedHashMap);
        Set setZ2 = ArraysKt.Z(new ClassId[]{r, s, t, u});
        z = setZ2;
        Set set2 = setZ2;
        int iG2 = MapsKt.g(CollectionsKt.t(set2, 10));
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(iG2 >= 16 ? iG2 : 16);
        for (Object obj2 : set2) {
            linkedHashMap2.put(obj2, StandardClassIdsKt.e(((ClassId) obj2).f()));
        }
        StandardClassIdsKt.d(linkedHashMap2);
        Set set3 = x;
        Set set4 = z;
        LinkedHashSet linkedHashSetF = SetsKt.f(set3, set4);
        ClassId classId = v;
        SetsKt.g(linkedHashSetF, classId);
        new ClassId(f73700f, Name.e("Continuation"));
        StandardClassIdsKt.c("Iterator");
        StandardClassIdsKt.c("Iterable");
        StandardClassIdsKt.c("Collection");
        StandardClassIdsKt.c("List");
        StandardClassIdsKt.c("ListIterator");
        StandardClassIdsKt.c("Set");
        ClassId classIdC = StandardClassIdsKt.c("Map");
        StandardClassIdsKt.c("AbstractMap");
        StandardClassIdsKt.c("MutableIterator");
        StandardClassIdsKt.c("CharIterator");
        StandardClassIdsKt.c("MutableIterable");
        StandardClassIdsKt.c("MutableCollection");
        A = StandardClassIdsKt.c("MutableList");
        StandardClassIdsKt.c("MutableListIterator");
        B = StandardClassIdsKt.c("MutableSet");
        ClassId classIdC2 = StandardClassIdsKt.c("MutableMap");
        C = classIdC2;
        classIdC.d(Name.e("Entry"));
        classIdC2.d(Name.e("MutableEntry"));
        StandardClassIdsKt.b("Result");
        FqName fqName2 = d;
        new ClassId(fqName2, Name.e("IntRange"));
        new ClassId(fqName2, Name.e("LongRange"));
        new ClassId(fqName2, Name.e("CharRange"));
        FqName fqName3 = f73699e;
        new ClassId(fqName3, Name.e("AnnotationRetention"));
        new ClassId(fqName3, Name.e("AnnotationTarget"));
        StandardClassIdsKt.b("DeprecationLevel");
        D = new ClassId(g, Name.e("EnumEntries"));
        ClassId classIdA = StandardClassIdsKt.a("AtomicBoolean");
        ClassId classIdA2 = StandardClassIdsKt.a("AtomicInt");
        ClassId classIdA3 = StandardClassIdsKt.a("AtomicLong");
        StandardClassIdsKt.a("AtomicReference");
        Pair pair = new Pair(o, classIdA);
        ClassId classId2 = p;
        Pair pair2 = new Pair(classId2, classIdA2);
        ClassId classId3 = q;
        E = MapsKt.i(pair, pair2, new Pair(classId3, classIdA3));
        StandardClassIdsKt.a("AtomicArray");
        F = MapsKt.i(new Pair(classId2, StandardClassIdsKt.a("AtomicIntArray")), new Pair(classId3, StandardClassIdsKt.a("AtomicLongArray")));
        SetsKt.g(SetsKt.g(SetsKt.g(SetsKt.g(SetsKt.f(set3, set4), classId), f73704k), l), m);
    }
}
