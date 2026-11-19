package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageViewDescriptor;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindExclude;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl;

/* JADX INFO: loaded from: classes4.dex */
public class SubpackagesScope extends MemberScopeImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ModuleDescriptor f72559b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FqName f72560c;

    public SubpackagesScope(ModuleDescriptor moduleDescriptor, FqName fqName) {
        moduleDescriptor.getClass();
        fqName.getClass();
        this.f72559b = moduleDescriptor;
        this.f72560c = fqName;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Set e() {
        return EmptySet.f71770b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public final Collection g(DescriptorKindFilter descriptorKindFilter, Function1 function1) {
        descriptorKindFilter.getClass();
        function1.getClass();
        DescriptorKindFilter.f73910c.getClass();
        if (!descriptorKindFilter.a(DescriptorKindFilter.g)) {
            return EmptyList.f71768b;
        }
        FqName fqName = this.f72560c;
        if (fqName.f73679a.c() && descriptorKindFilter.f73917a.contains(DescriptorKindExclude.TopLevelPackages.f73909a)) {
            return EmptyList.f71768b;
        }
        ModuleDescriptor moduleDescriptor = this.f72559b;
        Collection collectionM = moduleDescriptor.m(fqName, function1);
        ArrayList arrayList = new ArrayList(collectionM.size());
        Iterator it = collectionM.iterator();
        while (it.hasNext()) {
            Name nameG = ((FqName) it.next()).f73679a.g();
            if (((Boolean) function1.invoke(nameG)).booleanValue()) {
                nameG.getClass();
                PackageViewDescriptor packageViewDescriptor = null;
                if (!nameG.f73688c) {
                    PackageViewDescriptor packageViewDescriptorD0 = moduleDescriptor.d0(fqName.a(nameG));
                    if (!packageViewDescriptorD0.isEmpty()) {
                        packageViewDescriptor = packageViewDescriptorD0;
                    }
                }
                if (packageViewDescriptor != null) {
                    arrayList.add(packageViewDescriptor);
                }
            }
        }
        return arrayList;
    }

    public final String toString() {
        return "subpackages of " + this.f72560c + " from " + this.f72559b;
    }
}
