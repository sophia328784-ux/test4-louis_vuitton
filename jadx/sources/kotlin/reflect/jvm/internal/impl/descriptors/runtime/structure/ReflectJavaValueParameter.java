package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import defpackage.o60;
import java.lang.annotation.Annotation;
import java.util.Collection;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaType;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaValueParameter;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: loaded from: classes4.dex */
public final class ReflectJavaValueParameter extends ReflectJavaElement implements JavaValueParameter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ReflectJavaType f72637a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Annotation[] f72638b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f72639c;
    public final boolean d;

    public ReflectJavaValueParameter(ReflectJavaType reflectJavaType, Annotation[] annotationArr, String str, boolean z) {
        reflectJavaType.getClass();
        annotationArr.getClass();
        this.f72637a = reflectJavaType;
        this.f72638b = annotationArr;
        this.f72639c = str;
        this.d = z;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner
    public final Collection getAnnotations() {
        return ReflectJavaAnnotationOwnerKt.b(this.f72638b);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaValueParameter
    public final Name getName() {
        String str = this.f72639c;
        if (str != null) {
            return Name.d(str);
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaValueParameter
    public final JavaType getType() {
        return this.f72637a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner
    public final JavaAnnotation j(FqName fqName) {
        fqName.getClass();
        return ReflectJavaAnnotationOwnerKt.a(this.f72638b, fqName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaValueParameter
    public final boolean n() {
        return this.d;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        o60.z(ReflectJavaValueParameter.class, sb, ": ");
        sb.append(this.d ? "vararg " : "");
        sb.append(getName());
        sb.append(": ");
        sb.append(this.f72637a);
        return sb.toString();
    }
}
