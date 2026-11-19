package kotlin.reflect.jvm.internal.impl.types;

import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;

/* JADX INFO: loaded from: classes4.dex */
public class DelegatedTypeSubstitution extends TypeSubstitution {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TypeSubstitution f74184b;

    public DelegatedTypeSubstitution(TypeSubstitution typeSubstitution) {
        typeSubstitution.getClass();
        this.f74184b = typeSubstitution;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public final boolean a() {
        return this.f74184b.a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public boolean b() {
        return this.f74184b.b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public final Annotations c(Annotations annotations) {
        annotations.getClass();
        return this.f74184b.c(annotations);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public TypeProjection d(KotlinType kotlinType) {
        kotlinType.getClass();
        return this.f74184b.d(kotlinType);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public final boolean e() {
        return this.f74184b.e();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public final KotlinType f(Variance variance, KotlinType kotlinType) {
        kotlinType.getClass();
        variance.getClass();
        return this.f74184b.f(variance, kotlinType);
    }
}
