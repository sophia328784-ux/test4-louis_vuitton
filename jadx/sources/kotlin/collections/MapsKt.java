package kotlin.collections;

import defpackage.o60;
import defpackage.zy0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.sequences.TransformingSequence;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"kotlin/collections/MapsKt__MapWithDefaultKt", "kotlin/collections/MapsKt__MapsJVMKt", "kotlin/collections/MapsKt__MapsKt", "kotlin/collections/MapsKt___MapsJvmKt", "kotlin/collections/MapsKt___MapsKt"}, k = 4, mv = {2, 4, 0}, xi = 49)
public abstract class MapsKt extends MapsKt___MapsKt {
    public static Map c() {
        EmptyMap emptyMap = EmptyMap.f71769b;
        emptyMap.getClass();
        return emptyMap;
    }

    public static Object d(Map map, Object obj) {
        map.getClass();
        if (map instanceof MapWithDefault) {
            return ((MapWithDefault) map).v();
        }
        Object obj2 = map.get(obj);
        if (obj2 != null || map.containsKey(obj)) {
            return obj2;
        }
        zy0.c(o60.n("Key ", obj, " is missing in the map."));
        return null;
    }

    public static HashMap e(Pair... pairArr) {
        HashMap map = new HashMap(g(pairArr.length));
        MapsKt__MapsKt.a(map, pairArr);
        return map;
    }

    public static LinkedHashMap f(Pair... pairArr) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(g(pairArr.length));
        MapsKt__MapsKt.a(linkedHashMap, pairArr);
        return linkedHashMap;
    }

    public static int g(int i2) {
        if (i2 < 0) {
            return i2;
        }
        if (i2 < 3) {
            return i2 + 1;
        }
        if (i2 < 1073741824) {
            return (int) ((i2 / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    public static Map h(Pair pair) {
        pair.getClass();
        Map mapSingletonMap = Collections.singletonMap(pair.f71705b, pair.f71706c);
        mapSingletonMap.getClass();
        return mapSingletonMap;
    }

    public static Map i(Pair... pairArr) {
        if (pairArr.length > 0) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(g(pairArr.length));
            MapsKt__MapsKt.a(linkedHashMap, pairArr);
            return linkedHashMap;
        }
        EmptyMap emptyMap = EmptyMap.f71769b;
        emptyMap.getClass();
        return emptyMap;
    }

    public static LinkedHashMap j(Pair... pairArr) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(g(pairArr.length));
        MapsKt__MapsKt.a(linkedHashMap, pairArr);
        return linkedHashMap;
    }

    public static LinkedHashMap k(Map map, Map map2) {
        map.getClass();
        map2.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.putAll(map2);
        return linkedHashMap;
    }

    public static Map l(Map map, Pair pair) {
        map.getClass();
        if (map.isEmpty()) {
            return h(pair);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.put(pair.f71705b, pair.f71706c);
        return linkedHashMap;
    }

    public static List m(Map map) {
        map.getClass();
        if (map.size() == 0) {
            return EmptyList.f71768b;
        }
        Iterator it = map.entrySet().iterator();
        if (!it.hasNext()) {
            return EmptyList.f71768b;
        }
        Map.Entry entry = (Map.Entry) it.next();
        if (!it.hasNext()) {
            return CollectionsKt.O(new Pair(entry.getKey(), entry.getValue()));
        }
        ArrayList arrayList = new ArrayList(map.size());
        arrayList.add(new Pair(entry.getKey(), entry.getValue()));
        do {
            Map.Entry entry2 = (Map.Entry) it.next();
            arrayList.add(new Pair(entry2.getKey(), entry2.getValue()));
        } while (it.hasNext());
        return arrayList;
    }

    public static Map n(List list) {
        list.getClass();
        if (list instanceof Collection) {
            List list2 = list;
            int size = list2.size();
            if (size == 0) {
                EmptyMap emptyMap = EmptyMap.f71769b;
                emptyMap.getClass();
                return emptyMap;
            }
            if (size == 1) {
                return h((Pair) (list instanceof List ? list.get(0) : list2.iterator().next()));
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(g(list2.size()));
            MapsKt__MapsKt.b(list, linkedHashMap);
            return linkedHashMap;
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        MapsKt__MapsKt.b(list, linkedHashMap2);
        int size2 = linkedHashMap2.size();
        if (size2 == 0) {
            EmptyMap emptyMap2 = EmptyMap.f71769b;
            emptyMap2.getClass();
            return emptyMap2;
        }
        if (size2 != 1) {
            return linkedHashMap2;
        }
        Map.Entry entry = (Map.Entry) linkedHashMap2.entrySet().iterator().next();
        Map mapSingletonMap = Collections.singletonMap(entry.getKey(), entry.getValue());
        mapSingletonMap.getClass();
        return mapSingletonMap;
    }

    public static Map o(Map map) {
        map.getClass();
        int size = map.size();
        if (size == 0) {
            EmptyMap emptyMap = EmptyMap.f71769b;
            emptyMap.getClass();
            return emptyMap;
        }
        if (size != 1) {
            return new LinkedHashMap(map);
        }
        Map.Entry entry = (Map.Entry) map.entrySet().iterator().next();
        Map mapSingletonMap = Collections.singletonMap(entry.getKey(), entry.getValue());
        mapSingletonMap.getClass();
        return mapSingletonMap;
    }

    public static Map p(TransformingSequence transformingSequence) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        TransformingSequence.AnonymousClass1 anonymousClass1 = new TransformingSequence.AnonymousClass1();
        while (anonymousClass1.f74508b.hasNext()) {
            Pair pair = (Pair) anonymousClass1.next();
            linkedHashMap.put(pair.f71705b, pair.f71706c);
        }
        int size = linkedHashMap.size();
        if (size == 0) {
            EmptyMap emptyMap = EmptyMap.f71769b;
            emptyMap.getClass();
            return emptyMap;
        }
        if (size != 1) {
            return linkedHashMap;
        }
        Map.Entry entry = (Map.Entry) linkedHashMap.entrySet().iterator().next();
        Map mapSingletonMap = Collections.singletonMap(entry.getKey(), entry.getValue());
        mapSingletonMap.getClass();
        return mapSingletonMap;
    }

    public static Map q(Pair[] pairArr) {
        int length = pairArr.length;
        if (length == 0) {
            EmptyMap emptyMap = EmptyMap.f71769b;
            emptyMap.getClass();
            return emptyMap;
        }
        if (length == 1) {
            return h(pairArr[0]);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(g(pairArr.length));
        MapsKt__MapsKt.a(linkedHashMap, pairArr);
        return linkedHashMap;
    }

    public static LinkedHashMap r(Map map) {
        map.getClass();
        return new LinkedHashMap(map);
    }
}
