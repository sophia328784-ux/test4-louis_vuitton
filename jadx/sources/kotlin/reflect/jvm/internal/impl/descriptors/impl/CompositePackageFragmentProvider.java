package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProvider;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderKt;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: loaded from: classes4.dex */
public final class CompositePackageFragmentProvider implements PackageFragmentProviderOptimized {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f72478a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f72479b;

    public CompositePackageFragmentProvider(List<? extends PackageFragmentProvider> list, String str) {
        list.getClass();
        str.getClass();
        this.f72478a = list;
        this.f72479b = str;
        list.size();
        CollectionsKt.B0(list).size();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProvider
    public final List a(FqName fqName) {
        fqName.getClass();
        ArrayList arrayList = new ArrayList();
        Iterator it = this.f72478a.iterator();
        while (it.hasNext()) {
            PackageFragmentProviderKt.a((PackageFragmentProvider) it.next(), fqName, arrayList);
        }
        return CollectionsKt.y0(arrayList);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized
    public final void b(FqName fqName, ArrayList arrayList) {
        fqName.getClass();
        Iterator it = this.f72478a.iterator();
        while (it.hasNext()) {
            PackageFragmentProviderKt.a((PackageFragmentProvider) it.next(), fqName, arrayList);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized
    public final boolean c(FqName fqName) {
        fqName.getClass();
        List list = this.f72478a;
        if ((list instanceof Collection) && list.isEmpty()) {
            return true;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (!PackageFragmentProviderKt.b((PackageFragmentProvider) it.next(), fqName)) {
                return false;
            }
        }
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProvider
    public final Collection m(FqName fqName, Function1 function1) {
        fqName.getClass();
        function1.getClass();
        HashSet hashSet = new HashSet();
        Iterator it = this.f72478a.iterator();
        while (it.hasNext()) {
            hashSet.addAll(((PackageFragmentProvider) it.next()).m(fqName, function1));
        }
        return hashSet;
    }

    public final String toString() {
        return this.f72479b;
    }
}
