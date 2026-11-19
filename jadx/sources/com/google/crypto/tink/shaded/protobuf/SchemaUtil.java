package com.google.crypto.tink.shaded.protobuf;

import defpackage.x1;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
@CheckReturnValue
abstract class SchemaUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Class f34235a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final UnknownFieldSchema f34236b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final UnknownFieldSchema f34237c;
    public static final UnknownFieldSetLiteSchema d;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.crypto.tink.shaded.protobuf.GeneratedMessageV3");
        } catch (Throwable unused) {
            cls = null;
        }
        f34235a = cls;
        f34236b = x(false);
        f34237c = x(true);
        d = new UnknownFieldSetLiteSchema();
    }

    public static boolean A(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static Object B(Object obj, int i2, int i3, Object obj2, UnknownFieldSchema unknownFieldSchema) {
        if (obj2 == null) {
            obj2 = unknownFieldSchema.a(obj);
        }
        ((UnknownFieldSetLiteSchema) unknownFieldSchema).getClass();
        ((UnknownFieldSetLite) obj2).d(i2 << 3, Long.valueOf(i3));
        return obj2;
    }

    public static void C(int i2, List list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.C(list, i2, z);
    }

    public static void D(int i2, List list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.i(list, i2, z);
    }

    public static void E(int i2, List list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.t(list, i2, z);
    }

    public static void F(int i2, List list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.D(list, i2, z);
    }

    public static void G(int i2, List list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.n(list, i2, z);
    }

    public static void H(int i2, List list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.G(list, i2, z);
    }

    public static void I(int i2, List list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.h(list, i2, z);
    }

    public static void J(int i2, List list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.j(list, i2, z);
    }

    public static void K(int i2, List list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.k(list, i2, z);
    }

    public static void L(int i2, List list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.A(list, i2, z);
    }

    public static void M(int i2, List list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.u(list, i2, z);
    }

    public static void N(int i2, List list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.g(list, i2, z);
    }

    public static void O(int i2, List list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.B(list, i2, z);
    }

    public static void P(int i2, List list, Writer writer, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.c(list, i2, z);
    }

    public static int a(int i2, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i3 = CodedOutputStream.i(i2) * size;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += CodedOutputStream.b((ByteString) list.get(i4));
        }
        return i3;
    }

    public static int b(int i2, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (CodedOutputStream.i(i2) * size) + c(list);
    }

    public static int c(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof IntArrayList) {
            IntArrayList intArrayList = (IntArrayList) list;
            if (size <= 0) {
                return 0;
            }
            intArrayList.i(0);
            throw null;
        }
        int iF = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iF += CodedOutputStream.f(((Integer) list.get(i2)).intValue());
        }
        return iF;
    }

    public static int d(int i2, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return CodedOutputStream.c(i2) * size;
    }

    public static int e(List list) {
        return list.size() * 4;
    }

    public static int f(int i2, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return CodedOutputStream.d(i2) * size;
    }

    public static int g(List list) {
        return list.size() * 8;
    }

    public static int h(int i2, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (CodedOutputStream.i(i2) * size) + i(list);
    }

    public static int i(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof IntArrayList) {
            IntArrayList intArrayList = (IntArrayList) list;
            if (size <= 0) {
                return 0;
            }
            intArrayList.i(0);
            throw null;
        }
        int iF = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iF += CodedOutputStream.f(((Integer) list.get(i2)).intValue());
        }
        return iF;
    }

    public static int j(int i2, List list) {
        if (list.size() == 0) {
            return 0;
        }
        return (CodedOutputStream.i(i2) * list.size()) + k(list);
    }

    public static int k(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof LongArrayList) {
            LongArrayList longArrayList = (LongArrayList) list;
            if (size <= 0) {
                return 0;
            }
            longArrayList.i(0);
            throw null;
        }
        int iL = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iL += CodedOutputStream.l(((Long) list.get(i2)).longValue());
        }
        return iL;
    }

    public static int l(int i2, Object obj, Schema schema) {
        if (obj instanceof LazyFieldLite) {
            return CodedOutputStream.g((LazyFieldLite) obj) + CodedOutputStream.i(i2);
        }
        int i3 = CodedOutputStream.i(i2);
        int iJ = ((AbstractMessageLite) ((MessageLite) obj)).j(schema);
        return CodedOutputStream.k(iJ) + iJ + i3;
    }

    public static int m(int i2, List list, Schema schema) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i3 = CodedOutputStream.i(i2) * size;
        for (int i4 = 0; i4 < size; i4++) {
            Object obj = list.get(i4);
            if (obj instanceof LazyFieldLite) {
                i3 = CodedOutputStream.g((LazyFieldLite) obj) + i3;
            } else {
                int iJ = ((AbstractMessageLite) ((MessageLite) obj)).j(schema);
                i3 = CodedOutputStream.k(iJ) + iJ + i3;
            }
        }
        return i3;
    }

    public static int n(int i2, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (CodedOutputStream.i(i2) * size) + o(list);
    }

    public static int o(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof IntArrayList) {
            IntArrayList intArrayList = (IntArrayList) list;
            if (size <= 0) {
                return 0;
            }
            intArrayList.i(0);
            throw null;
        }
        int iK = 0;
        for (int i2 = 0; i2 < size; i2++) {
            int iIntValue = ((Integer) list.get(i2)).intValue();
            iK += CodedOutputStream.k((iIntValue >> 31) ^ (iIntValue << 1));
        }
        return iK;
    }

    public static int p(int i2, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (CodedOutputStream.i(i2) * size) + q(list);
    }

    public static int q(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof LongArrayList) {
            LongArrayList longArrayList = (LongArrayList) list;
            if (size <= 0) {
                return 0;
            }
            longArrayList.i(0);
            throw null;
        }
        int iL = 0;
        for (int i2 = 0; i2 < size; i2++) {
            long jLongValue = ((Long) list.get(i2)).longValue();
            iL += CodedOutputStream.l((jLongValue >> 63) ^ (jLongValue << 1));
        }
        return iL;
    }

    public static int r(int i2, List list) {
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        int i4 = CodedOutputStream.i(i2) * size;
        if (!(list instanceof LazyStringList)) {
            while (i3 < size) {
                Object obj = list.get(i3);
                if (obj instanceof ByteString) {
                    int size2 = ((ByteString) obj).size();
                    i4 = CodedOutputStream.k(size2) + size2 + i4;
                } else {
                    i4 = CodedOutputStream.h((String) obj) + i4;
                }
                i3++;
            }
            return i4;
        }
        LazyStringList lazyStringList = (LazyStringList) list;
        while (i3 < size) {
            Object objL1 = lazyStringList.L1(i3);
            if (objL1 instanceof ByteString) {
                int size3 = ((ByteString) objL1).size();
                i4 = CodedOutputStream.k(size3) + size3 + i4;
            } else {
                i4 = CodedOutputStream.h((String) objL1) + i4;
            }
            i3++;
        }
        return i4;
    }

    public static int s(int i2, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (CodedOutputStream.i(i2) * size) + t(list);
    }

    public static int t(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof IntArrayList) {
            IntArrayList intArrayList = (IntArrayList) list;
            if (size <= 0) {
                return 0;
            }
            intArrayList.i(0);
            throw null;
        }
        int iK = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iK += CodedOutputStream.k(((Integer) list.get(i2)).intValue());
        }
        return iK;
    }

    public static int u(int i2, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (CodedOutputStream.i(i2) * size) + v(list);
    }

    public static int v(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof LongArrayList) {
            LongArrayList longArrayList = (LongArrayList) list;
            if (size <= 0) {
                return 0;
            }
            longArrayList.i(0);
            throw null;
        }
        int iL = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iL += CodedOutputStream.l(((Long) list.get(i2)).longValue());
        }
        return iL;
    }

    public static Object w(Object obj, int i2, List list, Internal.EnumVerifier enumVerifier, Object obj2, UnknownFieldSchema unknownFieldSchema) {
        if (enumVerifier == null) {
            return obj2;
        }
        if (!(list instanceof RandomAccess)) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                int iIntValue = ((Integer) it.next()).intValue();
                if (!enumVerifier.a()) {
                    obj2 = B(obj, i2, iIntValue, obj2, unknownFieldSchema);
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
                obj2 = B(obj, i2, iIntValue2, obj2, unknownFieldSchema);
            }
        }
        if (i3 != size) {
            list.subList(i3, size).clear();
        }
        return obj2;
    }

    public static UnknownFieldSchema x(boolean z) {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.crypto.tink.shaded.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            cls = null;
        }
        if (cls != null) {
            try {
                return (UnknownFieldSchema) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
            } catch (Throwable unused2) {
            }
        }
        return null;
    }

    public static void y(ExtensionSchema extensionSchema, Object obj, Object obj2) {
        ((ExtensionSchemaLite) extensionSchema).getClass();
        SmallSortedMap.AnonymousClass1 anonymousClass1 = ((GeneratedMessageLite.ExtendableMessage) obj2).extensions.f34179a;
        if (anonymousClass1.isEmpty()) {
            return;
        }
        FieldSet fieldSetG = ((GeneratedMessageLite.ExtendableMessage) obj).G();
        fieldSetG.getClass();
        for (int i2 = 0; i2 < anonymousClass1.f34240c.size(); i2++) {
            fieldSetG.k(anonymousClass1.d(i2));
        }
        Iterator it = anonymousClass1.e().iterator();
        while (it.hasNext()) {
            fieldSetG.k((Map.Entry) it.next());
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
    public static void z(UnknownFieldSchema unknownFieldSchema, Object obj, Object obj2) {
        ((UnknownFieldSetLiteSchema) unknownFieldSchema).getClass();
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
        UnknownFieldSetLite unknownFieldSetLite = generatedMessageLite.unknownFields;
        UnknownFieldSetLite unknownFieldSetLite2 = ((GeneratedMessageLite) obj2).unknownFields;
        UnknownFieldSetLite unknownFieldSetLite3 = UnknownFieldSetLite.f34257f;
        if (!unknownFieldSetLite3.equals(unknownFieldSetLite2)) {
            if (unknownFieldSetLite3.equals(unknownFieldSetLite)) {
                int i2 = unknownFieldSetLite.f34258a + unknownFieldSetLite2.f34258a;
                int[] iArrCopyOf = Arrays.copyOf(unknownFieldSetLite.f34259b, i2);
                System.arraycopy(unknownFieldSetLite2.f34259b, 0, iArrCopyOf, unknownFieldSetLite.f34258a, unknownFieldSetLite2.f34258a);
                Object[] objArrCopyOf = Arrays.copyOf(unknownFieldSetLite.f34260c, i2);
                System.arraycopy(unknownFieldSetLite2.f34260c, 0, objArrCopyOf, unknownFieldSetLite.f34258a, unknownFieldSetLite2.f34258a);
                unknownFieldSetLite = new UnknownFieldSetLite(i2, iArrCopyOf, objArrCopyOf, true);
            } else {
                unknownFieldSetLite.getClass();
                if (!unknownFieldSetLite2.equals(unknownFieldSetLite3)) {
                    if (!unknownFieldSetLite.f34261e) {
                        x1.i();
                        return;
                    }
                    int i3 = unknownFieldSetLite.f34258a + unknownFieldSetLite2.f34258a;
                    unknownFieldSetLite.a(i3);
                    System.arraycopy(unknownFieldSetLite2.f34259b, 0, unknownFieldSetLite.f34259b, unknownFieldSetLite.f34258a, unknownFieldSetLite2.f34258a);
                    System.arraycopy(unknownFieldSetLite2.f34260c, 0, unknownFieldSetLite.f34260c, unknownFieldSetLite.f34258a, unknownFieldSetLite2.f34258a);
                    unknownFieldSetLite.f34258a = i3;
                }
            }
        }
        generatedMessageLite.unknownFields = unknownFieldSetLite;
    }
}
