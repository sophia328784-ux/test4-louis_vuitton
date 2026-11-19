package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMap;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BuiltinSpecialProperties {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Map f72825a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final LinkedHashMap f72826b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Set f72827c;
    public static final Set d;

    static {
        FqNameUnsafe fqNameUnsafe = StandardNames.FqNames.f72278j;
        Pair pair = new Pair(fqNameUnsafe.a(Name.e("name")).i(), StandardNames.d);
        Pair pair2 = new Pair(fqNameUnsafe.a(Name.e("ordinal")).i(), Name.e("ordinal"));
        Pair pair3 = new Pair(BuiltinSpecialPropertiesKt.a("size", StandardNames.FqNames.C), Name.e("size"));
        FqName fqName = StandardNames.FqNames.G;
        Map mapI = MapsKt.i(pair, pair2, pair3, new Pair(BuiltinSpecialPropertiesKt.a("size", fqName), Name.e("size")), new Pair(StandardNames.FqNames.f72274e.a(Name.e("length")).i(), Name.e("length")), new Pair(BuiltinSpecialPropertiesKt.a("keys", fqName), Name.e("keySet")), new Pair(BuiltinSpecialPropertiesKt.a("values", fqName), Name.e("values")), new Pair(BuiltinSpecialPropertiesKt.a("entries", fqName), Name.e("entrySet")), new Pair(BuiltinSpecialPropertiesKt.a("size", StandardNames.FqNames.a0), Name.e("length")), new Pair(BuiltinSpecialPropertiesKt.a("size", StandardNames.FqNames.b0), Name.e("length")), new Pair(BuiltinSpecialPropertiesKt.a("size", StandardNames.FqNames.c0), Name.e("length")));
        f72825a = mapI;
        Set<Map.Entry> setEntrySet = mapI.entrySet();
        ArrayList<Pair> arrayList = new ArrayList(CollectionsKt.t(setEntrySet, 10));
        for (Map.Entry entry : setEntrySet) {
            arrayList.add(new Pair(((FqName) entry.getKey()).f73679a.g(), entry.getValue()));
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Pair pair4 : arrayList) {
            Name name = (Name) pair4.f71706c;
            Object arrayList2 = linkedHashMap.get(name);
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
                linkedHashMap.put(name, arrayList2);
            }
            ((List) arrayList2).add((Name) pair4.f71705b);
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(MapsKt.g(linkedHashMap.size()));
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            Object key = entry2.getKey();
            Iterable iterable = (Iterable) entry2.getValue();
            iterable.getClass();
            linkedHashMap2.put(key, CollectionsKt.y0(CollectionsKt.A0(iterable)));
        }
        f72826b = linkedHashMap2;
        Map map = f72825a;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Map.Entry entry3 : map.entrySet()) {
            String str = JavaToKotlinClassMap.f72305a;
            ClassId classIdF = JavaToKotlinClassMap.f(((FqName) entry3.getKey()).b().f73679a);
            classIdF.getClass();
            linkedHashSet.add(classIdF.a().a((Name) entry3.getValue()));
        }
        Set setKeySet = f72825a.keySet();
        f72827c = setKeySet;
        Set set = setKeySet;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.t(set, 10));
        Iterator it = set.iterator();
        while (it.hasNext()) {
            arrayList3.add(((FqName) it.next()).f73679a.g());
        }
        d = CollectionsKt.B0(arrayList3);
    }
}
