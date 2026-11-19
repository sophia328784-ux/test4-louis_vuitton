package kotlin.reflect.jvm.internal.impl.load.java;

import com.appsflyer.sdk_base.referrer.Payload;
import defpackage.fc;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.load.kotlin.SignatureBuildingComponents;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;

/* JADX INFO: loaded from: classes4.dex */
public class SpecialGenericSignatures {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f72896a = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ArrayList f72897b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ArrayList f72898c;
    public static final Map d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final LinkedHashMap f72899e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Set f72900f;
    public static final Set g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Companion.NameAndSignature f72901h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Map f72902i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final LinkedHashMap f72903j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final HashSet f72904k;
    public static final LinkedHashMap l;

    public static final class Companion {

        public static final class NameAndSignature {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f72905a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final Name f72906b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final String f72907c;
            public final String d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final String f72908e;

            public NameAndSignature(String str, Name name, String str2, String str3) {
                str.getClass();
                name.getClass();
                str2.getClass();
                str3.getClass();
                this.f72905a = str;
                this.f72906b = name;
                this.f72907c = str2;
                this.d = str3;
                this.f72908e = SignatureBuildingComponents.f(str, name + '(' + str2 + ')' + str3);
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof NameAndSignature)) {
                    return false;
                }
                NameAndSignature nameAndSignature = (NameAndSignature) obj;
                return Intrinsics.c(this.f72905a, nameAndSignature.f72905a) && Intrinsics.c(this.f72906b, nameAndSignature.f72906b) && Intrinsics.c(this.f72907c, nameAndSignature.f72907c) && Intrinsics.c(this.d, nameAndSignature.d);
            }

            public final int hashCode() {
                return this.d.hashCode() + fc.b((this.f72906b.hashCode() + (this.f72905a.hashCode() * 31)) * 31, 31, this.f72907c);
            }

