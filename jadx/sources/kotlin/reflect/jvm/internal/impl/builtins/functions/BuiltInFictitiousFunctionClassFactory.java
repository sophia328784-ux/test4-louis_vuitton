package kotlin.reflect.jvm.internal.impl.builtins.functions;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptySet;
import kotlin.reflect.jvm.internal.impl.builtins.BuiltInsPackageFragment;
import kotlin.reflect.jvm.internal.impl.builtins.FunctionInterfacePackageFragment;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.ClassDescriptorFactory;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class BuiltInFictitiousFunctionClassFactory implements ClassDescriptorFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StorageManager f72285a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ModuleDescriptor f72286b;

    public BuiltInFictitiousFunctionClassFactory(StorageManager storageManager, ModuleDescriptor moduleDescriptor) {
        storageManager.getClass();
        moduleDescriptor.getClass();
        this.f72285a = storageManager;
        this.f72286b = moduleDescriptor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.ClassDescriptorFactory
    public final Collection a(FqName fqName) {
        fqName.getClass();
        return EmptySet.f71770b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.ClassDescriptorFactory
    public final boolean b(FqName fqName, Name name) {
        fqName.getClass();
        name.getClass();
        String strB = name.b();
        strB.getClass();
        if (StringsKt.P(strB, "Function", false) || StringsKt.P(strB, "KFunction", false) || StringsKt.P(strB, "SuspendFunction", false) || StringsKt.P(strB, "KSuspendFunction", false)) {
            FunctionTypeKindExtractor.f72297c.getClass();
            if (FunctionTypeKindExtractor.d.a(strB, fqName) != null) {
                return true;
            }
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.ClassDescriptorFactory
    public final ClassDescriptor c(ClassId classId) {
        classId.getClass();
        if (classId.f73677c || classId.g()) {
            return null;
        }
        String str = classId.f73676b.f73679a.f73683a;
        if (!StringsKt.k(str, "Function", false)) {
            return null;
        }
        FqName fqName = classId.f73675a;
        FunctionTypeKindExtractor.f72297c.getClass();
        FunctionTypeKindExtractor.KindWithArity kindWithArityA = FunctionTypeKindExtractor.d.a(str, fqName);
        if (kindWithArityA == null) {
            return null;
        }
        FunctionTypeKind functionTypeKind = kindWithArityA.f72300a;
        int i2 = kindWithArityA.f72301b;
        List listA0 = this.f72286b.d0(fqName).a0();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listA0) {
            if (obj instanceof BuiltInsPackageFragment) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (obj2 instanceof FunctionInterfacePackageFragment) {
                arrayList2.add(obj2);
            }
        }
        PackageFragmentDescriptor packageFragmentDescriptor = (FunctionInterfacePackageFragment) CollectionsKt.firstOrNull(arrayList2);
        if (packageFragmentDescriptor == null) {
            packageFragmentDescriptor = (BuiltInsPackageFragment) CollectionsKt.B(arrayList);
        }
        return new FunctionClassDescriptor(this.f72285a, packageFragmentDescriptor, functionTypeKind, i2);
    }
}
