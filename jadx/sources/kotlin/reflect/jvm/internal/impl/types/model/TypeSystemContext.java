package kotlin.reflect.jvm.internal.impl.types.model;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.types.TypeCheckerState;

/* JADX INFO: loaded from: classes4.dex */
public interface TypeSystemContext extends TypeSystemOptimizationContext {
    KotlinTypeMarker A(ArrayList arrayList);

    TypeArgumentMarker B(KotlinTypeMarker kotlinTypeMarker);

    CapturedTypeConstructorMarker C(CapturedTypeMarker capturedTypeMarker);

    boolean D(RigidTypeMarker rigidTypeMarker);

    TypeArgumentMarker E(KotlinTypeMarker kotlinTypeMarker, int i2);

    boolean F(RigidTypeMarker rigidTypeMarker);

    boolean G(TypeConstructorMarker typeConstructorMarker);

    boolean H(TypeConstructorMarker typeConstructorMarker);

    boolean J(RigidTypeMarker rigidTypeMarker);

    boolean K(KotlinTypeMarker kotlinTypeMarker);

    boolean L(RigidTypeMarker rigidTypeMarker);

    int M(TypeConstructorMarker typeConstructorMarker);

    SimpleTypeMarker N(RigidTypeMarker rigidTypeMarker);

    CapturedTypeMarker O(RigidTypeMarker rigidTypeMarker);

    KotlinTypeMarker P(KotlinTypeMarker kotlinTypeMarker);

    boolean Q(TypeConstructorMarker typeConstructorMarker);

    Collection R(RigidTypeMarker rigidTypeMarker);

    boolean S(CapturedTypeMarker capturedTypeMarker);

    boolean T(KotlinTypeMarker kotlinTypeMarker);

    Collection U(TypeConstructorMarker typeConstructorMarker);

    TypeConstructorMarker V(KotlinTypeMarker kotlinTypeMarker);

    boolean W(TypeConstructorMarker typeConstructorMarker);

    boolean X(KotlinTypeMarker kotlinTypeMarker);

    TypeCheckerState.SupertypesPolicy Y(RigidTypeMarker rigidTypeMarker);

    boolean Z(KotlinTypeMarker kotlinTypeMarker);

    RigidTypeMarker a(FlexibleTypeMarker flexibleTypeMarker);

    boolean a0(RigidTypeMarker rigidTypeMarker);

    RigidTypeMarker b(RigidTypeMarker rigidTypeMarker);

    FlexibleTypeMarker b0(KotlinTypeMarker kotlinTypeMarker);

    RigidTypeMarker c(FlexibleTypeMarker flexibleTypeMarker);

    TypeConstructorMarker c0(RigidTypeMarker rigidTypeMarker);

    int d(KotlinTypeMarker kotlinTypeMarker);

    CaptureStatus d0(CapturedTypeMarker capturedTypeMarker);

    boolean e(CapturedTypeMarker capturedTypeMarker);

    TypeArgumentMarker e0(CapturedTypeConstructorMarker capturedTypeConstructorMarker);

    KotlinTypeMarker f(KotlinTypeMarker kotlinTypeMarker);

    void f0(RigidTypeMarker rigidTypeMarker, TypeConstructorMarker typeConstructorMarker);

    KotlinTypeMarker g0(CapturedTypeMarker capturedTypeMarker);

    RigidTypeMarker h(RigidTypeMarker rigidTypeMarker, CaptureStatus captureStatus);

    boolean h0(TypeConstructorMarker typeConstructorMarker);

    boolean i(KotlinTypeMarker kotlinTypeMarker);

    boolean i0(TypeConstructorMarker typeConstructorMarker);

    boolean j(RigidTypeMarker rigidTypeMarker);

    List j0(TypeConstructorMarker typeConstructorMarker);

    RigidTypeMarker k(KotlinTypeMarker kotlinTypeMarker);

    CapturedTypeMarker k0(SimpleTypeMarker simpleTypeMarker);

    boolean l(TypeParameterMarker typeParameterMarker, TypeConstructorMarker typeConstructorMarker);

    RigidTypeMarker l0(KotlinTypeMarker kotlinTypeMarker);

    TypeArgumentMarker m(RigidTypeMarker rigidTypeMarker, int i2);

    TypeVariance m0(TypeArgumentMarker typeArgumentMarker);

    TypeArgumentListMarker n(RigidTypeMarker rigidTypeMarker);

    TypeParameterMarker n0(TypeVariableTypeConstructorMarker typeVariableTypeConstructorMarker);

    TypeArgumentMarker o(TypeArgumentListMarker typeArgumentListMarker, int i2);

    boolean o0(KotlinTypeMarker kotlinTypeMarker);

    TypeParameterMarker p(TypeConstructorMarker typeConstructorMarker, int i2);

    boolean p0(TypeConstructorMarker typeConstructorMarker);

    KotlinTypeMarker q0(TypeArgumentMarker typeArgumentMarker);

    boolean r(KotlinTypeMarker kotlinTypeMarker);

    boolean r0(RigidTypeMarker rigidTypeMarker);

    boolean s(TypeArgumentMarker typeArgumentMarker);

    boolean s0(TypeConstructorMarker typeConstructorMarker, TypeConstructorMarker typeConstructorMarker2);

    TypeVariance t(TypeParameterMarker typeParameterMarker);

    boolean u(KotlinTypeMarker kotlinTypeMarker);

    int v(TypeArgumentListMarker typeArgumentListMarker);

    RigidTypeMarker w(KotlinTypeMarker kotlinTypeMarker);

    List y(KotlinTypeMarker kotlinTypeMarker);

    boolean z(KotlinTypeMarker kotlinTypeMarker);
}
