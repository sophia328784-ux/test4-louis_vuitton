package kotlin.reflect.jvm.internal.impl.descriptors.runtime.components;

import defpackage.o60;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaElement;
import kotlin.reflect.jvm.internal.impl.load.java.sources.JavaSourceElement;
import kotlin.reflect.jvm.internal.impl.load.java.sources.JavaSourceElementFactory;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaElement;

/* JADX INFO: loaded from: classes4.dex */
public final class RuntimeSourceElementFactory implements JavaSourceElementFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final RuntimeSourceElementFactory f72589a = new RuntimeSourceElementFactory();

    public static final class RuntimeSourceElement implements JavaSourceElement {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ReflectJavaElement f72590b;

        public RuntimeSourceElement(ReflectJavaElement reflectJavaElement) {
            reflectJavaElement.getClass();
            this.f72590b = reflectJavaElement;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.sources.JavaSourceElement
        public final ReflectJavaElement b() {
            return this.f72590b;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            o60.z(RuntimeSourceElement.class, sb, ": ");
            sb.append(this.f72590b);
            return sb.toString();
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.sources.JavaSourceElementFactory
    public final RuntimeSourceElement a(JavaElement javaElement) {
        javaElement.getClass();
        return new RuntimeSourceElement((ReflectJavaElement) javaElement);
    }
}
