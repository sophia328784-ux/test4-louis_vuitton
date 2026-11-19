package kotlin.reflect.jvm.internal.impl.load.java.components;

import java.util.Map;
import kotlin.Pair;
import kotlin.collections.MapsKt;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.load.java.JvmAnnotationNames;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.PossiblyExternalAnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaResolverContext;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaAnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: loaded from: classes4.dex */
public abstract class JavaAnnotationMapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Name f72920a = Name.e("message");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Name f72921b = Name.e("allowedTargets");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Name f72922c = Name.e("value");
    public static final Map d = MapsKt.i(new Pair(StandardNames.FqNames.t, JvmAnnotationNames.f72871c), new Pair(StandardNames.FqNames.w, JvmAnnotationNames.d), new Pair(StandardNames.FqNames.x, JvmAnnotationNames.f72873f));

    public static PossiblyExternalAnnotationDescriptor a(FqName fqName, JavaAnnotationOwner javaAnnotationOwner, LazyJavaResolverContext lazyJavaResolverContext) {
        JavaAnnotation javaAnnotationJ;
        fqName.getClass();
        javaAnnotationOwner.getClass();
        lazyJavaResolverContext.getClass();
        if (fqName.equals(StandardNames.FqNames.m)) {
            FqName fqName2 = JvmAnnotationNames.f72872e;
            fqName2.getClass();
            JavaAnnotation javaAnnotationJ2 = javaAnnotationOwner.j(fqName2);
            if (javaAnnotationJ2 != null) {
                return new JavaDeprecatedAnnotationDescriptor(javaAnnotationJ2, lazyJavaResolverContext);
            }
        }
        FqName fqName3 = (FqName) d.get(fqName);
        if (fqName3 == null || (javaAnnotationJ = javaAnnotationOwner.j(fqName3)) == null) {
            return null;
        }
        return b(lazyJavaResolverContext, javaAnnotationJ, false);
    }

    public static PossiblyExternalAnnotationDescriptor b(LazyJavaResolverContext lazyJavaResolverContext, JavaAnnotation javaAnnotation, boolean z) {
        javaAnnotation.getClass();
        lazyJavaResolverContext.getClass();
        ClassId classIdD = javaAnnotation.d();
        ClassId.Companion companion = ClassId.d;
        FqName fqName = JvmAnnotationNames.f72871c;
        fqName.getClass();
        companion.getClass();
        if (classIdD.equals(ClassId.Companion.b(fqName))) {
            return new JavaTargetAnnotationDescriptor(javaAnnotation, lazyJavaResolverContext);
        }
        FqName fqName2 = JvmAnnotationNames.d;
        fqName2.getClass();
        if (classIdD.equals(ClassId.Companion.b(fqName2))) {
            return new JavaRetentionAnnotationDescriptor(javaAnnotation, lazyJavaResolverContext);
        }
        FqName fqName3 = JvmAnnotationNames.f72873f;
        fqName3.getClass();
        if (classIdD.equals(ClassId.Companion.b(fqName3))) {
            return new JavaAnnotationDescriptor(lazyJavaResolverContext, javaAnnotation, StandardNames.FqNames.x);
        }
        FqName fqName4 = JvmAnnotationNames.f72872e;
        fqName4.getClass();
        if (classIdD.equals(ClassId.Companion.b(fqName4))) {
            return null;
        }
        return new LazyJavaAnnotationDescriptor(lazyJavaResolverContext, javaAnnotation, z);
    }
}
