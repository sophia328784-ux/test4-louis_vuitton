package kotlin.reflect.jvm.internal.impl.types.checker;

import defpackage.b21;
import defpackage.cj;
import defpackage.md;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.InlineClassRepresentation;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.resolve.constants.IntegerLiteralTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.AbstractStubType;
import kotlin.reflect.jvm.internal.impl.types.DefinitelyNotNullType;
import kotlin.reflect.jvm.internal.impl.types.DynamicType;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.RawType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.SimpleTypeWithEnhancement;
import kotlin.reflect.jvm.internal.impl.types.SpecialTypesKt;
import kotlin.reflect.jvm.internal.impl.types.StubTypeForBuilderInference;
import kotlin.reflect.jvm.internal.impl.types.TypeCheckerState;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.TypeSystemCommonBackendContext;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.model.CapturedTypeConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.model.CapturedTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.FlexibleTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.RigidTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeArgumentListMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeArgumentMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeParameterMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeSubstitutorMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContextKt;
import kotlin.reflect.jvm.internal.impl.types.model.TypeSystemInferenceExtensionContext;
import kotlin.reflect.jvm.internal.impl.types.model.TypeVariableTypeConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeVariance;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

/* JADX INFO: loaded from: classes4.dex */
public interface ClassicTypeSystemContext extends TypeSystemCommonBackendContext, TypeSystemInferenceExtensionContext {

    public static final class DefaultImpls {
        public static boolean A(TypeConstructorMarker typeConstructorMarker) {
            typeConstructorMarker.getClass();
            if (typeConstructorMarker instanceof TypeConstructor) {
                return ((TypeConstructor) typeConstructorMarker).y() instanceof ClassDescriptor;
            }
            StringBuilder sbN = cj.n("ClassicTypeSystemContext couldn't handle: ", typeConstructorMarker, ", ");
            b21.n(cj.l(Reflection.f71922a, typeConstructorMarker.getClass(), sbN));
            return false;
        }

        public static boolean B(TypeConstructorMarker typeConstructorMarker) {
            if (typeConstructorMarker instanceof TypeConstructor) {
                ClassifierDescriptor classifierDescriptorY = ((TypeConstructor) typeConstructorMarker).y();
                ClassDescriptor classDescriptor = classifierDescriptorY instanceof ClassDescriptor ? (ClassDescriptor) classifierDescriptorY : null;
                return (classDescriptor == null || classDescriptor.q() != Modality.FINAL || classDescriptor.e() == ClassKind.ENUM_CLASS || classDescriptor.e() == ClassKind.ENUM_ENTRY || classDescriptor.e() == ClassKind.ANNOTATION_CLASS) ? false : true;
            }
            b21.n(cj.l(Reflection.f71922a, typeConstructorMarker.getClass(), cj.n("ClassicTypeSystemContext couldn't handle: ", typeConstructorMarker, ", ")));
            return false;
        }

        public static boolean C(TypeConstructorMarker typeConstructorMarker) {
            if (typeConstructorMarker instanceof TypeConstructor) {
                return ((TypeConstructor) typeConstructorMarker).A();
            }
            StringBuilder sbN = cj.n("ClassicTypeSystemContext couldn't handle: ", typeConstructorMarker, ", ");
            b21.n(cj.l(Reflection.f71922a, typeConstructorMarker.getClass(), sbN));
            return false;
        }

        public static boolean D(KotlinTypeMarker kotlinTypeMarker) {
            kotlinTypeMarker.getClass();
            if (kotlinTypeMarker instanceof KotlinType) {
                return KotlinTypeKt.a((KotlinType) kotlinTypeMarker);
            }
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(kotlinTypeMarker);
            sb.append(", ");
            b21.n(cj.l(Reflection.f71922a, kotlinTypeMarker.getClass(), sb));
            return false;
        }

        public static boolean E(TypeConstructorMarker typeConstructorMarker) {
            typeConstructorMarker.getClass();
            if (typeConstructorMarker instanceof TypeConstructor) {
                ClassifierDescriptor classifierDescriptorY = ((TypeConstructor) typeConstructorMarker).y();
                ClassDescriptor classDescriptor = classifierDescriptorY instanceof ClassDescriptor ? (ClassDescriptor) classifierDescriptorY : null;
                return (classDescriptor != null ? classDescriptor.O() : null) instanceof InlineClassRepresentation;
            }
            b21.n(cj.l(Reflection.f71922a, typeConstructorMarker.getClass(), cj.n("ClassicTypeSystemContext couldn't handle: ", typeConstructorMarker, ", ")));
            return false;
        }

