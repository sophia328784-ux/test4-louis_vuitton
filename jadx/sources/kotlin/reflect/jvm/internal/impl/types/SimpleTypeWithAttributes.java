package kotlin.reflect.jvm.internal.impl.types;

/* JADX INFO: loaded from: classes4.dex */
final class SimpleTypeWithAttributes extends DelegatingSimpleTypeImpl {
    public final TypeAttributes d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SimpleTypeWithAttributes(SimpleType simpleType, TypeAttributes typeAttributes) {
        super(simpleType);
        simpleType.getClass();
        typeAttributes.getClass();
        this.d = typeAttributes;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final TypeAttributes G0() {
        return this.d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
    public final DelegatingSimpleType S0(SimpleType simpleType) {
        return new SimpleTypeWithAttributes(simpleType, this.d);
    }
}
