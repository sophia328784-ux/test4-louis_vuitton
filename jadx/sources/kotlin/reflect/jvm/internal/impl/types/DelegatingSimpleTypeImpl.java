package kotlin.reflect.jvm.internal.impl.types;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DelegatingSimpleTypeImpl extends DelegatingSimpleType {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SimpleType f74185c;

    public DelegatingSimpleTypeImpl(SimpleType simpleType) {
        simpleType.getClass();
        this.f74185c = simpleType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType
    /* JADX INFO: renamed from: O0 */
    public final SimpleType L0(boolean z) {
        return z == I0() ? this : this.f74185c.L0(z).N0(G0());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType
    /* JADX INFO: renamed from: P0 */
    public final SimpleType N0(TypeAttributes typeAttributes) {
        typeAttributes.getClass();
        return typeAttributes != G0() ? new SimpleTypeWithAttributes(this, typeAttributes) : this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
    public final SimpleType Q0() {
        return this.f74185c;
    }
}
