package kotlin.jvm.internal;

import defpackage.n00;
import defpackage.tr;
import defpackage.y41;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;
import kotlin.reflect.KVariance;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0007\u0018\u0000 \u000f2\u00020\u0001:\u0001\u0010B1\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0001\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bB'\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\n\u0010\u000e¨\u0006\u0011"}, d2 = {"Lkotlin/jvm/internal/TypeReference;", "Lkotlin/reflect/KType;", "Lkotlin/reflect/KClassifier;", "classifier", "", "Lkotlin/reflect/KTypeProjection;", "arguments", "platformTypeUpperBound", "", "flags", "<init>", "(Lkotlin/reflect/KClassifier;Ljava/util/List;Lkotlin/reflect/KType;I)V", "", "isMarkedNullable", "(Lkotlin/reflect/KClassifier;Ljava/util/List;Z)V", "f", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class TypeReference implements KType {

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final KClassifier f71931b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f71932c;
    public final KType d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f71933e;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0080\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004¨\u0006\u0007"}, d2 = {"Lkotlin/jvm/internal/TypeReference$Companion;", "", "", "IS_MARKED_NULLABLE", "I", "IS_MUTABLE_COLLECTION_TYPE", "IS_NOTHING_TYPE", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f71934a;

        static {
            int[] iArr = new int[KVariance.values().length];
            try {
                iArr[KVariance.INVARIANT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[KVariance.IN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[KVariance.OUT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f71934a = iArr;
        }
    }

    public TypeReference(KClassifier kClassifier, List<KTypeProjection> list, KType kType, int i2) {
        kClassifier.getClass();
        list.getClass();
        this.f71931b = kClassifier;
        this.f71932c = list;
        this.d = kType;
        this.f71933e = i2;
    }

    @Override // kotlin.reflect.KType
    /* JADX INFO: renamed from: a, reason: from getter */
    public final KClassifier getF74442c() {
        return this.f71931b;
    }

    @Override // kotlin.reflect.KType
    /* JADX INFO: renamed from: b, reason: from getter */
    public final List getD() {
        return this.f71932c;
    }

    @Override // kotlin.reflect.KType
    /* JADX INFO: renamed from: d */
    public final boolean getF74407e() {
        return (this.f71933e & 1) != 0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof TypeReference)) {
            return false;
        }
        TypeReference typeReference = (TypeReference) obj;
        return Intrinsics.c(this.f71931b, typeReference.f71931b) && Intrinsics.c(this.f71932c, typeReference.f71932c) && Intrinsics.c(this.d, typeReference.d) && this.f71933e == typeReference.f71933e;
    }

    public final String g(boolean z) {
        String name;
        KClassifier kClassifier = this.f71931b;
        KClass kClass = kClassifier instanceof KClass ? (KClass) kClassifier : null;
        Class clsB = kClass != null ? JvmClassMappingKt.b(kClass) : null;
        if (clsB == null) {
            name = kClassifier.toString();
        } else if ((this.f71933e & 4) != 0) {
            name = "kotlin.Nothing";
        } else if (!clsB.isArray()) {
            name = (z && clsB.isPrimitive()) ? JvmClassMappingKt.c((KClass) kClassifier).getName() : clsB.getName();
        } else if (clsB.equals(boolean[].class)) {
            name = "kotlin.BooleanArray";
        } else if (clsB.equals(char[].class)) {
            name = "kotlin.CharArray";
        } else if (clsB.equals(byte[].class)) {
            name = "kotlin.ByteArray";
        } else if (clsB.equals(short[].class)) {
            name = "kotlin.ShortArray";
        } else if (clsB.equals(int[].class)) {
            name = "kotlin.IntArray";
        } else if (clsB.equals(float[].class)) {
            name = "kotlin.FloatArray";
        } else if (clsB.equals(long[].class)) {
            name = "kotlin.LongArray";
        } else {
            name = clsB.equals(double[].class) ? "kotlin.DoubleArray" : "kotlin.Array";
        }
        List list = this.f71932c;
        String strH = tr.h(name, list.isEmpty() ? "" : CollectionsKt.K(list, ", ", "<", ">", new y41(this), 24), getF74407e() ? "?" : "");
        KType kType = this.d;
        if (kType instanceof TypeReference) {
            String strG = ((TypeReference) kType).g(true);
            if (!strG.equals(strH)) {
                if (strG.equals(strH.concat("?"))) {
                    return strH.concat("!");
                }
                return "(" + strH + ".." + strG + ')';
            }
        }
        return strH;
    }

    @Override // kotlin.reflect.KAnnotatedElement
    /* JADX INFO: renamed from: getAnnotations */
    public final List getF74444f() {
        return EmptyList.f71768b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f71933e) + n00.a(this.f71931b.hashCode() * 31, 31, this.f71932c);
    }

    public final String toString() {
        return g(false).concat(" (Kotlin reflection is not available)");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TypeReference(KClassifier kClassifier, List<KTypeProjection> list, boolean z) {
        this(kClassifier, list, null, z ? 1 : 0);
        kClassifier.getClass();
        list.getClass();
    }
}
