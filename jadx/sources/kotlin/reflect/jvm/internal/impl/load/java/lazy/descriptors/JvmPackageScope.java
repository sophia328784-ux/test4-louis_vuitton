package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.collections.ArraysKt___ArraysKt$asIterable$$inlined$Iterable$1;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters;
import kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor;
import kotlin.reflect.jvm.internal.impl.incremental.UtilsKt;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupLocation;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaResolverContext;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaPackage;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedPackageMemberScope;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;
import kotlin.reflect.jvm.internal.impl.util.collectionUtils.ScopeUtilsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class JvmPackageScope implements MemberScope {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ KProperty[] f72979f = {Reflection.f71922a.h(new PropertyReference1Impl(JvmPackageScope.class, "kotlinScopes", "getKotlinScopes()[Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;", 0))};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LazyJavaResolverContext f72980b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LazyJavaPackageFragment f72981c;
    public final LazyJavaPackageScope d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final NotNullLazyValue f72982e;

    public JvmPackageScope(LazyJavaResolverContext lazyJavaResolverContext, JavaPackage javaPackage, LazyJavaPackageFragment lazyJavaPackageFragment) {
        lazyJavaResolverContext.getClass();
        javaPackage.getClass();
        lazyJavaPackageFragment.getClass();
        this.f72980b = lazyJavaResolverContext;
        this.f72981c = lazyJavaPackageFragment;
        this.d = new LazyJavaPackageScope(lazyJavaResolverContext, javaPackage, lazyJavaPackageFragment);
        this.f72982e = lazyJavaResolverContext.f72962a.f72944a.c(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.JvmPackageScope$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final JvmPackageScope f72983b;

            {
                this.f72983b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                JvmPackageScope jvmPackageScope = this.f72983b;
                Collection collectionValues = ((Map) StorageKt.a(jvmPackageScope.f72981c.f73018k, LazyJavaPackageFragment.p[0])).values();
                ArrayList arrayList = new ArrayList();
                Iterator it = collectionValues.iterator();
                while (it.hasNext()) {
                    DeserializedPackageMemberScope deserializedPackageMemberScopeA = jvmPackageScope.f72980b.f72962a.d.a(jvmPackageScope.f72981c, (KotlinJvmBinaryClass) it.next());
                    if (deserializedPackageMemberScopeA != null) {
                        arrayList.add(deserializedPackageMemberScopeA);
                    }
                }
                return (MemberScope[]) ScopeUtilsKt.b(arrayList).toArray(new MemberScope[0]);
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Set a() {
        MemberScope[] memberScopeArrH = h();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (MemberScope memberScope : memberScopeArrH) {
            CollectionsKt.j(linkedHashSet, memberScope.a());
        }
        linkedHashSet.addAll(this.d.a());
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Collection b(Name name, LookupLocation lookupLocation) {
        name.getClass();
        lookupLocation.getClass();
        i(name, lookupLocation);
        MemberScope[] memberScopeArrH = h();
        Collection collectionB = this.d.b(name, lookupLocation);
        for (MemberScope memberScope : memberScopeArrH) {
            collectionB = ScopeUtilsKt.a(collectionB, memberScope.b(name, lookupLocation));
        }
        return collectionB == null ? EmptySet.f71770b : collectionB;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Collection c(Name name, LookupLocation lookupLocation) {
        name.getClass();
        lookupLocation.getClass();
        i(name, lookupLocation);
        MemberScope[] memberScopeArrH = h();
        this.d.getClass();
        Collection collectionA = EmptyList.f71768b;
        for (MemberScope memberScope : memberScopeArrH) {
            collectionA = ScopeUtilsKt.a(collectionA, memberScope.c(name, lookupLocation));
        }
        return collectionA == null ? EmptySet.f71770b : collectionA;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Set d() {
        MemberScope[] memberScopeArrH = h();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (MemberScope memberScope : memberScopeArrH) {
            CollectionsKt.j(linkedHashSet, memberScope.d());
        }
        linkedHashSet.addAll(this.d.d());
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Set e() {
        MemberScope[] memberScopeArrH = h();
        memberScopeArrH.getClass();
        HashSet hashSetA = MemberScopeKt.a(memberScopeArrH.length == 0 ? EmptyList.f71768b : new ArraysKt___ArraysKt$asIterable$$inlined$Iterable$1(memberScopeArrH));
        if (hashSetA == null) {
            return null;
        }
        hashSetA.addAll(this.d.e());
        return hashSetA;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public final ClassifierDescriptor f(Name name, LookupLocation lookupLocation) {
        name.getClass();
        lookupLocation.getClass();
        i(name, lookupLocation);
        LazyJavaPackageScope lazyJavaPackageScope = this.d;
        lazyJavaPackageScope.getClass();
        ClassifierDescriptor classifierDescriptor = null;
        ClassDescriptor classDescriptorV = lazyJavaPackageScope.v(name, null);
        if (classDescriptorV != null) {
            return classDescriptorV;
        }
        for (MemberScope memberScope : h()) {
            ClassifierDescriptor classifierDescriptorF = memberScope.f(name, lookupLocation);
            if (classifierDescriptorF != null) {
                if (!(classifierDescriptorF instanceof ClassifierDescriptorWithTypeParameters) || !((MemberDescriptor) classifierDescriptorF).c0()) {
                    return classifierDescriptorF;
                }
                if (classifierDescriptor == null) {
                    classifierDescriptor = classifierDescriptorF;
                }
            }
        }
        return classifierDescriptor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public final Collection g(DescriptorKindFilter descriptorKindFilter, Function1 function1) {
        descriptorKindFilter.getClass();
        function1.getClass();
        MemberScope[] memberScopeArrH = h();
        Collection collectionG = this.d.g(descriptorKindFilter, function1);
        for (MemberScope memberScope : memberScopeArrH) {
            collectionG = ScopeUtilsKt.a(collectionG, memberScope.g(descriptorKindFilter, function1));
        }
        return collectionG == null ? EmptySet.f71770b : collectionG;
    }

    public final MemberScope[] h() {
        return (MemberScope[]) StorageKt.a(this.f72982e, f72979f[0]);
    }

    public final void i(Name name, LookupLocation lookupLocation) {
        name.getClass();
        lookupLocation.getClass();
        UtilsKt.b(this.f72980b.f72962a.n, lookupLocation, this.f72981c, name);
    }

    public final String toString() {
        return "scope for " + this.f72981c;
    }
}
