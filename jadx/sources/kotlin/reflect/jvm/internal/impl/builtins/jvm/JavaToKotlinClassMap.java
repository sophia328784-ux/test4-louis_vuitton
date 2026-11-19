package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import defpackage.d21;
import defpackage.pq0;
import io.jsonwebtoken.JwtParser;
import java.lang.annotation.Annotation;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.CompanionObjectMapping;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionTypeKind;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.FqNamesUtilKt;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.name.SpecialNames;
import kotlin.reflect.jvm.internal.impl.name.StandardClassIds;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class JavaToKotlinClassMap {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f72305a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f72306b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f72307c;
    public static final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ClassId f72308e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final FqName f72309f;
    public static final ClassId g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final HashMap f72310h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final HashMap f72311i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final HashMap f72312j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final HashMap f72313k;
    public static final HashMap l;
    public static final HashMap m;
    public static final LinkedHashSet n;
    public static final List o;

    public static final class PlatformMutabilityMapping {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ClassId f72314a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ClassId f72315b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ClassId f72316c;

        public PlatformMutabilityMapping(ClassId classId, ClassId classId2, ClassId classId3) {
            classId.getClass();
            classId2.getClass();
            classId3.getClass();
            this.f72314a = classId;
            this.f72315b = classId2;
            this.f72316c = classId3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PlatformMutabilityMapping)) {
                return false;
            }
            PlatformMutabilityMapping platformMutabilityMapping = (PlatformMutabilityMapping) obj;
            return Intrinsics.c(this.f72314a, platformMutabilityMapping.f72314a) && Intrinsics.c(this.f72315b, platformMutabilityMapping.f72315b) && Intrinsics.c(this.f72316c, platformMutabilityMapping.f72316c);
        }

        public final int hashCode() {
            return this.f72316c.hashCode() + ((this.f72315b.hashCode() + (this.f72314a.hashCode() * 31)) * 31);
        }

        public final String toString() {
            return "PlatformMutabilityMapping(javaClass=" + this.f72314a + ", kotlinReadOnly=" + this.f72315b + ", kotlinMutable=" + this.f72316c + ')';
        }
    }

    static {
        StringBuilder sb = new StringBuilder();
        FunctionTypeKind.Function function = FunctionTypeKind.Function.f72293c;
        sb.append(function.f72291a);
        sb.append(JwtParser.SEPARATOR_CHAR);
        sb.append(function.f72292b);
        f72305a = sb.toString();
        StringBuilder sb2 = new StringBuilder();
        FunctionTypeKind.KFunction kFunction = FunctionTypeKind.KFunction.f72294c;
        sb2.append(kFunction.f72291a);
        sb2.append(JwtParser.SEPARATOR_CHAR);
        sb2.append(kFunction.f72292b);
        f72306b = sb2.toString();
        StringBuilder sb3 = new StringBuilder();
        FunctionTypeKind.SuspendFunction suspendFunction = FunctionTypeKind.SuspendFunction.f72296c;
        sb3.append(suspendFunction.f72291a);
        sb3.append(JwtParser.SEPARATOR_CHAR);
        sb3.append(suspendFunction.f72292b);
        f72307c = sb3.toString();
        StringBuilder sb4 = new StringBuilder();
        FunctionTypeKind.KSuspendFunction kSuspendFunction = FunctionTypeKind.KSuspendFunction.f72295c;
        sb4.append(kSuspendFunction.f72291a);
        sb4.append(JwtParser.SEPARATOR_CHAR);
        sb4.append(kSuspendFunction.f72292b);
        d = sb4.toString();
        ClassId.Companion companion = ClassId.d;
        FqName fqName = new FqName("kotlin.jvm.functions.FunctionN");
        companion.getClass();
        ClassId classIdB = ClassId.Companion.b(fqName);
        f72308e = classIdB;
        f72309f = classIdB.a();
        g = StandardClassIds.w;
        d(Class.class);
        f72310h = new HashMap();
        f72311i = new HashMap();
        f72312j = new HashMap();
        f72313k = new HashMap();
        l = new HashMap();
        m = new HashMap();
        n = new LinkedHashSet();
        ClassId classIdB2 = ClassId.Companion.b(StandardNames.FqNames.B);
        FqName fqName2 = StandardNames.FqNames.J;
        FqName fqName3 = classIdB2.f73675a;
        PlatformMutabilityMapping platformMutabilityMapping = new PlatformMutabilityMapping(d(Iterable.class), classIdB2, new ClassId(fqName3, FqNamesUtilKt.b(fqName2, fqName3), false));
        ClassId classIdB3 = ClassId.Companion.b(StandardNames.FqNames.A);
        FqName fqName4 = StandardNames.FqNames.I;
        FqName fqName5 = classIdB3.f73675a;
        PlatformMutabilityMapping platformMutabilityMapping2 = new PlatformMutabilityMapping(d(Iterator.class), classIdB3, new ClassId(fqName5, FqNamesUtilKt.b(fqName4, fqName5), false));
        ClassId classIdB4 = ClassId.Companion.b(StandardNames.FqNames.C);
        FqName fqName6 = StandardNames.FqNames.K;
        FqName fqName7 = classIdB4.f73675a;
        PlatformMutabilityMapping platformMutabilityMapping3 = new PlatformMutabilityMapping(d(Collection.class), classIdB4, new ClassId(fqName7, FqNamesUtilKt.b(fqName6, fqName7), false));
        ClassId classIdB5 = ClassId.Companion.b(StandardNames.FqNames.D);
        FqName fqName8 = StandardNames.FqNames.L;
        FqName fqName9 = classIdB5.f73675a;
        PlatformMutabilityMapping platformMutabilityMapping4 = new PlatformMutabilityMapping(d(List.class), classIdB5, new ClassId(fqName9, FqNamesUtilKt.b(fqName8, fqName9), false));
        ClassId classIdB6 = ClassId.Companion.b(StandardNames.FqNames.F);
        FqName fqName10 = StandardNames.FqNames.N;
        FqName fqName11 = classIdB6.f73675a;
        PlatformMutabilityMapping platformMutabilityMapping5 = new PlatformMutabilityMapping(d(Set.class), classIdB6, new ClassId(fqName11, FqNamesUtilKt.b(fqName10, fqName11), false));
        ClassId classIdB7 = ClassId.Companion.b(StandardNames.FqNames.E);
        FqName fqName12 = StandardNames.FqNames.M;
        FqName fqName13 = classIdB7.f73675a;
        PlatformMutabilityMapping platformMutabilityMapping6 = new PlatformMutabilityMapping(d(ListIterator.class), classIdB7, new ClassId(fqName13, FqNamesUtilKt.b(fqName12, fqName13), false));
        FqName fqName14 = StandardNames.FqNames.G;
        ClassId classIdB8 = ClassId.Companion.b(fqName14);
        FqName fqName15 = StandardNames.FqNames.O;
        FqName fqName16 = classIdB8.f73675a;
        PlatformMutabilityMapping platformMutabilityMapping7 = new PlatformMutabilityMapping(d(Map.class), classIdB8, new ClassId(fqName16, FqNamesUtilKt.b(fqName15, fqName16), false));
        ClassId classIdD = ClassId.Companion.b(fqName14).d(StandardNames.FqNames.H.f73679a.g());
        FqName fqName17 = StandardNames.FqNames.P;
        FqName fqName18 = classIdD.f73675a;
        List<PlatformMutabilityMapping> listP = CollectionsKt.P(platformMutabilityMapping, platformMutabilityMapping2, platformMutabilityMapping3, platformMutabilityMapping4, platformMutabilityMapping5, platformMutabilityMapping6, platformMutabilityMapping7, new PlatformMutabilityMapping(d(Map.Entry.class), classIdD, new ClassId(fqName18, FqNamesUtilKt.b(fqName17, fqName18), false)));
        o = listP;
        c(Object.class, StandardNames.FqNames.f72271a);
        c(String.class, StandardNames.FqNames.f72275f);
        c(CharSequence.class, StandardNames.FqNames.f72274e);
        a(d(Throwable.class), ClassId.Companion.b(StandardNames.FqNames.f72279k));
        c(Cloneable.class, StandardNames.FqNames.f72273c);
        c(Number.class, StandardNames.FqNames.f72277i);
        a(d(Comparable.class), ClassId.Companion.b(StandardNames.FqNames.l));
        c(Enum.class, StandardNames.FqNames.f72278j);
        a(d(Annotation.class), ClassId.Companion.b(StandardNames.FqNames.s));
        for (PlatformMutabilityMapping platformMutabilityMapping8 : listP) {
            ClassId classId = platformMutabilityMapping8.f72314a;
            ClassId classId2 = platformMutabilityMapping8.f72315b;
            ClassId classId3 = platformMutabilityMapping8.f72316c;
            a(classId, classId2);
            b(classId3.a(), classId);
            l.put(classId3, classId2);
            m.put(classId2, classId3);
            FqName fqNameA = classId2.a();
            FqName fqNameA2 = classId3.a();
            f72312j.put(classId3.a().f73679a, fqNameA);
            f72313k.put(fqNameA.f73679a, fqNameA2);
        }
        for (JvmPrimitiveType jvmPrimitiveType : JvmPrimitiveType.values()) {
            ClassId.Companion companion2 = ClassId.d;
            FqName fqNameG = jvmPrimitiveType.g();
            fqNameG.getClass();
            companion2.getClass();
            ClassId classIdB9 = ClassId.Companion.b(fqNameG);
            PrimitiveType primitiveTypeF = jvmPrimitiveType.f();
            primitiveTypeF.getClass();
            a(classIdB9, ClassId.Companion.b(StandardNames.l.a(primitiveTypeF.f())));
        }
        for (ClassId classId4 : CompanionObjectMapping.f72239a) {
            ClassId.Companion companion3 = ClassId.d;
            FqName fqName19 = new FqName("kotlin.jvm.internal." + classId4.f().b() + "CompanionObject");
            companion3.getClass();
            a(ClassId.Companion.b(fqName19), classId4.d(SpecialNames.f73692b));
        }
        for (int i2 = 0; i2 < 23; i2++) {
            ClassId.Companion companion4 = ClassId.d;
            FqName fqName20 = new FqName(pq0.k(i2, "kotlin.jvm.functions.Function"));
            companion4.getClass();
            a(ClassId.Companion.b(fqName20), new ClassId(StandardNames.l, Name.e("Function" + i2)));
            b(new FqName(d21.f(i2, f72306b, new StringBuilder())), g);
        }
        for (int i3 = 0; i3 < 22; i3++) {
            FunctionTypeKind.KSuspendFunction kSuspendFunction2 = FunctionTypeKind.KSuspendFunction.f72295c;
            b(new FqName((kSuspendFunction2.f72291a + JwtParser.SEPARATOR_CHAR + kSuspendFunction2.f72292b) + i3), g);
        }
        b(new FqName("kotlin.concurrent.atomics.AtomicInt"), d(AtomicInteger.class));
        b(new FqName("kotlin.concurrent.atomics.AtomicLong"), d(AtomicLong.class));
        b(new FqName("kotlin.concurrent.atomics.AtomicBoolean"), d(AtomicBoolean.class));
        b(new FqName("kotlin.concurrent.atomics.AtomicReference"), d(AtomicReference.class));
        b(new FqName("kotlin.concurrent.atomics.AtomicIntArray"), d(AtomicIntegerArray.class));
        b(new FqName("kotlin.concurrent.atomics.AtomicLongArray"), d(AtomicLongArray.class));
        b(new FqName("kotlin.concurrent.atomics.AtomicArray"), d(AtomicReferenceArray.class));
        b(StandardNames.FqNames.f72272b.i(), d(Void.class));
    }

    public static void a(ClassId classId, ClassId classId2) {
        f72310h.put(classId.a().f73679a, classId2);
        b(classId2.a(), classId);
    }

    public static void b(FqName fqName, ClassId classId) {
        n.add(fqName);
        f72311i.put(fqName.f73679a, classId);
    }

    public static void c(Class cls, FqNameUnsafe fqNameUnsafe) {
        FqName fqNameI = fqNameUnsafe.i();
        ClassId classIdD = d(cls);
        ClassId.d.getClass();
        a(classIdD, ClassId.Companion.b(fqNameI));
    }

    public static ClassId d(Class cls) {
        if (!cls.isPrimitive()) {
            cls.isArray();
        }
        Class<?> declaringClass = cls.getDeclaringClass();
        if (declaringClass != null) {
            return d(declaringClass).d(Name.e(cls.getSimpleName()));
        }
        ClassId.Companion companion = ClassId.d;
        String canonicalName = cls.getCanonicalName();
        canonicalName.getClass();
        FqName fqName = new FqName(canonicalName);
        companion.getClass();
        return ClassId.Companion.b(fqName);
    }

    public static boolean e(FqNameUnsafe fqNameUnsafe, String str) {
        Integer intOrNull;
        String str2 = fqNameUnsafe.f73683a;
        if (StringsKt.P(str2, str, false)) {
            String strSubstring = str2.substring(str.length());
            if (!StringsKt.N(strSubstring, '0', false) && (intOrNull = StringsKt.toIntOrNull(strSubstring)) != null && intOrNull.intValue() >= 23) {
                return true;
            }
        }
        return false;
    }

    public static ClassId f(FqNameUnsafe fqNameUnsafe) {
        fqNameUnsafe.getClass();
        if (e(fqNameUnsafe, f72305a) || e(fqNameUnsafe, f72307c)) {
            return f72308e;
        }
        return (e(fqNameUnsafe, f72306b) || e(fqNameUnsafe, d)) ? g : (ClassId) f72311i.get(fqNameUnsafe);
    }
}