            public final String toString() {
                StringBuilder sb = new StringBuilder("NameAndSignature(classInternalName=");
                sb.append(this.f72905a);
                sb.append(", name=");
                sb.append(this.f72906b);
                sb.append(", parameters=");
                sb.append(this.f72907c);
                sb.append(", returnType=");
                return fc.l(sb, this.d, ')');
            }
        }

        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static final NameAndSignature a(Companion companion, String str, String str2, String str3, String str4) {
            companion.getClass();
            return new NameAndSignature(str, Name.e(str2), str3, str4);
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 kotlin.reflect.jvm.internal.impl.load.java.SpecialGenericSignatures$SpecialSignatureInfo[], still in use, count: 1, list:
      (r0v1 kotlin.reflect.jvm.internal.impl.load.java.SpecialGenericSignatures$SpecialSignatureInfo[]) from 0x0029: INVOKE (r0v1 kotlin.reflect.jvm.internal.impl.load.java.SpecialGenericSignatures$SpecialSignatureInfo[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class SpecialSignatureInfo {
        ONE_COLLECTION_PARAMETER("Ljava/util/Collection<+Ljava/lang/Object;>;", false),
        OBJECT_PARAMETER_NON_GENERIC(null, true),
        OBJECT_PARAMETER_GENERIC("Ljava/lang/Object;", true);

        private static final /* synthetic */ EnumEntries $ENTRIES;
        private final boolean isObjectReplacedWithTypeParameter;
        private final String valueParametersSignature;

        static {
            $ENTRIES = EnumEntriesKt.a(specialSignatureInfoArr);
        }

        public SpecialSignatureInfo(String str, boolean z) {
            super(str, i);
            this.valueParametersSignature = str;
            this.isObjectReplacedWithTypeParameter = z;
        }

        public static SpecialSignatureInfo valueOf(String str) {
            return (SpecialSignatureInfo) Enum.valueOf(SpecialSignatureInfo.class, str);
        }

        public static SpecialSignatureInfo[] values() {
            return (SpecialSignatureInfo[]) $VALUES.clone();
        }
    }

    static {
        Set<String> setZ = ArraysKt.Z(new String[]{"containsAll", "removeAll", "retainAll"});
        ArrayList arrayList = new ArrayList(CollectionsKt.t(setZ, 10));
        for (String str : setZ) {
            Companion companion = f72896a;
            String strD = JvmPrimitiveType.BOOLEAN.d();
            strD.getClass();
            arrayList.add(Companion.a(companion, "java/util/Collection", str, "Ljava/util/Collection;", strD));
        }
        f72897b = arrayList;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((Companion.NameAndSignature) it.next()).f72908e);
        }
        f72898c = arrayList2;
        ArrayList arrayList3 = f72897b;
        ArrayList arrayList4 = new ArrayList(CollectionsKt.t(arrayList3, 10));
        Iterator it2 = arrayList3.iterator();
        while (it2.hasNext()) {
            arrayList4.add(((Companion.NameAndSignature) it2.next()).f72906b.b());
        }
        Companion companion2 = f72896a;
        String strConcat = "java/util/".concat("Collection");
        JvmPrimitiveType jvmPrimitiveType = JvmPrimitiveType.BOOLEAN;
        String strD2 = jvmPrimitiveType.d();
        strD2.getClass();
        Companion.NameAndSignature nameAndSignatureA = Companion.a(companion2, strConcat, "contains", "Ljava/lang/Object;", strD2);
        TypeSafeBarrierDescription typeSafeBarrierDescription = TypeSafeBarrierDescription.FALSE;
        Pair pair = new Pair(nameAndSignatureA, typeSafeBarrierDescription);
        String strConcat2 = "java/util/".concat("Collection");
        String strD3 = jvmPrimitiveType.d();
        strD3.getClass();
        Pair pair2 = new Pair(Companion.a(companion2, strConcat2, "remove", "Ljava/lang/Object;", strD3), typeSafeBarrierDescription);
        String strConcat3 = "java/util/".concat("Map");
        String strD4 = jvmPrimitiveType.d();
        strD4.getClass();
        Pair pair3 = new Pair(Companion.a(companion2, strConcat3, "containsKey", "Ljava/lang/Object;", strD4), typeSafeBarrierDescription);
        String strConcat4 = "java/util/".concat("Map");
        String strD5 = jvmPrimitiveType.d();
        strD5.getClass();
        Pair pair4 = new Pair(Companion.a(companion2, strConcat4, "containsValue", "Ljava/lang/Object;", strD5), typeSafeBarrierDescription);
        String strConcat5 = "java/util/".concat("Map");
        String strD6 = jvmPrimitiveType.d();
        strD6.getClass();
        Pair pair5 = new Pair(Companion.a(companion2, strConcat5, "remove", "Ljava/lang/Object;Ljava/lang/Object;", strD6), typeSafeBarrierDescription);
        Pair pair6 = new Pair(Companion.a(companion2, "java/util/".concat("Map"), "getOrDefault", "Ljava/lang/Object;Ljava/lang/Object;", "Ljava/lang/Object;"), TypeSafeBarrierDescription.MAP_GET_OR_DEFAULT);
        Companion.NameAndSignature nameAndSignatureA2 = Companion.a(companion2, "java/util/".concat("Map"), "get", "Ljava/lang/Object;", "Ljava/lang/Object;");
        TypeSafeBarrierDescription typeSafeBarrierDescription2 = TypeSafeBarrierDescription.NULL;
        Pair pair7 = new Pair(nameAndSignatureA2, typeSafeBarrierDescription2);
        Pair pair8 = new Pair(Companion.a(companion2, "java/util/".concat("Map"), "remove", "Ljava/lang/Object;", "Ljava/lang/Object;"), typeSafeBarrierDescription2);
        String strConcat6 = "java/util/".concat("List");
        JvmPrimitiveType jvmPrimitiveType2 = JvmPrimitiveType.INT;
        String strD7 = jvmPrimitiveType2.d();
        strD7.getClass();
        Companion.NameAndSignature nameAndSignatureA3 = Companion.a(companion2, strConcat6, "indexOf", "Ljava/lang/Object;", strD7);
        TypeSafeBarrierDescription typeSafeBarrierDescription3 = TypeSafeBarrierDescription.INDEX;
        Pair pair9 = new Pair(nameAndSignatureA3, typeSafeBarrierDescription3);
        String strConcat7 = "java/util/".concat("List");
        String strD8 = jvmPrimitiveType2.d();
        strD8.getClass();
        Map mapI = MapsKt.i(pair, pair2, pair3, pair4, pair5, pair6, pair7, pair8, pair9, new Pair(Companion.a(companion2, strConcat7, "lastIndexOf", "Ljava/lang/Object;", strD8), typeSafeBarrierDescription3));
        d = mapI;
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.g(mapI.size()));
        for (Map.Entry entry : mapI.entrySet()) {
            linkedHashMap.put(((Companion.NameAndSignature) entry.getKey()).f72908e, entry.getValue());
        }
        f72899e = linkedHashMap;
        LinkedHashSet linkedHashSetF = SetsKt.f(d.keySet(), f72897b);
        ArrayList arrayList5 = new ArrayList(CollectionsKt.t(linkedHashSetF, 10));
        Iterator it3 = linkedHashSetF.iterator();
        while (it3.hasNext()) {
            arrayList5.add(((Companion.NameAndSignature) it3.next()).f72906b);
        }
        f72900f = CollectionsKt.B0(arrayList5);
        ArrayList arrayList6 = new ArrayList(CollectionsKt.t(linkedHashSetF, 10));
        Iterator it4 = linkedHashSetF.iterator();
        while (it4.hasNext()) {
            arrayList6.add(((Companion.NameAndSignature) it4.next()).f72908e);
        }
        g = CollectionsKt.B0(arrayList6);
        Companion companion3 = f72896a;
        JvmPrimitiveType jvmPrimitiveType3 = JvmPrimitiveType.INT;
        String strD9 = jvmPrimitiveType3.d();
        strD9.getClass();
        Companion.NameAndSignature nameAndSignatureA4 = Companion.a(companion3, "java/util/List", "removeAt", strD9, "Ljava/lang/Object;");
        f72901h = nameAndSignatureA4;
        String strConcat8 = "java/lang/".concat("Number");
        String strD10 = JvmPrimitiveType.BYTE.d();
        strD10.getClass();
        Pair pair10 = new Pair(Companion.a(companion3, strConcat8, "toByte", "", strD10), Name.e("byteValue"));
        String strConcat9 = "java/lang/".concat("Number");
        String strD11 = JvmPrimitiveType.SHORT.d();
        strD11.getClass();
        Pair pair11 = new Pair(Companion.a(companion3, strConcat9, "toShort", "", strD11), Name.e("shortValue"));
        String strConcat10 = "java/lang/".concat("Number");
        String strD12 = jvmPrimitiveType3.d();
        strD12.getClass();
        Pair pair12 = new Pair(Companion.a(companion3, strConcat10, "toInt", "", strD12), Name.e("intValue"));
        String strConcat11 = "java/lang/".concat("Number");
        String strD13 = JvmPrimitiveType.LONG.d();
        strD13.getClass();
        Pair pair13 = new Pair(Companion.a(companion3, strConcat11, "toLong", "", strD13), Name.e("longValue"));
        String strConcat12 = "java/lang/".concat("Number");
        String strD14 = JvmPrimitiveType.FLOAT.d();
        strD14.getClass();
        Pair pair14 = new Pair(Companion.a(companion3, strConcat12, "toFloat", "", strD14), Name.e("floatValue"));
        String strConcat13 = "java/lang/".concat("Number");
        String strD15 = JvmPrimitiveType.DOUBLE.d();
        strD15.getClass();
        Pair pair15 = new Pair(Companion.a(companion3, strConcat13, "toDouble", "", strD15), Name.e("doubleValue"));
        Pair pair16 = new Pair(nameAndSignatureA4, Name.e("remove"));
        String strConcat14 = "java/lang/".concat("CharSequence");
        String strD16 = jvmPrimitiveType3.d();
        strD16.getClass();
        String strD17 = JvmPrimitiveType.CHAR.d();
        strD17.getClass();
        Map mapI2 = MapsKt.i(pair10, pair11, pair12, pair13, pair14, pair15, pair16, new Pair(Companion.a(companion3, strConcat14, "get", strD16, strD17), Name.e("charAt")), new Pair(Companion.a(companion3, "java/util/concurrent/atomic/".concat("AtomicInteger"), "load", "", "I"), Name.e("get")), new Pair(Companion.a(companion3, "java/util/concurrent/atomic/".concat("AtomicInteger"), Payload.TYPE_STORE, "I", "V"), Name.e("set")), new Pair(Companion.a(companion3, "java/util/concurrent/atomic/".concat("AtomicInteger"), "exchange", "I", "I"), Name.e("getAndSet")), new Pair(Companion.a(companion3, "java/util/concurrent/atomic/".concat("AtomicInteger"), "fetchAndAdd", "I", "I"), Name.e("getAndAdd")), new Pair(Companion.a(companion3, "java/util/concurrent/atomic/".concat("AtomicInteger"), "addAndFetch", "I", "I"), Name.e("addAndGet")), new Pair(Companion.a(companion3, "java/util/concurrent/atomic/".concat("AtomicLong"), "load", "", "J"), Name.e("get")), new Pair(Companion.a(companion3, "java/util/concurrent/atomic/".concat("AtomicLong"), Payload.TYPE_STORE, "J", "V"), Name.e("set")), new Pair(Companion.a(companion3, "java/util/concurrent/atomic/".concat("AtomicLong"), "exchange", "J", "J"), Name.e("getAndSet")), new Pair(Companion.a(companion3, "java/util/concurrent/atomic/".concat("AtomicLong"), "fetchAndAdd", "J", "J"), Name.e("getAndAdd")), new Pair(Companion.a(companion3, "java/util/concurrent/atomic/".concat("AtomicLong"), "addAndFetch", "J", "J"), Name.e("addAndGet")), new Pair(Companion.a(companion3, "java/util/concurrent/atomic/".concat("AtomicBoolean"), "load", "", "Z"), Name.e("get")), new Pair(Companion.a(companion3, "java/util/concurrent/atomic/".concat("AtomicBoolean"), Payload.TYPE_STORE, "Z", "V"), Name.e("set")), new Pair(Companion.a(companion3, "java/util/concurrent/atomic/".concat("AtomicBoolean"), "exchange", "Z", "Z"), Name.e("getAndSet")), new Pair(Companion.a(companion3, "java/util/concurrent/atomic/".concat("AtomicReference"), "load", "", "Ljava/lang/Object;"), Name.e("get")), new Pair(Companion.a(companion3, "java/util/concurrent/atomic/".concat("AtomicReference"), Payload.TYPE_STORE, "Ljava/lang/Object;", "V"), Name.e("set")), new Pair(Companion.a(companion3, "java/util/concurrent/atomic/".concat("AtomicReference"), "exchange", "Ljava/lang/Object;", "Ljava/lang/Object;"), Name.e("getAndSet")), new Pair(Companion.a(companion3, "java/util/concurrent/atomic/".concat("AtomicIntegerArray"), "loadAt", "I", "I"), Name.e("get")), new Pair(Companion.a(companion3, "java/util/concurrent/atomic/".concat("AtomicIntegerArray"), "storeAt", "II", "V"), Name.e("set")), new Pair(Companion.a(companion3, "java/util/concurrent/atomic/".concat("AtomicIntegerArray"), "exchangeAt", "II", "I"), Name.e("getAndSet")), new Pair(Companion.a(companion3, "java/util/concurrent/atomic/".concat("AtomicIntegerArray"), "compareAndSetAt", "III", "Z"), Name.e("compareAndSet")), new Pair(Companion.a(companion3, "java/util/concurrent/atomic/".concat("AtomicIntegerArray"), "fetchAndAddAt", "II", "I"), Name.e("getAndAdd")), new Pair(Companion.a(companion3, "java/util/concurrent/atomic/".concat("AtomicIntegerArray"), "addAndFetchAt", "II", "I"), Name.e("addAndGet")), new Pair(Companion.a(companion3, "java/util/concurrent/atomic/".concat("AtomicLongArray"), "loadAt", "I", "J"), Name.e("get")), new Pair(Companion.a(companion3, "java/util/concurrent/atomic/".concat("AtomicLongArray"), "storeAt", "IJ", "V"), Name.e("set")), new Pair(Companion.a(companion3, "java/util/concurrent/atomic/".concat("AtomicLongArray"), "exchangeAt", "IJ", "J"), Name.e("getAndSet")), new Pair(Companion.a(companion3, "java/util/concurrent/atomic/".concat("AtomicLongArray"), "compareAndSetAt", "IJJ", "Z"), Name.e("compareAndSet")), new Pair(Companion.a(companion3, "java/util/concurrent/atomic/".concat("AtomicLongArray"), "fetchAndAddAt", "IJ", "J"), Name.e("getAndAdd")), new Pair(Companion.a(companion3, "java/util/concurrent/atomic/".concat("AtomicLongArray"), "addAndFetchAt", "IJ", "J"), Name.e("addAndGet")), new Pair(Companion.a(companion3, "java/util/concurrent/atomic/".concat("AtomicReferenceArray"), "loadAt", "I", "Ljava/lang/Object;"), Name.e("get")), new Pair(Companion.a(companion3, "java/util/concurrent/atomic/".concat("AtomicReferenceArray"), "storeAt", "ILjava/lang/Object;", "V"), Name.e("set")), new Pair(Companion.a(companion3, "java/util/concurrent/atomic/".concat("AtomicReferenceArray"), "exchangeAt", "ILjava/lang/Object;", "Ljava/lang/Object;"), Name.e("getAndSet")), new Pair(Companion.a(companion3, "java/util/concurrent/atomic/".concat("AtomicReferenceArray"), "compareAndSetAt", "ILjava/lang/Object;Ljava/lang/Object;", "Z"), Name.e("compareAndSet")));
        f72902i = mapI2;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(MapsKt.g(mapI2.size()));
        for (Map.Entry entry2 : mapI2.entrySet()) {
            linkedHashMap2.put(((Companion.NameAndSignature) entry2.getKey()).f72908e, entry2.getValue());
        }
        f72903j = linkedHashMap2;
        Map map = f72902i;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Map.Entry entry3 : map.entrySet()) {
            Companion.NameAndSignature nameAndSignature = (Companion.NameAndSignature) entry3.getKey();
            Name name = (Name) entry3.getValue();
            String str2 = nameAndSignature.f72905a;
            String str3 = nameAndSignature.f72907c;
            String str4 = nameAndSignature.d;
            str2.getClass();
            name.getClass();
            str3.getClass();
            str4.getClass();
            linkedHashSet.add(new Companion.NameAndSignature(str2, name, str3, str4).f72908e);
        }
        Set setKeySet = f72902i.keySet();
        HashSet hashSet = new HashSet();
        Iterator it5 = setKeySet.iterator();
        while (it5.hasNext()) {
            hashSet.add(((Companion.NameAndSignature) it5.next()).f72906b);
        }
        f72904k = hashSet;
        Set<Map.Entry> setEntrySet = f72902i.entrySet();
        ArrayList<Pair> arrayList7 = new ArrayList(CollectionsKt.t(setEntrySet, 10));
        for (Map.Entry entry4 : setEntrySet) {
            arrayList7.add(new Pair(((Companion.NameAndSignature) entry4.getKey()).f72906b, entry4.getValue()));
        }
        int iG = MapsKt.g(CollectionsKt.t(arrayList7, 10));
        if (iG < 16) {
            iG = 16;
        }
        LinkedHashMap linkedHashMap3 = new LinkedHashMap(iG);
        for (Pair pair17 : arrayList7) {
            linkedHashMap3.put((Name) pair17.f71706c, (Name) pair17.f71705b);
        }
        l = linkedHashMap3;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class TypeSafeBarrierDescription {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ TypeSafeBarrierDescription[] $VALUES;
        public static final TypeSafeBarrierDescription FALSE;
        public static final TypeSafeBarrierDescription INDEX;
        public static final TypeSafeBarrierDescription MAP_GET_OR_DEFAULT;
        public static final TypeSafeBarrierDescription NULL;
        private final Object defaultValue;

        public static final class MAP_GET_OR_DEFAULT extends TypeSafeBarrierDescription {
        }

        static {
            DefaultConstructorMarker defaultConstructorMarker = null;
            TypeSafeBarrierDescription typeSafeBarrierDescription = new TypeSafeBarrierDescription("NULL", 0, null);
            NULL = typeSafeBarrierDescription;
            TypeSafeBarrierDescription typeSafeBarrierDescription2 = new TypeSafeBarrierDescription("INDEX", 1, -1);
            INDEX = typeSafeBarrierDescription2;
            TypeSafeBarrierDescription typeSafeBarrierDescription3 = new TypeSafeBarrierDescription("FALSE", 2, Boolean.FALSE);
            FALSE = typeSafeBarrierDescription3;
            MAP_GET_OR_DEFAULT map_get_or_default = new MAP_GET_OR_DEFAULT("MAP_GET_OR_DEFAULT", 3, defaultConstructorMarker, defaultConstructorMarker);
            MAP_GET_OR_DEFAULT = map_get_or_default;
            TypeSafeBarrierDescription[] typeSafeBarrierDescriptionArr = {typeSafeBarrierDescription, typeSafeBarrierDescription2, typeSafeBarrierDescription3, map_get_or_default};
            $VALUES = typeSafeBarrierDescriptionArr;
            $ENTRIES = EnumEntriesKt.a(typeSafeBarrierDescriptionArr);
        }

        public TypeSafeBarrierDescription(String str, int i2, Object obj) {
            super(str, i2);
            this.defaultValue = obj;
        }

        public static TypeSafeBarrierDescription valueOf(String str) {
            return (TypeSafeBarrierDescription) Enum.valueOf(TypeSafeBarrierDescription.class, str);
        }

        public static TypeSafeBarrierDescription[] values() {
            return (TypeSafeBarrierDescription[]) $VALUES.clone();
        }

        public /* synthetic */ TypeSafeBarrierDescription(String str, int i2, Object obj, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, i2, obj);
        }
    }
}
