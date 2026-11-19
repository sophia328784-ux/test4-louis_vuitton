package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.reflect.jvm.internal.impl.incremental.components.LookupLocation;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.AbstractScopeAdapter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DescriptorUtilKt {
    public static final ClassifierDescriptor a(DeclarationDescriptor declarationDescriptor) {
        DeclarationDescriptor declarationDescriptorD = declarationDescriptor.d();
        if (declarationDescriptorD == null || (declarationDescriptor instanceof PackageFragmentDescriptor)) {
            return null;
        }
        if (!(declarationDescriptorD.d() instanceof PackageFragmentDescriptor)) {
            return a(declarationDescriptorD);
        }
        if (declarationDescriptorD instanceof ClassifierDescriptor) {
            return (ClassifierDescriptor) declarationDescriptorD;
        }
        return null;
    }

    public static final ClassDescriptor b(ModuleDescriptor moduleDescriptor, FqName fqName, LookupLocation lookupLocation) {
        MemberScope memberScopeN;
        moduleDescriptor.getClass();
        fqName.getClass();
        lookupLocation.getClass();
        FqNameUnsafe fqNameUnsafe = fqName.f73679a;
        if (!fqNameUnsafe.c()) {
            ClassifierDescriptor classifierDescriptorF = ((AbstractScopeAdapter) moduleDescriptor.d0(fqName.b()).n()).f(fqNameUnsafe.g(), lookupLocation);
            ClassDescriptor classDescriptor = classifierDescriptorF instanceof ClassDescriptor ? (ClassDescriptor) classifierDescriptorF : null;
            if (classDescriptor != null) {
                return classDescriptor;
            }
            ClassDescriptor classDescriptorB = b(moduleDescriptor, fqName.b(), lookupLocation);
            ClassifierDescriptor classifierDescriptorF2 = (classDescriptorB == null || (memberScopeN = classDescriptorB.N()) == null) ? null : memberScopeN.f(fqNameUnsafe.g(), lookupLocation);
            if (classifierDescriptorF2 instanceof ClassDescriptor) {
                return (ClassDescriptor) classifierDescriptorF2;
            }
        }
        return null;
    }
}
