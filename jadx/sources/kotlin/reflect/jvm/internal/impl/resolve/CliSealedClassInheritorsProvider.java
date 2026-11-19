package kotlin.reflect.jvm.internal.impl.resolve;

import java.util.Iterator;
import java.util.LinkedHashSet;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;

/* JADX INFO: loaded from: classes4.dex */
public final class CliSealedClassInheritorsProvider extends SealedClassInheritorsProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CliSealedClassInheritorsProvider f73824a = new CliSealedClassInheritorsProvider();

    public static final void a(ClassDescriptor classDescriptor, LinkedHashSet linkedHashSet, MemberScope memberScope, boolean z) {
        for (DeclarationDescriptor declarationDescriptor : ResolutionScope.DefaultImpls.a(memberScope, DescriptorKindFilter.n, 2)) {
            if (declarationDescriptor instanceof ClassDescriptor) {
                ClassDescriptor classDescriptorS = (ClassDescriptor) declarationDescriptor;
                if (classDescriptorS.c0()) {
                    Name name = classDescriptorS.getName();
                    name.getClass();
                    ClassifierDescriptor classifierDescriptorF = memberScope.f(name, NoLookupLocation.WHEN_GET_ALL_DESCRIPTORS);
                    classDescriptorS = classifierDescriptorF instanceof ClassDescriptor ? (ClassDescriptor) classifierDescriptorF : classifierDescriptorF instanceof TypeAliasDescriptor ? ((TypeAliasDescriptor) classifierDescriptorF).s() : null;
                }
                if (classDescriptorS == null) {
                    continue;
                } else {
                    if (classDescriptor == null) {
                        DescriptorUtils.a(27);
                        throw null;
                    }
                    int i2 = DescriptorUtils.f73834a;
                    Iterator it = classDescriptorS.j().i().iterator();
                    while (it.hasNext()) {
                        if (DescriptorUtils.n((KotlinType) it.next(), classDescriptor.y0())) {
                            linkedHashSet.add(classDescriptorS);
                            break;
                        }
                    }
                    if (z) {
                        MemberScope memberScopeN = classDescriptorS.N();
                        memberScopeN.getClass();
                        a(classDescriptor, linkedHashSet, memberScopeN, z);
                    }
                }
            }
        }
    }
}
