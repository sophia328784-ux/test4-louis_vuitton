package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import defpackage.no0;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClassifier;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClassifierType;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: loaded from: classes4.dex */
public final class ReflectJavaClassifierType extends ReflectJavaType implements JavaClassifierType {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Type f72624b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final JavaClassifier f72625c;

    public ReflectJavaClassifierType(Type type) {
        JavaClassifier reflectJavaClass;
        type.getClass();
        this.f72624b = type;
        if (type instanceof Class) {
            reflectJavaClass = new ReflectJavaClass((Class) type);
        } else if (type instanceof TypeVariable) {
            reflectJavaClass = new ReflectJavaTypeParameter((TypeVariable) type);
        } else {
            if (!(type instanceof ParameterizedType)) {
                no0.q("Not a classifier type (", type.getClass(), "): ", type);
                throw null;
            }
            Type rawType = ((ParameterizedType) type).getRawType();
            rawType.getClass();
            reflectJavaClass = new ReflectJavaClass((Class) rawType);
        }
        this.f72625c = reflectJavaClass;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClassifierType
    public final String A() {
        return this.f72624b.toString();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClassifierType
    public final String C() {
        throw new UnsupportedOperationException("Type not found: " + this.f72624b);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaType
    public final Type H() {
        return this.f72624b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClassifierType
    public final JavaClassifier a() {
        return this.f72625c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner
    public final Collection getAnnotations() {
        return EmptyList.f71768b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaType, kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner
    public final JavaAnnotation j(FqName fqName) {
        fqName.getClass();
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClassifierType
    public final boolean q() {
        Type type = this.f72624b;
        if (type instanceof Class) {
            TypeVariable[] typeParameters = ((Class) type).getTypeParameters();
            typeParameters.getClass();
            if (!(typeParameters.length == 0)) {
                return true;
            }
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClassifierType
    public final ArrayList v() {
        List<Type> listC = ReflectClassUtilKt.c(this.f72624b);
        ArrayList arrayList = new ArrayList(CollectionsKt.t(listC, 10));
        for (Type type : listC) {
            ReflectJavaType.f72635a.getClass();
            arrayList.add(ReflectJavaType.Factory.a(type));
        }
        return arrayList;
    }
}
