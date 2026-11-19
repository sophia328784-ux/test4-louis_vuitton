package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Type;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaField;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaType;

/* JADX INFO: loaded from: classes4.dex */
public final class ReflectJavaField extends ReflectJavaMember implements JavaField {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Field f72628a;

    public ReflectJavaField(Field field) {
        field.getClass();
        this.f72628a = field;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaField
    public final boolean D() {
        return this.f72628a.isEnumConstant();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaMember
    public final Member H() {
        return this.f72628a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaField
    public final JavaType getType() {
        ReflectJavaType.Factory factory = ReflectJavaType.f72635a;
        Type genericType = this.f72628a.getGenericType();
        genericType.getClass();
        factory.getClass();
        return ReflectJavaType.Factory.a(genericType);
    }
}
