package kotlin.reflect.jvm.internal.impl.types;

import defpackage.d21;
import defpackage.md;
import defpackage.no0;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.CompositeAnnotations;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.FilteredAnnotations;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.model.TypeSubstitutorMarker;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.typesApproximation.CapturedTypeApproximationKt;
import kotlin.reflect.jvm.internal.impl.utils.ExceptionUtilsKt;
import org.bouncycastle.asn1.eac.EACTags;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
public class TypeSubstitutor implements TypeSubstitutorMarker {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final TypeSubstitutor f74260b = e(TypeSubstitution.f74258a);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TypeSubstitution f74261a;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor$1, reason: invalid class name */
    final class AnonymousClass1 implements Function1<FqName, Boolean> {
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            FqName fqName = (FqName) obj;
            if (fqName != null) {
                return Boolean.valueOf(!fqName.equals(StandardNames.FqNames.y));
            }
            md.n("Argument for @NotNull parameter 'name' of kotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$1.invoke must not be null");
            return null;
        }
    }

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f74262a;

        static {
            int[] iArr = new int[VarianceConflictType.values().length];
            f74262a = iArr;
            try {
                iArr[VarianceConflictType.OUT_IN_IN_POSITION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f74262a[VarianceConflictType.IN_IN_OUT_POSITION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f74262a[VarianceConflictType.NO_CONFLICT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static final class SubstitutionException extends Exception {
        public SubstitutionException(String str) {
            super(str);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class VarianceConflictType {
        private static final /* synthetic */ VarianceConflictType[] $VALUES;
        public static final VarianceConflictType IN_IN_OUT_POSITION;
        public static final VarianceConflictType NO_CONFLICT;
        public static final VarianceConflictType OUT_IN_IN_POSITION;

        static {
            VarianceConflictType varianceConflictType = new VarianceConflictType("NO_CONFLICT", 0);
            NO_CONFLICT = varianceConflictType;
            VarianceConflictType varianceConflictType2 = new VarianceConflictType("IN_IN_OUT_POSITION", 1);
            IN_IN_OUT_POSITION = varianceConflictType2;
            VarianceConflictType varianceConflictType3 = new VarianceConflictType("OUT_IN_IN_POSITION", 2);
            OUT_IN_IN_POSITION = varianceConflictType3;
            $VALUES = new VarianceConflictType[]{varianceConflictType, varianceConflictType2, varianceConflictType3};
        }

        public static VarianceConflictType valueOf(String str) {
            return (VarianceConflictType) Enum.valueOf(VarianceConflictType.class, str);
        }

        public static VarianceConflictType[] values() {
            return (VarianceConflictType[]) $VALUES.clone();
        }
    }

    public TypeSubstitutor(TypeSubstitution typeSubstitution) {
        if (typeSubstitution != null) {
            this.f74261a = typeSubstitution;
        } else {
            a(7);
            throw null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0021 A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:56:0x00b8  */
    public static /* synthetic */ void a(int i2) {
        String str;
        int i3;
        if (i2 != 1 && i2 != 2 && i2 != 8 && i2 != 34 && i2 != 37) {
            switch (i2) {
                default:
                    switch (i2) {
                        default:
                            switch (i2) {
                                default:
                                    switch (i2) {
                                        case 40:
                                        case 41:
                                        case EACTags.CURRENCY_CODE /* 42 */:
                                            break;
                                        default:
                                            str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                                            break;
                                    }
                                case 29:
                                case 30:
                                case 31:
                                case 32:
                                    str = "@NotNull method %s.%s must not return null";
                                    break;
                            }
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                            str = "@NotNull method %s.%s must not return null";
                            break;
                    }
                case 11:
                case 12:
                case 13:
                    str = "@NotNull method %s.%s must not return null";
                    break;
            }
        } else {
            str = "@NotNull method %s.%s must not return null";
        }
        if (i2 != 1 && i2 != 2 && i2 != 8 && i2 != 34 && i2 != 37) {
            switch (i2) {
                case 11:
                case 12:
                case 13:
                    i3 = 2;
                    break;
                default:
                    switch (i2) {
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                            i3 = 2;
                            break;
                        default:
                            switch (i2) {
                                case 29:
                                case 30:
                                case 31:
                                case 32:
                                    i3 = 2;
                                    break;
                                default:
                                    switch (i2) {
                                        case 40:
                                        case 41:
                                        case EACTags.CURRENCY_CODE /* 42 */:
                                            i3 = 2;
                                            break;
                                        default:
                                            i3 = 3;
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
            }
        } else {
            i3 = 2;
        }
        Object[] objArr = new Object[i3];
        switch (i2) {
            case 1:
            case 2:
            case 8:
            case 11:
            case 12:
            case 13:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 29:
            case 30:
            case 31:
            case 32:
            case 34:
            case 37:
            case 40:
            case 41:
            case EACTags.CURRENCY_CODE /* 42 */:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/TypeSubstitutor";
                break;
            case 3:
                objArr[0] = "first";
                break;
            case 4:
                objArr[0] = "second";
                break;
            case 5:
                objArr[0] = "substitutionContext";
                break;
            case 6:
                objArr[0] = MvelScriptManager.VAR_CONTEXT;
                break;
            case 7:
            default:
                objArr[0] = "substitution";
                break;
            case 9:
            case 14:
                objArr[0] = "type";
                break;
            case 10:
            case 15:
                objArr[0] = "howThisTypeIsUsed";
                break;
            case 16:
            case 17:
            case 36:
                objArr[0] = "typeProjection";
                break;
            case 18:
            case 28:
                objArr[0] = "originalProjection";
                break;
            case 26:
                objArr[0] = "originalType";
                break;
            case 27:
                objArr[0] = "substituted";
                break;
            case 33:
                objArr[0] = "annotations";
                break;
            case 35:
            case 38:
                objArr[0] = "typeParameterVariance";
                break;
            case 39:
                objArr[0] = "projectionKind";
                break;
        }
        if (i2 == 1) {
            objArr[1] = "replaceWithNonApproximatingSubstitution";
        } else if (i2 == 2) {
            objArr[1] = "replaceWithContravariantApproximatingSubstitution";
        } else if (i2 == 8) {
            objArr[1] = "getSubstitution";
        } else if (i2 == 34) {
            objArr[1] = "filterOutUnsafeVariance";
        } else if (i2 != 37) {
            switch (i2) {
                case 11:
                case 12:
                case 13:
                    objArr[1] = "safeSubstitute";
                    break;
                default:
                    switch (i2) {
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                            objArr[1] = "unsafeSubstitute";
                            break;
                        default:
                            switch (i2) {
                                case 29:
                                case 30:
                                case 31:
                                case 32:
                                    objArr[1] = "projectedTypeForConflictedTypeWithUnsafeVariance";
                                    break;
                                default:
                                    switch (i2) {
                                        case 40:
                                        case 41:
                                        case EACTags.CURRENCY_CODE /* 42 */:
                                            objArr[1] = "combine";
                                            break;
                                        default:
                                            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/TypeSubstitutor";
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
            }
        } else {
            objArr[1] = "combine";
        }
        switch (i2) {
            case 1:
            case 2:
            case 8:
            case 11:
            case 12:
            case 13:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 29:
            case 30:
            case 31:
            case 32:
            case 34:
            case 37:
            case 40:
            case 41:
            case EACTags.CURRENCY_CODE /* 42 */:
                break;
            case 3:
            case 4:
                objArr[2] = "createChainedSubstitutor";
                break;
            case 5:
            case 6:
            default:
                objArr[2] = "create";
                break;
            case 7:
                objArr[2] = "<init>";
                break;
            case 9:
            case 10:
                objArr[2] = "safeSubstitute";
                break;
            case 14:
            case 15:
            case 16:
                objArr[2] = "substitute";
                break;
            case 17:
                objArr[2] = "substituteWithoutApproximation";
                break;
            case 18:
                objArr[2] = "unsafeSubstitute";
                break;
            case 26:
            case 27:
            case 28:
                objArr[2] = "projectedTypeForConflictedTypeWithUnsafeVariance";
                break;
            case 33:
                objArr[2] = "filterOutUnsafeVariance";
                break;
            case 35:
            case 36:
            case 38:
            case 39:
                objArr[2] = "combine";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i2 != 1 && i2 != 2 && i2 != 8 && i2 != 34 && i2 != 37) {
            switch (i2) {
                case 11:
                case 12:
                case 13:
                    break;
                default:
                    switch (i2) {
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                            break;
                        default:
                            switch (i2) {
                                case 29:
                                case 30:
                                case 31:
                                case 32:
                                    break;
                                default:
                                    switch (i2) {
                                        case 40:
                                        case 41:
                                        case EACTags.CURRENCY_CODE /* 42 */:
                                            break;
                                        default:
                                            throw new IllegalArgumentException(str2);
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
            }
        }
        throw new IllegalStateException(str2);
    }

    public static Variance b(Variance variance, Variance variance2) {
        if (variance == null) {
            a(38);
            throw null;
        }
        if (variance2 == null) {
            a(39);
            throw null;
        }
        Variance variance3 = Variance.INVARIANT;
        if (variance == variance3) {
            if (variance2 != null) {
                return variance2;
            }
            a(40);
            throw null;
        }
        if (variance2 == variance3) {
            if (variance != null) {
                return variance;
            }
            a(41);
            throw null;
        }
        if (variance == variance2) {
            if (variance2 != null) {
                return variance2;
            }
            a(42);
            throw null;
        }
        throw new AssertionError("Variance conflict: type parameter variance '" + variance + "' and projection kind '" + variance2 + "' cannot be combined");
    }

    public static VarianceConflictType c(Variance variance, Variance variance2) {
        Variance variance3 = Variance.IN_VARIANCE;
        if (variance == variance3 && variance2 == Variance.OUT_VARIANCE) {
            return VarianceConflictType.OUT_IN_IN_POSITION;
        }
        return (variance == Variance.OUT_VARIANCE && variance2 == variance3) ? VarianceConflictType.IN_IN_OUT_POSITION : VarianceConflictType.NO_CONFLICT;
    }

    public static TypeSubstitutor d(KotlinType kotlinType) {
        if (kotlinType == null) {
            a(6);
            throw null;
        }
        return e(TypeConstructorSubstitution.f74244b.a(kotlinType.H0(), kotlinType.F0()));
    }

    public static TypeSubstitutor e(TypeSubstitution typeSubstitution) {
        if (typeSubstitution != null) {
            return new TypeSubstitutor(typeSubstitution);
        }
        a(0);
        throw null;
    }

    public static TypeSubstitutor f(TypeSubstitution typeSubstitution, TypeSubstitution typeSubstitution2) {
        if (typeSubstitution == null) {
            a(3);
            throw null;
        }
        if (typeSubstitution2 == null) {
            a(4);
            throw null;
        }
        DisjointKeysUnionTypeSubstitution.d.getClass();
        typeSubstitution.getClass();
        typeSubstitution2.getClass();
        if (typeSubstitution.e()) {
            typeSubstitution = typeSubstitution2;
        } else if (!typeSubstitution2.e()) {
            typeSubstitution = new DisjointKeysUnionTypeSubstitution(typeSubstitution, typeSubstitution2, null);
        }
        return e(typeSubstitution);
    }

    public static String i(Object obj) {
        try {
            return obj.toString();
        } catch (Throwable th) {
            if (ExceptionUtilsKt.a(th)) {
                throw th;
            }
            return d21.n("[Exception while computing toString(): ", "]", th);
        }
    }

    public final TypeSubstitution g() {
        TypeSubstitution typeSubstitution = this.f74261a;
        if (typeSubstitution != null) {
            return typeSubstitution;
        }
        a(8);
        throw null;
    }

    public final KotlinType h(Variance variance, KotlinType kotlinType) {
        if (kotlinType == null) {
            a(9);
            throw null;
        }
        if (variance == null) {
            a(10);
            throw null;
        }
        if (this.f74261a.e()) {
            return kotlinType;
        }
        try {
            KotlinType type = k(new TypeProjectionImpl(variance, kotlinType), null, 0).getType();
            if (type != null) {
                return type;
            }
            a(12);
            throw null;
        } catch (SubstitutionException e2) {
            return ErrorUtils.c(ErrorTypeKind.UNABLE_TO_SUBSTITUTE_TYPE, e2.getMessage());
        }
    }

    public final KotlinType j(Variance variance, KotlinType kotlinType) {
        if (kotlinType == null) {
            a(14);
            throw null;
        }
        if (variance == null) {
            a(15);
            throw null;
        }
        TypeProjection typeProjectionImpl = new TypeProjectionImpl(variance, g().f(variance, kotlinType));
        TypeSubstitution typeSubstitution = this.f74261a;
        if (!typeSubstitution.e()) {
            try {
                typeProjectionImpl = k(typeProjectionImpl, null, 0);
            } catch (SubstitutionException unused) {
                typeProjectionImpl = null;
            }
        }
        if (typeSubstitution.a() || typeSubstitution.b()) {
            typeProjectionImpl = CapturedTypeApproximationKt.b(typeProjectionImpl, typeSubstitution.b());
        }
        if (typeProjectionImpl == null) {
            return null;
        }
        return typeProjectionImpl.getType();
    }

    /* JADX WARN: Code duplicated, block: B:102:0x01fa  */
    /* JADX WARN: Code duplicated, block: B:105:0x0208  */
    /* JADX WARN: Code duplicated, block: B:108:0x021e  */
    /* JADX WARN: Code duplicated, block: B:110:0x0226  */
    /* JADX WARN: Code duplicated, block: B:111:0x0229  */
    /* JADX WARN: Code duplicated, block: B:113:0x022c  */
    /* JADX WARN: Code duplicated, block: B:114:0x022f  */
    /* JADX WARN: Code duplicated, block: B:116:0x0232  */
    /* JADX WARN: Code duplicated, block: B:122:0x024f  */
    /* JADX WARN: Code duplicated, block: B:127:0x0272  */
    /* JADX WARN: Code duplicated, block: B:139:0x02bb  */
    /* JADX WARN: Code duplicated, block: B:141:0x02c1  */
    /* JADX WARN: Code duplicated, block: B:145:0x02cd  */
    /* JADX WARN: Code duplicated, block: B:160:0x02c2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x0136  */
    /* JADX WARN: Code duplicated, block: B:64:0x0147  */
    /* JADX WARN: Code duplicated, block: B:66:0x0157  */
    /* JADX WARN: Code duplicated, block: B:68:0x0161 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:70:0x0164  */
    /* JADX WARN: Code duplicated, block: B:72:0x0178  */
    /* JADX WARN: Code duplicated, block: B:76:0x0188  */
    /* JADX WARN: Code duplicated, block: B:77:0x018b  */
    /* JADX WARN: Code duplicated, block: B:82:0x0195  */
    /* JADX WARN: Code duplicated, block: B:85:0x019c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:86:0x019d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:87:0x019f  */
    /* JADX WARN: Code duplicated, block: B:88:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:91:0x01be  */
    /* JADX WARN: Code duplicated, block: B:93:0x01c8  */
    /* JADX WARN: Code duplicated, block: B:96:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:98:0x01f0  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final TypeProjection k(TypeProjection typeProjection, TypeParameterDescriptor typeParameterDescriptor, int i2) throws SubstitutionException {
        KotlinType type;
        Variance varianceB;
        UnwrappedType unwrappedTypeK0;
        AbbreviatedType abbreviatedType;
        SimpleType simpleType;
        List parameters;
        List listF0;
        ArrayList arrayList;
        boolean z;
        KotlinType kotlinTypeC;
        TypeParameterDescriptor typeParameterDescriptor2;
        TypeProjection typeProjection2;
        TypeProjection typeProjectionK;
        int i3;
        TypeSubstitutor typeSubstitutor;
        VarianceConflictType varianceConflictTypeC;
        Object objK0;
        CustomTypeParameter customTypeParameter;
        KotlinType kotlinTypeJ;
        Annotations annotationsC;
        int i4;
        KotlinType kotlinTypeJ2 = null;
        if (typeProjection == null) {
            a(18);
            throw null;
        }
        TypeSubstitution typeSubstitution = this.f74261a;
        if (i2 > 100) {
            no0.q("Recursion too deep. Most likely infinite loop while substituting ", i(typeProjection), "; substitution: ", i(typeSubstitution));
            return null;
        }
        if (!typeProjection.a()) {
            KotlinType type2 = typeProjection.getType();
            if (type2 instanceof TypeWithEnhancement) {
                TypeWithEnhancement typeWithEnhancement = (TypeWithEnhancement) type2;
                UnwrappedType unwrappedTypeB0 = typeWithEnhancement.B0();
                KotlinType kotlinTypeZ = typeWithEnhancement.Z();
                TypeProjection typeProjectionK2 = k(new TypeProjectionImpl(typeProjection.b(), unwrappedTypeB0), typeParameterDescriptor, i2 + 1);
                return typeProjectionK2.a() ? typeProjectionK2 : new TypeProjectionImpl(typeProjectionK2.b(), TypeWithEnhancementKt.c(typeProjectionK2.getType().K0(), j(typeProjection.b(), kotlinTypeZ)));
            }
            type2.getClass();
            if (!(type2.K0() instanceof DynamicType) && !(type2.K0() instanceof RawType)) {
                TypeProjection typeProjectionD = typeSubstitution.d(type2);
                if (typeProjectionD == null) {
                    typeProjectionD = null;
                } else if (type2.getAnnotations().C1(StandardNames.FqNames.y)) {
                    TypeConstructor typeConstructorH0 = typeProjectionD.getType().H0();
                    if (typeConstructorH0 instanceof NewCapturedTypeConstructor) {
                        TypeProjection typeProjection3 = ((NewCapturedTypeConstructor) typeConstructorH0).f74277b;
                        Variance varianceB2 = typeProjection3.b();
                        VarianceConflictType varianceConflictTypeC2 = c(typeProjection.b(), varianceB2);
                        VarianceConflictType varianceConflictType = VarianceConflictType.OUT_IN_IN_POSITION;
                        if (varianceConflictTypeC2 == varianceConflictType) {
                            typeProjectionD = new TypeProjectionImpl(typeProjection3.getType());
                        } else if (typeParameterDescriptor != null && c(typeParameterDescriptor.l(), varianceB2) == varianceConflictType) {
                            typeProjectionD = new TypeProjectionImpl(typeProjection3.getType());
                        }
                    }
                }
                Variance varianceB3 = typeProjection.b();
                if (typeProjectionD == null && (type2.K0() instanceof FlexibleType)) {
                    Object objK1 = type2.K0();
                    CustomTypeParameter customTypeParameter2 = objK1 instanceof CustomTypeParameter ? (CustomTypeParameter) objK1 : null;
                    if (!(customTypeParameter2 != null ? customTypeParameter2.y0() : false)) {
                        FlexibleType flexibleType = (FlexibleType) type2.K0();
                        SimpleType simpleType2 = flexibleType.d;
                        SimpleType simpleType3 = flexibleType.f74193c;
                        int i5 = i2 + 1;
                        TypeProjection typeProjectionK3 = k(new TypeProjectionImpl(varianceB3, simpleType3), typeParameterDescriptor, i5);
                        TypeProjection typeProjectionK4 = k(new TypeProjectionImpl(varianceB3, simpleType2), typeParameterDescriptor, i5);
                        Variance varianceB4 = typeProjectionK3.b();
                        if (typeProjectionK3.getType() != simpleType3 || typeProjectionK4.getType() != simpleType2) {
                            return new TypeProjectionImpl(varianceB4, KotlinTypeFactory.a(TypeSubstitutionKt.a(typeProjectionK3.getType()), TypeSubstitutionKt.a(typeProjectionK4.getType())));
                        }
                    } else if (!KotlinBuiltIns.F(type2)) {
                        if (typeProjectionD != null) {
                            varianceConflictTypeC = c(varianceB3, typeProjectionD.b());
                            if (!(type2.H0() instanceof CapturedTypeConstructor)) {
                                i4 = AnonymousClass2.f74262a[varianceConflictTypeC.ordinal()];
                                if (i4 != 1) {
                                    throw new SubstitutionException("Out-projection in in-position");
                                }
                                if (i4 == 2) {
                                    return new TypeProjectionImpl(Variance.OUT_VARIANCE, type2.H0().g().p());
                                }
                            }
                            objK0 = type2.K0();
                            if (objK0 instanceof CustomTypeParameter) {
                                customTypeParameter = (CustomTypeParameter) objK0;
                            } else {
                                customTypeParameter = null;
                            }
                            if (customTypeParameter != null) {
                                customTypeParameter = null;
                            } else {
                                customTypeParameter = null;
                            }
                            if (typeProjectionD.a()) {
                                return typeProjectionD;
                            }
                            if (customTypeParameter != null) {
                                kotlinTypeJ = customTypeParameter.b0(typeProjectionD.getType());
                            } else {
                                kotlinTypeJ = TypeUtils.j(typeProjectionD.getType(), type2.I0());
                            }
                            if (!type2.getAnnotations().isEmpty()) {
                                annotationsC = typeSubstitution.c(type2.getAnnotations());
                                if (annotationsC != null) {
                                    a(33);
                                    throw null;
                                }
                                if (annotationsC.C1(StandardNames.FqNames.y)) {
                                    annotationsC = new FilteredAnnotations(annotationsC, new AnonymousClass1());
                                }
                                kotlinTypeJ = TypeUtilsKt.i(kotlinTypeJ, new CompositeAnnotations(kotlinTypeJ.getAnnotations(), annotationsC));
                            }
                            if (varianceConflictTypeC == VarianceConflictType.NO_CONFLICT) {
                                varianceB3 = b(varianceB3, typeProjectionD.b());
                            }
                            return new TypeProjectionImpl(varianceB3, kotlinTypeJ);
                        }
                        type = typeProjection.getType();
                        varianceB = typeProjection.b();
                        if (!(type.H0().y() instanceof TypeParameterDescriptor)) {
                            unwrappedTypeK0 = type.K0();
                            if (unwrappedTypeK0 instanceof AbbreviatedType) {
                                abbreviatedType = (AbbreviatedType) unwrappedTypeK0;
                            } else {
                                abbreviatedType = null;
                            }
                            if (abbreviatedType != null) {
                                simpleType = abbreviatedType.d;
                            } else {
                                simpleType = null;
                            }
                            if (simpleType != null) {
                                if (typeSubstitution instanceof IndexedParametersSubstitution) {
                                    typeSubstitutor = this;
                                } else {
                                    typeSubstitutor = this;
                                }
                                kotlinTypeJ2 = typeSubstitutor.j(Variance.INVARIANT, simpleType);
                            }
                            parameters = type.H0().getParameters();
                            listF0 = type.F0();
                            arrayList = new ArrayList(parameters.size());
                            z = false;
                            for (int i6 = 0; i6 < parameters.size(); i6++) {
                                typeParameterDescriptor2 = (TypeParameterDescriptor) parameters.get(i6);
                                typeProjection2 = (TypeProjection) listF0.get(i6);
                                typeProjectionK = k(typeProjection2, typeParameterDescriptor2, i2 + 1);
                                i3 = AnonymousClass2.f74262a[c(typeParameterDescriptor2.l(), typeProjectionK.b()).ordinal()];
                                if (i3 != 1) {
                                    typeProjectionK = TypeUtils.l(typeParameterDescriptor2);
                                } else {
                                    typeProjectionK = TypeUtils.l(typeParameterDescriptor2);
                                }
                                if (typeProjectionK != typeProjection2) {
                                    z = true;
                                }
                                arrayList.add(typeProjectionK);
                            }
                            if (z) {
                                listF0 = arrayList;
                            }
                            Annotations annotationsC2 = typeSubstitution.c(type.getAnnotations());
                            listF0.getClass();
                            annotationsC2.getClass();
                            kotlinTypeC = TypeSubstitutionKt.c(type, listF0, annotationsC2, 4);
                            if (kotlinTypeC instanceof SimpleType) {
                                kotlinTypeC = SpecialTypesKt.c((SimpleType) kotlinTypeC, (SimpleType) kotlinTypeJ2);
                            }
                            return new TypeProjectionImpl(varianceB, kotlinTypeC);
                        }
                    }
                } else if (!KotlinBuiltIns.F(type2) && !KotlinTypeKt.a(type2)) {
                    if (typeProjectionD != null) {
                        varianceConflictTypeC = c(varianceB3, typeProjectionD.b());
                        if (!(type2.H0() instanceof CapturedTypeConstructor)) {
                            i4 = AnonymousClass2.f74262a[varianceConflictTypeC.ordinal()];
                            if (i4 != 1) {
                                throw new SubstitutionException("Out-projection in in-position");
                            }
                            if (i4 == 2) {
                                return new TypeProjectionImpl(Variance.OUT_VARIANCE, type2.H0().g().p());
                            }
                        }
                        objK0 = type2.K0();
                        if (objK0 instanceof CustomTypeParameter) {
                            customTypeParameter = (CustomTypeParameter) objK0;
                        } else {
                            customTypeParameter = null;
                        }
                        if (customTypeParameter != null || !customTypeParameter.y0()) {
                            customTypeParameter = null;
                        }
                        if (typeProjectionD.a()) {
                            return typeProjectionD;
                        }
                        if (customTypeParameter != null) {
                            kotlinTypeJ = customTypeParameter.b0(typeProjectionD.getType());
                        } else {
                            kotlinTypeJ = TypeUtils.j(typeProjectionD.getType(), type2.I0());
                        }
                        if (!type2.getAnnotations().isEmpty()) {
                            annotationsC = typeSubstitution.c(type2.getAnnotations());
                            if (annotationsC != null) {
                                a(33);
                                throw null;
                            }
                            if (annotationsC.C1(StandardNames.FqNames.y)) {
                                annotationsC = new FilteredAnnotations(annotationsC, new AnonymousClass1());
                            }
                            kotlinTypeJ = TypeUtilsKt.i(kotlinTypeJ, new CompositeAnnotations(kotlinTypeJ.getAnnotations(), annotationsC));
                        }
                        if (varianceConflictTypeC == VarianceConflictType.NO_CONFLICT) {
                            varianceB3 = b(varianceB3, typeProjectionD.b());
                        }
                        return new TypeProjectionImpl(varianceB3, kotlinTypeJ);
                    }
                    type = typeProjection.getType();
                    varianceB = typeProjection.b();
                    if (!(type.H0().y() instanceof TypeParameterDescriptor)) {
                        unwrappedTypeK0 = type.K0();
                        if (unwrappedTypeK0 instanceof AbbreviatedType) {
                            abbreviatedType = (AbbreviatedType) unwrappedTypeK0;
                        } else {
                            abbreviatedType = null;
                        }
                        if (abbreviatedType != null) {
                            simpleType = abbreviatedType.d;
                        } else {
                            simpleType = null;
                        }
                        if (simpleType != null) {
                            if ((typeSubstitution instanceof IndexedParametersSubstitution) || !typeSubstitution.b()) {
                                typeSubstitutor = this;
                            } else {
                                IndexedParametersSubstitution indexedParametersSubstitution = (IndexedParametersSubstitution) typeSubstitution;
                                typeSubstitutor = new TypeSubstitutor(new IndexedParametersSubstitution(indexedParametersSubstitution.f74196b, indexedParametersSubstitution.f74197c, false));
                            }
                            kotlinTypeJ2 = typeSubstitutor.j(Variance.INVARIANT, simpleType);
                        }
                        parameters = type.H0().getParameters();
                        listF0 = type.F0();
                        arrayList = new ArrayList(parameters.size());
                        z = false;
                        while (i6 < parameters.size()) {
                            typeParameterDescriptor2 = (TypeParameterDescriptor) parameters.get(i6);
                            typeProjection2 = (TypeProjection) listF0.get(i6);
                            typeProjectionK = k(typeProjection2, typeParameterDescriptor2, i2 + 1);
                            i3 = AnonymousClass2.f74262a[c(typeParameterDescriptor2.l(), typeProjectionK.b()).ordinal()];
                            if (i3 != 1 || i3 == 2) {
                                typeProjectionK = TypeUtils.l(typeParameterDescriptor2);
                            } else if (i3 == 3) {
                                Variance varianceL = typeParameterDescriptor2.l();
                                Variance variance = Variance.INVARIANT;
                                if (varianceL != variance && !typeProjectionK.a()) {
                                    typeProjectionK = new TypeProjectionImpl(variance, typeProjectionK.getType());
                                }
                            }
                            if (typeProjectionK != typeProjection2) {
                                z = true;
                            }
                            arrayList.add(typeProjectionK);
                        }
                        if (z) {
                            listF0 = arrayList;
                        }
                        Annotations annotationsC3 = typeSubstitution.c(type.getAnnotations());
                        listF0.getClass();
                        annotationsC3.getClass();
                        kotlinTypeC = TypeSubstitutionKt.c(type, listF0, annotationsC3, 4);
                        if ((kotlinTypeC instanceof SimpleType) && (kotlinTypeJ2 instanceof SimpleType)) {
                            kotlinTypeC = SpecialTypesKt.c((SimpleType) kotlinTypeC, (SimpleType) kotlinTypeJ2);
                        }
                        return new TypeProjectionImpl(varianceB, kotlinTypeC);
                    }
                }
            }
        }
        return typeProjection;
    }
}
