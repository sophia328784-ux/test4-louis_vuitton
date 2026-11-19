package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMap;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmClassName;

/* JADX INFO: loaded from: classes4.dex */
public abstract class MethodSignatureBuildingUtilsKt {
    public static final String a(ClassDescriptor classDescriptor, String str) {
        classDescriptor.getClass();
        String str2 = JavaToKotlinClassMap.f72305a;
        ClassId classIdF = JavaToKotlinClassMap.f(DescriptorUtilsKt.g(classDescriptor).f73679a);
        return SignatureBuildingComponents.f(classIdF != null ? JvmClassName.e(classIdF) : DescriptorBasedTypeSignatureMappingKt.a(classDescriptor, TypeMappingConfigurationImpl.f73264a), str);
    }
}
