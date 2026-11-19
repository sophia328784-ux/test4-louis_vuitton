package kotlin.reflect.jvm.internal.impl.km.jvm.internal;

import java.util.ArrayList;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.km.KmClass;
import kotlin.reflect.jvm.internal.impl.km.KmConstructor;
import kotlin.reflect.jvm.internal.impl.km.KmEnumEntry;
import kotlin.reflect.jvm.internal.impl.km.KmFunction;
import kotlin.reflect.jvm.internal.impl.km.KmPackage;
import kotlin.reflect.jvm.internal.impl.km.KmProperty;
import kotlin.reflect.jvm.internal.impl.km.KmPropertyAccessorAttributes;
import kotlin.reflect.jvm.internal.impl.km.KmType;
import kotlin.reflect.jvm.internal.impl.km.KmTypeAlias;
import kotlin.reflect.jvm.internal.impl.km.KmTypeParameter;
import kotlin.reflect.jvm.internal.impl.km.KmValueParameter;
import kotlin.reflect.jvm.internal.impl.km.internal.ReadContext;
import kotlin.reflect.jvm.internal.impl.km.internal.ReadUtilsKt;
import kotlin.reflect.jvm.internal.impl.km.internal.ReadersKt;
import kotlin.reflect.jvm.internal.impl.km.internal.extensions.ExtensionNodesKt;
import kotlin.reflect.jvm.internal.impl.km.internal.extensions.KmClassExtension;
import kotlin.reflect.jvm.internal.impl.km.internal.extensions.KmExtensionType;
import kotlin.reflect.jvm.internal.impl.km.internal.extensions.KmPackageExtension;
import kotlin.reflect.jvm.internal.impl.km.internal.extensions.KmTypeExtension;
import kotlin.reflect.jvm.internal.impl.km.internal.extensions.KmTypeParameterExtension;
import kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions;
import kotlin.reflect.jvm.internal.impl.km.jvm.JvmFieldSignature;
import kotlin.reflect.jvm.internal.impl.km.jvm.JvmMethodSignature;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoBufUtilKt;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMemberSignature;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;

