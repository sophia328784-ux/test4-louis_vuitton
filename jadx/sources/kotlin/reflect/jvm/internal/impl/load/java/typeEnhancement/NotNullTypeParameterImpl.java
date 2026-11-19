package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import defpackage.v40;
import kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.NotNullTypeParameter;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.TypeWithEnhancementKt;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;

/* JADX INFO: loaded from: classes4.dex */
public final class NotNullTypeParameterImpl extends DelegatingSimpleType implements NotNullTypeParameter {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SimpleType f73113c;

    public NotNullTypeParameterImpl(SimpleType simpleType) {
        simpleType.getClass();
        this.f73113c = simpleType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final boolean I0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final UnwrappedType N0(TypeAttributes typeAttributes) {
        typeAttributes.getClass();
        return new NotNullTypeParameterImpl(this.f73113c.N0(typeAttributes));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType
    /* JADX INFO: renamed from: O0 */
    public final SimpleType L0(boolean z) {
        return z ? this.f73113c.L0(true) : this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType
    /* JADX INFO: renamed from: P0 */
    public final SimpleType N0(TypeAttributes typeAttributes) {
        typeAttributes.getClass();
        return new NotNullTypeParameterImpl(this.f73113c.N0(typeAttributes));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
    public final SimpleType Q0() {
        return this.f73113c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
    public final DelegatingSimpleType S0(SimpleType simpleType) {
        return new NotNullTypeParameterImpl(simpleType);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.CustomTypeParameter
    public final UnwrappedType b0(KotlinType kotlinType) {
        kotlinType.getClass();
        UnwrappedType unwrappedTypeK0 = kotlinType.K0();
        if (!TypeUtils.h(unwrappedTypeK0) && !TypeUtils.g(unwrappedTypeK0)) {
            return unwrappedTypeK0;
        }
        if (unwrappedTypeK0 instanceof SimpleType) {
            SimpleType simpleType = (SimpleType) unwrappedTypeK0;
            SimpleType simpleTypeL0 = simpleType.L0(false);
            return !TypeUtils.h(simpleType) ? simpleTypeL0 : new NotNullTypeParameterImpl(simpleTypeL0);
        }
        if (!(unwrappedTypeK0 instanceof FlexibleType)) {
            v40.g();
            return null;
        }
        FlexibleType flexibleType = (FlexibleType) unwrappedTypeK0;
        SimpleType simpleType2 = flexibleType.f74193c;
        SimpleType simpleTypeL1 = simpleType2.L0(false);
        if (TypeUtils.h(simpleType2)) {
            simpleTypeL1 = new NotNullTypeParameterImpl(simpleTypeL1);
        }
        SimpleType simpleType3 = flexibleType.d;
        SimpleType simpleTypeL2 = simpleType3.L0(false);
        if (TypeUtils.h(simpleType3)) {
            simpleTypeL2 = new NotNullTypeParameterImpl(simpleTypeL2);
        }
        return TypeWithEnhancementKt.c(KotlinTypeFactory.a(simpleTypeL1, simpleTypeL2), TypeWithEnhancementKt.a(unwrappedTypeK0));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.CustomTypeParameter
    public final boolean y0() {
        return true;
    }
}
