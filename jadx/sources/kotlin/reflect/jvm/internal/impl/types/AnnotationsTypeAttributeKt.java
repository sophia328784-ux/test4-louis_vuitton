package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.util.NullableArrayMapAccessor;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AnnotationsTypeAttributeKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ KProperty[] f74176a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final NullableArrayMapAccessor f74177b;

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(AnnotationsTypeAttributeKt.class, "annotationsAttribute", "getAnnotationsAttribute(Lorg/jetbrains/kotlin/types/TypeAttributes;)Lorg/jetbrains/kotlin/types/AnnotationsTypeAttribute;", 1);
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        f74176a = new KProperty[]{reflectionFactory.h(propertyReference1Impl)};
        TypeAttributes.Companion companion = TypeAttributes.f74232c;
        KClass kClassB = reflectionFactory.b(AnnotationsTypeAttribute.class);
        companion.getClass();
        f74177b = new NullableArrayMapAccessor(companion.b(kClassB));
    }

    public static final Annotations a(TypeAttributes typeAttributes) {
        Annotations annotations;
        typeAttributes.getClass();
        AnnotationsTypeAttribute annotationsTypeAttribute = (AnnotationsTypeAttribute) f74177b.b(typeAttributes, f74176a[0]);
        return (annotationsTypeAttribute == null || (annotations = annotationsTypeAttribute.f74175a) == null) ? Annotations.Companion.f72432a : annotations;
    }
}
