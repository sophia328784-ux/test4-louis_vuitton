package kotlin.reflect.jvm.internal.impl.load.java.components;

import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaClassConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaElement;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaField;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaMember;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: loaded from: classes4.dex */
public interface JavaResolverCache {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final JavaResolverCache f72929a = new AnonymousClass1();

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.load.java.components.JavaResolverCache$1, reason: invalid class name */
    public static class AnonymousClass1 implements JavaResolverCache {
        public static /* synthetic */ void f(int i2) {
            Object[] objArr = new Object[3];
            switch (i2) {
                case 1:
                    objArr[0] = "member";
                    break;
                case 2:
                case 4:
                case 6:
                case 8:
                    objArr[0] = "descriptor";
                    break;
                case 3:
                    objArr[0] = "element";
                    break;
                case 5:
                    objArr[0] = "field";
                    break;
                case 7:
                    objArr[0] = "javaClass";
                    break;
                default:
                    objArr[0] = "fqName";
                    break;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1";
            switch (i2) {
                case 1:
                case 2:
                    objArr[2] = "recordMethod";
                    break;
                case 3:
                case 4:
                    objArr[2] = "recordConstructor";
                    break;
                case 5:
                case 6:
                    objArr[2] = "recordField";
                    break;
                case 7:
                case 8:
                    objArr[2] = "recordClass";
                    break;
                default:
                    objArr[2] = "getClassResolvedFromSource";
                    break;
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.components.JavaResolverCache
        public final void a(JavaElement javaElement, JavaClassConstructorDescriptor javaClassConstructorDescriptor) {
            if (javaElement != null) {
                return;
            }
            f(3);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.components.JavaResolverCache
        public final void b(JavaMember javaMember, JavaMethodDescriptor javaMethodDescriptor) {
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.components.JavaResolverCache
        public final void c(JavaClass javaClass, LazyJavaClassDescriptor lazyJavaClassDescriptor) {
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.components.JavaResolverCache
        public final void d(JavaField javaField, PropertyDescriptor propertyDescriptor) {
            if (propertyDescriptor != null) {
                return;
            }
            f(6);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.components.JavaResolverCache
        public final void e(FqName fqName) {
        }
    }

    void a(JavaElement javaElement, JavaClassConstructorDescriptor javaClassConstructorDescriptor);

    void b(JavaMember javaMember, JavaMethodDescriptor javaMethodDescriptor);

    void c(JavaClass javaClass, LazyJavaClassDescriptor lazyJavaClassDescriptor);

    void d(JavaField javaField, PropertyDescriptor propertyDescriptor);

    void e(FqName fqName);
}
