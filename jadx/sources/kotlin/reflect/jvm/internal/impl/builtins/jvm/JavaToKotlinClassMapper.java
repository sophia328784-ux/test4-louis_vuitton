package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import defpackage.lc0;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class JavaToKotlinClassMapper {
    public static ClassDescriptor a(ClassDescriptor classDescriptor) {
        FqNameUnsafe fqNameUnsafeF = DescriptorUtils.f(classDescriptor);
        String str = JavaToKotlinClassMap.f72305a;
        FqName fqName = (FqName) JavaToKotlinClassMap.f72313k.get(fqNameUnsafeF);
        if (fqName == null) {
            lc0.n("Given class ", classDescriptor, " is not a read-only collection");
            return null;
        }
        ClassDescriptor classDescriptorJ = DescriptorUtilsKt.i(classDescriptor).g().j(fqName);
        classDescriptorJ.getClass();
        return classDescriptorJ;
    }

    public static boolean b(ClassDescriptor classDescriptor) {
        classDescriptor.getClass();
        String str = JavaToKotlinClassMap.f72305a;
        return JavaToKotlinClassMap.f72312j.containsKey(DescriptorUtils.f(classDescriptor));
    }

    public static ClassDescriptor c(FqName fqName, KotlinBuiltIns kotlinBuiltIns) {
        kotlinBuiltIns.getClass();
        String str = JavaToKotlinClassMap.f72305a;
        ClassId classId = (ClassId) JavaToKotlinClassMap.f72310h.get(fqName.f73679a);
        if (classId != null) {
            return kotlinBuiltIns.j(classId.a());
        }
        return null;
    }
}
