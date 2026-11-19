package kotlin.reflect.jvm.internal.impl.resolve.jvm;

import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class InlineClassManglingRulesKt {
    public static final boolean a(KotlinType kotlinType) {
        kotlinType.getClass();
        ClassifierDescriptor classifierDescriptorY = kotlinType.H0().y();
        if (classifierDescriptorY != null && ((InlineClassesUtilsKt.b(classifierDescriptorY) && InlineClassesUtilsKt.e(classifierDescriptorY) && !DescriptorUtilsKt.g((ClassDescriptor) classifierDescriptorY).equals(StandardNames.f72267h)) || InlineClassesUtilsKt.f(kotlinType))) {
            return true;
        }
        ClassifierDescriptor classifierDescriptorY2 = kotlinType.H0().y();
        TypeParameterDescriptor typeParameterDescriptor = classifierDescriptorY2 instanceof TypeParameterDescriptor ? (TypeParameterDescriptor) classifierDescriptorY2 : null;
        return typeParameterDescriptor != null && a(TypeUtilsKt.g(typeParameterDescriptor));
    }
}
