package kotlin.reflect.jvm.internal.impl.resolve.jvm;

import kotlin.collections.CollectionsKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.java.components.JavaResolverCache;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaPackageFragmentProvider;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageFragment;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageScope;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass;
import kotlin.reflect.jvm.internal.impl.load.java.structure.LightClassOriginKind;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: loaded from: classes4.dex */
public final class JavaDescriptorResolver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LazyJavaPackageFragmentProvider f73897a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final JavaResolverCache f73898b;

    public JavaDescriptorResolver(LazyJavaPackageFragmentProvider lazyJavaPackageFragmentProvider, JavaResolverCache javaResolverCache) {
        lazyJavaPackageFragmentProvider.getClass();
        javaResolverCache.getClass();
        this.f73897a = lazyJavaPackageFragmentProvider;
        this.f73898b = javaResolverCache;
    }

    public final ClassDescriptor a(JavaClass javaClass) {
        FqName fqNameC = javaClass.c();
        if (fqNameC != null && LightClassOriginKind.SOURCE == null) {
            this.f73898b.e(fqNameC);
            return null;
        }
        ReflectJavaClass reflectJavaClassL = javaClass.l();
        if (reflectJavaClassL != null) {
            ClassDescriptor classDescriptorA = a(reflectJavaClassL);
            MemberScope memberScopeN = classDescriptorA != null ? classDescriptorA.N() : null;
            ClassifierDescriptor classifierDescriptorF = memberScopeN != null ? memberScopeN.f(javaClass.getName(), NoLookupLocation.FROM_JAVA_LOADER) : null;
            if (classifierDescriptorF instanceof ClassDescriptor) {
                return (ClassDescriptor) classifierDescriptorF;
            }
        } else if (fqNameC != null) {
            FqName fqNameB = fqNameC.b();
            LazyJavaPackageFragmentProvider lazyJavaPackageFragmentProvider = this.f73897a;
            lazyJavaPackageFragmentProvider.getClass();
            LazyJavaPackageFragment lazyJavaPackageFragment = (LazyJavaPackageFragment) CollectionsKt.firstOrNull(CollectionsKt.Q(lazyJavaPackageFragmentProvider.d(fqNameB)));
            if (lazyJavaPackageFragment != null) {
                LazyJavaPackageScope lazyJavaPackageScope = lazyJavaPackageFragment.l.d;
                lazyJavaPackageScope.getClass();
                return lazyJavaPackageScope.v(javaClass.getName(), javaClass);
            }
        }
        return null;
    }
}
