package kotlin.reflect.jvm.internal.impl.descriptors.runtime.components;

import io.jsonwebtoken.JwtParser;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaPackage;
import kotlin.reflect.jvm.internal.impl.load.java.JavaClassFinder;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class ReflectJavaClassFinder implements JavaClassFinder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ClassLoader f72578a;

    public ReflectJavaClassFinder(ClassLoader classLoader) {
        classLoader.getClass();
        this.f72578a = classLoader;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.JavaClassFinder
    public final ReflectJavaClass a(JavaClassFinder.Request request) {
        ClassId classId = request.f72834a;
        FqName fqName = classId.f73675a;
        String strI = StringsKt.I(classId.f73676b.f73679a.f73683a, JwtParser.SEPARATOR_CHAR, '$');
        if (!fqName.f73679a.c()) {
            strI = fqName.f73679a.f73683a + JwtParser.SEPARATOR_CHAR + strI;
        }
        Class clsA = ReflectJavaClassFinderKt.a(this.f72578a, strI);
        if (clsA != null) {
            return new ReflectJavaClass(clsA);
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.JavaClassFinder
    public final ReflectJavaPackage b(FqName fqName) {
        fqName.getClass();
        return new ReflectJavaPackage(fqName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.JavaClassFinder
    public final void c(FqName fqName) {
        fqName.getClass();
    }
}
