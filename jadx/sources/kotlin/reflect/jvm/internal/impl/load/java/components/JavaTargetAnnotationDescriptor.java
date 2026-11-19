package kotlin.reflect.jvm.internal.impl.load.java.components;

import java.util.Map;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaResolverContext;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaArrayAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaEnumValueAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ArrayValue;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;

/* JADX INFO: loaded from: classes4.dex */
public final class JavaTargetAnnotationDescriptor extends JavaAnnotationDescriptor {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ KProperty[] f72932h = {Reflection.f71922a.h(new PropertyReference1Impl(JavaTargetAnnotationDescriptor.class, "allValueArguments", "getAllValueArguments()Ljava/util/Map;", 0))};
    public final NotNullLazyValue g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JavaTargetAnnotationDescriptor(JavaAnnotation javaAnnotation, LazyJavaResolverContext lazyJavaResolverContext) {
        super(lazyJavaResolverContext, javaAnnotation, StandardNames.FqNames.t);
        javaAnnotation.getClass();
        lazyJavaResolverContext.getClass();
        this.g = lazyJavaResolverContext.f72962a.f72944a.c(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.components.JavaTargetAnnotationDescriptor$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final JavaTargetAnnotationDescriptor f72933b;

            {
                this.f72933b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                ArrayValue arrayValueA;
                KProperty[] kPropertyArr = JavaTargetAnnotationDescriptor.f72932h;
                JavaAnnotationArgument javaAnnotationArgument = this.f72933b.d;
                if (javaAnnotationArgument instanceof JavaArrayAnnotationArgument) {
                    Map map = JavaAnnotationTargetMapper.f72923a;
                    arrayValueA = JavaAnnotationTargetMapper.a(((JavaArrayAnnotationArgument) javaAnnotationArgument).getElements());
                } else if (javaAnnotationArgument instanceof JavaEnumValueAnnotationArgument) {
                    Map map2 = JavaAnnotationTargetMapper.f72923a;
                    arrayValueA = JavaAnnotationTargetMapper.a(CollectionsKt.O(javaAnnotationArgument));
                } else {
                    arrayValueA = null;
                }
                Map mapH = arrayValueA != null ? MapsKt.h(new Pair(JavaAnnotationMapper.f72921b, arrayValueA)) : null;
                return mapH == null ? MapsKt.c() : mapH;
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.components.JavaAnnotationDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    public final Map a() {
        return (Map) StorageKt.a(this.g, f72932h[0]);
    }
}
