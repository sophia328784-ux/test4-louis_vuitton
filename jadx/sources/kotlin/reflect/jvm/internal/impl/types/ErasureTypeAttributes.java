package kotlin.reflect.jvm.internal.impl.types;

import java.util.Set;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;

/* JADX INFO: loaded from: classes4.dex */
public class ErasureTypeAttributes {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TypeUsage f74189a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Set f74190b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SimpleType f74191c;

    public ErasureTypeAttributes(TypeUsage typeUsage, Set<? extends TypeParameterDescriptor> set, SimpleType simpleType) {
        typeUsage.getClass();
        this.f74189a = typeUsage;
        this.f74190b = set;
        this.f74191c = simpleType;
    }

    public SimpleType a() {
        return this.f74191c;
    }

    public TypeUsage b() {
        return this.f74189a;
    }

    public Set c() {
        return this.f74190b;
    }

    public ErasureTypeAttributes d(TypeParameterDescriptor typeParameterDescriptor) {
        typeParameterDescriptor.getClass();
        TypeUsage typeUsageB = b();
        Set setC = c();
        return new ErasureTypeAttributes(typeUsageB, setC != null ? SetsKt.g(setC, typeParameterDescriptor) : SetsKt.h(typeParameterDescriptor), a());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ErasureTypeAttributes)) {
            return false;
        }
        ErasureTypeAttributes erasureTypeAttributes = (ErasureTypeAttributes) obj;
        return Intrinsics.c(erasureTypeAttributes.a(), a()) && erasureTypeAttributes.b() == b();
    }

    public int hashCode() {
        SimpleType simpleTypeA = a();
        int iHashCode = simpleTypeA != null ? simpleTypeA.hashCode() : 0;
        return b().hashCode() + (iHashCode * 31) + iHashCode;
    }
}
