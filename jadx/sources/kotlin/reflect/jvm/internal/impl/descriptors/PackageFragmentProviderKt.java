package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.ArrayList;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: loaded from: classes4.dex */
public abstract class PackageFragmentProviderKt {
    public static final void a(PackageFragmentProvider packageFragmentProvider, FqName fqName, ArrayList arrayList) {
        packageFragmentProvider.getClass();
        fqName.getClass();
        if (packageFragmentProvider instanceof PackageFragmentProviderOptimized) {
            ((PackageFragmentProviderOptimized) packageFragmentProvider).b(fqName, arrayList);
        } else {
            arrayList.addAll(packageFragmentProvider.a(fqName));
        }
    }

    public static final boolean b(PackageFragmentProvider packageFragmentProvider, FqName fqName) {
        packageFragmentProvider.getClass();
        fqName.getClass();
        return packageFragmentProvider instanceof PackageFragmentProviderOptimized ? ((PackageFragmentProviderOptimized) packageFragmentProvider).c(fqName) : c(packageFragmentProvider, fqName).isEmpty();
    }

    public static final ArrayList c(PackageFragmentProvider packageFragmentProvider, FqName fqName) {
        packageFragmentProvider.getClass();
        fqName.getClass();
        ArrayList arrayList = new ArrayList();
        a(packageFragmentProvider, fqName, arrayList);
        return arrayList;
    }
}
