package kotlin.reflect.jvm.internal;

import defpackage.d20;
import defpackage.d21;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.load.java.JvmAbi;
import kotlin.reflect.jvm.internal.impl.load.kotlin.JvmPackagePartSource;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoBufUtilKt;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMemberSignature;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.name.NameUtils;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerSource;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedPropertyDescriptor;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\n"}, d2 = {"Lkotlin/reflect/jvm/internal/JvmPropertySignature;", "", "KotlinProperty", "JavaMethodProperty", "JavaField", "MappedKotlinProperty", "Lkotlin/reflect/jvm/internal/JvmPropertySignature$JavaField;", "Lkotlin/reflect/jvm/internal/JvmPropertySignature$JavaMethodProperty;", "Lkotlin/reflect/jvm/internal/JvmPropertySignature$KotlinProperty;", "Lkotlin/reflect/jvm/internal/JvmPropertySignature$MappedKotlinProperty;", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class JvmPropertySignature {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/reflect/jvm/internal/JvmPropertySignature$JavaField;", "Lkotlin/reflect/jvm/internal/JvmPropertySignature;", "Ljava/lang/reflect/Field;", "field", "<init>", "(Ljava/lang/reflect/Field;)V", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class JavaField extends JvmPropertySignature {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Field f72080a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public JavaField(Field field) {
            super(null);
            field.getClass();
            this.f72080a = field;
        }

        @Override // kotlin.reflect.jvm.internal.JvmPropertySignature
        /* JADX INFO: renamed from: a */
        public final String getF72087f() {
            StringBuilder sb = new StringBuilder();
            Field field = this.f72080a;
            String name = field.getName();
            name.getClass();
            sb.append(JvmAbi.a(name));
            sb.append("()");
            Class<?> type = field.getType();
            type.getClass();
            sb.append(ReflectClassUtilKt.b(type));
            return sb.toString();
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlin/reflect/jvm/internal/JvmPropertySignature$JavaMethodProperty;", "Lkotlin/reflect/jvm/internal/JvmPropertySignature;", "Ljava/lang/reflect/Method;", "getterMethod", "setterMethod", "<init>", "(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class JavaMethodProperty extends JvmPropertySignature {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Method f72081a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Method f72082b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public JavaMethodProperty(Method method, Method method2) {
            super(null);
            method.getClass();
            this.f72081a = method;
            this.f72082b = method2;
        }

        @Override // kotlin.reflect.jvm.internal.JvmPropertySignature
        /* JADX INFO: renamed from: a */
        public final String getF72087f() {
            return RuntimeTypeMapperKt.a(this.f72081a);
        }
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lkotlin/reflect/jvm/internal/JvmPropertySignature$KotlinProperty;", "Lkotlin/reflect/jvm/internal/JvmPropertySignature;", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "descriptor", "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;", "proto", "Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmPropertySignature;", "signature", "Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;", "nameResolver", "Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;", "typeTable", "<init>", "(Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;Lorg/jetbrains/kotlin/metadata/ProtoBuf$Property;Lorg/jetbrains/kotlin/metadata/jvm/JvmProtoBuf$JvmPropertySignature;Lorg/jetbrains/kotlin/metadata/deserialization/NameResolver;Lorg/jetbrains/kotlin/metadata/deserialization/TypeTable;)V", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class KotlinProperty extends JvmPropertySignature {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final PropertyDescriptor f72083a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ProtoBuf$Property f72084b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final JvmProtoBuf.JvmPropertySignature f72085c;
        public final NameResolver d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final TypeTable f72086e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f72087f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Code duplicated, block: B:26:0x00ea  */
        public KotlinProperty(PropertyDescriptor propertyDescriptor, ProtoBuf$Property protoBuf$Property, JvmProtoBuf.JvmPropertySignature jvmPropertySignature, NameResolver nameResolver, TypeTable typeTable) {
            String string;
            String strP;
            String string2;
            super(null);
            propertyDescriptor.getClass();
            protoBuf$Property.getClass();
            jvmPropertySignature.getClass();
            nameResolver.getClass();
            typeTable.getClass();
            this.f72083a = propertyDescriptor;
            this.f72084b = protoBuf$Property;
            this.f72085c = jvmPropertySignature;
            this.d = nameResolver;
            this.f72086e = typeTable;
            if (jvmPropertySignature.i()) {
                strP = nameResolver.getString(jvmPropertySignature.f73632f.d) + nameResolver.getString(jvmPropertySignature.f73632f.f73624e);
            } else {
                ExtensionRegistryLite extensionRegistryLite = JvmProtoBufUtil.f73672a;
                JvmMemberSignature.Field fieldB = JvmProtoBufUtil.b(protoBuf$Property, nameResolver, typeTable, true);
                if (fieldB == null) {
                    d20.c(propertyDescriptor, "No field signature for property: ");
                    throw null;
                }
                String str = fieldB.f73664a;
                String str2 = fieldB.f73665b;
                StringBuilder sb = new StringBuilder();
                sb.append(JvmAbi.a(str));
                DeclarationDescriptor declarationDescriptorD = propertyDescriptor.d();
                declarationDescriptorD.getClass();
                if (Intrinsics.c(propertyDescriptor.getVisibility(), DescriptorVisibilities.d) && (declarationDescriptorD instanceof DeserializedClassDescriptor)) {
                    ProtoBuf$Class protoBuf$Class = ((DeserializedClassDescriptor) declarationDescriptorD).g;
                    GeneratedMessageLite.GeneratedExtension generatedExtension = JvmProtoBuf.g;
                    generatedExtension.getClass();
                    Integer num = (Integer) ProtoBufUtilKt.a(protoBuf$Class, generatedExtension);
                    string = "$" + NameUtils.f73689a.replace((num == null || (string2 = nameResolver.getString(num.intValue())) == null) ? "main" : string2, "_");
                } else if (Intrinsics.c(propertyDescriptor.getVisibility(), DescriptorVisibilities.f72366a) && (declarationDescriptorD instanceof PackageFragmentDescriptor)) {
                    DeserializedContainerSource deserializedContainerSource = ((DeserializedPropertyDescriptor) propertyDescriptor).F;
                    if (deserializedContainerSource instanceof JvmPackagePartSource) {
                        JvmPackagePartSource jvmPackagePartSource = (JvmPackagePartSource) deserializedContainerSource;
                        if (jvmPackagePartSource.f73244c != null) {
                            StringBuilder sb2 = new StringBuilder("$");
                            String strD = jvmPackagePartSource.f73243b.d();
                            strD.getClass();
                            sb2.append(Name.e(StringsKt.R('/', strD, strD)).b());
                            string = sb2.toString();
                        } else {
                            string = "";
                        }
                    } else {
                        string = "";
                    }
                } else {
                    string = "";
                }
                strP = d21.p(sb, string, "()", str2);
            }
            this.f72087f = strP;
        }

        @Override // kotlin.reflect.jvm.internal.JvmPropertySignature
        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getF72087f() {
            return this.f72087f;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlin/reflect/jvm/internal/JvmPropertySignature$MappedKotlinProperty;", "Lkotlin/reflect/jvm/internal/JvmPropertySignature;", "Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;", "getterSignature", "setterSignature", "<init>", "(Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;)V", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class MappedKotlinProperty extends JvmPropertySignature {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final JvmFunctionSignature.KotlinFunction f72088a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final JvmFunctionSignature.KotlinFunction f72089b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MappedKotlinProperty(JvmFunctionSignature.KotlinFunction kotlinFunction, JvmFunctionSignature.KotlinFunction kotlinFunction2) {
            super(null);
            kotlinFunction.getClass();
            this.f72088a = kotlinFunction;
            this.f72089b = kotlinFunction2;
        }

        @Override // kotlin.reflect.jvm.internal.JvmPropertySignature
        /* JADX INFO: renamed from: a */
        public final String getF72087f() {
            return this.f72088a.f72079b;
        }
    }

    public JvmPropertySignature(DefaultConstructorMarker defaultConstructorMarker) {
    }

    /* JADX INFO: renamed from: a */
    public abstract String getF72087f();
}
