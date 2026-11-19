package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import kotlin.Lazy;
import kotlin.reflect.jvm.internal.impl.load.java.JavaTypeQualifiersByElementType;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolver;

/* JADX INFO: loaded from: classes4.dex */
public final class LazyJavaResolverContext {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final JavaResolverComponents f72962a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TypeParameterResolver f72963b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Lazy f72964c;
    public final JavaTypeResolver d;

    public LazyJavaResolverContext(JavaResolverComponents javaResolverComponents, TypeParameterResolver typeParameterResolver, Lazy<JavaTypeQualifiersByElementType> lazy) {
        javaResolverComponents.getClass();
        typeParameterResolver.getClass();
        lazy.getClass();
        this.f72962a = javaResolverComponents;
        this.f72963b = typeParameterResolver;
        this.f72964c = lazy;
        this.d = new JavaTypeResolver(this, typeParameterResolver);
    }
}
