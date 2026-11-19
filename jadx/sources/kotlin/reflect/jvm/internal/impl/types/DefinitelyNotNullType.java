package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.TypeParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeCheckerStateKt;
import kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedType;
import kotlin.reflect.jvm.internal.impl.types.checker.NewTypeVariableConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.SimpleClassicTypeSystemContext;
import kotlin.reflect.jvm.internal.impl.types.model.DefinitelyNotNullTypeMarker;

/* JADX INFO: loaded from: classes4.dex */
public final class DefinitelyNotNullType extends DelegatingSimpleType implements CustomTypeParameter, DefinitelyNotNullTypeMarker {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f74182e = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SimpleType f74183c;
    public final boolean d;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static DefinitelyNotNullType a(Companion companion, UnwrappedType unwrappedType, boolean z) {
            boolean zG;
            companion.getClass();
            unwrappedType.getClass();
            if (unwrappedType instanceof DefinitelyNotNullType) {
                return (DefinitelyNotNullType) unwrappedType;
            }
            DefaultConstructorMarker defaultConstructorMarker = null;
            if (!(unwrappedType.H0() instanceof NewTypeVariableConstructor) && !(unwrappedType.H0().y() instanceof TypeParameterDescriptor) && !(unwrappedType instanceof NewCapturedType) && !(unwrappedType instanceof StubTypeForBuilderInference)) {
                zG = false;
            } else if (unwrappedType instanceof StubTypeForBuilderInference) {
                zG = TypeUtils.g(unwrappedType);
            } else {
                ClassifierDescriptor classifierDescriptorY = unwrappedType.H0().y();
                TypeParameterDescriptorImpl typeParameterDescriptorImpl = classifierDescriptorY instanceof TypeParameterDescriptorImpl ? (TypeParameterDescriptorImpl) classifierDescriptorY : null;
                if (typeParameterDescriptorImpl == null || typeParameterDescriptorImpl.m) {
                    zG = (z && (unwrappedType.H0().y() instanceof TypeParameterDescriptor)) ? TypeUtils.g(unwrappedType) : !AbstractNullabilityChecker.a(ClassicTypeCheckerStateKt.a(false, SimpleClassicTypeSystemContext.f74291a, null, null, 24), FlexibleTypesKt.a(unwrappedType), TypeCheckerState.SupertypesPolicy.LowerIfFlexible.f74241a);
                } else {
                    zG = true;
                }
            }
            if (!zG) {
                return null;
            }
            if (unwrappedType instanceof FlexibleType) {
                FlexibleType flexibleType = (FlexibleType) unwrappedType;
                Intrinsics.c(flexibleType.f74193c.H0(), flexibleType.d.H0());
            }
            return new DefinitelyNotNullType(FlexibleTypesKt.a(unwrappedType).L0(false), z, defaultConstructorMarker);
        }
    }

    public DefinitelyNotNullType(SimpleType simpleType, boolean z) {
        this.f74183c = simpleType;
        this.d = z;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final boolean I0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType
    /* JADX INFO: renamed from: O0 */
    public final SimpleType L0(boolean z) {
        return z ? this.f74183c.L0(z) : this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType
    /* JADX INFO: renamed from: P0 */
    public final SimpleType N0(TypeAttributes typeAttributes) {
        typeAttributes.getClass();
        return new DefinitelyNotNullType(this.f74183c.N0(typeAttributes), this.d);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
    public final SimpleType Q0() {
        return this.f74183c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
    public final DelegatingSimpleType S0(SimpleType simpleType) {
        return new DefinitelyNotNullType(simpleType, this.d);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.CustomTypeParameter
    public final UnwrappedType b0(KotlinType kotlinType) {
        kotlinType.getClass();
        return SpecialTypesKt.a(kotlinType.K0(), this.d);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType
    public final String toString() {
        return this.f74183c + " & Any";
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.CustomTypeParameter
    public final boolean y0() {
        SimpleType simpleType = this.f74183c;
        return (simpleType.H0() instanceof NewTypeVariableConstructor) || (simpleType.H0().y() instanceof TypeParameterDescriptor);
    }

    public /* synthetic */ DefinitelyNotNullType(SimpleType simpleType, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(simpleType, z);
    }
}