/* JADX INFO: loaded from: classes4.dex */
public final class JvmMetadataExtensions implements MetadataExtensions {
    @Override // kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions
    public final void a(KmEnumEntry kmEnumEntry, ProtoBuf$EnumEntry protoBuf$EnumEntry, ReadContext readContext) {
        for (ProtoBuf$Annotation protoBuf$Annotation : protoBuf$EnumEntry.f73383f) {
            ArrayList arrayList = kmEnumEntry.f72714b;
            protoBuf$Annotation.getClass();
            arrayList.add(ReadUtilsKt.b(protoBuf$Annotation, readContext.f72779a));
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions
    public final void b(KmPackage kmPackage, ProtoBuf$Package protoBuf$Package, ReadContext readContext) {
        protoBuf$Package.getClass();
        KmExtensionType kmExtensionType = JvmPackageExtension.f72810b;
        kmExtensionType.getClass();
        JvmPackageExtension jvmPackageExtension = (JvmPackageExtension) ((KmPackageExtension) ExtensionNodesKt.a(kmPackage.d, kmExtensionType));
        for (ProtoBuf$Property protoBuf$Property : (List) protoBuf$Package.k(JvmProtoBuf.l)) {
            ArrayList arrayList = jvmPackageExtension.f72811a;
            protoBuf$Property.getClass();
            arrayList.add(ReadersKt.f(protoBuf$Property, readContext));
        }
        GeneratedMessageLite.GeneratedExtension generatedExtension = JvmProtoBuf.f73611k;
        generatedExtension.getClass();
        Integer num = (Integer) ProtoBufUtilKt.a(protoBuf$Package, generatedExtension);
        if (num != null) {
            readContext.f72779a.getString(num.intValue());
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions
    public final JvmPackageExtension c() {
        return new JvmPackageExtension();
    }

    @Override // kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions
    public final void d(KmTypeParameter kmTypeParameter, ProtoBuf$TypeParameter protoBuf$TypeParameter, ReadContext readContext) {
        protoBuf$TypeParameter.getClass();
        KmExtensionType kmExtensionType = JvmTypeParameterExtension.f72816b;
        kmExtensionType.getClass();
        JvmTypeParameterExtension jvmTypeParameterExtension = (JvmTypeParameterExtension) ((KmTypeParameterExtension) ExtensionNodesKt.a(kmTypeParameter.f72749f, kmExtensionType));
        for (ProtoBuf$Annotation protoBuf$Annotation : protoBuf$TypeParameter.l) {
            ArrayList arrayList = jvmTypeParameterExtension.f72817a;
            protoBuf$Annotation.getClass();
            arrayList.add(ReadUtilsKt.b(protoBuf$Annotation, readContext.f72779a));
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions
    public final JvmClassExtension e() {
        return new JvmClassExtension();
    }

    @Override // kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions
    public final void f(KmConstructor kmConstructor, ProtoBuf$Constructor protoBuf$Constructor, ReadContext readContext) {
        NameResolver nameResolver = readContext.f72779a;
        KmExtensionType kmExtensionType = JvmConstructorExtension.f72808a;
        kmExtensionType.getClass();
        List<ProtoBuf$Annotation> list = protoBuf$Constructor.f73354i;
        list.getClass();
        ArrayList arrayList = kmConstructor.d;
        for (ProtoBuf$Annotation protoBuf$Annotation : list) {
            protoBuf$Annotation.getClass();
            arrayList.add(ReadUtilsKt.b(protoBuf$Annotation, nameResolver));
        }
        ExtensionRegistryLite extensionRegistryLite = JvmProtoBufUtil.f73672a;
        JvmMemberSignature.Method methodA = JvmProtoBufUtil.a(protoBuf$Constructor, nameResolver, readContext.f72780b);
        if (methodA != null) {
            new JvmMethodSignature(methodA.f73666a, methodA.f73667b);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions
    public final JvmConstructorExtension g() {
        return new JvmConstructorExtension();
    }

    @Override // kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions
    public final void h(KmProperty kmProperty, ProtoBuf$Property protoBuf$Property, ReadContext readContext) {
        NameResolver nameResolver = readContext.f72779a;
        protoBuf$Property.getClass();
        KmExtensionType kmExtensionType = JvmPropertyExtension.f72812a;
        kmExtensionType.getClass();
        List<ProtoBuf$Annotation> list = protoBuf$Property.v;
        list.getClass();
        ArrayList arrayList = kmProperty.f72731h;
        for (ProtoBuf$Annotation protoBuf$Annotation : list) {
            protoBuf$Annotation.getClass();
            arrayList.add(ReadUtilsKt.b(protoBuf$Annotation, nameResolver));
        }
        List<ProtoBuf$Annotation> list2 = protoBuf$Property.w;
        list2.getClass();
        ArrayList arrayList2 = kmProperty.f72727b.f72736b;
        for (ProtoBuf$Annotation protoBuf$Annotation2 : list2) {
            protoBuf$Annotation2.getClass();
            arrayList2.add(ReadUtilsKt.b(protoBuf$Annotation2, nameResolver));
        }
        KmPropertyAccessorAttributes kmPropertyAccessorAttributes = kmProperty.f72728c;
        if (kmPropertyAccessorAttributes != null) {
            List<ProtoBuf$Annotation> list3 = protoBuf$Property.x;
            list3.getClass();
            ArrayList arrayList3 = kmPropertyAccessorAttributes.f72736b;
            for (ProtoBuf$Annotation protoBuf$Annotation3 : list3) {
                protoBuf$Annotation3.getClass();
                arrayList3.add(ReadUtilsKt.b(protoBuf$Annotation3, nameResolver));
            }
        }
        List<ProtoBuf$Annotation> list4 = protoBuf$Property.y;
        list4.getClass();
        ArrayList arrayList4 = kmProperty.f72729e;
        for (ProtoBuf$Annotation protoBuf$Annotation4 : list4) {
            protoBuf$Annotation4.getClass();
            arrayList4.add(ReadUtilsKt.b(protoBuf$Annotation4, nameResolver));
        }
        List<ProtoBuf$Annotation> list5 = protoBuf$Property.z;
        list5.getClass();
        ArrayList arrayList5 = kmProperty.f72732i;
        for (ProtoBuf$Annotation protoBuf$Annotation5 : list5) {
            protoBuf$Annotation5.getClass();
            arrayList5.add(ReadUtilsKt.b(protoBuf$Annotation5, nameResolver));
        }
        List<ProtoBuf$Annotation> list6 = protoBuf$Property.A;
        list6.getClass();
        ArrayList arrayList6 = kmProperty.f72733j;
        for (ProtoBuf$Annotation protoBuf$Annotation6 : list6) {
            protoBuf$Annotation6.getClass();
            arrayList6.add(ReadUtilsKt.b(protoBuf$Annotation6, nameResolver));
        }
        ExtensionRegistryLite extensionRegistryLite = JvmProtoBufUtil.f73672a;
        JvmMemberSignature.Field fieldB = JvmProtoBufUtil.b(protoBuf$Property, nameResolver, readContext.f72780b, true);
        GeneratedMessageLite.GeneratedExtension generatedExtension = JvmProtoBuf.d;
        generatedExtension.getClass();
        JvmProtoBuf.JvmPropertySignature jvmPropertySignature = (JvmProtoBuf.JvmPropertySignature) ProtoBufUtilKt.a(protoBuf$Property, generatedExtension);
        JvmProtoBuf.JvmMethodSignature jvmMethodSignature = null;
        JvmProtoBuf.JvmMethodSignature jvmMethodSignature2 = (jvmPropertySignature == null || !jvmPropertySignature.i()) ? null : jvmPropertySignature.f73632f;
        JvmProtoBuf.JvmMethodSignature jvmMethodSignature3 = (jvmPropertySignature == null || (jvmPropertySignature.f73630c & 8) != 8) ? null : jvmPropertySignature.g;
        Object objK = protoBuf$Property.k(JvmProtoBuf.f73606e);
        objK.getClass();
        ((Number) objK).intValue();
        if (fieldB != null) {
            new JvmFieldSignature(fieldB.f73664a, fieldB.f73665b);
        }
        if (jvmMethodSignature2 != null) {
            new JvmMethodSignature(nameResolver.getString(jvmMethodSignature2.d), nameResolver.getString(jvmMethodSignature2.f73624e));
        }
        if (jvmMethodSignature3 != null) {
            new JvmMethodSignature(nameResolver.getString(jvmMethodSignature3.d), nameResolver.getString(jvmMethodSignature3.f73624e));
        }
        JvmProtoBuf.JvmMethodSignature jvmMethodSignature4 = (jvmPropertySignature == null || (jvmPropertySignature.f73630c & 2) != 2) ? null : jvmPropertySignature.f73631e;
        if (jvmMethodSignature4 != null) {
            new JvmMethodSignature(nameResolver.getString(jvmMethodSignature4.d), nameResolver.getString(jvmMethodSignature4.f73624e));
        }
        if (jvmPropertySignature != null && (jvmPropertySignature.f73630c & 16) == 16) {
            jvmMethodSignature = jvmPropertySignature.f73633h;
        }
        if (jvmMethodSignature != null) {
            new JvmMethodSignature(nameResolver.getString(jvmMethodSignature.d), nameResolver.getString(jvmMethodSignature.f73624e));
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions
    public final JvmPropertyExtension i() {
        return new JvmPropertyExtension();
    }

    @Override // kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions
    public final void j(KmType kmType, ProtoBuf$Type protoBuf$Type, ReadContext readContext) {
        protoBuf$Type.getClass();
        KmExtensionType kmExtensionType = JvmTypeExtension.f72813c;
        kmExtensionType.getClass();
        JvmTypeExtension jvmTypeExtension = (JvmTypeExtension) ((KmTypeExtension) ExtensionNodesKt.a(kmType.g, kmExtensionType));
        Object objK = protoBuf$Type.k(JvmProtoBuf.f73607f);
        objK.getClass();
        jvmTypeExtension.f72814a = ((Boolean) objK).booleanValue();
        for (ProtoBuf$Annotation protoBuf$Annotation : protoBuf$Type.s) {
            ArrayList arrayList = jvmTypeExtension.f72815b;
            protoBuf$Annotation.getClass();
            arrayList.add(ReadUtilsKt.b(protoBuf$Annotation, readContext.f72779a));
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions
    public final JvmTypeExtension k() {
        return new JvmTypeExtension();
    }

    @Override // kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions
    public final void l(KmClass kmClass, ProtoBuf$Class protoBuf$Class, ReadContext readContext) {
        NameResolver nameResolver = readContext.f72779a;
        protoBuf$Class.getClass();
        JvmClassExtension.f72805b.getClass();
        KmExtensionType kmExtensionType = JvmClassExtension.f72806c;
        kmExtensionType.getClass();
        JvmClassExtension jvmClassExtension = (JvmClassExtension) ((KmClassExtension) ExtensionNodesKt.a(kmClass.q, kmExtensionType));
        List<ProtoBuf$Annotation> list = protoBuf$Class.A;
        list.getClass();
        ArrayList arrayList = kmClass.n;
        for (ProtoBuf$Annotation protoBuf$Annotation : list) {
            protoBuf$Annotation.getClass();
            arrayList.add(ReadUtilsKt.b(protoBuf$Annotation, nameResolver));
        }
        GeneratedMessageLite.GeneratedExtension generatedExtension = JvmProtoBuf.f73609i;
        generatedExtension.getClass();
        Integer num = (Integer) ProtoBufUtilKt.a(protoBuf$Class, generatedExtension);
        if (num != null) {
            nameResolver.getString(num.intValue());
        }
        for (ProtoBuf$Property protoBuf$Property : (List) protoBuf$Class.k(JvmProtoBuf.f73608h)) {
            ArrayList arrayList2 = jvmClassExtension.f72807a;
            protoBuf$Property.getClass();
            arrayList2.add(ReadersKt.f(protoBuf$Property, readContext));
        }
        GeneratedMessageLite.GeneratedExtension generatedExtension2 = JvmProtoBuf.g;
        generatedExtension2.getClass();
        Integer num2 = (Integer) ProtoBufUtilKt.a(protoBuf$Class, generatedExtension2);
        if (num2 != null) {
            nameResolver.getString(num2.intValue());
        }
        GeneratedMessageLite.GeneratedExtension generatedExtension3 = JvmProtoBuf.f73610j;
        generatedExtension3.getClass();
    }

    @Override // kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions
    public final void m(KmValueParameter kmValueParameter, ProtoBuf$ValueParameter protoBuf$ValueParameter, ReadContext readContext) {
        protoBuf$ValueParameter.getClass();
        List<ProtoBuf$Annotation> list = protoBuf$ValueParameter.f73533k;
        list.getClass();
        ArrayList arrayList = kmValueParameter.f72754b;
        for (ProtoBuf$Annotation protoBuf$Annotation : list) {
            protoBuf$Annotation.getClass();
            arrayList.add(ReadUtilsKt.b(protoBuf$Annotation, readContext.f72779a));
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions
    public final JvmFunctionExtension n() {
        return new JvmFunctionExtension();
    }

    @Override // kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions
    public final JvmTypeParameterExtension o() {
        return new JvmTypeParameterExtension();
    }

    @Override // kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions
    public final void p(KmTypeAlias kmTypeAlias, ProtoBuf$TypeAlias protoBuf$TypeAlias, ReadContext readContext) {
    }

    @Override // kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions
    public final void q(KmFunction kmFunction, ProtoBuf$Function protoBuf$Function, ReadContext readContext) {
        NameResolver nameResolver = readContext.f72779a;
        protoBuf$Function.getClass();
        KmExtensionType kmExtensionType = JvmFunctionExtension.f72809a;
        kmExtensionType.getClass();
        List<ProtoBuf$Annotation> list = protoBuf$Function.v;
        list.getClass();
        ArrayList arrayList = kmFunction.g;
        for (ProtoBuf$Annotation protoBuf$Annotation : list) {
            protoBuf$Annotation.getClass();
            arrayList.add(ReadUtilsKt.b(protoBuf$Annotation, nameResolver));
        }
        List<ProtoBuf$Annotation> list2 = protoBuf$Function.w;
        list2.getClass();
        ArrayList arrayList2 = kmFunction.f72719c;
        for (ProtoBuf$Annotation protoBuf$Annotation2 : list2) {
            protoBuf$Annotation2.getClass();
            arrayList2.add(ReadUtilsKt.b(protoBuf$Annotation2, nameResolver));
        }
        ExtensionRegistryLite extensionRegistryLite = JvmProtoBufUtil.f73672a;
        JvmMemberSignature.Method methodC = JvmProtoBufUtil.c(protoBuf$Function, nameResolver, readContext.f72780b);
        if (methodC != null) {
            new JvmMethodSignature(methodC.f73666a, methodC.f73667b);
        }
        GeneratedMessageLite.GeneratedExtension generatedExtension = JvmProtoBuf.f73605c;
        generatedExtension.getClass();
        Integer num = (Integer) ProtoBufUtilKt.a(protoBuf$Function, generatedExtension);
        if (num != null) {
            nameResolver.getString(num.intValue());
        }
    }
}
