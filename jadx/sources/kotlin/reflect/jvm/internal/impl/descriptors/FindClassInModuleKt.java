package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.ResolutionAnchorProvider;
import kotlin.reflect.jvm.internal.impl.resolve.ResolutionAnchorProviderKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.AbstractScopeAdapter;
import kotlin.sequences.SequencesKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class FindClassInModuleKt {
    public static final ClassDescriptor a(ModuleDescriptor moduleDescriptor, ClassId classId) {
        moduleDescriptor.getClass();
        classId.getClass();
        ClassifierDescriptor classifierDescriptorB = b(moduleDescriptor, classId);
        if (classifierDescriptorB instanceof ClassDescriptor) {
            return (ClassDescriptor) classifierDescriptorB;
        }
        return null;
    }

    public static final ClassifierDescriptor b(ModuleDescriptor moduleDescriptor, ClassId classId) {
        moduleDescriptor.getClass();
        classId.getClass();
        FqName fqName = classId.f73676b;
        FqName fqName2 = classId.f73675a;
        ResolutionAnchorProvider resolutionAnchorProvider = (ResolutionAnchorProvider) moduleDescriptor.C0(ResolutionAnchorProviderKt.f73858a);
        ModuleDescriptor moduleDescriptorA = resolutionAnchorProvider != null ? resolutionAnchorProvider.a() : null;
        if (moduleDescriptorA == null) {
            PackageViewDescriptor packageViewDescriptorD0 = moduleDescriptor.d0(fqName2);
            FqNameUnsafe fqNameUnsafe = fqName.f73679a;
            fqNameUnsafe.getClass();
            List listF = FqNameUnsafe.f(fqNameUnsafe);
            ClassifierDescriptor classifierDescriptorF = ((AbstractScopeAdapter) packageViewDescriptorD0.n()).f((Name) CollectionsKt.B(listF), NoLookupLocation.FROM_DESERIALIZATION);
            if (classifierDescriptorF != null) {
                for (Name name : listF.subList(1, listF.size())) {
                    if (classifierDescriptorF instanceof ClassDescriptor) {
                        ClassifierDescriptor classifierDescriptorF2 = ((ClassDescriptor) classifierDescriptorF).N().f(name, NoLookupLocation.FROM_DESERIALIZATION);
                        classifierDescriptorF = classifierDescriptorF2 instanceof ClassDescriptor ? (ClassDescriptor) classifierDescriptorF2 : null;
                        if (classifierDescriptorF != null) {
                        }
                    }
                }
                return classifierDescriptorF;
            }
        } else {
            PackageViewDescriptor packageViewDescriptorD1 = moduleDescriptorA.d0(fqName2);
            FqNameUnsafe fqNameUnsafe2 = fqName.f73679a;
            fqNameUnsafe2.getClass();
            List listF2 = FqNameUnsafe.f(fqNameUnsafe2);
            ClassifierDescriptor classifierDescriptorF3 = ((AbstractScopeAdapter) packageViewDescriptorD1.n()).f((Name) CollectionsKt.B(listF2), NoLookupLocation.FROM_DESERIALIZATION);
            if (classifierDescriptorF3 == null) {
                classifierDescriptorF3 = null;
                break;
            }
            for (Name name2 : listF2.subList(1, listF2.size())) {
                if (classifierDescriptorF3 instanceof ClassDescriptor) {
                    ClassifierDescriptor classifierDescriptorF4 = ((ClassDescriptor) classifierDescriptorF3).N().f(name2, NoLookupLocation.FROM_DESERIALIZATION);
                    classifierDescriptorF3 = classifierDescriptorF4 instanceof ClassDescriptor ? (ClassDescriptor) classifierDescriptorF4 : null;
                    if (classifierDescriptorF3 != null) {
                    }
                }
                classifierDescriptorF3 = null;
            }
            if (classifierDescriptorF3 != null) {
                return classifierDescriptorF3;
            }
            PackageViewDescriptor packageViewDescriptorD2 = moduleDescriptor.d0(fqName2);
            FqNameUnsafe fqNameUnsafe3 = fqName.f73679a;
            fqNameUnsafe3.getClass();
            List listF3 = FqNameUnsafe.f(fqNameUnsafe3);
            ClassifierDescriptor classifierDescriptorF5 = ((AbstractScopeAdapter) packageViewDescriptorD2.n()).f((Name) CollectionsKt.B(listF3), NoLookupLocation.FROM_DESERIALIZATION);
            if (classifierDescriptorF5 != null) {
                for (Name name3 : listF3.subList(1, listF3.size())) {
                    if (classifierDescriptorF5 instanceof ClassDescriptor) {
                        ClassifierDescriptor classifierDescriptorF6 = ((ClassDescriptor) classifierDescriptorF5).N().f(name3, NoLookupLocation.FROM_DESERIALIZATION);
                        classifierDescriptorF5 = classifierDescriptorF6 instanceof ClassDescriptor ? (ClassDescriptor) classifierDescriptorF6 : null;
                        if (classifierDescriptorF5 != null) {
                        }
                    }
                }
                return classifierDescriptorF5;
            }
        }
        return null;
    }

    public static final ClassDescriptor c(ModuleDescriptor moduleDescriptor, ClassId classId, NotFoundClasses notFoundClasses) {
        moduleDescriptor.getClass();
        classId.getClass();
        notFoundClasses.getClass();
        ClassDescriptor classDescriptorA = a(moduleDescriptor, classId);
        return classDescriptorA != null ? classDescriptorA : notFoundClasses.a(classId, SequencesKt.x(SequencesKt.r(SequencesKt.n(classId, FindClassInModuleKt$findNonGenericClassAcrossDependencies$typeParametersCount$1.f72377b), new Function1() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt$$Lambda$0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                ((ClassId) obj).getClass();
                return 0;
            }
        })));
    }
}
