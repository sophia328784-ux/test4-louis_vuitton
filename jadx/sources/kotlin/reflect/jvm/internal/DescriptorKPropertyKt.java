package kotlin.reflect.jvm.internal;

import defpackage.os;
import defpackage.v40;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.calls.Caller;
import kotlin.reflect.jvm.internal.calls.CallerImpl;
import kotlin.reflect.jvm.internal.calls.InternalUnderlyingValOfInlineClass;
import kotlin.reflect.jvm.internal.calls.ThrowingCaller;
import kotlin.reflect.jvm.internal.calls.ValueClassAwareCallerKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMemberSignature;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedPropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlin-reflection"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class DescriptorKPropertyKt {
    /* JADX WARN: Code duplicated, block: B:13:0x003b  */
    public static final Caller a(DescriptorKProperty.Accessor accessor, boolean z) {
        JvmFunctionSignature.KotlinFunction kotlinFunction;
        Method method;
        Caller boundInstance;
        JvmProtoBuf.JvmMethodSignature jvmMethodSignature;
        Caller boundStatic;
        KDeclarationContainerImpl.f72134b.getClass();
        if (KDeclarationContainerImpl.d.f(accessor.L().f72050k)) {
            return ThrowingCaller.f72218a;
        }
        ClassId classId = RuntimeTypeMapper.f72176a;
        JvmPropertySignature jvmPropertySignatureB = RuntimeTypeMapper.b(accessor.L().H());
        if (jvmPropertySignatureB instanceof JvmPropertySignature.KotlinProperty) {
            JvmPropertySignature.KotlinProperty kotlinProperty = (JvmPropertySignature.KotlinProperty) jvmPropertySignatureB;
            NameResolver nameResolver = kotlinProperty.d;
            JvmProtoBuf.JvmPropertySignature jvmPropertySignature = kotlinProperty.f72085c;
            if (z) {
                if (jvmPropertySignature.i()) {
                    jvmMethodSignature = jvmPropertySignature.f73632f;
                } else {
                    jvmMethodSignature = null;
                }
            } else if ((jvmPropertySignature.f73630c & 8) == 8) {
                jvmMethodSignature = jvmPropertySignature.g;
            } else {
                jvmMethodSignature = null;
            }
            Method methodH = jvmMethodSignature != null ? accessor.L().f72048i.H(nameResolver.getString(jvmMethodSignature.d), nameResolver.getString(jvmMethodSignature.f73624e)) : null;
            if (methodH != null) {
                if (!Modifier.isStatic(methodH.getModifiers())) {
                    boundStatic = ReflectKCallableKt.a(accessor) ? new CallerImpl.Method.BoundInstance(methodH, accessor.L().L()) : new CallerImpl.Method.Instance(methodH);
                } else if (accessor.L().H().getAnnotations().C1(UtilKt.f72187a)) {
                    boundStatic = ReflectKCallableKt.a(accessor) ? new CallerImpl.Method.BoundJvmStaticInObject(methodH) : new CallerImpl.Method.JvmStaticInObject(methodH);
                } else {
                    boundStatic = ReflectKCallableKt.a(accessor) ? new CallerImpl.Method.BoundStatic(methodH, false, accessor.L().L()) : new CallerImpl.Method.Static(methodH);
                }
                boundInstance = boundStatic;
            } else if (InlineClassesUtilsKt.d(accessor.L().H()) && Intrinsics.c(accessor.L().H().getVisibility(), DescriptorVisibilities.d)) {
                Class clsG = ValueClassAwareCallerKt.g(accessor.L().H().d());
                if (clsG == null) {
                    throw new KotlinReflectionInternalError("Underlying property of inline class " + accessor.L() + " should have a field");
                }
                Method methodD = ValueClassAwareCallerKt.d(clsG, accessor.L().H());
                boundInstance = ReflectKCallableKt.a(accessor) ? new InternalUnderlyingValOfInlineClass.Bound(methodD, accessor.L().L()) : new InternalUnderlyingValOfInlineClass.Unbound(methodD);
            } else {
                Field fieldZ = accessor.L().z();
                if (fieldZ == null) {
                    os.f(accessor.L(), "No accessors or field is found for property ");
                    return null;
                }
                boundInstance = b(accessor, z, fieldZ);
            }
        } else if (jvmPropertySignatureB instanceof JvmPropertySignature.JavaField) {
            boundInstance = b(accessor, z, ((JvmPropertySignature.JavaField) jvmPropertySignatureB).f72080a);
        } else {
            if (!(jvmPropertySignatureB instanceof JvmPropertySignature.JavaMethodProperty)) {
                if (!(jvmPropertySignatureB instanceof JvmPropertySignature.MappedKotlinProperty)) {
                    v40.g();
                    return null;
                }
                if (z) {
                    kotlinFunction = ((JvmPropertySignature.MappedKotlinProperty) jvmPropertySignatureB).f72088a;
                } else {
                    kotlinFunction = ((JvmPropertySignature.MappedKotlinProperty) jvmPropertySignatureB).f72089b;
                    if (kotlinFunction == null) {
                        os.f(accessor.L(), "No setter found for property ");
                        return null;
                    }
                }
                KDeclarationContainerImpl kDeclarationContainerImpl = accessor.L().f72048i;
                JvmMemberSignature.Method method2 = kotlinFunction.f72078a;
                Method methodH2 = kDeclarationContainerImpl.H(method2.f73666a, method2.f73667b);
                if (methodH2 != null) {
                    Modifier.isStatic(methodH2.getModifiers());
                    return ReflectKCallableKt.a(accessor) ? new CallerImpl.Method.BoundInstance(methodH2, accessor.L().L()) : new CallerImpl.Method.Instance(methodH2);
                }
                os.f(accessor.L(), "No accessor found for property ");
                return null;
            }
            if (z) {
                method = ((JvmPropertySignature.JavaMethodProperty) jvmPropertySignatureB).f72081a;
            } else {
                JvmPropertySignature.JavaMethodProperty javaMethodProperty = (JvmPropertySignature.JavaMethodProperty) jvmPropertySignatureB;
                method = javaMethodProperty.f72082b;
                if (method == null) {
                    os.f(javaMethodProperty.f72081a, "No source found for setter of Java method property: ");
                    return null;
                }
            }
            boundInstance = ReflectKCallableKt.a(accessor) ? new CallerImpl.Method.BoundInstance(method, accessor.L().L()) : new CallerImpl.Method.Instance(method);
        }
        return ValueClassAwareCallerKt.b(accessor.K(), boundInstance, false);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0039  */
    /* JADX WARN: Code duplicated, block: B:29:0x0081  */
    /* JADX WARN: Code duplicated, block: B:31:0x0095 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:32:0x0097  */
    /* JADX WARN: Code duplicated, block: B:34:0x009d  */
    /* JADX WARN: Code duplicated, block: B:36:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:38:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:40:0x00af  */
    /* JADX WARN: Code duplicated, block: B:42:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:44:0x00c3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:45:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:47:0x00cb  */
    public static final CallerImpl b(DescriptorKProperty.Accessor accessor, boolean z, Field field) {
        PropertyDescriptor propertyDescriptorH = accessor.L().H();
        DeclarationDescriptor declarationDescriptorD = propertyDescriptorH.d();
        declarationDescriptorD.getClass();
        if (DescriptorUtils.k(declarationDescriptorD)) {
            DeclarationDescriptor declarationDescriptorD2 = declarationDescriptorD.d();
            if ((DescriptorUtils.l(declarationDescriptorD2, ClassKind.INTERFACE) || DescriptorUtils.l(declarationDescriptorD2, ClassKind.ANNOTATION_CLASS)) && (!(propertyDescriptorH instanceof DeserializedPropertyDescriptor) || !JvmProtoBufUtil.d(((DeserializedPropertyDescriptor) propertyDescriptorH).B))) {
                if (Modifier.isStatic(field.getModifiers())) {
                    if (accessor.L().H().getAnnotations().C1(UtilKt.f72187a)) {
                        if (z) {
                        }
                    }
                    if (z) {
                        if (ReflectKCallableKt.a(accessor)) {
                        }
                    }
                    if (ReflectKCallableKt.a(accessor)) {
                    }
                }
            }
        } else if (Modifier.isStatic(field.getModifiers())) {
            if (accessor.L().H().getAnnotations().C1(UtilKt.f72187a)) {
                return z ? new CallerImpl.FieldGetter.Static(field) : new CallerImpl.FieldSetter.Static(field, c(accessor));
            }
            if (z) {
                return ReflectKCallableKt.a(accessor) ? new CallerImpl.FieldGetter.BoundJvmStaticInObject(field) : new CallerImpl.FieldGetter.JvmStaticInObject(field);
            }
            return ReflectKCallableKt.a(accessor) ? new CallerImpl.FieldSetter.BoundJvmStaticInObject(field, c(accessor)) : new CallerImpl.FieldSetter.JvmStaticInObject(field, c(accessor));
        }
        if (z) {
            return ReflectKCallableKt.a(accessor) ? new CallerImpl.FieldGetter.BoundInstance(field, accessor.L().L()) : new CallerImpl.FieldGetter.Instance(field);
        }
        return ReflectKCallableKt.a(accessor) ? new CallerImpl.FieldSetter.BoundInstance(field, c(accessor), accessor.L().L()) : new CallerImpl.FieldSetter.Instance(field, c(accessor));
    }

    public static final boolean c(DescriptorKProperty.Accessor accessor) {
        return !TypeUtils.g(accessor.L().H().getType());
    }
}
