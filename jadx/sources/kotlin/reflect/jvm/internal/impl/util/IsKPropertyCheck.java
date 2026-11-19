package kotlin.reflect.jvm.internal.impl.util;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.reflect.jvm.internal.impl.builtins.ReflectionTypes;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;

/* JADX INFO: loaded from: classes4.dex */
final class IsKPropertyCheck implements Check {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final IsKPropertyCheck f74342a = new IsKPropertyCheck();

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    public final boolean a(JavaMethodDescriptor javaMethodDescriptor) {
        SimpleType simpleTypeC;
        ValueParameterDescriptor valueParameterDescriptor = (ValueParameterDescriptor) javaMethodDescriptor.h().get(1);
        ReflectionTypes.Companion companion = ReflectionTypes.d;
        valueParameterDescriptor.getClass();
        int i2 = DescriptorUtilsKt.f73888a;
        ModuleDescriptor moduleDescriptorC = DescriptorUtils.c(valueParameterDescriptor);
        moduleDescriptorC.getClass();
        companion.getClass();
        ClassDescriptor classDescriptorA = FindClassInModuleKt.a(moduleDescriptorC, StandardNames.FqNames.R);
        if (classDescriptorA == null) {
            simpleTypeC = null;
        } else {
            TypeAttributes.f74232c.getClass();
            TypeAttributes typeAttributes = TypeAttributes.d;
            List parameters = classDescriptorA.j().getParameters();
            parameters.getClass();
            Object objH0 = CollectionsKt.h0(parameters);
            objH0.getClass();
            simpleTypeC = KotlinTypeFactory.c(typeAttributes, classDescriptorA, CollectionsKt.O(new StarProjectionImpl((TypeParameterDescriptor) objH0)));
        }
        if (simpleTypeC == null) {
            return false;
        }
        KotlinType type = valueParameterDescriptor.getType();
        type.getClass();
        return KotlinTypeChecker.f74269a.d(simpleTypeC, TypeUtils.i(type, false));
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    public final /* bridge */ String b(JavaMethodDescriptor javaMethodDescriptor) {
        return Check.DefaultImpls.a(this, javaMethodDescriptor);
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    public final String getDescription() {
        return "second parameter must be of type KProperty<*> or its supertype";
    }
}