        public static boolean F(TypeConstructorMarker typeConstructorMarker) {
            typeConstructorMarker.getClass();
            if (typeConstructorMarker instanceof TypeConstructor) {
                return typeConstructorMarker instanceof IntegerLiteralTypeConstructor;
            }
            StringBuilder sbN = cj.n("ClassicTypeSystemContext couldn't handle: ", typeConstructorMarker, ", ");
            b21.n(cj.l(Reflection.f71922a, typeConstructorMarker.getClass(), sbN));
            return false;
        }

        public static boolean G(TypeConstructorMarker typeConstructorMarker) {
            if (typeConstructorMarker instanceof TypeConstructor) {
                return typeConstructorMarker instanceof IntersectionTypeConstructor;
            }
            StringBuilder sbN = cj.n("ClassicTypeSystemContext couldn't handle: ", typeConstructorMarker, ", ");
            b21.n(cj.l(Reflection.f71922a, typeConstructorMarker.getClass(), sbN));
            return false;
        }

        public static boolean H(KotlinTypeMarker kotlinTypeMarker) {
            kotlinTypeMarker.getClass();
            return (kotlinTypeMarker instanceof SimpleType) && ((SimpleType) kotlinTypeMarker).I0();
        }

        public static boolean I(TypeConstructorMarker typeConstructorMarker) {
            typeConstructorMarker.getClass();
            if (typeConstructorMarker instanceof TypeConstructor) {
                return KotlinBuiltIns.J((TypeConstructor) typeConstructorMarker, StandardNames.FqNames.f72272b);
            }
            StringBuilder sbN = cj.n("ClassicTypeSystemContext couldn't handle: ", typeConstructorMarker, ", ");
            b21.n(cj.l(Reflection.f71922a, typeConstructorMarker.getClass(), sbN));
            return false;
        }

