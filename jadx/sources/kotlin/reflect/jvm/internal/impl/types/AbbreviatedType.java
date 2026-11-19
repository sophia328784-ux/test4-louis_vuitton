package kotlin.reflect.jvm.internal.impl.types;

import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;

/* JADX INFO: loaded from: classes4.dex */
public final class AbbreviatedType extends DelegatingSimpleType {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SimpleType f74155c;
    public final SimpleType d;

    public AbbreviatedType(SimpleType simpleType, SimpleType simpleType2) {
        simpleType.getClass();
        simpleType2.getClass();
        this.f74155c = simpleType;
        this.d = simpleType2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType
    /* JADX INFO: renamed from: P0 */
    public final SimpleType N0(TypeAttributes typeAttributes) {
        typeAttributes.getClass();
        return new AbbreviatedType(this.f74155c.N0(typeAttributes), this.d);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
    public final SimpleType Q0() {
        return this.f74155c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
    public final DelegatingSimpleType S0(SimpleType simpleType) {
        return new AbbreviatedType(simpleType, this.d);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType
    /* JADX INFO: renamed from: T0, reason: merged with bridge method [inline-methods] */
    public final AbbreviatedType L0(boolean z) {
        return new AbbreviatedType(this.f74155c.L0(z), this.d.L0(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
    /* JADX INFO: renamed from: U0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final AbbreviatedType J0(KotlinTypeRefiner kotlinTypeRefiner) {
        kotlinTypeRefiner.getClass();
        KotlinType kotlinTypeF = kotlinTypeRefiner.f(this.f74155c);
        kotlinTypeF.getClass();
        KotlinType kotlinTypeF2 = kotlinTypeRefiner.f(this.d);
        kotlinTypeF2.getClass();
        return new AbbreviatedType((SimpleType) kotlinTypeF, (SimpleType) kotlinTypeF2);
    }
}
