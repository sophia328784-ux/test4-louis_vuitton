package kotlin.reflect.jvm.internal.impl.types;

import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptionsImpl;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptionsImpl$property$$inlined$vetoable$1;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;

/* JADX INFO: loaded from: classes4.dex */
public final class FlexibleTypeWithEnhancement extends FlexibleType implements TypeWithEnhancement {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FlexibleType f74194e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final KotlinType f74195f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlexibleTypeWithEnhancement(FlexibleType flexibleType, KotlinType kotlinType) {
        super(flexibleType.f74193c, flexibleType.d);
        flexibleType.getClass();
        kotlinType.getClass();
        this.f74194e = flexibleType;
        this.f74195f = kotlinType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeWithEnhancement
    public final UnwrappedType B0() {
        return this.f74194e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final KotlinType J0(KotlinTypeRefiner kotlinTypeRefiner) {
        kotlinTypeRefiner.getClass();
        KotlinType kotlinTypeF = kotlinTypeRefiner.f(this.f74194e);
        kotlinTypeF.getClass();
        return new FlexibleTypeWithEnhancement((FlexibleType) kotlinTypeF, kotlinTypeRefiner.f(this.f74195f));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final UnwrappedType L0(boolean z) {
        return TypeWithEnhancementKt.c(this.f74194e.L0(z), this.f74195f.K0().L0(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    /* JADX INFO: renamed from: M0 */
    public final UnwrappedType J0(KotlinTypeRefiner kotlinTypeRefiner) {
        kotlinTypeRefiner.getClass();
        KotlinType kotlinTypeF = kotlinTypeRefiner.f(this.f74194e);
        kotlinTypeF.getClass();
        return new FlexibleTypeWithEnhancement((FlexibleType) kotlinTypeF, kotlinTypeRefiner.f(this.f74195f));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final UnwrappedType N0(TypeAttributes typeAttributes) {
        typeAttributes.getClass();
        return TypeWithEnhancementKt.c(this.f74194e.N0(typeAttributes), this.f74195f);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.FlexibleType
    public final SimpleType O0() {
        return this.f74194e.O0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.FlexibleType
    public final String P0(DescriptorRendererImpl descriptorRendererImpl, DescriptorRendererImpl descriptorRendererImpl2) {
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = descriptorRendererImpl2.f73793e.m;
        KProperty kProperty = DescriptorRendererOptionsImpl.Y[11];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        return ((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.f71939a).booleanValue() ? descriptorRendererImpl.Y(this.f74195f) : this.f74194e.P0(descriptorRendererImpl, descriptorRendererImpl2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeWithEnhancement
    public final KotlinType Z() {
        return this.f74195f;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.FlexibleType
    public final String toString() {
        return "[@EnhancedForWarnings(" + this.f74195f + ")] " + this.f74194e;
    }
}
