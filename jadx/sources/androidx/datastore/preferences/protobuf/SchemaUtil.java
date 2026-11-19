package androidx.datastore.preferences.protobuf;

import defpackage.tr;
import defpackage.x1;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
@CheckReturnValue
abstract class SchemaUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Class f12993a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final UnknownFieldSchema f12994b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final UnknownFieldSetLiteSchema f12995c;

    static {
        Class<?> cls;
        Class<?> cls2;
        Protobuf protobuf = Protobuf.f12985c;
        UnknownFieldSchema unknownFieldSchema = null;
        try {
            cls = Class.forName("androidx.datastore.preferences.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        f12993a = cls;
        try {
            Protobuf protobuf2 = Protobuf.f12985c;
            try {
                cls2 = Class.forName("androidx.datastore.preferences.protobuf.UnknownFieldSetSchema");
            } catch (Throwable unused2) {
                cls2 = null;
            }
            if (cls2 != null) {
                unknownFieldSchema = (UnknownFieldSchema) cls2.getConstructor(null).newInstance(null);
            }
        } catch (Throwable unused3) {
        }
        f12994b = unknownFieldSchema;
        f12995c = new UnknownFieldSetLiteSchema();
    }

    public static int a(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof IntArrayList) {
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int iG = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iG += CodedOutputStream.g(((Integer) list.get(i2)).intValue());
        }
        return iG;
    }

    public static int b(int i2, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (CodedOutputStream.e(i2) + 4) * size;
    }

    public static int c(int i2, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (CodedOutputStream.e(i2) + 8) * size;
    }

    public static int d(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof IntArrayList) {
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int iG = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iG += CodedOutputStream.g(((Integer) list.get(i2)).intValue());
        }
        return iG;
    }

    public static int e(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof LongArrayList) {
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int iG = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iG += CodedOutputStream.g(((Long) list.get(i2)).longValue());
        }
        return iG;
    }

    public static int f(List list) {
        int size = list.size();
        if (size != 0) {
            if (!(list instanceof IntArrayList)) {
                int iF = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    int iIntValue = ((Integer) list.get(i2)).intValue();
                    iF += CodedOutputStream.f((iIntValue >> 31) ^ (iIntValue << 1));
                }
                return iF;
            }
            tr.x(list);
            if (size > 0) {
                throw null;
            }
        }
        return 0;
    }

    public static int g(List list) {
        int size = list.size();
        if (size != 0) {
            if (!(list instanceof LongArrayList)) {
                int iG = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    long jLongValue = ((Long) list.get(i2)).longValue();
                    iG += CodedOutputStream.g((jLongValue >> 63) ^ (jLongValue << 1));
                }
                return iG;
            }
            tr.x(list);
            if (size > 0) {
                throw null;
            }
        }
        return 0;
    }

    public static int h(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof IntArrayList) {
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int iF = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iF += CodedOutputStream.f(((Integer) list.get(i2)).intValue());
        }
        return iF;
    }

    public static int i(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof LongArrayList) {
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int iG = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iG += CodedOutputStream.g(((Long) list.get(i2)).longValue());
        }
        return iG;
    }

    public static Object j(Object obj, int i2, List list, Internal.EnumVerifier enumVerifier, Object obj2, UnknownFieldSchema unknownFieldSchema) {
        if (enumVerifier == null) {
            return obj2;
        }
        if (!(list instanceof RandomAccess)) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                int iIntValue = ((Integer) it.next()).intValue();
                if (!enumVerifier.a()) {
                    obj2 = n(obj, i2, iIntValue, obj2, unknownFieldSchema);
                    it.remove();
                }
            }
            return obj2;
        }
        int size = list.size();
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            Integer num = (Integer) list.get(i4);
            int iIntValue2 = num.intValue();
            if (enumVerifier.a()) {
                if (i4 != i3) {
                    list.set(i3, num);
                }
                i3++;
            } else {
                obj2 = n(obj, i2, iIntValue2, obj2, unknownFieldSchema);
            }
        }
        if (i3 != size) {
            list.subList(i3, size).clear();
        }
        return obj2;
    }

    public static void k(ExtensionSchema extensionSchema, Object obj, Object obj2) {
        ((ExtensionSchemaLite) extensionSchema).getClass();
        SmallSortedMap.AnonymousClass1 anonymousClass1 = ((GeneratedMessageLite.ExtendableMessage) obj2).extensions.f12936a;
        if (anonymousClass1.isEmpty()) {
            return;
        }
        GeneratedMessageLite.ExtendableMessage extendableMessage = (GeneratedMessageLite.ExtendableMessage) obj;
        FieldSet<Object> fieldSet = extendableMessage.extensions;
        if (fieldSet.f12937b) {
            extendableMessage.extensions = fieldSet.clone();
        }
        FieldSet<Object> fieldSet2 = extendableMessage.extensions;
        fieldSet2.getClass();
        int size = anonymousClass1.f12997b.size();
        for (int i2 = 0; i2 < size; i2++) {
            fieldSet2.k(anonymousClass1.d(i2));
        }
        Iterator it = anonymousClass1.e().iterator();
        while (it.hasNext()) {
            fieldSet2.k((Map.Entry) it.next());
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void l(UnknownFieldSchema unknownFieldSchema, Object obj, Object obj2) {
        ((UnknownFieldSetLiteSchema) unknownFieldSchema).getClass();
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
        UnknownFieldSetLite unknownFieldSetLite = generatedMessageLite.unknownFields;
        UnknownFieldSetLite unknownFieldSetLite2 = ((GeneratedMessageLite) obj2).unknownFields;
        UnknownFieldSetLite unknownFieldSetLite3 = UnknownFieldSetLite.f13012f;
        if (!unknownFieldSetLite3.equals(unknownFieldSetLite2)) {
            if (unknownFieldSetLite3.equals(unknownFieldSetLite)) {
                int i2 = unknownFieldSetLite.f13013a + unknownFieldSetLite2.f13013a;
                int[] iArrCopyOf = Arrays.copyOf(unknownFieldSetLite.f13014b, i2);
                System.arraycopy(unknownFieldSetLite2.f13014b, 0, iArrCopyOf, unknownFieldSetLite.f13013a, unknownFieldSetLite2.f13013a);
                Object[] objArrCopyOf = Arrays.copyOf(unknownFieldSetLite.f13015c, i2);
                System.arraycopy(unknownFieldSetLite2.f13015c, 0, objArrCopyOf, unknownFieldSetLite.f13013a, unknownFieldSetLite2.f13013a);
                unknownFieldSetLite = new UnknownFieldSetLite(i2, iArrCopyOf, objArrCopyOf, true);
            } else {
                unknownFieldSetLite.getClass();
                if (!unknownFieldSetLite2.equals(unknownFieldSetLite3)) {
                    if (!unknownFieldSetLite.f13016e) {
                        x1.i();
                        return;
                    }
                    int i3 = unknownFieldSetLite.f13013a + unknownFieldSetLite2.f13013a;
                    unknownFieldSetLite.a(i3);
                    System.arraycopy(unknownFieldSetLite2.f13014b, 0, unknownFieldSetLite.f13014b, unknownFieldSetLite.f13013a, unknownFieldSetLite2.f13013a);
                    System.arraycopy(unknownFieldSetLite2.f13015c, 0, unknownFieldSetLite.f13015c, unknownFieldSetLite.f13013a, unknownFieldSetLite2.f13013a);
                    unknownFieldSetLite.f13013a = i3;
                }
            }
        }
        generatedMessageLite.unknownFields = unknownFieldSetLite;
    }

    public static boolean m(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static Object n(Object obj, int i2, int i3, Object obj2, UnknownFieldSchema unknownFieldSchema) {
        if (obj2 == null) {
            obj2 = unknownFieldSchema.a(obj);
        }
        ((UnknownFieldSetLiteSchema) unknownFieldSchema).getClass();
        ((UnknownFieldSetLite) obj2).c(i2 << 3, Long.valueOf(i3));
        return obj2;
    }
}
