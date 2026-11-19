package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.InitializedLazyImpl;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaPackage;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageFragment;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaPackage;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.storage.CacheWithNotNullValues;

/* JADX INFO: loaded from: classes4.dex */
public final class LazyJavaPackageFragmentProvider implements PackageFragmentProviderOptimized {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LazyJavaResolverContext f72958a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CacheWithNotNullValues f72959b;

    public LazyJavaPackageFragmentProvider(JavaResolverComponents javaResolverComponents) {
        javaResolverComponents.getClass();
        LazyJavaResolverContext lazyJavaResolverContext = new LazyJavaResolverContext(javaResolverComponents, TypeParameterResolver.EMPTY.f72971a, new InitializedLazyImpl(null));
        this.f72958a = lazyJavaResolverContext;
        this.f72959b = lazyJavaResolverContext.f72962a.f72944a.b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProvider
    public final List a(FqName fqName) {
        fqName.getClass();
        return CollectionsKt.Q(d(fqName));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized
    public final void b(FqName fqName, ArrayList arrayList) {
        fqName.getClass();
        LazyJavaPackageFragment lazyJavaPackageFragmentD = d(fqName);
        if (lazyJavaPackageFragmentD != null) {
            arrayList.add(lazyJavaPackageFragmentD);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized
    public final boolean c(FqName fqName) {
        fqName.getClass();
        this.f72958a.f72962a.f72945b.b(fqName);
        return false;
    }

    public final LazyJavaPackageFragment d(FqName fqName) {
        final ReflectJavaPackage reflectJavaPackageB = this.f72958a.f72962a.f72945b.b(fqName);
        return (LazyJavaPackageFragment) this.f72959b.a(fqName, new Function0(this, reflectJavaPackageB) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaPackageFragmentProvider$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final LazyJavaPackageFragmentProvider f72960b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final JavaPackage f72961c;

            {
                this.f72960b = this;
                this.f72961c = reflectJavaPackageB;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return new LazyJavaPackageFragment(this.f72960b.f72958a, this.f72961c);
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProvider
    public final Collection m(FqName fqName, Function1 function1) {
        fqName.getClass();
        function1.getClass();
        LazyJavaPackageFragment lazyJavaPackageFragmentD = d(fqName);
        List list = lazyJavaPackageFragmentD != null ? (List) lazyJavaPackageFragmentD.m.mo47invoke() : null;
        if (list == null) {
            list = EmptyList.f71768b;
        }
        return list;
    }

    public final String toString() {
        return "LazyJavaPackageFragmentProvider of module " + this.f72958a.f72962a.o;
    }
}
