package kotlin.reflect.jvm.internal.impl.types;

import defpackage.v40;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class FlexibleTypeImpl extends FlexibleType implements CustomTypeParameter {

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlexibleTypeImpl(SimpleType simpleType, SimpleType simpleType2) {
        super(simpleType, simpleType2);
        simpleType.getClass();
        simpleType2.getClass();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final UnwrappedType L0(boolean z) {
        return KotlinTypeFactory.a(this.f74193c.L0(z), this.d.L0(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final UnwrappedType N0(TypeAttributes typeAttributes) {
        typeAttributes.getClass();
        return KotlinTypeFactory.a(this.f74193c.N0(typeAttributes), this.d.N0(typeAttributes));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.FlexibleType
    public final SimpleType O0() {
        return this.f74193c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.FlexibleType
    public final String P0(DescriptorRendererImpl descriptorRendererImpl, DescriptorRendererImpl descriptorRendererImpl2) {
        boolean zO = descriptorRendererImpl2.f73793e.o();
        SimpleType simpleType = this.d;
        SimpleType simpleType2 = this.f74193c;
        if (!zO) {
            return descriptorRendererImpl.H(descriptorRendererImpl.Y(simpleType2), descriptorRendererImpl.Y(simpleType), TypeUtilsKt.f(this));
        }
        return "(" + descriptorRendererImpl.Y(simpleType2) + ".." + descriptorRendererImpl.Y(simpleType) + ')';
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    /* JADX INFO: renamed from: Q0, reason: merged with bridge method [inline-methods] */
    public final FlexibleType J0(KotlinTypeRefiner kotlinTypeRefiner) {
        kotlinTypeRefiner.getClass();
        KotlinType kotlinTypeF = kotlinTypeRefiner.f(this.f74193c);
        kotlinTypeF.getClass();
        KotlinType kotlinTypeF2 = kotlinTypeRefiner.f(this.d);
        kotlinTypeF2.getClass();
        return new FlexibleTypeImpl((SimpleType) kotlinTypeF, (SimpleType) kotlinTypeF2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.CustomTypeParameter
    public final UnwrappedType b0(KotlinType kotlinType) {
        UnwrappedType unwrappedTypeA;
        kotlinType.getClass();
        UnwrappedType unwrappedTypeK0 = kotlinType.K0();
        if (unwrappedTypeK0 instanceof FlexibleType) {
            unwrappedTypeA = unwrappedTypeK0;
        } else {
            if (!(unwrappedTypeK0 instanceof SimpleType)) {
                v40.g();
                return null;
            }
            SimpleType simpleType = (SimpleType) unwrappedTypeK0;
            unwrappedTypeA = KotlinTypeFactory.a(simpleType, simpleType.L0(true));
        }
        return TypeWithEnhancementKt.b(unwrappedTypeA, unwrappedTypeK0);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.FlexibleType
    public final String toString() {
        return "(" + this.f74193c + ".." + this.d + ')';
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.CustomTypeParameter
    public final boolean y0() {
        SimpleType simpleType = this.f74193c;
        return (simpleType.H0().y() instanceof TypeParameterDescriptor) && Intrinsics.c(simpleType.H0(), this.d.H0());
    }
}
