package kotlin.reflect.jvm.internal.impl.types;

import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.checker.NewTypeVariableConstructor;
import kotlin.reflect.jvm.internal.impl.types.model.StubTypeMarker;

/* JADX INFO: loaded from: classes4.dex */
public final class StubTypeForBuilderInference extends AbstractStubType implements StubTypeMarker {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TypeConstructor f74223f;
    public final MemberScope g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StubTypeForBuilderInference(NewTypeVariableConstructor newTypeVariableConstructor, boolean z, TypeConstructor typeConstructor) {
        super(newTypeVariableConstructor, z);
        newTypeVariableConstructor.getClass();
        typeConstructor.getClass();
        this.f74223f = typeConstructor;
        this.g = newTypeVariableConstructor.g().e().n();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final TypeConstructor H0() {
        return this.f74223f;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractStubType
    public final StubTypeForBuilderInference Q0(boolean z) {
        return new StubTypeForBuilderInference(this.f74156c, z, this.f74223f);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractStubType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final MemberScope n() {
        return this.g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType
    public final String toString() {
        StringBuilder sb = new StringBuilder("Stub (BI): ");
        sb.append(this.f74156c);
        sb.append(this.d ? "?" : "");
        return sb.toString();
    }
}
