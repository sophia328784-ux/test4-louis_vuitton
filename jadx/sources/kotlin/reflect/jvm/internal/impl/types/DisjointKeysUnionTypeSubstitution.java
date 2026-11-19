package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;

/* JADX INFO: loaded from: classes4.dex */
public final class DisjointKeysUnionTypeSubstitution extends TypeSubstitution {
    public static final Companion d = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TypeSubstitution f74186b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TypeSubstitution f74187c;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public DisjointKeysUnionTypeSubstitution(TypeSubstitution typeSubstitution, TypeSubstitution typeSubstitution2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f74186b = typeSubstitution;
        this.f74187c = typeSubstitution2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public final boolean a() {
        return this.f74186b.a() || this.f74187c.a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public final boolean b() {
        return this.f74186b.b() || this.f74187c.b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public final Annotations c(Annotations annotations) {
        annotations.getClass();
        return this.f74187c.c(this.f74186b.c(annotations));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public final TypeProjection d(KotlinType kotlinType) {
        kotlinType.getClass();
        TypeProjection typeProjectionD = this.f74186b.d(kotlinType);
        return typeProjectionD == null ? this.f74187c.d(kotlinType) : typeProjectionD;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public final KotlinType f(Variance variance, KotlinType kotlinType) {
        kotlinType.getClass();
        variance.getClass();
        return this.f74187c.f(variance, this.f74186b.f(variance, kotlinType));
    }
}
