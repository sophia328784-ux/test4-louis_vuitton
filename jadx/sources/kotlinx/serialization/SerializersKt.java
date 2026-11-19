package kotlinx.serialization;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.HashMapSerializer;
import kotlinx.serialization.internal.HashSetSerializer;
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.internal.LinkedHashSetSerializer;
import kotlinx.serialization.internal.MapEntrySerializer;
import kotlinx.serialization.internal.PairSerializer;
import kotlinx.serialization.internal.PlatformKt;
import kotlinx.serialization.internal.Platform_commonKt;
import kotlinx.serialization.internal.PrimitivesKt;
import kotlinx.serialization.internal.TripleSerializer;
import kotlinx.serialization.modules.SerializersModule;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"kotlinx/serialization/SerializersKt__SerializersJvmKt", "kotlinx/serialization/SerializersKt__SerializersKt"}, k = 4, mv = {2, 1, 0}, xi = 48)
public abstract class SerializersKt {
    public static final KSerializer a(KClass kClass, ArrayList arrayList, Function0 function0) {
        KSerializer arrayListSerializer;
        KSerializer pairSerializer;
        kClass.getClass();
        arrayList.getClass();
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        if (kClass.equals(reflectionFactory.b(Collection.class)) || kClass.equals(reflectionFactory.b(List.class)) || kClass.equals(reflectionFactory.b(List.class)) || kClass.equals(reflectionFactory.b(ArrayList.class))) {
            arrayListSerializer = new ArrayListSerializer((KSerializer) arrayList.get(0));
        } else if (kClass.equals(reflectionFactory.b(HashSet.class))) {
            arrayListSerializer = new HashSetSerializer((KSerializer) arrayList.get(0));
        } else if (kClass.equals(reflectionFactory.b(Set.class)) || kClass.equals(reflectionFactory.b(Set.class)) || kClass.equals(reflectionFactory.b(LinkedHashSet.class))) {
            arrayListSerializer = new LinkedHashSetSerializer((KSerializer) arrayList.get(0));
        } else if (kClass.equals(reflectionFactory.b(HashMap.class))) {
            arrayListSerializer = new HashMapSerializer((KSerializer) arrayList.get(0), (KSerializer) arrayList.get(1));
        } else if (kClass.equals(reflectionFactory.b(Map.class)) || kClass.equals(reflectionFactory.b(Map.class)) || kClass.equals(reflectionFactory.b(LinkedHashMap.class))) {
            arrayListSerializer = new LinkedHashMapSerializer((KSerializer) arrayList.get(0), (KSerializer) arrayList.get(1));
        } else {
            if (kClass.equals(reflectionFactory.b(Map.Entry.class))) {
                KSerializer kSerializer = (KSerializer) arrayList.get(0);
                KSerializer kSerializer2 = (KSerializer) arrayList.get(1);
                kSerializer.getClass();
                kSerializer2.getClass();
                pairSerializer = new MapEntrySerializer(kSerializer, kSerializer2);
            } else if (kClass.equals(reflectionFactory.b(Pair.class))) {
                KSerializer kSerializer3 = (KSerializer) arrayList.get(0);
                KSerializer kSerializer4 = (KSerializer) arrayList.get(1);
                kSerializer3.getClass();
                kSerializer4.getClass();
                pairSerializer = new PairSerializer(kSerializer3, kSerializer4);
            } else if (kClass.equals(reflectionFactory.b(Triple.class))) {
                KSerializer kSerializer5 = (KSerializer) arrayList.get(0);
                KSerializer kSerializer6 = (KSerializer) arrayList.get(1);
                KSerializer kSerializer7 = (KSerializer) arrayList.get(2);
                kSerializer5.getClass();
                kSerializer6.getClass();
                kSerializer7.getClass();
                arrayListSerializer = new TripleSerializer(kSerializer5, kSerializer6, kSerializer7);
            } else if (JvmClassMappingKt.b(kClass).isArray()) {
                Object objMo47invoke = function0.mo47invoke();
                objMo47invoke.getClass();
                arrayListSerializer = BuiltinSerializersKt.a((KClass) objMo47invoke, (KSerializer) arrayList.get(0));
            } else {
                arrayListSerializer = null;
            }
            arrayListSerializer = pairSerializer;
        }
        if (arrayListSerializer != null) {
            return arrayListSerializer;
        }
        KSerializer[] kSerializerArr = (KSerializer[]) arrayList.toArray(new KSerializer[0]);
        KSerializer[] kSerializerArr2 = (KSerializer[]) Arrays.copyOf(kSerializerArr, kSerializerArr.length);
        return PlatformKt.a(JvmClassMappingKt.b(kClass), (KSerializer[]) Arrays.copyOf(kSerializerArr2, kSerializerArr2.length));
    }

    public static final KSerializer b(KClass kClass) {
        kClass.getClass();
        KSerializer kSerializerD = d(kClass);
        if (kSerializerD != null) {
            return kSerializerD;
        }
        throw new SerializationException(Platform_commonKt.d(kClass));
    }

    public static final KSerializer c(SerializersModule serializersModule, Type type) {
        serializersModule.getClass();
        type.getClass();
        KSerializer kSerializerC = SerializersKt__SerializersJvmKt.c(serializersModule, type, true);
        if (kSerializerC != null) {
            return kSerializerC;
        }
        Class clsA = SerializersKt__SerializersJvmKt.a(type);
        clsA.getClass();
        throw new SerializationException(Platform_commonKt.d(Reflection.f71922a.b(clsA)));
    }

    public static final KSerializer d(KClass kClass) {
        kClass.getClass();
        KSerializer kSerializerA = PlatformKt.a(JvmClassMappingKt.b(kClass), (KSerializer[]) Arrays.copyOf(new KSerializer[0], 0));
        return kSerializerA == null ? (KSerializer) PrimitivesKt.f75673a.get(kClass) : kSerializerA;
    }

    public static final KSerializer e(SerializersModule serializersModule, KType kType) {
        serializersModule.getClass();
        kType.getClass();
        return SerializersKt__SerializersKt.a(serializersModule, kType, false);
    }

    public static final ArrayList f(SerializersModule serializersModule, List list, boolean z) {
        serializersModule.getClass();
        list.getClass();
        if (!z) {
            List list2 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                KSerializer kSerializerE = e(serializersModule, (KType) it.next());
                if (kSerializerE == null) {
                    return null;
                }
                arrayList.add(kSerializerE);
            }
            return arrayList;
        }
        List<KType> list3 = list;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list3, 10));
        for (KType kType : list3) {
            kType.getClass();
            KSerializer kSerializerA = SerializersKt__SerializersKt.a(serializersModule, kType, true);
            if (kSerializerA == null) {
                throw new SerializationException(Platform_commonKt.d(Platform_commonKt.c(kType)));
            }
            arrayList2.add(kSerializerA);
        }
        return arrayList2;
    }
}
