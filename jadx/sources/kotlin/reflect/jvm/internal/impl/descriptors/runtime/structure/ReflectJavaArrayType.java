package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import defpackage.bm;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.Collection;
import kotlin.collections.EmptyList;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaArrayType;

/* JADX INFO: loaded from: classes4.dex */
public final class ReflectJavaArrayType extends ReflectJavaType implements JavaArrayType {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Type f72612b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ReflectJavaType f72613c;
    public final EmptyList d;

    public ReflectJavaArrayType(Type type) {
        ReflectJavaType reflectJavaTypeA;
        type.getClass();
        this.f72612b = type;
        boolean z = type instanceof GenericArrayType;
        ReflectJavaType.Factory factory = ReflectJavaType.f72635a;
        if (!z) {
            if (type instanceof Class) {
                Class cls = (Class) type;
                if (cls.isArray()) {
                    Class<?> componentType = cls.getComponentType();
                    componentType.getClass();
                    factory.getClass();
                    reflectJavaTypeA = ReflectJavaType.Factory.a(componentType);
                }
            }
            bm.g("Not an array type (", type.getClass(), "): ", type);
            throw null;
        }
        Type genericComponentType = ((GenericArrayType) type).getGenericComponentType();
        genericComponentType.getClass();
        factory.getClass();
        reflectJavaTypeA = ReflectJavaType.Factory.a(genericComponentType);
        this.f72613c = reflectJavaTypeA;
        this.d = EmptyList.f71768b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaType
    public final Type H() {
        return this.f72612b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner
    public final Collection getAnnotations() {
        return this.d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaArrayType
    public final ReflectJavaType x() {
        return this.f72613c;
    }
}
