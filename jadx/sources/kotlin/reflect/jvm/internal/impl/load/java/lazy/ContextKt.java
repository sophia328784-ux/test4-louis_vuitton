package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassOrPackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.load.java.AbstractAnnotationTypeQualifierResolver;
import kotlin.reflect.jvm.internal.impl.load.java.JavaTypeQualifiersByElementType;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ContextKt {
    public static LazyJavaResolverContext a(final LazyJavaResolverContext lazyJavaResolverContext, final ClassOrPackageFragmentDescriptor classOrPackageFragmentDescriptor, JavaClass javaClass, int i2) {
        if ((i2 & 2) != 0) {
            javaClass = null;
        }
        return new LazyJavaResolverContext(lazyJavaResolverContext.f72962a, javaClass != null ? new LazyJavaTypeParameterResolver(lazyJavaResolverContext, classOrPackageFragmentDescriptor, javaClass, 0) : lazyJavaResolverContext.f72963b, LazyKt.a(LazyThreadSafetyMode.NONE, new Function0(lazyJavaResolverContext, classOrPackageFragmentDescriptor) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.ContextKt$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final LazyJavaResolverContext f72940b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final ClassOrPackageFragmentDescriptor f72941c;

            {
                this.f72940b = lazyJavaResolverContext;
                this.f72941c = classOrPackageFragmentDescriptor;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                Annotations annotations = this.f72941c.getAnnotations();
                LazyJavaResolverContext lazyJavaResolverContext2 = this.f72940b;
                lazyJavaResolverContext2.getClass();
                annotations.getClass();
                return AbstractAnnotationTypeQualifierResolver.b(lazyJavaResolverContext2.f72962a.q, (JavaTypeQualifiersByElementType) lazyJavaResolverContext2.f72964c.getF71699b(), annotations);
            }
        }));
    }

    public static final LazyJavaResolverContext b(final LazyJavaResolverContext lazyJavaResolverContext, final Annotations annotations) {
        lazyJavaResolverContext.getClass();
        annotations.getClass();
        return annotations.isEmpty() ? lazyJavaResolverContext : new LazyJavaResolverContext(lazyJavaResolverContext.f72962a, lazyJavaResolverContext.f72963b, LazyKt.a(LazyThreadSafetyMode.NONE, new Function0(lazyJavaResolverContext, annotations) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.ContextKt$$Lambda$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final LazyJavaResolverContext f72942b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final Annotations f72943c;

            {
                this.f72942b = lazyJavaResolverContext;
                this.f72943c = annotations;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                LazyJavaResolverContext lazyJavaResolverContext2 = this.f72942b;
                lazyJavaResolverContext2.getClass();
                Annotations annotations2 = this.f72943c;
                annotations2.getClass();
                return AbstractAnnotationTypeQualifierResolver.b(lazyJavaResolverContext2.f72962a.q, (JavaTypeQualifiersByElementType) lazyJavaResolverContext2.f72964c.getF71699b(), annotations2);
            }
        }));
    }
}
