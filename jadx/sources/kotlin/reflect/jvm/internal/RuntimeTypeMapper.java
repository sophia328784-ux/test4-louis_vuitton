package kotlin.reflect.jvm.internal;

import defpackage.d20;
import defpackage.tg0;
import defpackage.wp;
import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.CloneableClassScope;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyGetterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertySetterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyGetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaConstructor;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaElement;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaField;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaMethod;
import kotlin.reflect.jvm.internal.impl.load.java.JvmAbi;
import kotlin.reflect.jvm.internal.impl.load.java.SpecialBuiltinMembers;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaClassConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaPropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.sources.JavaSourceElement;
import kotlin.reflect.jvm.internal.impl.load.kotlin.MethodSignatureMappingKt;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoBufUtilKt;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.ClassMapperLite;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMemberSignature;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLite;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedCallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedPropertyDescriptor;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÀ\u0002\u0018\u00002\u00020\u0001R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0003*\u0006\u0012\u0002\b\u00030\u00028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lkotlin/reflect/jvm/internal/RuntimeTypeMapper;", "", "Ljava/lang/Class;", "Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;", "getPrimitiveType", "(Ljava/lang/Class;)Lorg/jetbrains/kotlin/builtins/PrimitiveType;", "primitiveType", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class RuntimeTypeMapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ClassId f72176a;

    static {
        ClassId.Companion companion = ClassId.d;
        FqName fqName = new FqName("java.lang.Void");
        companion.getClass();
        f72176a = ClassId.Companion.b(fqName);
    }

    public static JvmFunctionSignature.KotlinFunction a(FunctionDescriptor functionDescriptor) {
        String strA = SpecialBuiltinMembers.a(functionDescriptor);
        if (strA == null) {
            if (functionDescriptor instanceof PropertyGetterDescriptor) {
                String strB = DescriptorUtilsKt.k(functionDescriptor).getName().b();
                strB.getClass();
                strA = JvmAbi.a(strB);
            } else if (functionDescriptor instanceof PropertySetterDescriptor) {
                String strB2 = DescriptorUtilsKt.k(functionDescriptor).getName().b();
                strB2.getClass();
                strA = JvmAbi.b(strB2);
            } else {
                strA = functionDescriptor.getName().b();
                strA.getClass();
            }
        }
        return new JvmFunctionSignature.KotlinFunction(new JvmMemberSignature.Method(strA, MethodSignatureMappingKt.a(functionDescriptor, 1)));
    }

    public static JvmPropertySignature b(PropertyDescriptor propertyDescriptor) {
        propertyDescriptor.getClass();
        PropertyDescriptor propertyDescriptorY0 = ((PropertyDescriptor) DescriptorUtils.r(propertyDescriptor)).y0();
        propertyDescriptorY0.getClass();
        if (propertyDescriptorY0 instanceof DeserializedPropertyDescriptor) {
            DeserializedPropertyDescriptor deserializedPropertyDescriptor = (DeserializedPropertyDescriptor) propertyDescriptorY0;
            ProtoBuf$Property protoBuf$Property = deserializedPropertyDescriptor.B;
            GeneratedMessageLite.GeneratedExtension generatedExtension = JvmProtoBuf.d;
            generatedExtension.getClass();
            JvmProtoBuf.JvmPropertySignature jvmPropertySignature = (JvmProtoBuf.JvmPropertySignature) ProtoBufUtilKt.a(protoBuf$Property, generatedExtension);
            if (jvmPropertySignature != null) {
                return new JvmPropertySignature.KotlinProperty(propertyDescriptorY0, protoBuf$Property, jvmPropertySignature, deserializedPropertyDescriptor.C, deserializedPropertyDescriptor.D);
            }
        } else if (propertyDescriptorY0 instanceof JavaPropertyDescriptor) {
            JavaPropertyDescriptor javaPropertyDescriptor = (JavaPropertyDescriptor) propertyDescriptorY0;
            SourceElement source = javaPropertyDescriptor.getSource();
            JavaSourceElement javaSourceElement = source instanceof JavaSourceElement ? (JavaSourceElement) source : null;
            ReflectJavaElement reflectJavaElementB = javaSourceElement != null ? javaSourceElement.b() : null;
            if (reflectJavaElementB instanceof ReflectJavaField) {
                return new JvmPropertySignature.JavaField(((ReflectJavaField) reflectJavaElementB).f72628a);
            }
            if (!(reflectJavaElementB instanceof ReflectJavaMethod)) {
                wp.f("Incorrect resolution sequence for Java field ", propertyDescriptorY0, " (source = ", reflectJavaElementB);
                return null;
            }
            Method method = ((ReflectJavaMethod) reflectJavaElementB).f72630a;
            PropertySetterDescriptor propertySetterDescriptor = javaPropertyDescriptor.y;
            SourceElement source2 = propertySetterDescriptor != null ? propertySetterDescriptor.getSource() : null;
            JavaSourceElement javaSourceElement2 = source2 instanceof JavaSourceElement ? (JavaSourceElement) source2 : null;
            ReflectJavaElement reflectJavaElementB2 = javaSourceElement2 != null ? javaSourceElement2.b() : null;
            ReflectJavaMethod reflectJavaMethod = reflectJavaElementB2 instanceof ReflectJavaMethod ? (ReflectJavaMethod) reflectJavaElementB2 : null;
            return new JvmPropertySignature.JavaMethodProperty(method, reflectJavaMethod != null ? reflectJavaMethod.f72630a : null);
        }
        PropertyGetterDescriptorImpl getter = propertyDescriptorY0.getGetter();
        getter.getClass();
        JvmFunctionSignature.KotlinFunction kotlinFunctionA = a(getter);
        PropertySetterDescriptor setter = propertyDescriptorY0.getSetter();
        return new JvmPropertySignature.MappedKotlinProperty(kotlinFunctionA, setter != null ? a(setter) : null);
    }

    public static JvmFunctionSignature c(FunctionDescriptor functionDescriptor) {
        Method method;
        functionDescriptor.getClass();
        FunctionDescriptor functionDescriptorY0 = ((FunctionDescriptor) DescriptorUtils.r(functionDescriptor)).y0();
        functionDescriptorY0.getClass();
        if (!(functionDescriptorY0 instanceof DeserializedCallableMemberDescriptor)) {
            if (functionDescriptorY0 instanceof JavaMethodDescriptor) {
                SourceElement source = ((JavaMethodDescriptor) functionDescriptorY0).getSource();
                JavaSourceElement javaSourceElement = source instanceof JavaSourceElement ? (JavaSourceElement) source : null;
                ReflectJavaElement reflectJavaElementB = javaSourceElement != null ? javaSourceElement.b() : null;
                ReflectJavaMethod reflectJavaMethod = reflectJavaElementB instanceof ReflectJavaMethod ? (ReflectJavaMethod) reflectJavaElementB : null;
                if (reflectJavaMethod != null && (method = reflectJavaMethod.f72630a) != null) {
                    return new JvmFunctionSignature.JavaMethod(method);
                }
                d20.c(functionDescriptorY0, "Incorrect resolution sequence for Java method ");
                return null;
            }
            if (functionDescriptorY0 instanceof JavaClassConstructorDescriptor) {
                SourceElement source2 = ((JavaClassConstructorDescriptor) functionDescriptorY0).getSource();
                JavaSourceElement javaSourceElement2 = source2 instanceof JavaSourceElement ? (JavaSourceElement) source2 : null;
                ReflectJavaElement reflectJavaElementB2 = javaSourceElement2 != null ? javaSourceElement2.b() : null;
                if (reflectJavaElementB2 instanceof ReflectJavaConstructor) {
                    return new JvmFunctionSignature.JavaConstructor(((ReflectJavaConstructor) reflectJavaElementB2).f72626a);
                }
                if (reflectJavaElementB2 instanceof ReflectJavaClass) {
                    Class cls = ((ReflectJavaClass) reflectJavaElementB2).f72614a;
                    if (cls.isAnnotation()) {
                        return new JvmFunctionSignature.FakeJavaAnnotationConstructor(cls);
                    }
                }
                wp.f("Incorrect resolution sequence for Java constructor ", functionDescriptorY0, " (", reflectJavaElementB2);
                return null;
            }
            if ((!functionDescriptorY0.getName().equals(StandardNames.f72264c) || !DescriptorFactory.l(functionDescriptorY0)) && (!functionDescriptorY0.getName().equals(StandardNames.f72262a) || !DescriptorFactory.l(functionDescriptorY0))) {
                Name name = functionDescriptorY0.getName();
                CloneableClassScope.f72302e.getClass();
                if (!Intrinsics.c(name, CloneableClassScope.f72303f) || !functionDescriptorY0.h().isEmpty()) {
                    StringBuilder sb = new StringBuilder("Unknown origin of ");
                    sb.append(functionDescriptorY0);
                    d20.o(sb, " (", functionDescriptorY0.getClass());
                    return null;
                }
            }
            return a(functionDescriptorY0);
        }
        DeserializedMemberDescriptor deserializedMemberDescriptor = (DeserializedMemberDescriptor) functionDescriptorY0;
        MessageLite messageLiteX = deserializedMemberDescriptor.X();
        if (messageLiteX instanceof ProtoBuf$Function) {
            ExtensionRegistryLite extensionRegistryLite = JvmProtoBufUtil.f73672a;
            JvmMemberSignature.Method methodC = JvmProtoBufUtil.c((ProtoBuf$Function) messageLiteX, deserializedMemberDescriptor.D(), deserializedMemberDescriptor.z());
            if (methodC != null) {
                return new JvmFunctionSignature.KotlinFunction(methodC);
            }
        }
        if (messageLiteX instanceof ProtoBuf$Constructor) {
            ExtensionRegistryLite extensionRegistryLite2 = JvmProtoBufUtil.f73672a;
            JvmMemberSignature.Method methodA = JvmProtoBufUtil.a((ProtoBuf$Constructor) messageLiteX, deserializedMemberDescriptor.D(), deserializedMemberDescriptor.z());
            if (methodA != null) {
                String str = methodA.f73666a;
                String str2 = methodA.f73667b;
                DeclarationDescriptor declarationDescriptorD = functionDescriptor.d();
                declarationDescriptorD.getClass();
                if (InlineClassesUtilsKt.b(declarationDescriptorD)) {
                    return new JvmFunctionSignature.KotlinFunction(methodA);
                }
                DeclarationDescriptor declarationDescriptorD2 = functionDescriptor.d();
                declarationDescriptorD2.getClass();
                if (!InlineClassesUtilsKt.c(declarationDescriptorD2)) {
                    return new JvmFunctionSignature.KotlinConstructor(methodA);
                }
                ConstructorDescriptor constructorDescriptor = (ConstructorDescriptor) functionDescriptor;
                if (constructorDescriptor.U()) {
                    if (!Intrinsics.c(str, "constructor-impl") || !StringsKt.p(str2, ")V", false)) {
                        tg0.n(methodA, "Invalid signature: ");
                        return null;
                    }
                } else {
                    if (!Intrinsics.c(str, "constructor-impl")) {
                        tg0.n(methodA, "Invalid signature: ");
                        return null;
                    }
                    ClassDescriptor classDescriptorV = constructorDescriptor.V();
                    classDescriptorV.getClass();
                    ClassId classIdF = DescriptorUtilsKt.f(classDescriptorV);
                    classIdF.getClass();
                    String strB = ClassMapperLite.b(classIdF.b());
                    if (StringsKt.p(str2, ")V", false)) {
                        String strConcat = StringsKt.F(str2, "V").concat(strB);
                        str.getClass();
                        methodA = new JvmMemberSignature.Method(str, strConcat);
                    } else if (!StringsKt.p(str2, strB, false)) {
                        tg0.n(methodA, "Invalid signature: ");
                        return null;
                    }
                }
                return new JvmFunctionSignature.KotlinFunction(methodA);
            }
        }
        return a(functionDescriptorY0);
    }
}
