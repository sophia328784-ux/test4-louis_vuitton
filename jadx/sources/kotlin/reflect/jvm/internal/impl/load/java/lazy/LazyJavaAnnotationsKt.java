package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner;

/* JADX INFO: loaded from: classes4.dex */
public abstract class LazyJavaAnnotationsKt {
    public static final LazyJavaAnnotations a(LazyJavaResolverContext lazyJavaResolverContext, JavaAnnotationOwner javaAnnotationOwner) {
        lazyJavaResolverContext.getClass();
        javaAnnotationOwner.getClass();
        return new LazyJavaAnnotations(lazyJavaResolverContext, javaAnnotationOwner, false, 4, null);
    }
}
