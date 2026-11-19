package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import java.util.Set;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.types.ErasureTypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeUsage;

/* JADX INFO: loaded from: classes4.dex */
public final class JavaTypeAttributes extends ErasureTypeAttributes {
    public final TypeUsage d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final JavaTypeFlexibility f73069e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f73070f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Set f73071h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final SimpleType f73072i;

    public /* synthetic */ JavaTypeAttributes(TypeUsage typeUsage, JavaTypeFlexibility javaTypeFlexibility, boolean z, boolean z2, Set set, SimpleType simpleType, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(typeUsage, (i2 & 2) != 0 ? JavaTypeFlexibility.INFLEXIBLE : javaTypeFlexibility, (i2 & 4) != 0 ? false : z, (i2 & 8) != 0 ? false : z2, (i2 & 16) != 0 ? null : set, (i2 & 32) != 0 ? null : simpleType);
    }

    public static JavaTypeAttributes e(JavaTypeAttributes javaTypeAttributes, JavaTypeFlexibility javaTypeFlexibility, boolean z, Set set, SimpleType simpleType, int i2) {
        TypeUsage typeUsage = javaTypeAttributes.d;
        if ((i2 & 2) != 0) {
            javaTypeFlexibility = javaTypeAttributes.f73069e;
        }
        JavaTypeFlexibility javaTypeFlexibility2 = javaTypeFlexibility;
        if ((i2 & 4) != 0) {
            z = javaTypeAttributes.f73070f;
        }
        boolean z2 = z;
        boolean z3 = javaTypeAttributes.g;
        if ((i2 & 16) != 0) {
            set = javaTypeAttributes.f73071h;
        }
        Set set2 = set;
        if ((i2 & 32) != 0) {
            simpleType = javaTypeAttributes.f73072i;
        }
        javaTypeAttributes.getClass();
        typeUsage.getClass();
        javaTypeFlexibility2.getClass();
        return new JavaTypeAttributes(typeUsage, javaTypeFlexibility2, z2, z3, set2, simpleType);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.ErasureTypeAttributes
    public final SimpleType a() {
        return this.f73072i;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.ErasureTypeAttributes
    public final TypeUsage b() {
        return this.d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.ErasureTypeAttributes
    public final Set c() {
        return this.f73071h;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.ErasureTypeAttributes
    public final ErasureTypeAttributes d(TypeParameterDescriptor typeParameterDescriptor) {
        typeParameterDescriptor.getClass();
        Set set = this.f73071h;
        return e(this, null, false, set != null ? SetsKt.g(set, typeParameterDescriptor) : SetsKt.h(typeParameterDescriptor), null, 47);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.ErasureTypeAttributes
    public final boolean equals(Object obj) {
        if (!(obj instanceof JavaTypeAttributes)) {
            return false;
        }
        JavaTypeAttributes javaTypeAttributes = (JavaTypeAttributes) obj;
        return Intrinsics.c(javaTypeAttributes.f73072i, this.f73072i) && javaTypeAttributes.d == this.d && javaTypeAttributes.f73069e == this.f73069e && javaTypeAttributes.f73070f == this.f73070f && javaTypeAttributes.g == this.g;
    }

    public final JavaTypeAttributes f(JavaTypeFlexibility javaTypeFlexibility) {
        javaTypeFlexibility.getClass();
        return e(this, javaTypeFlexibility, false, null, null, 61);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.ErasureTypeAttributes
    public final int hashCode() {
        SimpleType simpleType = this.f73072i;
        int iHashCode = simpleType != null ? simpleType.hashCode() : 0;
        int iHashCode2 = this.d.hashCode() + (iHashCode * 31) + iHashCode;
        int iHashCode3 = this.f73069e.hashCode() + (iHashCode2 * 31) + iHashCode2;
        int i2 = (iHashCode3 * 31) + (this.f73070f ? 1 : 0) + iHashCode3;
        return (i2 * 31) + (this.g ? 1 : 0) + i2;
    }

    public final String toString() {
        return "JavaTypeAttributes(howThisTypeIsUsed=" + this.d + ", flexibility=" + this.f73069e + ", isRaw=" + this.f73070f + ", isForAnnotationParameter=" + this.g + ", visitedTypeParameters=" + this.f73071h + ", defaultType=" + this.f73072i + ')';
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JavaTypeAttributes(TypeUsage typeUsage, JavaTypeFlexibility javaTypeFlexibility, boolean z, boolean z2, Set<? extends TypeParameterDescriptor> set, SimpleType simpleType) {
        super(typeUsage, set, simpleType);
        typeUsage.getClass();
        javaTypeFlexibility.getClass();
        this.d = typeUsage;
        this.f73069e = javaTypeFlexibility;
        this.f73070f = z;
        this.g = z2;
        this.f73071h = set;
        this.f73072i = simpleType;
    }
}
