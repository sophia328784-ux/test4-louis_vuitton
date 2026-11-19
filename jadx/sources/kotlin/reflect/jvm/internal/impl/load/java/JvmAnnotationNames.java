package kotlin.reflect.jvm.internal.impl.load.java;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmClassName;

/* JADX INFO: loaded from: classes4.dex */
public abstract class JvmAnnotationNames {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final FqName f72869a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Name f72870b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final FqName f72871c;
    public static final FqName d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final FqName f72872e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final FqName f72873f;
    public static final FqName g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final FqName f72874h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final FqName f72875i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final FqName f72876j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final FqName f72877k;
    public static final FqName l;
    public static final FqName m;
    public static final FqName n;
    public static final FqName o;
    public static final FqName p;
    public static final FqName q;

    static {
        FqName fqName = new FqName("kotlin.Metadata");
        f72869a = fqName;
        JvmClassName.b(fqName).d();
        f72870b = Name.e("value");
        f72871c = new FqName(Target.class.getName());
        new FqName(ElementType.class.getName());
        d = new FqName(Retention.class.getName());
        new FqName(RetentionPolicy.class.getName());
        f72872e = new FqName(Deprecated.class.getName());
        f72873f = new FqName(Documented.class.getName());
        g = new FqName("java.lang.annotation.Repeatable");
        new FqName(Override.class.getName());
        f72874h = new FqName("org.jetbrains.annotations.NotNull");
        f72875i = new FqName("org.jetbrains.annotations.Nullable");
        f72876j = new FqName("org.jetbrains.annotations.Mutable");
        f72877k = new FqName("org.jetbrains.annotations.ReadOnly");
        l = new FqName("kotlin.annotations.jvm.ReadOnly");
        m = new FqName("kotlin.annotations.jvm.Mutable");
        n = new FqName("kotlin.jvm.PurelyImplements");
        new FqName("kotlin.jvm.internal");
        FqName fqName2 = new FqName("kotlin.jvm.internal.SerializedIr");
        o = fqName2;
        JvmClassName.b(fqName2).d();
        p = new FqName("kotlin.jvm.internal.EnhancedNullability");
        q = new FqName("kotlin.jvm.internal.EnhancedMutability");
    }
}
