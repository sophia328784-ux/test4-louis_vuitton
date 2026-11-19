package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.annotation.Annotation;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaMethod;

/* JADX INFO: loaded from: classes4.dex */
public final class ReflectJavaMethod extends ReflectJavaMember implements JavaMethod {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Method f72630a;

    public ReflectJavaMethod(Method method) {
        method.getClass();
        this.f72630a = method;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaMethod
    public final boolean G() {
        Object defaultValue = this.f72630a.getDefaultValue();
        ReflectJavaAnnotationArgument reflectJavaAnnotationArgumentA = null;
        if (defaultValue != null) {
            ReflectJavaAnnotationArgument.f72608b.getClass();
            reflectJavaAnnotationArgumentA = ReflectJavaAnnotationArgument.Factory.a(null, defaultValue);
        }
        return reflectJavaAnnotationArgumentA != null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaMember
    public final Member H() {
        return this.f72630a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaTypeParameterListOwner
    public final ArrayList getTypeParameters() {
        TypeVariable<Method>[] typeParameters = this.f72630a.getTypeParameters();
        typeParameters.getClass();
        ArrayList arrayList = new ArrayList(typeParameters.length);
        for (TypeVariable<Method> typeVariable : typeParameters) {
            arrayList.add(new ReflectJavaTypeParameter(typeVariable));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaMethod
    public final List h() {
        Method method = this.f72630a;
        Type[] genericParameterTypes = method.getGenericParameterTypes();
        genericParameterTypes.getClass();
        Annotation[][] parameterAnnotations = method.getParameterAnnotations();
        parameterAnnotations.getClass();
        return I(genericParameterTypes, parameterAnnotations, method.isVarArgs());
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaMethod
    public final ReflectJavaType z() {
        ReflectJavaType.Factory factory = ReflectJavaType.f72635a;
        Type genericReturnType = this.f72630a.getGenericReturnType();
        genericReturnType.getClass();
        factory.getClass();
        return ReflectJavaType.Factory.a(genericReturnType);
    }
}
