package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.ArraysKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: loaded from: classes4.dex */
public abstract class JvmAnnotationNamesKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final FqName f72878a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final FqName f72879b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final FqName f72880c;
    public static final FqName d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final FqName f72881e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final FqName f72882f;
    public static final FqName g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final FqName f72883h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final FqName f72884i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Set f72885j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Set f72886k;
    public static final Set l;
    public static final Set m;
    public static final Set n;
    public static final Set o;
    public static final Map p;
    public static final FqName q;

    static {
        FqName fqName = new FqName("org.jspecify.nullness.Nullable");
        FqName fqName2 = new FqName("org.jspecify.nullness.NullMarked");
        f72878a = fqName2;
        FqName fqName3 = new FqName("org.jspecify.nullness.NullnessUnspecified");
        FqName fqName4 = new FqName("org.jspecify.annotations.NonNull");
        FqName fqName5 = new FqName("org.jspecify.annotations.Nullable");
        FqName fqName6 = new FqName("org.jspecify.annotations.NullMarked");
        f72879b = fqName6;
        FqName fqName7 = new FqName("org.jspecify.annotations.NullnessUnspecified");
        FqName fqName8 = new FqName("org.jspecify.annotations.NullUnmarked");
        f72880c = fqName8;
        d = new FqName("javax.annotation.meta.TypeQualifier");
        f72881e = new FqName("javax.annotation.meta.TypeQualifierNickname");
        f72882f = new FqName("javax.annotation.meta.TypeQualifierDefault");
        FqName fqName9 = new FqName("javax.annotation.Nonnull");
        g = fqName9;
        FqName fqName10 = new FqName("javax.annotation.Nullable");
        FqName fqName11 = new FqName("javax.annotation.CheckForNull");
        f72883h = new FqName("javax.annotation.ParametersAreNonnullByDefault");
        f72884i = new FqName("javax.annotation.ParametersAreNullableByDefault");
        f72885j = ArraysKt.Z(new FqName[]{fqName9, fqName11});
        FqName fqName12 = JvmAnnotationNames.f72874h;
        fqName12.getClass();
        Set setZ = ArraysKt.Z(new FqName[]{fqName12, fqName4, new FqName("android.annotation.NonNull"), new FqName("androidx.annotation.NonNull"), new FqName("androidx.annotation.RecentlyNonNull"), new FqName("android.support.annotation.NonNull"), new FqName("com.android.annotations.NonNull"), new FqName("org.checkerframework.checker.nullness.compatqual.NonNullDecl"), new FqName("org.checkerframework.checker.nullness.qual.NonNull"), new FqName("edu.umd.cs.findbugs.annotations.NonNull"), new FqName("io.reactivex.annotations.NonNull"), new FqName("io.reactivex.rxjava3.annotations.NonNull"), new FqName("org.eclipse.jdt.annotation.NonNull"), new FqName("lombok.NonNull"), new FqName("jakarta.annotation.Nonnull")});
        f72886k = setZ;
        FqName fqName13 = JvmAnnotationNames.f72875i;
        fqName13.getClass();
        Set setZ2 = ArraysKt.Z(new FqName[]{fqName13, fqName, fqName5, fqName10, fqName11, new FqName("android.annotation.Nullable"), new FqName("androidx.annotation.Nullable"), new FqName("androidx.annotation.RecentlyNullable"), new FqName("android.support.annotation.Nullable"), new FqName("com.android.annotations.Nullable"), new FqName("org.checkerframework.checker.nullness.compatqual.NullableDecl"), new FqName("org.checkerframework.checker.nullness.qual.Nullable"), new FqName("edu.umd.cs.findbugs.annotations.Nullable"), new FqName("edu.umd.cs.findbugs.annotations.PossiblyNull"), new FqName("edu.umd.cs.findbugs.annotations.CheckForNull"), new FqName("io.reactivex.annotations.Nullable"), new FqName("io.reactivex.rxjava3.annotations.Nullable"), new FqName("org.eclipse.jdt.annotation.Nullable"), new FqName("jakarta.annotation.Nullable")});
        l = setZ2;
        m = ArraysKt.Z(new FqName[]{fqName3, fqName7});
        SetsKt.g(SetsKt.g(SetsKt.g(SetsKt.g(SetsKt.f(SetsKt.f(new LinkedHashSet(), setZ), setZ2), fqName9), fqName2), fqName6), fqName8);
        n = ArraysKt.Z(new FqName[]{JvmAnnotationNames.f72877k, JvmAnnotationNames.l});
        o = ArraysKt.Z(new FqName[]{JvmAnnotationNames.f72876j, JvmAnnotationNames.m});
        p = MapsKt.i(new Pair(JvmAnnotationNames.f72871c, StandardNames.FqNames.t), new Pair(JvmAnnotationNames.d, StandardNames.FqNames.w), new Pair(JvmAnnotationNames.f72872e, StandardNames.FqNames.m), new Pair(JvmAnnotationNames.f72873f, StandardNames.FqNames.x));
        q = new FqName("kotlin.annotations.jvm.UnderMigration");
    }
}
