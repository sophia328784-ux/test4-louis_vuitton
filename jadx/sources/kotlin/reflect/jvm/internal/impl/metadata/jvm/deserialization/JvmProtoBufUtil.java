package kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization;

import java.io.ByteArrayInputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoBufUtilKt;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoTypeTableUtilKt;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractParser;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLite;

/* JADX INFO: loaded from: classes4.dex */
public final class JvmProtoBufUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ExtensionRegistryLite f73672a;

    static {
        ExtensionRegistryLite extensionRegistryLite = new ExtensionRegistryLite();
        extensionRegistryLite.a(JvmProtoBuf.f73603a);
        extensionRegistryLite.a(JvmProtoBuf.f73604b);
        extensionRegistryLite.a(JvmProtoBuf.f73605c);
        extensionRegistryLite.a(JvmProtoBuf.d);
        extensionRegistryLite.a(JvmProtoBuf.f73606e);
        extensionRegistryLite.a(JvmProtoBuf.f73607f);
        extensionRegistryLite.a(JvmProtoBuf.g);
        extensionRegistryLite.a(JvmProtoBuf.f73608h);
        extensionRegistryLite.a(JvmProtoBuf.f73609i);
        extensionRegistryLite.a(JvmProtoBuf.f73610j);
        extensionRegistryLite.a(JvmProtoBuf.f73611k);
        extensionRegistryLite.a(JvmProtoBuf.l);
        f73672a = extensionRegistryLite;
    }

    public static JvmMemberSignature.Method a(ProtoBuf$Constructor protoBuf$Constructor, NameResolver nameResolver, TypeTable typeTable) {
        String strK;
        protoBuf$Constructor.getClass();
        nameResolver.getClass();
        typeTable.getClass();
        GeneratedMessageLite.GeneratedExtension generatedExtension = JvmProtoBuf.f73603a;
        generatedExtension.getClass();
        JvmProtoBuf.JvmMethodSignature jvmMethodSignature = (JvmProtoBuf.JvmMethodSignature) ProtoBufUtilKt.a(protoBuf$Constructor, generatedExtension);
        String string = (jvmMethodSignature == null || (jvmMethodSignature.f73623c & 1) != 1) ? "<init>" : nameResolver.getString(jvmMethodSignature.d);
        if (jvmMethodSignature == null || (jvmMethodSignature.f73623c & 2) != 2) {
            List list = protoBuf$Constructor.f73352f;
            list.getClass();
            List<ProtoBuf$ValueParameter> list2 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            for (ProtoBuf$ValueParameter protoBuf$ValueParameter : list2) {
                protoBuf$ValueParameter.getClass();
                String strE = e(ProtoTypeTableUtilKt.k(protoBuf$ValueParameter, typeTable), nameResolver);
                if (strE == null) {
                    return null;
                }
                arrayList.add(strE);
            }
            strK = CollectionsKt.K(arrayList, "", "(", ")V", null, 56);
        } else {
            strK = nameResolver.getString(jvmMethodSignature.f73624e);
        }
        return new JvmMemberSignature.Method(string, strK);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r4v2 java.lang.String, still in use, count: 2, list:
          (r4v2 java.lang.String) from 0x004a: IF  (r4v2 java.lang.String) == (null java.lang.String)  -> B:23:0x004c A[HIDDEN]
          (r4v2 java.lang.String) from 0x004d: PHI (r4 I:??) = (r4v2 java.lang.String), (r4v5 java.lang.String) binds: [B:22:0x004a, B:20:0x003b] A[DONT_GENERATE, DONT_INLINE]
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
        	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
        	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:132)
        	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:67)
        	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:50)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:96)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:36)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:44)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
        */
    public static kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMemberSignature.Field b(kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property r4, kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver r5, kotlin.reflect.jvm.internal.impl.metadata.deserialization.TypeTable r6, boolean r7) {
        /*
            r4.getClass()
            r5.getClass()
            r6.getClass()
            kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite$GeneratedExtension r0 = kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.d
            r0.getClass()
            java.lang.Object r0 = kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoBufUtilKt.a(r4, r0)
            kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$JvmPropertySignature r0 = (kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.JvmPropertySignature) r0
            r1 = 0
            if (r0 != 0) goto L18
            goto L4c
        L18:
            int r2 = r0.f73630c
            r3 = 1
            r2 = r2 & r3
            if (r2 != r3) goto L21
            kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$JvmFieldSignature r0 = r0.d
            goto L22
        L21:
            r0 = r1
        L22:
            if (r0 != 0) goto L27
            if (r7 == 0) goto L27
            goto L4c
        L27:
            if (r0 == 0) goto L31
            int r7 = r0.f73615c
            r7 = r7 & r3
            if (r7 != r3) goto L31
            int r7 = r0.d
            goto L33
        L31:
            int r7 = r4.g
        L33:
            if (r0 == 0) goto L42
            int r2 = r0.f73615c
            r3 = 2
            r2 = r2 & r3
            if (r2 != r3) goto L42
            int r4 = r0.f73616e
            java.lang.String r4 = r5.getString(r4)
            goto L4d
        L42:
            kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type r4 = kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoTypeTableUtilKt.i(r4, r6)
            java.lang.String r4 = e(r4, r5)
            if (r4 != 0) goto L4d
        L4c:
            return r1
        L4d:
            kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMemberSignature$Field r6 = new kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMemberSignature$Field
            java.lang.String r5 = r5.getString(r7)
            r6.<init>(r5, r4)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil.b(kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property, kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver, kotlin.reflect.jvm.internal.impl.metadata.deserialization.TypeTable, boolean):kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMemberSignature$Field");
    }

    public static JvmMemberSignature.Method c(ProtoBuf$Function protoBuf$Function, NameResolver nameResolver, TypeTable typeTable) {
        String strConcat;
        protoBuf$Function.getClass();
        nameResolver.getClass();
        typeTable.getClass();
        GeneratedMessageLite.GeneratedExtension generatedExtension = JvmProtoBuf.f73604b;
        generatedExtension.getClass();
        JvmProtoBuf.JvmMethodSignature jvmMethodSignature = (JvmProtoBuf.JvmMethodSignature) ProtoBufUtilKt.a(protoBuf$Function, generatedExtension);
        int i2 = (jvmMethodSignature == null || (jvmMethodSignature.f73623c & 1) != 1) ? protoBuf$Function.g : jvmMethodSignature.d;
        if (jvmMethodSignature == null || (jvmMethodSignature.f73623c & 2) != 2) {
            List listQ = CollectionsKt.Q(ProtoTypeTableUtilKt.f(protoBuf$Function, typeTable));
            List list = protoBuf$Function.q;
            list.getClass();
            List<ProtoBuf$ValueParameter> list2 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            for (ProtoBuf$ValueParameter protoBuf$ValueParameter : list2) {
                protoBuf$ValueParameter.getClass();
                arrayList.add(ProtoTypeTableUtilKt.k(protoBuf$ValueParameter, typeTable));
            }
            ArrayList arrayListY = CollectionsKt.Y(listQ, arrayList);
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayListY, 10));
            Iterator it = arrayListY.iterator();
            while (it.hasNext()) {
                String strE = e((ProtoBuf$Type) it.next(), nameResolver);
                if (strE == null) {
                    return null;
                }
                arrayList2.add(strE);
            }
            String strE2 = e(ProtoTypeTableUtilKt.h(protoBuf$Function, typeTable), nameResolver);
            if (strE2 == null) {
                return null;
            }
            strConcat = CollectionsKt.K(arrayList2, "", "(", ")", null, 56).concat(strE2);
        } else {
            strConcat = nameResolver.getString(jvmMethodSignature.f73624e);
        }
        return new JvmMemberSignature.Method(nameResolver.getString(i2), strConcat);
    }

    public static final boolean d(ProtoBuf$Property protoBuf$Property) {
        protoBuf$Property.getClass();
        Flags.BooleanFlagField booleanFlagField = JvmFlags.f73663a;
        Flags.BooleanFlagField booleanFlagField2 = JvmFlags.f73663a;
        Object objK = protoBuf$Property.k(JvmProtoBuf.f73606e);
        objK.getClass();
        return booleanFlagField2.d(((Number) objK).intValue()).booleanValue();
    }

    public static String e(ProtoBuf$Type protoBuf$Type, NameResolver nameResolver) {
        if (protoBuf$Type.s()) {
            return ClassMapperLite.b(nameResolver.b(protoBuf$Type.f73475j));
        }
        return null;
    }

    public static final Pair f(String[] strArr, String[] strArr2) throws InvalidProtocolBufferException {
        strArr2.getClass();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(BitEncoding.a(strArr));
        JvmNameResolver jvmNameResolverH = h(byteArrayInputStream, strArr2);
        AbstractParser abstractParser = (AbstractParser) ProtoBuf$Class.I;
        abstractParser.getClass();
        CodedInputStream codedInputStream = new CodedInputStream(byteArrayInputStream);
        MessageLite messageLite = (MessageLite) abstractParser.a(codedInputStream, f73672a);
        try {
            codedInputStream.a(0);
            AbstractParser.c(messageLite);
            return new Pair(jvmNameResolverH, (ProtoBuf$Class) messageLite);
        } catch (InvalidProtocolBufferException e2) {
            e2.f73743b = messageLite;
            throw e2;
        }
    }

    public static final Pair g(String[] strArr, String[] strArr2) throws InvalidProtocolBufferException {
        strArr2.getClass();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(BitEncoding.a(strArr));
        JvmNameResolver jvmNameResolverH = h(byteArrayInputStream, strArr2);
        AbstractParser abstractParser = (AbstractParser) ProtoBuf$Function.A;
        abstractParser.getClass();
        CodedInputStream codedInputStream = new CodedInputStream(byteArrayInputStream);
        MessageLite messageLite = (MessageLite) abstractParser.a(codedInputStream, f73672a);
        try {
            codedInputStream.a(0);
            AbstractParser.c(messageLite);
            return new Pair(jvmNameResolverH, (ProtoBuf$Function) messageLite);
        } catch (InvalidProtocolBufferException e2) {
            e2.f73743b = messageLite;
            throw e2;
        }
    }

    public static JvmNameResolver h(ByteArrayInputStream byteArrayInputStream, String[] strArr) {
        JvmProtoBuf.StringTableTypes stringTableTypes = (JvmProtoBuf.StringTableTypes) ((AbstractParser) JvmProtoBuf.StringTableTypes.f73641i).b(byteArrayInputStream, f73672a);
        stringTableTypes.getClass();
        return new JvmNameResolver(stringTableTypes, strArr);
    }

    public static final Pair i(String[] strArr, String[] strArr2) throws InvalidProtocolBufferException {
        strArr2.getClass();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(BitEncoding.a(strArr));
        JvmNameResolver jvmNameResolverH = h(byteArrayInputStream, strArr2);
        AbstractParser abstractParser = (AbstractParser) ProtoBuf$Package.m;
        abstractParser.getClass();
        CodedInputStream codedInputStream = new CodedInputStream(byteArrayInputStream);
        MessageLite messageLite = (MessageLite) abstractParser.a(codedInputStream, f73672a);
        try {
            codedInputStream.a(0);
            AbstractParser.c(messageLite);
            return new Pair(jvmNameResolverH, (ProtoBuf$Package) messageLite);
        } catch (InvalidProtocolBufferException e2) {
            e2.f73743b = messageLite;
            throw e2;
        }
    }
}
