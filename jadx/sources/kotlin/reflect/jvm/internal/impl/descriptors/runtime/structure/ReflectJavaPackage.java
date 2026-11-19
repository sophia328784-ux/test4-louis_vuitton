package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import defpackage.o60;
import java.util.Collection;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaPackage;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: loaded from: classes4.dex */
public final class ReflectJavaPackage extends ReflectJavaElement implements JavaPackage {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FqName f72631a;

    public ReflectJavaPackage(FqName fqName) {
        fqName.getClass();
        this.f72631a = fqName;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaPackage
    public final EmptyList B(Function1 function1) {
        function1.getClass();
        return EmptyList.f71768b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaPackage
    public final FqName c() {
        return this.f72631a;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ReflectJavaPackage) {
            return Intrinsics.c(this.f72631a, ((ReflectJavaPackage) obj).f72631a);
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner
    public final Collection getAnnotations() {
        return EmptyList.f71768b;
    }

    public final int hashCode() {
        return this.f72631a.hashCode();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner
    public final JavaAnnotation j(FqName fqName) {
        fqName.getClass();
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaPackage
    public final EmptyList r() {
        return EmptyList.f71768b;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        o60.z(ReflectJavaPackage.class, sb, ": ");
        sb.append(this.f72631a);
        return sb.toString();
    }
}
