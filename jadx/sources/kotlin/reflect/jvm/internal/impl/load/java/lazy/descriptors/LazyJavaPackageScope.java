package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import defpackage.v40;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupLocation;
import kotlin.reflect.jvm.internal.impl.load.java.JavaClassFinder;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.JavaResolverComponents;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaResolverContext;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaPackage;
import kotlin.reflect.jvm.internal.impl.load.java.structure.LightClassOriginKind;
import kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinClassFinder;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinClassFinderKt;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.MetadataVersion;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.name.SpecialNames;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassData;
import kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNullable;
import kotlin.reflect.jvm.internal.impl.storage.NullableLazyValue;
import kotlin.reflect.jvm.internal.impl.utils.FunctionsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class LazyJavaPackageScope extends LazyJavaStaticScope {
    public static final /* synthetic */ int r = 0;
    public final JavaPackage n;
    public final LazyJavaPackageFragment o;
    public final NullableLazyValue p;
    public final MemoizedFunctionToNullable q;

    public static final class FindClassRequest {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Name f73027a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final JavaClass f73028b;

        public FindClassRequest(Name name, JavaClass javaClass) {
            name.getClass();
            this.f73027a = name;
            this.f73028b = javaClass;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof FindClassRequest) {
                return Intrinsics.c(this.f73027a, ((FindClassRequest) obj).f73027a);
            }
            return false;
        }

        public final int hashCode() {
            return this.f73027a.hashCode();
        }
    }

    public static abstract class KotlinClassLookupResult {

        public static final class Found extends KotlinClassLookupResult {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final ClassDescriptor f73029a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Found(ClassDescriptor classDescriptor) {
                super(null);
                classDescriptor.getClass();
                this.f73029a = classDescriptor;
            }
        }

        public static final class NotFound extends KotlinClassLookupResult {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final NotFound f73030a = new NotFound(null);
        }

        public static final class SyntheticClass extends KotlinClassLookupResult {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final SyntheticClass f73031a = new SyntheticClass(null);
        }

        public KotlinClassLookupResult(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaPackageScope(final LazyJavaResolverContext lazyJavaResolverContext, JavaPackage javaPackage, LazyJavaPackageFragment lazyJavaPackageFragment) {
        super(lazyJavaResolverContext);
        lazyJavaResolverContext.getClass();
        javaPackage.getClass();
        lazyJavaPackageFragment.getClass();
        this.n = javaPackage;
        this.o = lazyJavaPackageFragment;
        JavaResolverComponents javaResolverComponents = lazyJavaResolverContext.f72962a;
        this.p = javaResolverComponents.f72944a.e(new Function0(lazyJavaResolverContext, this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageScope$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final LazyJavaResolverContext f73023b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final LazyJavaPackageScope f73024c;

            {
                this.f73023b = lazyJavaResolverContext;
                this.f73024c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i2 = LazyJavaPackageScope.r;
                this.f73023b.f72962a.f72945b.c(this.f73024c.o.f72537f);
                return null;
            }
        });
        this.q = javaResolverComponents.f72944a.g(new Function1(this, lazyJavaResolverContext) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageScope$$Lambda$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final LazyJavaPackageScope f73025b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final LazyJavaResolverContext f73026c;

            {
                this.f73025b = this;
                this.f73026c = lazyJavaResolverContext;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Object found;
                LazyJavaPackageScope.FindClassRequest findClassRequest = (LazyJavaPackageScope.FindClassRequest) obj;
                int i2 = LazyJavaPackageScope.r;
                findClassRequest.getClass();
                LazyJavaPackageScope lazyJavaPackageScope = this.f73025b;
                ClassId classId = new ClassId(lazyJavaPackageScope.o.f72537f, findClassRequest.f73027a);
                JavaClass javaClassA = findClassRequest.f73028b;
                LazyJavaResolverContext lazyJavaResolverContext2 = this.f73026c;
                KotlinClassFinder.Result.KotlinClass kotlinClassC = javaClassA != null ? lazyJavaResolverContext2.f72962a.f72946c.c(javaClassA, lazyJavaPackageScope.w()) : lazyJavaResolverContext2.f72962a.f72946c.a(classId, lazyJavaPackageScope.w());
                KotlinJvmBinaryClass kotlinJvmBinaryClass = kotlinClassC != null ? kotlinClassC.f73256a : null;
                ClassId classIdD = kotlinJvmBinaryClass != null ? kotlinJvmBinaryClass.d() : null;
                if (classIdD == null || (!classIdD.g() && !classIdD.f73677c)) {
                    if (kotlinJvmBinaryClass == null) {
                        found = LazyJavaPackageScope.KotlinClassLookupResult.NotFound.f73030a;
                    } else if (kotlinJvmBinaryClass.c().f73275a == KotlinClassHeader.Kind.CLASS) {
                        DeserializedDescriptorResolver deserializedDescriptorResolver = lazyJavaPackageScope.f73032b.f72962a.d;
                        deserializedDescriptorResolver.getClass();
                        ClassData classDataF = deserializedDescriptorResolver.f(kotlinJvmBinaryClass);
                        ClassDescriptor classDescriptorA = classDataF == null ? null : deserializedDescriptorResolver.c().u.a(kotlinJvmBinaryClass.d(), classDataF);
                        found = classDescriptorA != null ? new LazyJavaPackageScope.KotlinClassLookupResult.Found(classDescriptorA) : LazyJavaPackageScope.KotlinClassLookupResult.NotFound.f73030a;
                    } else {
                        found = LazyJavaPackageScope.KotlinClassLookupResult.SyntheticClass.f73031a;
                    }
                    if (found instanceof LazyJavaPackageScope.KotlinClassLookupResult.Found) {
                        return ((LazyJavaPackageScope.KotlinClassLookupResult.Found) found).f73029a;
                    }
                    if (!(found instanceof LazyJavaPackageScope.KotlinClassLookupResult.SyntheticClass)) {
                        if (!(found instanceof LazyJavaPackageScope.KotlinClassLookupResult.NotFound)) {
                            v40.g();
                            return null;
                        }
                        if (javaClassA == null) {
                            javaClassA = lazyJavaResolverContext2.f72962a.f72945b.a(new JavaClassFinder.Request(classId, null, null, 4, null));
                        }
                        JavaClass javaClass = javaClassA;
                        if (LightClassOriginKind.BINARY == null) {
                            StringBuilder sb = new StringBuilder("Couldn't find kotlin binary class for light class created by kotlin binary file\nJavaClass: ");
                            sb.append(javaClass);
                            sb.append("\nClassId: ");
                            sb.append(classId);
                            sb.append("\nfindKotlinClass(JavaClass) = ");
                            KotlinClassFinder kotlinClassFinder = lazyJavaResolverContext2.f72962a.f72946c;
                            MetadataVersion metadataVersionW = lazyJavaPackageScope.w();
                            kotlinClassFinder.getClass();
                            javaClass.getClass();
                            metadataVersionW.getClass();
                            KotlinClassFinder.Result.KotlinClass kotlinClassC2 = kotlinClassFinder.c(javaClass, metadataVersionW);
                            sb.append(kotlinClassC2 != null ? kotlinClassC2.f73256a : null);
                            sb.append("\nfindKotlinClass(ClassId) = ");
                            sb.append(KotlinClassFinderKt.a(lazyJavaResolverContext2.f72962a.f72946c, classId, lazyJavaPackageScope.w()));
                            sb.append('\n');
                            throw new IllegalStateException(sb.toString());
                        }
                        FqName fqNameC = javaClass != null ? javaClass.c() : null;
                        if (fqNameC != null && !fqNameC.f73679a.c() && fqNameC.b().equals(lazyJavaPackageScope.o.f72537f)) {
                            LazyJavaClassDescriptor lazyJavaClassDescriptor = new LazyJavaClassDescriptor(lazyJavaResolverContext2, lazyJavaPackageScope.o, javaClass, null, 8, null);
                            lazyJavaResolverContext2.f72962a.s.a(lazyJavaClassDescriptor);
                            return lazyJavaClassDescriptor;
                        }
                    }
                }
                return null;
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Collection c(Name name, LookupLocation lookupLocation) {
        name.getClass();
        lookupLocation.getClass();
        return EmptyList.f71768b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public final ClassifierDescriptor f(Name name, LookupLocation lookupLocation) {
        name.getClass();
        lookupLocation.getClass();
        return v(name, null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public final Collection g(DescriptorKindFilter descriptorKindFilter, Function1 function1) {
        descriptorKindFilter.getClass();
        function1.getClass();
        DescriptorKindFilter.Companion companion = DescriptorKindFilter.f73910c;
        companion.getClass();
        int i2 = DescriptorKindFilter.f73916k;
        companion.getClass();
        if (!descriptorKindFilter.a(DescriptorKindFilter.d | i2)) {
            return EmptyList.f71768b;
        }
        Iterable iterable = (Iterable) this.d.mo47invoke();
        ArrayList arrayList = new ArrayList();
        for (Object obj : iterable) {
            DeclarationDescriptor declarationDescriptor = (DeclarationDescriptor) obj;
            if (declarationDescriptor instanceof ClassDescriptor) {
                Name name = ((ClassDescriptor) declarationDescriptor).getName();
                name.getClass();
                if (((Boolean) function1.invoke(name)).booleanValue()) {
                    arrayList.add(obj);
                }
            }
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final Set h(DescriptorKindFilter descriptorKindFilter, Function1 function1) {
        descriptorKindFilter.getClass();
        DescriptorKindFilter.f73910c.getClass();
        if (!descriptorKindFilter.a(DescriptorKindFilter.d)) {
            return EmptySet.f71770b;
        }
        Set set = (Set) this.p.mo47invoke();
        if (set != null) {
            HashSet hashSet = new HashSet();
            Iterator it = set.iterator();
            while (it.hasNext()) {
                hashSet.add(Name.e((String) it.next()));
            }
            return hashSet;
        }
        if (function1 == null) {
            function1 = FunctionsKt.f74385a;
        }
        EmptyList<JavaClass> emptyListB = this.n.B(function1);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (JavaClass javaClass : emptyListB) {
            javaClass.getClass();
            Name name = LightClassOriginKind.SOURCE == null ? null : javaClass.getName();
            if (name != null) {
                linkedHashSet.add(name);
            }
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final Set i(DescriptorKindFilter descriptorKindFilter, Function1 function1) {
        descriptorKindFilter.getClass();
        return EmptySet.f71770b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final DeclaredMemberIndex k() {
        return DeclaredMemberIndex.Empty.f72978a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final void m(LinkedHashSet linkedHashSet, Name name) {
        name.getClass();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final Set o(DescriptorKindFilter descriptorKindFilter) {
        descriptorKindFilter.getClass();
        return EmptySet.f71770b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final DeclarationDescriptor q() {
        return this.o;
    }

    public final ClassDescriptor v(Name name, JavaClass javaClass) {
        Name name2 = SpecialNames.f73691a;
        name.getClass();
        String strB = name.b();
        strB.getClass();
        if (strB.length() <= 0 || name.f73688c) {
            return null;
        }
        Set set = (Set) this.p.mo47invoke();
        if (javaClass == null && set != null && !set.contains(name.b())) {
            return null;
        }
        return (ClassDescriptor) this.q.invoke(new FindClassRequest(name, javaClass));
    }

    public final MetadataVersion w() {
        return this.f73032b.f72962a.d.c().f73990c.a();
    }
}
