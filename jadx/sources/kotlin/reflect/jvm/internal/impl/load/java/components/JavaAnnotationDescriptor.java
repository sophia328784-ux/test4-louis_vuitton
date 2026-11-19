package kotlin.reflect.jvm.internal.impl.load.java.components;

import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.PossiblyExternalAnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.JavaResolverComponents;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaResolverContext;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;

/* JADX INFO: loaded from: classes4.dex */
public class JavaAnnotationDescriptor implements PossiblyExternalAnnotationDescriptor {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ KProperty[] f72913f = {Reflection.f71922a.h(new PropertyReference1Impl(JavaAnnotationDescriptor.class, "type", "getType()Lorg/jetbrains/kotlin/types/SimpleType;", 0))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FqName f72914a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SourceElement f72915b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final NotNullLazyValue f72916c;
    public final JavaAnnotationArgument d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f72917e;

    public JavaAnnotationDescriptor(final LazyJavaResolverContext lazyJavaResolverContext, JavaAnnotation javaAnnotation, FqName fqName) {
        lazyJavaResolverContext.getClass();
        JavaResolverComponents javaResolverComponents = lazyJavaResolverContext.f72962a;
        fqName.getClass();
        this.f72914a = fqName;
        this.f72915b = javaAnnotation != null ? javaResolverComponents.f72951j.a(javaAnnotation) : SourceElement.f72405a;
        this.f72916c = javaResolverComponents.f72944a.c(new Function0(lazyJavaResolverContext, this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.components.JavaAnnotationDescriptor$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final LazyJavaResolverContext f72918b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final JavaAnnotationDescriptor f72919c;

            {
                this.f72918b = lazyJavaResolverContext;
                this.f72919c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                KProperty[] kPropertyArr = JavaAnnotationDescriptor.f72913f;
                SimpleType simpleTypeO = this.f72918b.f72962a.o.g().j(this.f72919c.f72914a).o();
                simpleTypeO.getClass();
                return simpleTypeO;
            }
        });
        this.d = javaAnnotation != null ? (JavaAnnotationArgument) CollectionsKt.C(javaAnnotation.b()) : null;
        this.f72917e = false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    public Map a() {
        return MapsKt.c();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.descriptors.PossiblyExternalAnnotationDescriptor
    public final boolean b() {
        return this.f72917e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    public final FqName c() {
        return this.f72914a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    public final SourceElement getSource() {
        return this.f72915b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    public final KotlinType getType() {
        return (SimpleType) StorageKt.a(this.f72916c, f72913f[0]);
    }
}
