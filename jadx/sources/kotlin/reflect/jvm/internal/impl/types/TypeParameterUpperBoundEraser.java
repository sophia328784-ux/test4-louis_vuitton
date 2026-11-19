package kotlin.reflect.jvm.internal.impl.types;

import defpackage.md;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.collections.builders.SetBuilder;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNotNull;
import kotlin.reflect.jvm.internal.impl.types.checker.IntersectionTypeKt;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorType;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class TypeParameterUpperBoundEraser {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f74248e = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ErasureProjectionComputer f74249a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TypeParameterErasureOptions f74250b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Lazy f74251c;
    public final MemoizedFunctionToNotNull d;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public static final class DataToEraseUpperBound {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TypeParameterDescriptor f74254a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ErasureTypeAttributes f74255b;

        public DataToEraseUpperBound(TypeParameterDescriptor typeParameterDescriptor, ErasureTypeAttributes erasureTypeAttributes) {
            typeParameterDescriptor.getClass();
            erasureTypeAttributes.getClass();
            this.f74254a = typeParameterDescriptor;
            this.f74255b = erasureTypeAttributes;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof DataToEraseUpperBound)) {
                return false;
            }
            DataToEraseUpperBound dataToEraseUpperBound = (DataToEraseUpperBound) obj;
            return Intrinsics.c(dataToEraseUpperBound.f74254a, this.f74254a) && Intrinsics.c(dataToEraseUpperBound.f74255b, this.f74255b);
        }

        public final int hashCode() {
            int iHashCode = this.f74254a.hashCode();
            return this.f74255b.hashCode() + (iHashCode * 31) + iHashCode;
        }

        public final String toString() {
            return "DataToEraseUpperBound(typeParameter=" + this.f74254a + ", typeAttr=" + this.f74255b + ')';
        }
    }

    public TypeParameterUpperBoundEraser(ErasureProjectionComputer erasureProjectionComputer, TypeParameterErasureOptions typeParameterErasureOptions) {
        erasureProjectionComputer.getClass();
        typeParameterErasureOptions.getClass();
        this.f74249a = erasureProjectionComputer;
        this.f74250b = typeParameterErasureOptions;
        LockBasedStorageManager lockBasedStorageManager = new LockBasedStorageManager("Type parameter upper bound erasure results");
        this.f74251c = LazyKt.b(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.types.TypeParameterUpperBoundEraser$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final TypeParameterUpperBoundEraser f74252b;

            {
                this.f74252b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                TypeParameterUpperBoundEraser.Companion companion = TypeParameterUpperBoundEraser.f74248e;
                return ErrorUtils.c(ErrorTypeKind.CANNOT_COMPUTE_ERASED_BOUND, this.f74252b.toString());
            }
        });
        this.d = lockBasedStorageManager.i(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.types.TypeParameterUpperBoundEraser$$Lambda$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final TypeParameterUpperBoundEraser f74253b;

            {
                this.f74253b = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                TypeParameterUpperBoundEraser.DataToEraseUpperBound dataToEraseUpperBound = (TypeParameterUpperBoundEraser.DataToEraseUpperBound) obj;
                TypeParameterUpperBoundEraser.Companion companion = TypeParameterUpperBoundEraser.f74248e;
                TypeParameterDescriptor typeParameterDescriptor = dataToEraseUpperBound.f74254a;
                ErasureTypeAttributes erasureTypeAttributes = dataToEraseUpperBound.f74255b;
                TypeParameterUpperBoundEraser typeParameterUpperBoundEraser = this.f74253b;
                typeParameterUpperBoundEraser.getClass();
                Set setC = erasureTypeAttributes.c();
                if (setC != null && setC.contains(typeParameterDescriptor.y0())) {
                    return typeParameterUpperBoundEraser.a(erasureTypeAttributes);
                }
                SimpleType simpleTypeO = typeParameterDescriptor.o();
                simpleTypeO.getClass();
                LinkedHashSet<TypeParameterDescriptor> linkedHashSet = new LinkedHashSet();
                TypeUtilsKt.e(simpleTypeO, simpleTypeO, linkedHashSet, setC);
                int iG = MapsKt.g(CollectionsKt.t(linkedHashSet, 10));
                if (iG < 16) {
                    iG = 16;
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap(iG);
                for (TypeParameterDescriptor typeParameterDescriptor2 : linkedHashSet) {
                    Pair pair = new Pair(typeParameterDescriptor2.j(), (setC == null || !setC.contains(typeParameterDescriptor2)) ? typeParameterUpperBoundEraser.f74249a.a(typeParameterDescriptor2, erasureTypeAttributes, typeParameterUpperBoundEraser, typeParameterUpperBoundEraser.b(typeParameterDescriptor2, erasureTypeAttributes.d(typeParameterDescriptor))) : TypeUtils.m(typeParameterDescriptor2, erasureTypeAttributes));
                    linkedHashMap.put(pair.f71705b, pair.f71706c);
                }
                TypeSubstitutor typeSubstitutorE = TypeSubstitutor.e(TypeConstructorSubstitution.Companion.b(TypeConstructorSubstitution.f74244b, linkedHashMap));
                List upperBounds = typeParameterDescriptor.getUpperBounds();
                upperBounds.getClass();
                SetBuilder setBuilderC = typeParameterUpperBoundEraser.c(typeSubstitutorE, upperBounds, erasureTypeAttributes);
                if (setBuilderC.f71829b.isEmpty()) {
                    return typeParameterUpperBoundEraser.a(erasureTypeAttributes);
                }
                if (!typeParameterUpperBoundEraser.f74250b.f74247b) {
                    if (setBuilderC.f71829b.f71814j == 1) {
                        return (KotlinType) CollectionsKt.g0(setBuilderC);
                    }
                    md.n("Should only be one computed upper bound if no need to intersect all bounds");
                    return null;
                }
                List listY0 = CollectionsKt.y0(setBuilderC);
                ArrayList arrayList = new ArrayList(CollectionsKt.t(listY0, 10));
                Iterator it = listY0.iterator();
                while (it.hasNext()) {
                    arrayList.add(((KotlinType) it.next()).K0());
                }
                return IntersectionTypeKt.a(arrayList);
            }
        });
    }

    public final UnwrappedType a(ErasureTypeAttributes erasureTypeAttributes) {
        UnwrappedType unwrappedTypeJ;
        SimpleType simpleTypeA = erasureTypeAttributes.a();
        return (simpleTypeA == null || (unwrappedTypeJ = TypeUtilsKt.j(simpleTypeA)) == null) ? (ErrorType) this.f74251c.getF71699b() : unwrappedTypeJ;
    }

    public final KotlinType b(TypeParameterDescriptor typeParameterDescriptor, ErasureTypeAttributes erasureTypeAttributes) {
        typeParameterDescriptor.getClass();
        erasureTypeAttributes.getClass();
        Object objInvoke = this.d.invoke(new DataToEraseUpperBound(typeParameterDescriptor, erasureTypeAttributes));
        objInvoke.getClass();
        return (KotlinType) objInvoke;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:97:0x0211  */
    public final SetBuilder c(TypeSubstitutor typeSubstitutor, List list, ErasureTypeAttributes erasureTypeAttributes) {
        Iterator it;
        SimpleType simpleType;
        KotlinType type;
        UnwrappedType unwrappedTypeD;
        KotlinType kotlinType;
        KotlinType type2;
        KotlinType type3;
        SetBuilder setBuilder = new SetBuilder();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            KotlinType kotlinType2 = (KotlinType) it2.next();
            ClassifierDescriptor classifierDescriptorY = kotlinType2.H0().y();
            boolean z = classifierDescriptorY instanceof ClassDescriptor;
            TypeParameterErasureOptions typeParameterErasureOptions = this.f74250b;
            if (z) {
                Set setC = erasureTypeAttributes.c();
                boolean z2 = typeParameterErasureOptions.f74246a;
                f74248e.getClass();
                UnwrappedType unwrappedTypeK0 = kotlinType2.K0();
                if (unwrappedTypeK0 instanceof FlexibleType) {
                    FlexibleType flexibleType = (FlexibleType) unwrappedTypeK0;
                    SimpleType simpleTypeD = flexibleType.f74193c;
                    if (simpleTypeD.H0().getParameters().isEmpty() || simpleTypeD.H0().y() == null) {
                        it = it2;
                    } else {
                        List parameters = simpleTypeD.H0().getParameters();
                        parameters.getClass();
                        List<TypeParameterDescriptor> list2 = parameters;
                        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                        for (TypeParameterDescriptor typeParameterDescriptor : list2) {
                            Iterator it3 = it2;
                            TypeProjection starProjectionImpl = (TypeProjection) CollectionsKt.G(typeParameterDescriptor.getIndex(), kotlinType2.F0());
                            if (!z2 || starProjectionImpl == null || (type3 = starProjectionImpl.getType()) == null || TypeUtilsKt.c(type3)) {
                                boolean z3 = setC != null && setC.contains(typeParameterDescriptor);
                                if (starProjectionImpl == null || z3) {
                                    starProjectionImpl = new StarProjectionImpl(typeParameterDescriptor);
                                } else {
                                    TypeSubstitution typeSubstitutionG = typeSubstitutor.g();
                                    KotlinType type4 = starProjectionImpl.getType();
                                    type4.getClass();
                                    if (typeSubstitutionG.d(type4) == null) {
                                        starProjectionImpl = new StarProjectionImpl(typeParameterDescriptor);
                                    } else {
                                        starProjectionImpl = starProjectionImpl;
                                    }
                                }
                            }
                            arrayList.add(starProjectionImpl);
                            it2 = it3;
                        }
                        it = it2;
                        simpleTypeD = TypeSubstitutionKt.d(simpleTypeD, arrayList, null, 2);
                    }
                    SimpleType simpleTypeD2 = flexibleType.d;
                    if (!simpleTypeD2.H0().getParameters().isEmpty() && simpleTypeD2.H0().y() != null) {
                        List parameters2 = simpleTypeD2.H0().getParameters();
                        parameters2.getClass();
                        List<TypeParameterDescriptor> list3 = parameters2;
                        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list3, 10));
                        for (TypeParameterDescriptor typeParameterDescriptor2 : list3) {
                            TypeProjection starProjectionImpl2 = (TypeProjection) CollectionsKt.G(typeParameterDescriptor2.getIndex(), kotlinType2.F0());
                            if (!z2 || starProjectionImpl2 == null || (type2 = starProjectionImpl2.getType()) == null || TypeUtilsKt.c(type2)) {
                                boolean z4 = setC != null && setC.contains(typeParameterDescriptor2);
                                if (starProjectionImpl2 == null || z4) {
                                    kotlinType = kotlinType2;
                                } else {
                                    TypeSubstitution typeSubstitutionG2 = typeSubstitutor.g();
                                    kotlinType = kotlinType2;
                                    KotlinType type5 = starProjectionImpl2.getType();
                                    type5.getClass();
                                    if (typeSubstitutionG2.d(type5) == null) {
                                    }
                                }
                                starProjectionImpl2 = new StarProjectionImpl(typeParameterDescriptor2);
                            } else {
                                kotlinType = kotlinType2;
                            }
                            arrayList2.add(starProjectionImpl2);
                            kotlinType2 = kotlinType;
                        }
                        simpleTypeD2 = TypeSubstitutionKt.d(simpleTypeD2, arrayList2, null, 2);
                    }
                    unwrappedTypeD = KotlinTypeFactory.a(simpleTypeD, simpleTypeD2);
                } else {
                    it = it2;
                    if (!(unwrappedTypeK0 instanceof SimpleType)) {
                        v40.g();
                        return null;
                    }
                    simpleType = (SimpleType) unwrappedTypeK0;
                    if (!simpleType.H0().getParameters().isEmpty() && simpleType.H0().y() != null) {
                        unwrappedTypeD = simpleType;
                        unwrappedTypeD = simpleType;
                        List parameters3 = simpleType.H0().getParameters();
                        parameters3.getClass();
                        List<TypeParameterDescriptor> list4 = parameters3;
                        ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list4, 10));
                        for (TypeParameterDescriptor typeParameterDescriptor3 : list4) {
                            TypeProjection starProjectionImpl3 = (TypeProjection) CollectionsKt.G(typeParameterDescriptor3.getIndex(), kotlinType2.F0());
                            if (!z2 || starProjectionImpl3 == null || (type = starProjectionImpl3.getType()) == null || TypeUtilsKt.c(type)) {
                                boolean z5 = setC != null && setC.contains(typeParameterDescriptor3);
                                if (starProjectionImpl3 == null || z5) {
                                    starProjectionImpl3 = new StarProjectionImpl(typeParameterDescriptor3);
                                } else {
                                    TypeSubstitution typeSubstitutionG3 = typeSubstitutor.g();
                                    KotlinType type6 = starProjectionImpl3.getType();
                                    type6.getClass();
                                    if (typeSubstitutionG3.d(type6) == null) {
                                        starProjectionImpl3 = new StarProjectionImpl(typeParameterDescriptor3);
                                    }
                                }
                            }
                            arrayList3.add(starProjectionImpl3);
                        }
                        unwrappedTypeD = TypeSubstitutionKt.d(simpleType, arrayList3, null, 2);
                    }
                }
                unwrappedTypeD = simpleType;
                unwrappedTypeD = simpleType;
                unwrappedTypeD = simpleType;
                setBuilder.add(typeSubstitutor.h(Variance.OUT_VARIANCE, TypeWithEnhancementKt.b(unwrappedTypeD, unwrappedTypeK0)));
            } else {
                it = it2;
                if (classifierDescriptorY instanceof TypeParameterDescriptor) {
                    Set setC2 = erasureTypeAttributes.c();
                    if (setC2 == null || !setC2.contains(classifierDescriptorY)) {
                        List upperBounds = ((TypeParameterDescriptor) classifierDescriptorY).getUpperBounds();
                        upperBounds.getClass();
                        setBuilder.addAll(c(typeSubstitutor, upperBounds, erasureTypeAttributes));
                    } else {
                        setBuilder.add(a(erasureTypeAttributes));
                    }
                }
            }
            if (!typeParameterErasureOptions.f74247b) {
                break;
            }
            it2 = it;
        }
        return SetsKt.a(setBuilder);
    }

    public /* synthetic */ TypeParameterUpperBoundEraser(ErasureProjectionComputer erasureProjectionComputer, TypeParameterErasureOptions typeParameterErasureOptions, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(erasureProjectionComputer, (i2 & 2) != 0 ? new TypeParameterErasureOptions(false, false) : typeParameterErasureOptions);
    }
}
