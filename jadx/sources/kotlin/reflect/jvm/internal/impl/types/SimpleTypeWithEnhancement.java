package kotlin.reflect.jvm.internal.impl.types;

import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;

/* JADX INFO: loaded from: classes4.dex */
public final class SimpleTypeWithEnhancement extends DelegatingSimpleType implements TypeWithEnhancement {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SimpleType f74217c;
    public final KotlinType d;

    public SimpleTypeWithEnhancement(SimpleType simpleType, KotlinType kotlinType) {
        simpleType.getClass();
        kotlinType.getClass();
        this.f74217c = simpleType;
        this.d = kotlinType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeWithEnhancement
    public final UnwrappedType B0() {
        return this.f74217c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType
    /* JADX INFO: renamed from: O0 */
    public final SimpleType L0(boolean z) {
        UnwrappedType unwrappedTypeC = TypeWithEnhancementKt.c(this.f74217c.L0(z), this.d.K0().L0(z));
        unwrappedTypeC.getClass();
        return (SimpleType) unwrappedTypeC;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType
    /* JADX INFO: renamed from: P0 */
    public final SimpleType N0(TypeAttributes typeAttributes) {
        typeAttributes.getClass();
        UnwrappedType unwrappedTypeC = TypeWithEnhancementKt.c(this.f74217c.N0(typeAttributes), this.d);
        unwrappedTypeC.getClass();
        return (SimpleType) unwrappedTypeC;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
    public final SimpleType Q0() {
        return this.f74217c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
    public final DelegatingSimpleType S0(SimpleType simpleType) {
        return new SimpleTypeWithEnhancement(simpleType, this.d);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
    /* JADX INFO: renamed from: T0, reason: merged with bridge method [inline-methods] */
    public final SimpleTypeWithEnhancement J0(KotlinTypeRefiner kotlinTypeRefiner) {
        kotlinTypeRefiner.getClass();
        KotlinType kotlinTypeF = kotlinTypeRefiner.f(this.f74217c);
        kotlinTypeF.getClass();
        return new SimpleTypeWithEnhancement((SimpleType) kotlinTypeF, kotlinTypeRefiner.f(this.d));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeWithEnhancement
    public final KotlinType Z() {
        return this.d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType
    public final String toString() {
        return "[@EnhancedForWarnings(" + this.d + ")] " + this.f74217c;
    }
}
