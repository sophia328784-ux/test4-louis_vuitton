package kotlin.reflect.jvm.internal.impl.types.typesApproximation;

import defpackage.no0;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructor;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.FlexibleTypesKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutionKt;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.TypeWithEnhancementKt;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class CapturedTypeApproximationKt {

    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f74322a;

        static {
            int[] iArr = new int[Variance.values().length];
            try {
                iArr[Variance.INVARIANT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Variance.IN_VARIANCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Variance.OUT_VARIANCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f74322a = iArr;
        }
    }

    public static final ApproximationBounds a(KotlinType kotlinType) {
        TypeArgument typeArgument;
        Object objC;
        Variance varianceB;
        TypeArgument typeArgument2;
        kotlinType.getClass();
        if (kotlinType.K0() instanceof FlexibleType) {
            ApproximationBounds approximationBoundsA = a(FlexibleTypesKt.a(kotlinType));
            ApproximationBounds approximationBoundsA2 = a(FlexibleTypesKt.b(kotlinType));
            return new ApproximationBounds(TypeWithEnhancementKt.b(KotlinTypeFactory.a(FlexibleTypesKt.a((KotlinType) approximationBoundsA.f74319a), FlexibleTypesKt.b((KotlinType) approximationBoundsA2.f74319a)), kotlinType), TypeWithEnhancementKt.b(KotlinTypeFactory.a(FlexibleTypesKt.a((KotlinType) approximationBoundsA.f74320b), FlexibleTypesKt.b((KotlinType) approximationBoundsA2.f74320b)), kotlinType));
        }
        TypeConstructor typeConstructorH0 = kotlinType.H0();
        if (kotlinType.H0() instanceof CapturedTypeConstructor) {
            typeConstructorH0.getClass();
            TypeProjection typeProjectionP = ((CapturedTypeConstructor) typeConstructorH0).p();
            KotlinType type = typeProjectionP.getType();
            type.getClass();
            KotlinType kotlinTypeJ = TypeUtils.j(type, kotlinType.I0());
            int i2 = WhenMappings.f74322a[typeProjectionP.b().ordinal()];
            if (i2 == 2) {
                return new ApproximationBounds(kotlinTypeJ, TypeUtilsKt.f(kotlinType).p());
            }
            if (i2 != 3) {
                no0.t(typeProjectionP, "Only nontrivial projections should have been captured, not: ");
                return null;
            }
            SimpleType simpleTypeO = TypeUtilsKt.f(kotlinType).o();
            simpleTypeO.getClass();
            return new ApproximationBounds(TypeUtils.j(simpleTypeO, kotlinType.I0()), kotlinTypeJ);
        }
        if (kotlinType.F0().isEmpty() || kotlinType.F0().size() != typeConstructorH0.getParameters().size()) {
            return new ApproximationBounds(kotlinType, kotlinType);
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        List listF0 = kotlinType.F0();
        List parameters = typeConstructorH0.getParameters();
        parameters.getClass();
        Iterator it = CollectionsKt.E0(listF0, parameters).iterator();
        while (true) {
            boolean z = true;
            if (!it.hasNext()) {
                if (!arrayList.isEmpty()) {
                    Iterator it2 = arrayList.iterator();
                    do {
                        if (!it2.hasNext()) {
                            z = false;
                            break;
                        }
                        typeArgument = (TypeArgument) it2.next();
                        typeArgument.getClass();
                    } while (KotlinTypeChecker.f74269a.d(typeArgument.f74324b, typeArgument.f74325c));
                } else {
                    z = false;
                    break;
                }
                if (z) {
                    objC = TypeUtilsKt.f(kotlinType).o();
                    objC.getClass();
                } else {
                    objC = c(kotlinType, arrayList);
                }
                return new ApproximationBounds(objC, c(kotlinType, arrayList2));
            }
            Pair pair = (Pair) it.next();
            TypeProjection typeProjection = (TypeProjection) pair.f71705b;
            TypeParameterDescriptor typeParameterDescriptor = (TypeParameterDescriptor) pair.f71706c;
            typeParameterDescriptor.getClass();
            Variance varianceL = typeParameterDescriptor.l();
            if (varianceL == null) {
                TypeSubstitutor.a(35);
                throw null;
            }
            if (typeProjection == null) {
                TypeSubstitutor.a(36);
                throw null;
            }
            TypeSubstitutor typeSubstitutor = TypeSubstitutor.f74260b;
            if (typeProjection.a()) {
                varianceB = Variance.OUT_VARIANCE;
                if (varianceB == null) {
                    TypeSubstitutor.a(37);
                    throw null;
                }
            } else {
                varianceB = TypeSubstitutor.b(varianceL, typeProjection.b());
            }
            int i3 = WhenMappings.f74322a[varianceB.ordinal()];
            if (i3 == 1) {
                KotlinType type2 = typeProjection.getType();
                type2.getClass();
                KotlinType type3 = typeProjection.getType();
                type3.getClass();
                typeArgument2 = new TypeArgument(typeParameterDescriptor, type2, type3);
            } else if (i3 == 2) {
                KotlinType type4 = typeProjection.getType();
                type4.getClass();
                int i4 = DescriptorUtilsKt.f73888a;
                ModuleDescriptor moduleDescriptorC = DescriptorUtils.c(typeParameterDescriptor);
                moduleDescriptorC.getClass();
                SimpleType simpleTypeP = moduleDescriptorC.g().p();
                simpleTypeP.getClass();
                typeArgument2 = new TypeArgument(typeParameterDescriptor, type4, simpleTypeP);
            } else {
                if (i3 != 3) {
                    v40.g();
                    return null;
                }
                int i5 = DescriptorUtilsKt.f73888a;
                ModuleDescriptor moduleDescriptorC2 = DescriptorUtils.c(typeParameterDescriptor);
                moduleDescriptorC2.getClass();
                SimpleType simpleTypeO2 = moduleDescriptorC2.g().o();
                simpleTypeO2.getClass();
                KotlinType type5 = typeProjection.getType();
                type5.getClass();
                typeArgument2 = new TypeArgument(typeParameterDescriptor, simpleTypeO2, type5);
            }
            if (typeProjection.a()) {
                arrayList.add(typeArgument2);
                arrayList2.add(typeArgument2);
            } else {
                ApproximationBounds approximationBoundsA3 = a(typeArgument2.f74324b);
                KotlinType kotlinType2 = (KotlinType) approximationBoundsA3.f74319a;
                KotlinType kotlinType3 = (KotlinType) approximationBoundsA3.f74320b;
                ApproximationBounds approximationBoundsA4 = a(typeArgument2.f74325c);
                KotlinType kotlinType4 = (KotlinType) approximationBoundsA4.f74319a;
                KotlinType kotlinType5 = (KotlinType) approximationBoundsA4.f74320b;
                TypeParameterDescriptor typeParameterDescriptor2 = typeArgument2.f74323a;
                ApproximationBounds approximationBounds = new ApproximationBounds(new TypeArgument(typeParameterDescriptor2, kotlinType3, kotlinType4), new TypeArgument(typeParameterDescriptor2, kotlinType2, kotlinType5));
                TypeArgument typeArgument3 = (TypeArgument) approximationBounds.f74319a;
                TypeArgument typeArgument4 = (TypeArgument) approximationBounds.f74320b;
                arrayList.add(typeArgument3);
                arrayList2.add(typeArgument4);
            }
        }
    }

    public static final TypeProjection b(TypeProjection typeProjection, boolean z) {
        if (typeProjection == null) {
            return null;
        }
        if (!typeProjection.a()) {
            KotlinType type = typeProjection.getType();
            type.getClass();
            if (TypeUtils.c(type, new Function1() { // from class: kotlin.reflect.jvm.internal.impl.types.typesApproximation.CapturedTypeApproximationKt$$Lambda$1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    UnwrappedType unwrappedType = (UnwrappedType) obj;
                    unwrappedType.getClass();
                    return Boolean.valueOf(unwrappedType.H0() instanceof CapturedTypeConstructor);
                }
            })) {
                Variance varianceB = typeProjection.b();
                varianceB.getClass();
                if (varianceB == Variance.OUT_VARIANCE) {
                    return new TypeProjectionImpl(varianceB, (KotlinType) a(type).f74320b);
                }
                if (z) {
                    return new TypeProjectionImpl(varianceB, (KotlinType) a(type).f74319a);
                }
                TypeSubstitutor typeSubstitutorE = TypeSubstitutor.e(new CapturedTypeApproximationKt$substituteCapturedTypesWithProjections$typeSubstitutor$1());
                if (!typeSubstitutorE.f74261a.e()) {
                    try {
                        return typeSubstitutorE.k(typeProjection, null, 0);
                    } catch (TypeSubstitutor.SubstitutionException unused) {
                        return null;
                    }
                }
            }
        }
        return typeProjection;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0091  */
    public static final KotlinType c(KotlinType kotlinType, ArrayList arrayList) {
        TypeProjectionImpl typeProjectionImpl;
        kotlinType.F0().size();
        arrayList.size();
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            TypeArgument typeArgument = (TypeArgument) it.next();
            typeArgument.getClass();
            KotlinType kotlinType2 = typeArgument.f74325c;
            KotlinType kotlinType3 = typeArgument.f74324b;
            TypeParameterDescriptor typeParameterDescriptor = typeArgument.f74323a;
            KotlinTypeChecker.f74269a.d(kotlinType3, kotlinType2);
            if (Intrinsics.c(kotlinType3, kotlinType2)) {
                typeProjectionImpl = new TypeProjectionImpl(kotlinType3);
            } else {
                Variance varianceL = typeParameterDescriptor.l();
                Variance variance = Variance.IN_VARIANCE;
                if (varianceL == variance) {
                    typeProjectionImpl = new TypeProjectionImpl(kotlinType3);
                } else if (KotlinBuiltIns.F(kotlinType3) && typeParameterDescriptor.l() != variance) {
                    Variance variance2 = Variance.OUT_VARIANCE;
                    if (variance2 == typeParameterDescriptor.l()) {
                        variance2 = Variance.INVARIANT;
                    }
                    typeProjectionImpl = new TypeProjectionImpl(variance2, kotlinType2);
                } else {
                    if (kotlinType2 == null) {
                        KotlinBuiltIns.a(140);
                        throw null;
                    }
                    if (KotlinBuiltIns.y(kotlinType2) && kotlinType2.I0()) {
                        if (variance == typeParameterDescriptor.l()) {
                            variance = Variance.INVARIANT;
                        }
                        typeProjectionImpl = new TypeProjectionImpl(variance, kotlinType3);
                    } else {
                        Variance variance3 = Variance.OUT_VARIANCE;
                        if (variance3 == typeParameterDescriptor.l()) {
                            variance3 = Variance.INVARIANT;
                        }
                        typeProjectionImpl = new TypeProjectionImpl(variance3, kotlinType2);
                    }
                }
            }
            arrayList2.add(typeProjectionImpl);
        }
        return TypeSubstitutionKt.c(kotlinType, arrayList2, null, 6);
    }
}
