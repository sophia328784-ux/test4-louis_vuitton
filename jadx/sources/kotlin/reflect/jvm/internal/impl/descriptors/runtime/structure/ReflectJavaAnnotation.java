package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import defpackage.o60;
import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: loaded from: classes4.dex */
public final class ReflectJavaAnnotation extends ReflectJavaElement implements JavaAnnotation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Annotation f72607a;

    public ReflectJavaAnnotation(Annotation annotation) {
        annotation.getClass();
        this.f72607a = annotation;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation
    public final ArrayList b() throws IllegalAccessException, InvocationTargetException {
        Annotation annotation = this.f72607a;
        Method[] declaredMethods = JvmClassMappingKt.b(JvmClassMappingKt.a(annotation)).getDeclaredMethods();
        declaredMethods.getClass();
        ArrayList arrayList = new ArrayList(declaredMethods.length);
        for (Method method : declaredMethods) {
            ReflectJavaAnnotationArgument.Factory factory = ReflectJavaAnnotationArgument.f72608b;
            Object objInvoke = method.invoke(annotation, null);
            objInvoke.getClass();
            Name nameE = Name.e(method.getName());
            factory.getClass();
            arrayList.add(ReflectJavaAnnotationArgument.Factory.a(nameE, objInvoke));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation
    public final ClassId d() {
        return ReflectClassUtilKt.a(JvmClassMappingKt.b(JvmClassMappingKt.a(this.f72607a)));
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ReflectJavaAnnotation) {
            return this.f72607a == ((ReflectJavaAnnotation) obj).f72607a;
        }
        return false;
    }

    public final int hashCode() {
        return System.identityHashCode(this.f72607a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation
    public final ReflectJavaClass t() {
        return new ReflectJavaClass(JvmClassMappingKt.b(JvmClassMappingKt.a(this.f72607a)));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        o60.z(ReflectJavaAnnotation.class, sb, ": ");
        sb.append(this.f72607a);
        return sb.toString();
    }
}
