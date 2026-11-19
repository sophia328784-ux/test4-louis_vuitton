package kotlin.reflect.jvm.internal.types;

import defpackage.cj;
import defpackage.o60;
import defpackage.v40;
import defpackage.zy0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;
import kotlin.reflect.KTypeProjection;
import kotlin.reflect.KVariance;
import kotlin.reflect.jvm.internal.KClassImpl;
import kotlin.reflect.jvm.internal.KTypeParameterImpl;
import kotlin.reflect.jvm.internal.KotlinReflectionInternalError;
import kotlin.reflect.jvm.internal.impl.km.ClassKind;
import kotlin.reflect.jvm.internal.impl.km.Modality;
import kotlin.reflect.jvm.internal.impl.types.TypeCheckerState;
import kotlin.reflect.jvm.internal.impl.types.model.ArgumentList;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.model.CapturedTypeConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.model.CapturedTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.DefinitelyNotNullTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.FlexibleTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.RigidTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeArgumentListMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeArgumentMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeParameterMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext;
import kotlin.reflect.jvm.internal.impl.types.model.TypeVariableTypeConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeVariance;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\u00020\u0003*\u00020\u0002H\u0016¢\u0006\u0004\b\u0004\u0010\u0005J\u0013\u0010\u0007\u001a\u00020\u0003*\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0013\u0010\n\u001a\u00020\t*\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0013\u0010\f\u001a\u00020\u0003*\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0013\u0010\u000e\u001a\u00020\u0002*\u00020\u0002H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u001b\u0010\u0012\u001a\u00020\u0010*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0013\u0010\u0014\u001a\u00020\u0003*\u00020\u0002H\u0016¢\u0006\u0004\b\u0014\u0010\u0005J\u0013\u0010\u0015\u001a\u00020\u0003*\u00020\u0002H\u0016¢\u0006\u0004\b\u0015\u0010\u0005J\u0013\u0010\u0016\u001a\u00020\u0003*\u00020\u0002H\u0016¢\u0006\u0004\b\u0016\u0010\u0005J\u0013\u0010\u0017\u001a\u00020\u0003*\u00020\u0002H\u0016¢\u0006\u0004\b\u0017\u0010\u0005J\u0013\u0010\u0018\u001a\u00020\u0003*\u00020\u0002H\u0016¢\u0006\u0004\b\u0018\u0010\u0005J\u0013\u0010\u0019\u001a\u00020\u0003*\u00020\u0002H\u0016¢\u0006\u0004\b\u0019\u0010\u0005J\u0013\u0010\u001c\u001a\u00020\u001b*\u00020\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u001b\u0010\u001f\u001a\u00020\u0006*\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001f\u0010 J\u0019\u0010\"\u001a\u0004\u0018\u00010\u00062\u0006\u0010!\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\"\u0010#J\u0013\u0010$\u001a\u00020\u0003*\u00020\u0002H\u0016¢\u0006\u0004\b$\u0010\u0005J\u001d\u0010(\u001a\u00020&2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020&0%H\u0016¢\u0006\u0004\b(\u0010)J\u0019\u0010,\u001a\b\u0012\u0004\u0012\u00020+0**\u00020\u0006H\u0016¢\u0006\u0004\b,\u0010-J#\u00101\u001a\u0002002\u0012\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060.H\u0016¢\u0006\u0004\b1\u00102J\u000f\u00103\u001a\u000200H\u0016¢\u0006\u0004\b3\u00104R\u001a\u00108\u001a\u0004\u0018\u00010\u001a*\u0002058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b6\u00107¨\u00069"}, d2 = {"Lkotlin/reflect/jvm/internal/types/ReflectTypeSystemContext;", "Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;", "Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;", "", "isError", "(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z", "Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;", "isUninferredParameter", "(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z", "Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;", "makeDefinitelyNotNullOrNotNull", "(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;", "isStubTypeForVariableInSubtyping", "(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Z", "unwrapStubTypeVariableConstructor", "(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;", "Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;", "newType", "replaceType", "(Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;", "isInterface", "isIntegerLiteralConstantTypeConstructor", "isIntegerConstantOperatorTypeConstructor", "isLocalType", "isAnonymous", "isTypeParameterTypeConstructor", "Lkotlin/reflect/jvm/internal/impl/types/model/TypeParameterMarker;", "", "upperBoundCount", "(Lkotlin/reflect/jvm/internal/impl/types/model/TypeParameterMarker;)I", "index", "getUpperBound", "(Lkotlin/reflect/jvm/internal/impl/types/model/TypeParameterMarker;I)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;", "type", "captureFromExpression", "(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;", "isArrayConstructor", "", "Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;", "types", "intersectTypes", "(Ljava/util/Collection;)Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;", "", "Lkotlin/reflect/jvm/internal/impl/types/model/AnnotationMarker;", "getAttributes", "(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Ljava/util/List;", "", "map", "Lkotlin/reflect/jvm/internal/impl/types/model/TypeSubstitutorMarker;", "typeSubstitutorByTypeConstructor", "(Ljava/util/Map;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeSubstitutorMarker;", "createEmptySubstitutor", "()Lkotlin/reflect/jvm/internal/impl/types/model/TypeSubstitutorMarker;", "Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariableTypeConstructorMarker;", "getTypeParameter", "(Lorg/jetbrains/kotlin/types/model/TypeVariableTypeConstructorMarker;)Lorg/jetbrains/kotlin/types/model/TypeParameterMarker;", "typeParameter", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ReflectTypeSystemContext implements TypeSystemContext {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ReflectTypeSystemContext f74439a = new ReflectTypeSystemContext();

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f74440a;

        static {
            int[] iArr = new int[KVariance.values().length];
            try {
                iArr[KVariance.INVARIANT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[KVariance.IN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[KVariance.OUT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f74440a = iArr;
        }
    }

    public static TypeVariance u0(KVariance kVariance) {
        int i2 = WhenMappings.f74440a[kVariance.ordinal()];
        if (i2 == 1) {
            return TypeVariance.INV;
        }
        if (i2 == 2) {
            return TypeVariance.IN;
        }
        if (i2 == 3) {
            return TypeVariance.OUT;
        }
        v40.g();
        return null;
    }

    public static void v0(Object obj) {
        throw new KotlinReflectionInternalError(o60.n("This method should not be called on ", obj, " with a new kotlin-reflect implementation. Please file an issue at https://kotl.in/issue"));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final KotlinTypeMarker A(ArrayList arrayList) {
        v0(this);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final TypeArgumentMarker B(KotlinTypeMarker kotlinTypeMarker) {
        v0(kotlinTypeMarker);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final CapturedTypeConstructorMarker C(CapturedTypeMarker capturedTypeMarker) {
        return ((CapturedKType) capturedTypeMarker).d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final boolean D(RigidTypeMarker rigidTypeMarker) {
        rigidTypeMarker.getClass();
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final TypeArgumentMarker E(KotlinTypeMarker kotlinTypeMarker, int i2) {
        kotlinTypeMarker.getClass();
        return new KTypeProjectionAsTypeArgumentMarker((KTypeProjection) ((KType) kotlinTypeMarker).getD().get(i2));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final boolean F(RigidTypeMarker rigidTypeMarker) {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final boolean G(TypeConstructorMarker typeConstructorMarker) {
        return typeConstructorMarker.equals(Reflection.f71922a.b(Object.class));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final boolean H(TypeConstructorMarker typeConstructorMarker) {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemOptimizationContext
    public final boolean I(RigidTypeMarker rigidTypeMarker, RigidTypeMarker rigidTypeMarker2) {
        rigidTypeMarker.getClass();
        rigidTypeMarker2.getClass();
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final boolean J(RigidTypeMarker rigidTypeMarker) {
        rigidTypeMarker.getClass();
        TypeConstructorMarker typeConstructorMarkerC0 = c0(rigidTypeMarker);
        typeConstructorMarkerC0.getClass();
        return typeConstructorMarkerC0 instanceof KClass;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final boolean K(KotlinTypeMarker kotlinTypeMarker) {
        return b0(kotlinTypeMarker) != null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final boolean L(RigidTypeMarker rigidTypeMarker) {
        rigidTypeMarker.getClass();
        if (!Q(V(rigidTypeMarker))) {
            return false;
        }
        v0(rigidTypeMarker);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final int M(TypeConstructorMarker typeConstructorMarker) {
        typeConstructorMarker.getClass();
        if (typeConstructorMarker instanceof KClass) {
            return CapturedKTypeKt.a((KClass) typeConstructorMarker).size();
        }
        return 0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final SimpleTypeMarker N(RigidTypeMarker rigidTypeMarker) {
        DefinitelyNotNullTypeMarker definitelyNotNullTypeMarkerT0 = t0(rigidTypeMarker);
        if (definitelyNotNullTypeMarkerT0 == null) {
            return (SimpleTypeMarker) rigidTypeMarker;
        }
        v0(definitelyNotNullTypeMarkerT0);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final CapturedTypeMarker O(RigidTypeMarker rigidTypeMarker) {
        SimpleTypeMarker simpleTypeMarkerN = N(rigidTypeMarker);
        if (simpleTypeMarkerN instanceof CapturedTypeMarker) {
            return (CapturedTypeMarker) simpleTypeMarkerN;
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final KotlinTypeMarker P(KotlinTypeMarker kotlinTypeMarker) {
        v0(kotlinTypeMarker);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final boolean Q(TypeConstructorMarker typeConstructorMarker) {
        typeConstructorMarker.getClass();
        return typeConstructorMarker.equals(Reflection.f71922a.b(Void.class));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final Collection R(RigidTypeMarker rigidTypeMarker) {
        v0(rigidTypeMarker);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final boolean S(CapturedTypeMarker capturedTypeMarker) {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final boolean T(KotlinTypeMarker kotlinTypeMarker) {
        kotlinTypeMarker.getClass();
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final Collection U(TypeConstructorMarker typeConstructorMarker) {
        typeConstructorMarker.getClass();
        if (typeConstructorMarker instanceof KClass) {
            List<KType> f74432e = ((KClass) typeConstructorMarker).getF74432e();
            ArrayList arrayList = new ArrayList(CollectionsKt.t(f74432e, 10));
            for (KType kType : f74432e) {
                kType.getClass();
                arrayList.add((KotlinTypeMarker) kType);
            }
            return arrayList;
        }
        if (typeConstructorMarker instanceof KTypeParameter) {
            List<KType> upperBounds = ((KTypeParameter) typeConstructorMarker).getUpperBounds();
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(upperBounds, 10));
            for (KType kType2 : upperBounds) {
                kType2.getClass();
                arrayList2.add((KotlinTypeMarker) kType2);
            }
            return arrayList2;
        }
        if (!(typeConstructorMarker instanceof CapturedKTypeConstructor)) {
            StringBuilder sbN = cj.n("Unsupported type constructor: ", typeConstructorMarker, " (");
            sbN.append(typeConstructorMarker.getClass().getName());
            sbN.append(')');
            throw new IllegalStateException(sbN.toString().toString());
        }
        ArrayList<KType> arrayList3 = ((CapturedKTypeConstructor) typeConstructorMarker).f74410c;
        if (arrayList3 == null) {
            Intrinsics.h("supertypes");
            throw null;
        }
        ArrayList arrayList4 = new ArrayList(CollectionsKt.t(arrayList3, 10));
        for (KType kType3 : arrayList3) {
            kType3.getClass();
            arrayList4.add((KotlinTypeMarker) kType3);
        }
        return arrayList4;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final TypeConstructorMarker V(KotlinTypeMarker kotlinTypeMarker) {
        kotlinTypeMarker.getClass();
        RigidTypeMarker rigidTypeMarkerK = k(kotlinTypeMarker);
        if (rigidTypeMarkerK == null) {
            rigidTypeMarkerK = l0(kotlinTypeMarker);
        }
        return c0(rigidTypeMarkerK);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final boolean W(TypeConstructorMarker typeConstructorMarker) {
        return !(typeConstructorMarker instanceof CapturedKTypeConstructor);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final boolean X(KotlinTypeMarker kotlinTypeMarker) {
        kotlinTypeMarker.getClass();
        return ((KType) l0(kotlinTypeMarker)).getF74407e() != ((KType) w(kotlinTypeMarker)).getF74407e();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final TypeCheckerState.SupertypesPolicy Y(RigidTypeMarker rigidTypeMarker) {
        KType kType = (KType) rigidTypeMarker;
        KTypeSubstitutor.f74427b.getClass();
        ReflectTypeSystemContext reflectTypeSystemContext = f74439a;
        TypeConstructorMarker typeConstructorMarkerC0 = reflectTypeSystemContext.c0((AbstractKType) kType);
        int iM = reflectTypeSystemContext.M(typeConstructorMarkerC0);
        ArrayList arrayList = new ArrayList(iM);
        for (int i2 = 0; i2 < iM; i2++) {
            arrayList.add((KTypeParameter) reflectTypeSystemContext.p(typeConstructorMarkerC0, i2));
        }
        final KTypeSubstitutor kTypeSubstitutor = !arrayList.isEmpty() ? new KTypeSubstitutor(MapsKt.n(CollectionsKt.E0(arrayList, kType.getD()))) : KTypeSubstitutor.f74428c;
        return new TypeCheckerState.SupertypesPolicy.DoCustomTransform() { // from class: kotlin.reflect.jvm.internal.types.ReflectTypeSystemContext$substitutionSupertypePolicy$1
            @Override // kotlin.reflect.jvm.internal.impl.types.TypeCheckerState.SupertypesPolicy
            public final RigidTypeMarker a(TypeCheckerState typeCheckerState, KotlinTypeMarker kotlinTypeMarker) {
                typeCheckerState.getClass();
                kotlinTypeMarker.getClass();
                KType kType2 = kTypeSubstitutor.a((KType) ReflectTypeSystemContext.f74439a.l0(kotlinTypeMarker)).f71960b;
                kType2.getClass();
                return (AbstractKType) kType2;
            }
        };
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final boolean Z(KotlinTypeMarker kotlinTypeMarker) {
        kotlinTypeMarker.getClass();
        RigidTypeMarker rigidTypeMarkerK = k(kotlinTypeMarker);
        return (rigidTypeMarkerK != null ? t0(rigidTypeMarkerK) : null) != null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final RigidTypeMarker a(FlexibleTypeMarker flexibleTypeMarker) {
        AbstractKType abstractKTypeA = ((AbstractKType) flexibleTypeMarker).getF74424c();
        abstractKTypeA.getClass();
        return abstractKTypeA;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final boolean a0(RigidTypeMarker rigidTypeMarker) {
        c0(rigidTypeMarker).getClass();
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final RigidTypeMarker b(RigidTypeMarker rigidTypeMarker) {
        return ((AbstractKType) rigidTypeMarker).G(false);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final FlexibleTypeMarker b0(KotlinTypeMarker kotlinTypeMarker) {
        kotlinTypeMarker.getClass();
        if (!(kotlinTypeMarker instanceof AbstractKType) || ((AbstractKType) kotlinTypeMarker).getF74424c() == null) {
            return null;
        }
        return (FlexibleTypeMarker) kotlinTypeMarker;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final RigidTypeMarker c(FlexibleTypeMarker flexibleTypeMarker) {
        AbstractKType abstractKTypeH = ((AbstractKType) flexibleTypeMarker).getD();
        abstractKTypeH.getClass();
        return abstractKTypeH;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final TypeConstructorMarker c0(RigidTypeMarker rigidTypeMarker) {
        rigidTypeMarker.getClass();
        if (rigidTypeMarker instanceof CapturedKType) {
            return ((CapturedKType) rigidTypeMarker).d;
        }
        AbstractKType abstractKType = (AbstractKType) rigidTypeMarker;
        if (abstractKType.getF74446i()) {
            return NothingKClass.f74437c;
        }
        KClassifier kClassifierA = abstractKType.getF74442c();
        KClassImpl kClassImpl = kClassifierA instanceof KClassImpl ? (KClassImpl) kClassifierA : null;
        if (kClassImpl != null) {
            Class f71916b = kClassImpl.getF72145e();
            f71916b.getClass();
            Class<?> componentType = f71916b.getComponentType();
            if (componentType != null && !componentType.isPrimitive()) {
                return (TypeConstructorMarker) Reflection.f71922a.b(Object[].class);
            }
        }
        KClassifier kClassifierH = abstractKType.getF74448k();
        if (kClassifierH == null) {
            kClassifierH = abstractKType.getF74442c();
        }
        kClassifierH.getClass();
        return (TypeConstructorMarker) kClassifierH;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final int d(KotlinTypeMarker kotlinTypeMarker) {
        kotlinTypeMarker.getClass();
        return ((KType) kotlinTypeMarker).getD().size();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final CaptureStatus d0(CapturedTypeMarker capturedTypeMarker) {
        return CaptureStatus.FOR_SUBTYPING;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final boolean e(CapturedTypeMarker capturedTypeMarker) {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final TypeArgumentMarker e0(CapturedTypeConstructorMarker capturedTypeConstructorMarker) {
        return new KTypeProjectionAsTypeArgumentMarker(((CapturedKTypeConstructor) capturedTypeConstructorMarker).f74409b);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final KotlinTypeMarker f(KotlinTypeMarker kotlinTypeMarker) {
        v0(kotlinTypeMarker);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final void f0(RigidTypeMarker rigidTypeMarker, TypeConstructorMarker typeConstructorMarker) {
        rigidTypeMarker.getClass();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final KotlinTypeMarker g0(CapturedTypeMarker capturedTypeMarker) {
        return (KotlinTypeMarker) ((CapturedKType) capturedTypeMarker).f74406c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final RigidTypeMarker h(RigidTypeMarker rigidTypeMarker, CaptureStatus captureStatus) {
        int i2;
        rigidTypeMarker.getClass();
        captureStatus.getClass();
        KType kType = (KType) rigidTypeMarker;
        KClassifier kClassifierA = kType.getF74442c();
        KClass kClass = kClassifierA instanceof KClass ? (KClass) kClassifierA : null;
        if (kClass != null) {
            List listB = kType.getD();
            List list = listB;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    if (((KTypeProjection) it.next()).f71959a != KVariance.INVARIANT) {
                        List listA = CapturedKTypeKt.a(kClass);
                        if (listA.size() != listB.size()) {
                            break;
                        }
                        List list2 = listB;
                        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                        Iterator it2 = list2.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                break;
                            }
                            KTypeProjection kTypeProjectionA = (KTypeProjection) it2.next();
                            KVariance kVariance = kTypeProjectionA.f71959a;
                            if (kVariance != KVariance.INVARIANT) {
                                KType kType2 = kTypeProjectionA.f71960b;
                                if (kVariance != KVariance.IN) {
                                    kType2 = null;
                                }
                                KTypeProjection.Companion companion = KTypeProjection.INSTANCE;
                                CapturedKType capturedKType = new CapturedKType(kType2, new CapturedKTypeConstructor(kTypeProjectionA), false);
                                companion.getClass();
                                kTypeProjectionA = KTypeProjection.Companion.a(capturedKType);
                            }
                            arrayList.add(kTypeProjectionA);
                        }
                        KTypeSubstitutor.f74427b.getClass();
                        KTypeSubstitutor kTypeSubstitutor = new KTypeSubstitutor(MapsKt.n(CollectionsKt.E0(CapturedKTypeKt.a(kClass), arrayList)));
                        int size = listB.size();
                        for (i2 = 0; i2 < size; i2++) {
                            KTypeProjection kTypeProjection = (KTypeProjection) listB.get(i2);
                            if (kTypeProjection.f71959a != KVariance.INVARIANT) {
                                List upperBounds = ((KTypeParameter) listA.get(i2)).getUpperBounds();
                                ArrayList arrayList2 = new ArrayList();
                                Iterator it3 = upperBounds.iterator();
                                while (it3.hasNext()) {
                                    KType kType3 = kTypeSubstitutor.a((KType) it3.next()).f71960b;
                                    kType3.getClass();
                                    arrayList2.add(kType3);
                                }
                                if (kTypeProjection.f71959a == KVariance.OUT) {
                                    KType kType4 = kTypeProjection.f71960b;
                                    kType4.getClass();
                                    arrayList2.add(kType4);
                                }
                                KType kType5 = ((KTypeProjection) arrayList.get(i2)).f71960b;
                                kType5.getClass();
                                CapturedKTypeConstructor capturedKTypeConstructor = ((CapturedKType) kType5).d;
                                capturedKTypeConstructor.getClass();
                                capturedKTypeConstructor.f74410c = arrayList2;
                            }
                        }
                        boolean zD = kType.getF74407e();
                        List annotations = kType.getF74444f();
                        boolean z = kType instanceof AbstractKType;
                        AbstractKType abstractKType = z ? (AbstractKType) kType : null;
                        KType kTypeG = abstractKType != null ? abstractKType.getG() : null;
                        AbstractKType abstractKType2 = z ? (AbstractKType) kType : null;
                        return new SimpleKType(kClass, arrayList, zD, annotations, kTypeG, false, false, false, abstractKType2 != null ? abstractKType2.getF74448k() : null, null, 512, null);
                    }
                }
            }
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final boolean h0(TypeConstructorMarker typeConstructorMarker) {
        return typeConstructorMarker instanceof KClass;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final boolean i(KotlinTypeMarker kotlinTypeMarker) {
        kotlinTypeMarker.getClass();
        return !Intrinsics.c(c0(l0(kotlinTypeMarker)), c0(w(kotlinTypeMarker)));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final boolean i0(TypeConstructorMarker typeConstructorMarker) {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final boolean j(RigidTypeMarker rigidTypeMarker) {
        rigidTypeMarker.getClass();
        return t0(rigidTypeMarker) != null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final List j0(TypeConstructorMarker typeConstructorMarker) {
        v0(typeConstructorMarker);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final RigidTypeMarker k(KotlinTypeMarker kotlinTypeMarker) {
        kotlinTypeMarker.getClass();
        if (b0(kotlinTypeMarker) != null) {
            return null;
        }
        return (RigidTypeMarker) kotlinTypeMarker;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final CapturedTypeMarker k0(SimpleTypeMarker simpleTypeMarker) {
        if (simpleTypeMarker instanceof CapturedTypeMarker) {
            return (CapturedTypeMarker) simpleTypeMarker;
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final boolean l(TypeParameterMarker typeParameterMarker, TypeConstructorMarker typeConstructorMarker) {
        v0(typeParameterMarker);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final RigidTypeMarker l0(KotlinTypeMarker kotlinTypeMarker) {
        kotlinTypeMarker.getClass();
        FlexibleTypeMarker flexibleTypeMarkerB0 = b0(kotlinTypeMarker);
        if (flexibleTypeMarkerB0 != null) {
            return a(flexibleTypeMarkerB0);
        }
        RigidTypeMarker rigidTypeMarkerK = k(kotlinTypeMarker);
        rigidTypeMarkerK.getClass();
        return rigidTypeMarkerK;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final TypeArgumentMarker m(RigidTypeMarker rigidTypeMarker, int i2) {
        if (i2 < 0 || i2 >= d(rigidTypeMarker)) {
            return null;
        }
        return E(rigidTypeMarker, i2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final TypeVariance m0(TypeArgumentMarker typeArgumentMarker) {
        TypeVariance typeVarianceU0;
        typeArgumentMarker.getClass();
        KVariance kVariance = ((KTypeProjectionAsTypeArgumentMarker) typeArgumentMarker).f74426a.f71959a;
        return (kVariance == null || (typeVarianceU0 = u0(kVariance)) == null) ? TypeVariance.OUT : typeVarianceU0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final TypeArgumentListMarker n(RigidTypeMarker rigidTypeMarker) {
        rigidTypeMarker.getClass();
        return (TypeArgumentListMarker) rigidTypeMarker;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final TypeParameterMarker n0(TypeVariableTypeConstructorMarker typeVariableTypeConstructorMarker) {
        v0(typeVariableTypeConstructorMarker);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final TypeArgumentMarker o(TypeArgumentListMarker typeArgumentListMarker, int i2) {
        typeArgumentListMarker.getClass();
        if (typeArgumentListMarker instanceof SimpleTypeMarker) {
            return E((KotlinTypeMarker) typeArgumentListMarker, i2);
        }
        if (typeArgumentListMarker instanceof ArgumentList) {
            TypeArgumentMarker typeArgumentMarker = ((ArgumentList) typeArgumentListMarker).get(i2);
            typeArgumentMarker.getClass();
            return typeArgumentMarker;
        }
        StringBuilder sb = new StringBuilder("unknown type argument list type: ");
        sb.append(typeArgumentListMarker);
        zy0.d(sb, ", ", Reflection.f71922a.b(typeArgumentListMarker.getClass()));
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final boolean o0(KotlinTypeMarker kotlinTypeMarker) {
        kotlinTypeMarker.getClass();
        return ((KType) kotlinTypeMarker).getF74407e();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final TypeParameterMarker p(TypeConstructorMarker typeConstructorMarker, int i2) {
        Object obj = CapturedKTypeKt.a((KClass) typeConstructorMarker).get(i2);
        obj.getClass();
        return (KTypeParameterImpl) obj;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final boolean p0(TypeConstructorMarker typeConstructorMarker) {
        if (!(typeConstructorMarker instanceof KClassImpl)) {
            return false;
        }
        KClassImpl kClassImpl = (KClassImpl) typeConstructorMarker;
        return (kClassImpl.Y() != Modality.FINAL || kClassImpl.V() == ClassKind.ENUM_CLASS || kClassImpl.V() == ClassKind.ENUM_ENTRY || kClassImpl.V() == ClassKind.ANNOTATION_CLASS) ? false : true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final KotlinTypeMarker q0(TypeArgumentMarker typeArgumentMarker) {
        typeArgumentMarker.getClass();
        return (KotlinTypeMarker) ((KTypeProjectionAsTypeArgumentMarker) typeArgumentMarker).f74426a.f71960b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final boolean r(KotlinTypeMarker kotlinTypeMarker) {
        kotlinTypeMarker.getClass();
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final boolean r0(RigidTypeMarker rigidTypeMarker) {
        RigidTypeMarker rigidTypeMarkerK = k(rigidTypeMarker);
        CapturedTypeMarker capturedTypeMarker = null;
        if (rigidTypeMarkerK != null) {
            SimpleTypeMarker simpleTypeMarkerN = N(rigidTypeMarkerK);
            if (simpleTypeMarkerN instanceof CapturedTypeMarker) {
                capturedTypeMarker = (CapturedTypeMarker) simpleTypeMarkerN;
            }
        }
        return capturedTypeMarker != null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final boolean s(TypeArgumentMarker typeArgumentMarker) {
        typeArgumentMarker.getClass();
        KTypeProjection kTypeProjection = ((KTypeProjectionAsTypeArgumentMarker) typeArgumentMarker).f74426a;
        KTypeProjection.INSTANCE.getClass();
        return Intrinsics.c(kTypeProjection, KTypeProjection.d);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final boolean s0(TypeConstructorMarker typeConstructorMarker, TypeConstructorMarker typeConstructorMarker2) {
        typeConstructorMarker.getClass();
        typeConstructorMarker2.getClass();
        return Intrinsics.c(typeConstructorMarker, typeConstructorMarker2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final TypeVariance t(TypeParameterMarker typeParameterMarker) {
        typeParameterMarker.getClass();
        return u0(((KTypeParameter) typeParameterMarker).getF72161e());
    }

    public final DefinitelyNotNullTypeMarker t0(RigidTypeMarker rigidTypeMarker) {
        rigidTypeMarker.getClass();
        if ((rigidTypeMarker instanceof AbstractKType) && ((AbstractKType) rigidTypeMarker).getF74445h()) {
            return (DefinitelyNotNullTypeMarker) rigidTypeMarker;
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final boolean u(KotlinTypeMarker kotlinTypeMarker) {
        kotlinTypeMarker.getClass();
        v0(kotlinTypeMarker);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final int v(TypeArgumentListMarker typeArgumentListMarker) {
        typeArgumentListMarker.getClass();
        if (typeArgumentListMarker instanceof RigidTypeMarker) {
            return d((KotlinTypeMarker) typeArgumentListMarker);
        }
        if (typeArgumentListMarker instanceof ArgumentList) {
            return ((ArgumentList) typeArgumentListMarker).size();
        }
        StringBuilder sb = new StringBuilder("unknown type argument list type: ");
        sb.append(typeArgumentListMarker);
        zy0.d(sb, ", ", Reflection.f71922a.b(typeArgumentListMarker.getClass()));
        return 0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final RigidTypeMarker w(KotlinTypeMarker kotlinTypeMarker) {
        kotlinTypeMarker.getClass();
        FlexibleTypeMarker flexibleTypeMarkerB0 = b0(kotlinTypeMarker);
        if (flexibleTypeMarkerB0 != null) {
            return c(flexibleTypeMarkerB0);
        }
        RigidTypeMarker rigidTypeMarkerK = k(kotlinTypeMarker);
        rigidTypeMarkerK.getClass();
        return rigidTypeMarkerK;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final List y(KotlinTypeMarker kotlinTypeMarker) {
        kotlinTypeMarker.getClass();
        v0(kotlinTypeMarker);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public final boolean z(KotlinTypeMarker kotlinTypeMarker) {
        kotlinTypeMarker.getClass();
        return false;
    }
}