        public static boolean J(KotlinTypeMarker kotlinTypeMarker) {
            kotlinTypeMarker.getClass();
            if (kotlinTypeMarker instanceof KotlinType) {
                return TypeUtils.g((KotlinType) kotlinTypeMarker);
            }
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(kotlinTypeMarker);
            sb.append(", ");
            b21.n(cj.l(Reflection.f71922a, kotlinTypeMarker.getClass(), sb));
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static boolean K(SimpleTypeMarker simpleTypeMarker) {
            if (simpleTypeMarker instanceof KotlinType) {
                return KotlinBuiltIns.H((KotlinType) simpleTypeMarker);
            }
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(simpleTypeMarker);
            sb.append(", ");
            b21.n(cj.l(Reflection.f71922a, simpleTypeMarker.getClass(), sb));
            return false;
        }

        public static boolean L(CapturedTypeMarker capturedTypeMarker) {
            if (capturedTypeMarker instanceof NewCapturedType) {
                return ((NewCapturedType) capturedTypeMarker).f74276h;
            }
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(capturedTypeMarker);
            sb.append(", ");
            b21.n(cj.l(Reflection.f71922a, capturedTypeMarker.getClass(), sb));
            return false;
        }

        public static boolean M(KotlinTypeMarker kotlinTypeMarker) {
            kotlinTypeMarker.getClass();
            if (kotlinTypeMarker instanceof KotlinType) {
                return kotlinTypeMarker instanceof RawType;
            }
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(kotlinTypeMarker);
            sb.append(", ");
            b21.n(cj.l(Reflection.f71922a, kotlinTypeMarker.getClass(), sb));
            return false;
        }

        public static boolean N(TypeArgumentMarker typeArgumentMarker) {
            typeArgumentMarker.getClass();
            if (typeArgumentMarker instanceof TypeProjection) {
                return ((TypeProjection) typeArgumentMarker).a();
            }
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(typeArgumentMarker);
            sb.append(", ");
            b21.n(cj.l(Reflection.f71922a, typeArgumentMarker.getClass(), sb));
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static boolean O(RigidTypeMarker rigidTypeMarker) {
            rigidTypeMarker.getClass();
            if (rigidTypeMarker instanceof SimpleType) {
                KotlinType kotlinType = (KotlinType) rigidTypeMarker;
                if (kotlinType instanceof AbstractStubType) {
                    return true;
                }
                return (kotlinType instanceof DefinitelyNotNullType) && (((DefinitelyNotNullType) kotlinType).f74183c instanceof AbstractStubType);
            }
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(rigidTypeMarker);
            sb.append(", ");
            b21.n(cj.l(Reflection.f71922a, rigidTypeMarker.getClass(), sb));
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static boolean P(RigidTypeMarker rigidTypeMarker) {
            if (rigidTypeMarker instanceof SimpleType) {
                KotlinType kotlinType = (KotlinType) rigidTypeMarker;
                if (kotlinType instanceof StubTypeForBuilderInference) {
                    return true;
                }
                return (kotlinType instanceof DefinitelyNotNullType) && (((DefinitelyNotNullType) kotlinType).f74183c instanceof StubTypeForBuilderInference);
            }
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(rigidTypeMarker);
            sb.append(", ");
            b21.n(cj.l(Reflection.f71922a, rigidTypeMarker.getClass(), sb));
            return false;
        }

        public static SimpleType Q(FlexibleTypeMarker flexibleTypeMarker) {
            if (flexibleTypeMarker instanceof FlexibleType) {
                return ((FlexibleType) flexibleTypeMarker).f74193c;
            }
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(flexibleTypeMarker);
            sb.append(", ");
            b21.n(cj.l(Reflection.f71922a, flexibleTypeMarker.getClass(), sb));
            return null;
        }

        public static UnwrappedType R(CapturedTypeMarker capturedTypeMarker) {
            if (capturedTypeMarker instanceof NewCapturedType) {
                return ((NewCapturedType) capturedTypeMarker).f74274e;
            }
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(capturedTypeMarker);
            sb.append(", ");
            b21.n(cj.l(Reflection.f71922a, capturedTypeMarker.getClass(), sb));
            return null;
        }

        public static UnwrappedType S(KotlinTypeMarker kotlinTypeMarker) {
            if (kotlinTypeMarker instanceof UnwrappedType) {
                return SpecialTypesKt.a((UnwrappedType) kotlinTypeMarker, false);
            }
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(kotlinTypeMarker);
            sb.append(", ");
            b21.n(cj.l(Reflection.f71922a, kotlinTypeMarker.getClass(), sb));
            return null;
        }

        public static int T(TypeConstructorMarker typeConstructorMarker) {
            if (typeConstructorMarker instanceof TypeConstructor) {
                return ((TypeConstructor) typeConstructorMarker).getParameters().size();
            }
            StringBuilder sbN = cj.n("ClassicTypeSystemContext couldn't handle: ", typeConstructorMarker, ", ");
            b21.n(cj.l(Reflection.f71922a, typeConstructorMarker.getClass(), sbN));
            return 0;
        }

        public static Collection U(ClassicTypeSystemContext classicTypeSystemContext, RigidTypeMarker rigidTypeMarker) {
            TypeConstructorMarker typeConstructorMarkerC0 = classicTypeSystemContext.c0(rigidTypeMarker);
            if (typeConstructorMarkerC0 instanceof IntegerLiteralTypeConstructor) {
                return ((IntegerLiteralTypeConstructor) typeConstructorMarkerC0).d;
            }
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(rigidTypeMarker);
            sb.append(", ");
            b21.n(cj.l(Reflection.f71922a, rigidTypeMarker.getClass(), sb));
            return null;
        }

        public static TypeProjection V(CapturedTypeConstructorMarker capturedTypeConstructorMarker) {
            if (capturedTypeConstructorMarker instanceof NewCapturedTypeConstructor) {
                return ((NewCapturedTypeConstructor) capturedTypeConstructorMarker).f74277b;
            }
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(capturedTypeConstructorMarker);
            sb.append(", ");
            b21.n(cj.l(Reflection.f71922a, capturedTypeConstructorMarker.getClass(), sb));
            return null;
        }

        public static KotlinType W(TypeSubstitutorMarker typeSubstitutorMarker, KotlinTypeMarker kotlinTypeMarker) {
            typeSubstitutorMarker.getClass();
            kotlinTypeMarker.getClass();
            if (!(kotlinTypeMarker instanceof UnwrappedType)) {
                StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
                sb.append(kotlinTypeMarker);
                sb.append(", ");
                b21.n(cj.l(Reflection.f71922a, kotlinTypeMarker.getClass(), sb));
                return null;
            }
            if (typeSubstitutorMarker instanceof TypeSubstitutor) {
                return ((TypeSubstitutor) typeSubstitutorMarker).h(Variance.INVARIANT, (KotlinType) kotlinTypeMarker);
            }
            StringBuilder sb2 = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb2.append(typeSubstitutorMarker);
            sb2.append(", ");
            b21.n(cj.l(Reflection.f71922a, typeSubstitutorMarker.getClass(), sb2));
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v5, types: [kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext$substitutionSupertypePolicy$2] */
        public static ClassicTypeSystemContext$substitutionSupertypePolicy$2 X(final ClassicTypeSystemContext classicTypeSystemContext, RigidTypeMarker rigidTypeMarker) {
            if (rigidTypeMarker instanceof SimpleType) {
                TypeConstructorSubstitution.Companion companion = TypeConstructorSubstitution.f74244b;
                KotlinType kotlinType = (KotlinType) rigidTypeMarker;
                companion.getClass();
                final TypeSubstitutor typeSubstitutorE = TypeSubstitutor.e(companion.a(kotlinType.H0(), kotlinType.F0()));
                return new TypeCheckerState.SupertypesPolicy.DoCustomTransform() { // from class: kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext$substitutionSupertypePolicy$2
                    @Override // kotlin.reflect.jvm.internal.impl.types.TypeCheckerState.SupertypesPolicy
                    public final RigidTypeMarker a(TypeCheckerState typeCheckerState, KotlinTypeMarker kotlinTypeMarker) {
                        typeCheckerState.getClass();
                        kotlinTypeMarker.getClass();
                        ClassicTypeSystemContext classicTypeSystemContext2 = classicTypeSystemContext;
                        KotlinType kotlinType2 = (KotlinType) classicTypeSystemContext2.l0(kotlinTypeMarker);
                        SimpleType simpleTypeX = classicTypeSystemContext2.x(typeSubstitutorE.h(Variance.INVARIANT, kotlinType2));
                        simpleTypeX.getClass();
                        return simpleTypeX;
                    }
                };
            }
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(rigidTypeMarker);
            sb.append(", ");
            b21.n(cj.l(Reflection.f71922a, rigidTypeMarker.getClass(), sb));
            return null;
        }

        public static Collection Y(TypeConstructorMarker typeConstructorMarker) {
            typeConstructorMarker.getClass();
            if (typeConstructorMarker instanceof TypeConstructor) {
                Collection collectionI = ((TypeConstructor) typeConstructorMarker).i();
                collectionI.getClass();
                return collectionI;
            }
            StringBuilder sbN = cj.n("ClassicTypeSystemContext couldn't handle: ", typeConstructorMarker, ", ");
            b21.n(cj.l(Reflection.f71922a, typeConstructorMarker.getClass(), sbN));
            return null;
        }

        public static TypeConstructor Z(RigidTypeMarker rigidTypeMarker) {
            rigidTypeMarker.getClass();
            if (rigidTypeMarker instanceof SimpleType) {
                return ((SimpleType) rigidTypeMarker).H0();
            }
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(rigidTypeMarker);
            sb.append(", ");
            b21.n(cj.l(Reflection.f71922a, rigidTypeMarker.getClass(), sb));
            return null;
        }

        public static boolean a(TypeConstructorMarker typeConstructorMarker, TypeConstructorMarker typeConstructorMarker2) {
            typeConstructorMarker.getClass();
            typeConstructorMarker2.getClass();
            if (!(typeConstructorMarker instanceof TypeConstructor)) {
                StringBuilder sbN = cj.n("ClassicTypeSystemContext couldn't handle: ", typeConstructorMarker, ", ");
                b21.n(cj.l(Reflection.f71922a, typeConstructorMarker.getClass(), sbN));
                return false;
            }
            if (typeConstructorMarker2 instanceof TypeConstructor) {
                return typeConstructorMarker.equals(typeConstructorMarker2);
            }
            StringBuilder sbN2 = cj.n("ClassicTypeSystemContext couldn't handle: ", typeConstructorMarker2, ", ");
            b21.n(cj.l(Reflection.f71922a, typeConstructorMarker2.getClass(), sbN2));
            return false;
        }

        public static NewCapturedTypeConstructor a0(CapturedTypeMarker capturedTypeMarker) {
            if (capturedTypeMarker instanceof NewCapturedType) {
                return ((NewCapturedType) capturedTypeMarker).d;
            }
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(capturedTypeMarker);
            sb.append(", ");
            b21.n(cj.l(Reflection.f71922a, capturedTypeMarker.getClass(), sb));
            return null;
        }

        public static int b(KotlinTypeMarker kotlinTypeMarker) {
            kotlinTypeMarker.getClass();
            if (kotlinTypeMarker instanceof KotlinType) {
                return ((KotlinType) kotlinTypeMarker).F0().size();
            }
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(kotlinTypeMarker);
            sb.append(", ");
            b21.n(cj.l(Reflection.f71922a, kotlinTypeMarker.getClass(), sb));
            return 0;
        }

        public static SimpleType b0(FlexibleTypeMarker flexibleTypeMarker) {
            if (flexibleTypeMarker instanceof FlexibleType) {
                return ((FlexibleType) flexibleTypeMarker).d;
            }
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(flexibleTypeMarker);
            sb.append(", ");
            b21.n(cj.l(Reflection.f71922a, flexibleTypeMarker.getClass(), sb));
            return null;
        }

        public static TypeArgumentListMarker c(RigidTypeMarker rigidTypeMarker) {
            rigidTypeMarker.getClass();
            if (rigidTypeMarker instanceof SimpleType) {
                return (TypeArgumentListMarker) rigidTypeMarker;
            }
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(rigidTypeMarker);
            sb.append(", ");
            b21.n(cj.l(Reflection.f71922a, rigidTypeMarker.getClass(), sb));
            return null;
        }

        public static SimpleType c0(RigidTypeMarker rigidTypeMarker, boolean z) {
            rigidTypeMarker.getClass();
            if (rigidTypeMarker instanceof SimpleType) {
                return ((SimpleType) rigidTypeMarker).L0(z);
            }
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(rigidTypeMarker);
            sb.append(", ");
            b21.n(cj.l(Reflection.f71922a, rigidTypeMarker.getClass(), sb));
            return null;
        }

        public static CapturedTypeMarker d(ClassicTypeSystemContext classicTypeSystemContext, SimpleTypeMarker simpleTypeMarker) {
            simpleTypeMarker.getClass();
            if (simpleTypeMarker instanceof SimpleType) {
                if (simpleTypeMarker instanceof SimpleTypeWithEnhancement) {
                    return classicTypeSystemContext.k0(((SimpleTypeWithEnhancement) simpleTypeMarker).f74217c);
                }
                if (simpleTypeMarker instanceof NewCapturedType) {
                    return (NewCapturedType) simpleTypeMarker;
                }
                return null;
            }
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(simpleTypeMarker);
            sb.append(", ");
            b21.n(cj.l(Reflection.f71922a, simpleTypeMarker.getClass(), sb));
            return null;
        }

        public static KotlinTypeMarker d0(ClassicTypeSystemContext classicTypeSystemContext, KotlinTypeMarker kotlinTypeMarker) {
            if (kotlinTypeMarker instanceof RigidTypeMarker) {
                return classicTypeSystemContext.b((RigidTypeMarker) kotlinTypeMarker);
            }
            if (kotlinTypeMarker instanceof FlexibleTypeMarker) {
                FlexibleTypeMarker flexibleTypeMarker = (FlexibleTypeMarker) kotlinTypeMarker;
                return classicTypeSystemContext.q(classicTypeSystemContext.b((RigidTypeMarker) classicTypeSystemContext.a(flexibleTypeMarker)), classicTypeSystemContext.b((RigidTypeMarker) classicTypeSystemContext.c(flexibleTypeMarker)));
            }
            md.k("sealed");
            return null;
        }

        public static DefinitelyNotNullType e(RigidTypeMarker rigidTypeMarker) {
            rigidTypeMarker.getClass();
            if (rigidTypeMarker instanceof SimpleType) {
                if (rigidTypeMarker instanceof DefinitelyNotNullType) {
                    return (DefinitelyNotNullType) rigidTypeMarker;
                }
                return null;
            }
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(rigidTypeMarker);
            sb.append(", ");
            b21.n(cj.l(Reflection.f71922a, rigidTypeMarker.getClass(), sb));
            return null;
        }

        public static DynamicType f(FlexibleType flexibleType) {
            if (flexibleType instanceof DynamicType) {
                return (DynamicType) flexibleType;
            }
            return null;
        }

        public static FlexibleType g(KotlinTypeMarker kotlinTypeMarker) {
            kotlinTypeMarker.getClass();
            if (kotlinTypeMarker instanceof KotlinType) {
                UnwrappedType unwrappedTypeK0 = ((KotlinType) kotlinTypeMarker).K0();
                if (unwrappedTypeK0 instanceof FlexibleType) {
                    return (FlexibleType) unwrappedTypeK0;
                }
                return null;
            }
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(kotlinTypeMarker);
            sb.append(", ");
            b21.n(cj.l(Reflection.f71922a, kotlinTypeMarker.getClass(), sb));
            return null;
        }

        public static SimpleType h(KotlinTypeMarker kotlinTypeMarker) {
            kotlinTypeMarker.getClass();
            if (kotlinTypeMarker instanceof KotlinType) {
                UnwrappedType unwrappedTypeK0 = ((KotlinType) kotlinTypeMarker).K0();
                if (unwrappedTypeK0 instanceof SimpleType) {
                    return (SimpleType) unwrappedTypeK0;
                }
                return null;
            }
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(kotlinTypeMarker);
            sb.append(", ");
            b21.n(cj.l(Reflection.f71922a, kotlinTypeMarker.getClass(), sb));
            return null;
        }

        public static TypeProjectionImpl i(KotlinTypeMarker kotlinTypeMarker) {
            if (kotlinTypeMarker instanceof KotlinType) {
                return new TypeProjectionImpl((KotlinType) kotlinTypeMarker);
            }
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(kotlinTypeMarker);
            sb.append(", ");
            b21.n(cj.l(Reflection.f71922a, kotlinTypeMarker.getClass(), sb));
            return null;
        }

        /* JADX WARN: Code duplicated, block: B:6:0x0023  */
        public static SimpleType j(RigidTypeMarker rigidTypeMarker, CaptureStatus captureStatus) {
            ArrayList arrayList;
            rigidTypeMarker.getClass();
            captureStatus.getClass();
            if (!(rigidTypeMarker instanceof SimpleType)) {
                StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
                sb.append(rigidTypeMarker);
                sb.append(", ");
                b21.n(cj.l(Reflection.f71922a, rigidTypeMarker.getClass(), sb));
                return null;
            }
            SimpleType simpleType = (SimpleType) rigidTypeMarker;
            if (simpleType.F0().size() != simpleType.H0().getParameters().size()) {
                arrayList = null;
            } else {
                List listF0 = simpleType.F0();
                List list = listF0;
                if ((list instanceof Collection) && list.isEmpty()) {
                    arrayList = null;
                } else {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        if (((TypeProjection) it.next()).b() != Variance.INVARIANT) {
                            List parameters = simpleType.H0().getParameters();
                            parameters.getClass();
                            ArrayList<Pair> arrayListE0 = CollectionsKt.E0(list, parameters);
                            arrayList = new ArrayList(CollectionsKt.t(arrayListE0, 10));
                            for (Pair pair : arrayListE0) {
                                TypeProjection typeProjectionImpl = (TypeProjection) pair.f71705b;
                                TypeParameterDescriptor typeParameterDescriptor = (TypeParameterDescriptor) pair.f71706c;
                                if (typeProjectionImpl.b() != Variance.INVARIANT) {
                                    UnwrappedType unwrappedTypeK0 = (typeProjectionImpl.a() || typeProjectionImpl.b() != Variance.IN_VARIANCE) ? null : typeProjectionImpl.getType().K0();
                                    typeParameterDescriptor.getClass();
                                    typeProjectionImpl = new TypeProjectionImpl(new NewCapturedType(captureStatus, unwrappedTypeK0, typeProjectionImpl, typeParameterDescriptor));
                                }
                                arrayList.add(typeProjectionImpl);
                            }
                            TypeSubstitutor typeSubstitutorE = TypeSubstitutor.e(TypeConstructorSubstitution.f74244b.a(simpleType.H0(), arrayList));
                            int size = listF0.size();
                            for (int i2 = 0; i2 < size; i2++) {
                                TypeProjection typeProjection = (TypeProjection) listF0.get(i2);
                                TypeProjection typeProjection2 = (TypeProjection) arrayList.get(i2);
                                if (typeProjection.b() != Variance.INVARIANT) {
                                    List upperBounds = ((TypeParameterDescriptor) simpleType.H0().getParameters().get(i2)).getUpperBounds();
                                    upperBounds.getClass();
                                    final ArrayList arrayList2 = new ArrayList();
                                    Iterator it2 = upperBounds.iterator();
                                    while (it2.hasNext()) {
                                        arrayList2.add(KotlinTypePreparator.Default.f74270a.a(typeSubstitutorE.h(Variance.INVARIANT, (KotlinType) it2.next()).K0()));
                                    }
                                    if (!typeProjection.a() && typeProjection.b() == Variance.OUT_VARIANCE) {
                                        arrayList2.add(KotlinTypePreparator.Default.f74270a.a(typeProjection.getType().K0()));
                                    }
                                    KotlinType type = typeProjection2.getType();
                                    type.getClass();
                                    NewCapturedTypeConstructor newCapturedTypeConstructor = ((NewCapturedType) type).d;
                                    newCapturedTypeConstructor.getClass();
                                    newCapturedTypeConstructor.f74278c = new Function0(arrayList2) { // from class: kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedTypeConstructor$$Lambda$2

                                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                                        public final List f74283b;

                                        {
                                            this.f74283b = arrayList2;
                                        }

                                        @Override // kotlin.jvm.functions.Function0
                                        /* JADX INFO: renamed from: invoke */
                                        public final Object mo47invoke() {
                                            return this.f74283b;
                                        }
                                    };
                                }
                            }
                        }
                    }
                    arrayList = null;
                }
            }
            if (arrayList != null) {
                return KotlinTypeFactory.d(simpleType.G0(), simpleType.H0(), arrayList, simpleType.I0(), null);
            }
            return null;
        }

        public static CaptureStatus k(CapturedTypeMarker capturedTypeMarker) {
            if (capturedTypeMarker instanceof NewCapturedType) {
                return ((NewCapturedType) capturedTypeMarker).f74273c;
            }
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(capturedTypeMarker);
            sb.append(", ");
            b21.n(cj.l(Reflection.f71922a, capturedTypeMarker.getClass(), sb));
            return null;
        }

        public static UnwrappedType l(ClassicTypeSystemContext classicTypeSystemContext, RigidTypeMarker rigidTypeMarker, RigidTypeMarker rigidTypeMarker2) {
            rigidTypeMarker.getClass();
            rigidTypeMarker2.getClass();
            if (!(rigidTypeMarker instanceof SimpleType)) {
                StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
                sb.append(classicTypeSystemContext);
                sb.append(", ");
                b21.n(cj.l(Reflection.f71922a, classicTypeSystemContext.getClass(), sb));
                return null;
            }
            if (rigidTypeMarker2 instanceof SimpleType) {
                return KotlinTypeFactory.a((SimpleType) rigidTypeMarker, (SimpleType) rigidTypeMarker2);
            }
            StringBuilder sb2 = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb2.append(classicTypeSystemContext);
            sb2.append(", ");
            b21.n(cj.l(Reflection.f71922a, classicTypeSystemContext.getClass(), sb2));
            return null;
        }

        public static TypeArgumentMarker m(KotlinTypeMarker kotlinTypeMarker, int i2) {
            kotlinTypeMarker.getClass();
            if (kotlinTypeMarker instanceof KotlinType) {
                return (TypeArgumentMarker) ((KotlinType) kotlinTypeMarker).F0().get(i2);
            }
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(kotlinTypeMarker);
            sb.append(", ");
            b21.n(cj.l(Reflection.f71922a, kotlinTypeMarker.getClass(), sb));
            return null;
        }

        public static List n(KotlinTypeMarker kotlinTypeMarker) {
            kotlinTypeMarker.getClass();
            if (kotlinTypeMarker instanceof KotlinType) {
                return ((KotlinType) kotlinTypeMarker).F0();
            }
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(kotlinTypeMarker);
            sb.append(", ");
            b21.n(cj.l(Reflection.f71922a, kotlinTypeMarker.getClass(), sb));
            return null;
        }

        public static TypeParameterMarker o(TypeConstructorMarker typeConstructorMarker, int i2) {
            if (typeConstructorMarker instanceof TypeConstructor) {
                Object obj = ((TypeConstructor) typeConstructorMarker).getParameters().get(i2);
                obj.getClass();
                return (TypeParameterMarker) obj;
            }
            StringBuilder sbN = cj.n("ClassicTypeSystemContext couldn't handle: ", typeConstructorMarker, ", ");
            b21.n(cj.l(Reflection.f71922a, typeConstructorMarker.getClass(), sbN));
            return null;
        }

        public static List p(TypeConstructorMarker typeConstructorMarker) {
            typeConstructorMarker.getClass();
            if (typeConstructorMarker instanceof TypeConstructor) {
                List parameters = ((TypeConstructor) typeConstructorMarker).getParameters();
                parameters.getClass();
                return parameters;
            }
            StringBuilder sbN = cj.n("ClassicTypeSystemContext couldn't handle: ", typeConstructorMarker, ", ");
            b21.n(cj.l(Reflection.f71922a, typeConstructorMarker.getClass(), sbN));
            return null;
        }

        public static KotlinType q(TypeParameterMarker typeParameterMarker) {
            typeParameterMarker.getClass();
            if (typeParameterMarker instanceof TypeParameterDescriptor) {
                return TypeUtilsKt.g((TypeParameterDescriptor) typeParameterMarker);
            }
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(typeParameterMarker);
            sb.append(", ");
            b21.n(cj.l(Reflection.f71922a, typeParameterMarker.getClass(), sb));
            return null;
        }

        public static UnwrappedType r(ClassicTypeSystemContext classicTypeSystemContext, TypeArgumentMarker typeArgumentMarker) {
            typeArgumentMarker.getClass();
            if (classicTypeSystemContext.s(typeArgumentMarker)) {
                return null;
            }
            if (typeArgumentMarker instanceof TypeProjection) {
                return ((TypeProjection) typeArgumentMarker).getType().K0();
            }
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(typeArgumentMarker);
            sb.append(", ");
            b21.n(cj.l(Reflection.f71922a, typeArgumentMarker.getClass(), sb));
            return null;
        }

        public static TypeParameterDescriptor s(TypeVariableTypeConstructorMarker typeVariableTypeConstructorMarker) {
            if (typeVariableTypeConstructorMarker instanceof NewTypeVariableConstructor) {
                return ((NewTypeVariableConstructor) typeVariableTypeConstructorMarker).h();
            }
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(typeVariableTypeConstructorMarker);
            sb.append(", ");
            b21.n(cj.l(Reflection.f71922a, typeVariableTypeConstructorMarker.getClass(), sb));
            return null;
        }

        public static TypeParameterDescriptor t(TypeConstructorMarker typeConstructorMarker) {
            typeConstructorMarker.getClass();
            if (typeConstructorMarker instanceof TypeConstructor) {
                ClassifierDescriptor classifierDescriptorY = ((TypeConstructor) typeConstructorMarker).y();
                if (classifierDescriptorY instanceof TypeParameterDescriptor) {
                    return (TypeParameterDescriptor) classifierDescriptorY;
                }
                return null;
            }
            StringBuilder sbN = cj.n("ClassicTypeSystemContext couldn't handle: ", typeConstructorMarker, ", ");
            b21.n(cj.l(Reflection.f71922a, typeConstructorMarker.getClass(), sbN));
            return null;
        }

        public static TypeVariance u(TypeArgumentMarker typeArgumentMarker) {
            typeArgumentMarker.getClass();
            if (typeArgumentMarker instanceof TypeProjection) {
                Variance varianceB = ((TypeProjection) typeArgumentMarker).b();
                varianceB.getClass();
                return TypeSystemContextKt.a(varianceB);
            }
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(typeArgumentMarker);
            sb.append(", ");
            b21.n(cj.l(Reflection.f71922a, typeArgumentMarker.getClass(), sb));
            return null;
        }

        public static TypeVariance v(TypeParameterMarker typeParameterMarker) {
            typeParameterMarker.getClass();
            if (typeParameterMarker instanceof TypeParameterDescriptor) {
                Variance varianceL = ((TypeParameterDescriptor) typeParameterMarker).l();
                varianceL.getClass();
                return TypeSystemContextKt.a(varianceL);
            }
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(typeParameterMarker);
            sb.append(", ");
            b21.n(cj.l(Reflection.f71922a, typeParameterMarker.getClass(), sb));
            return null;
        }

        public static boolean w(KotlinTypeMarker kotlinTypeMarker, FqName fqName) {
            kotlinTypeMarker.getClass();
            fqName.getClass();
            if (kotlinTypeMarker instanceof KotlinType) {
                return ((KotlinType) kotlinTypeMarker).getAnnotations().C1(fqName);
            }
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(kotlinTypeMarker);
            sb.append(", ");
            b21.n(cj.l(Reflection.f71922a, kotlinTypeMarker.getClass(), sb));
            return false;
        }

        public static boolean x(TypeParameterMarker typeParameterMarker, TypeConstructorMarker typeConstructorMarker) {
            if (!(typeParameterMarker instanceof TypeParameterDescriptor)) {
                StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
                sb.append(typeParameterMarker);
                sb.append(", ");
                b21.n(cj.l(Reflection.f71922a, typeParameterMarker.getClass(), sb));
                return false;
            }
            TypeParameterDescriptor typeParameterDescriptor = (TypeParameterDescriptor) typeParameterMarker;
            if (typeConstructorMarker == null ? true : typeConstructorMarker instanceof TypeConstructor) {
                return TypeUtilsKt.h(typeParameterDescriptor, (TypeConstructor) typeConstructorMarker, null);
            }
            StringBuilder sb2 = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb2.append(typeParameterDescriptor);
            sb2.append(", ");
            b21.n(cj.l(Reflection.f71922a, typeParameterDescriptor.getClass(), sb2));
            return false;
        }

        public static boolean y(RigidTypeMarker rigidTypeMarker, RigidTypeMarker rigidTypeMarker2) {
            rigidTypeMarker.getClass();
            rigidTypeMarker2.getClass();
            if (!(rigidTypeMarker instanceof SimpleType)) {
                StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
                sb.append(rigidTypeMarker);
                sb.append(", ");
                b21.n(cj.l(Reflection.f71922a, rigidTypeMarker.getClass(), sb));
                return false;
            }
            if (rigidTypeMarker2 instanceof SimpleType) {
                return ((SimpleType) rigidTypeMarker).F0() == ((SimpleType) rigidTypeMarker2).F0();
            }
            StringBuilder sb2 = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb2.append(rigidTypeMarker2);
            sb2.append(", ");
            b21.n(cj.l(Reflection.f71922a, rigidTypeMarker2.getClass(), sb2));
            return false;
        }

        public static boolean z(TypeConstructorMarker typeConstructorMarker) {
            if (typeConstructorMarker instanceof TypeConstructor) {
                return KotlinBuiltIns.J((TypeConstructor) typeConstructorMarker, StandardNames.FqNames.f72271a);
            }
            StringBuilder sbN = cj.n("ClassicTypeSystemContext couldn't handle: ", typeConstructorMarker, ", ");
            b21.n(cj.l(Reflection.f71922a, typeConstructorMarker.getClass(), sbN));
            return false;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    SimpleType a(FlexibleTypeMarker flexibleTypeMarker);

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    SimpleType b(RigidTypeMarker rigidTypeMarker);

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    SimpleType c(FlexibleTypeMarker flexibleTypeMarker);

    KotlinBuiltIns g();

    UnwrappedType q(SimpleTypeMarker simpleTypeMarker, SimpleTypeMarker simpleTypeMarker2);

    SimpleType x(KotlinType kotlinType);
}
