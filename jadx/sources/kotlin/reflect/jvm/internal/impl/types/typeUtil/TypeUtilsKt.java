package kotlin.reflect.jvm.internal.impl.types.typeUtil;

import defpackage.v40;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IndexedValue;
import kotlin.collections.IndexingIterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributesKt;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutionKt;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.TypeWithEnhancementKt;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;

/* JADX INFO: loaded from: classes4.dex */
public abstract class TypeUtilsKt {
    public static final boolean a(KotlinType kotlinType, TypeConstructor typeConstructor, Set set) {
        boolean zA;
        if (Intrinsics.c(kotlinType.H0(), typeConstructor)) {
            return true;
        }
        ClassifierDescriptor classifierDescriptorY = kotlinType.H0().y();
        ClassifierDescriptorWithTypeParameters classifierDescriptorWithTypeParameters = classifierDescriptorY instanceof ClassifierDescriptorWithTypeParameters ? (ClassifierDescriptorWithTypeParameters) classifierDescriptorY : null;
        List listP = classifierDescriptorWithTypeParameters != null ? classifierDescriptorWithTypeParameters.p() : null;
        Iterable iterableD0 = CollectionsKt.D0(kotlinType.F0());
        if (!(iterableD0 instanceof Collection) || !((Collection) iterableD0).isEmpty()) {
            Iterator it = iterableD0.iterator();
            do {
                IndexingIterator indexingIterator = (IndexingIterator) it;
                if (indexingIterator.f71774b.hasNext()) {
                    IndexedValue indexedValue = (IndexedValue) indexingIterator.next();
                    int i2 = indexedValue.f71771a;
                    TypeProjection typeProjection = (TypeProjection) indexedValue.f71772b;
                    TypeParameterDescriptor typeParameterDescriptor = listP != null ? (TypeParameterDescriptor) CollectionsKt.G(i2, listP) : null;
                    if ((typeParameterDescriptor == null || set == null || !set.contains(typeParameterDescriptor)) && !typeProjection.a()) {
                        KotlinType type = typeProjection.getType();
                        type.getClass();
                        zA = a(type, typeConstructor, set);
                    } else {
                        zA = false;
                    }
                }
            } while (!zA);
            return true;
        }
        return false;
    }

    public static final boolean b(KotlinType kotlinType) {
        kotlinType.getClass();
        TypeUtilsKt$$Lambda$2 typeUtilsKt$$Lambda$2 = new Function1() { // from class: kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt$$Lambda$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                UnwrappedType unwrappedType = (UnwrappedType) obj;
                unwrappedType.getClass();
                ClassifierDescriptor classifierDescriptorY = unwrappedType.H0().y();
                return Boolean.valueOf(classifierDescriptorY != null && (classifierDescriptorY instanceof TypeParameterDescriptor) && (((TypeParameterDescriptor) classifierDescriptorY).d() instanceof TypeAliasDescriptor));
            }
        };
        typeUtilsKt$$Lambda$2.getClass();
        return TypeUtils.c(kotlinType, typeUtilsKt$$Lambda$2);
    }

    public static final boolean c(KotlinType kotlinType) {
        return TypeUtils.c(kotlinType, new Function1() { // from class: kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt$$Lambda$0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(TypeUtils.h((UnwrappedType) obj));
            }
        });
    }

    public static final TypeProjectionImpl d(KotlinType kotlinType, Variance variance, TypeParameterDescriptor typeParameterDescriptor) {
        kotlinType.getClass();
        variance.getClass();
        if ((typeParameterDescriptor != null ? typeParameterDescriptor.l() : null) == variance) {
            variance = Variance.INVARIANT;
        }
        return new TypeProjectionImpl(variance, kotlinType);
    }

    public static final void e(KotlinType kotlinType, SimpleType simpleType, LinkedHashSet linkedHashSet, Set set) {
        ClassifierDescriptor classifierDescriptorY = kotlinType.H0().y();
        if (classifierDescriptorY instanceof TypeParameterDescriptor) {
            if (!Intrinsics.c(kotlinType.H0(), simpleType.H0())) {
                linkedHashSet.add(classifierDescriptorY);
                return;
            }
            for (KotlinType kotlinType2 : ((TypeParameterDescriptor) classifierDescriptorY).getUpperBounds()) {
                kotlinType2.getClass();
                e(kotlinType2, simpleType, linkedHashSet, set);
            }
            return;
        }
        ClassifierDescriptor classifierDescriptorY2 = kotlinType.H0().y();
        ClassifierDescriptorWithTypeParameters classifierDescriptorWithTypeParameters = classifierDescriptorY2 instanceof ClassifierDescriptorWithTypeParameters ? (ClassifierDescriptorWithTypeParameters) classifierDescriptorY2 : null;
        List listP = classifierDescriptorWithTypeParameters != null ? classifierDescriptorWithTypeParameters.p() : null;
        int i2 = 0;
        for (TypeProjection typeProjection : kotlinType.F0()) {
            int i3 = i2 + 1;
            TypeParameterDescriptor typeParameterDescriptor = listP != null ? (TypeParameterDescriptor) CollectionsKt.G(i2, listP) : null;
            if ((typeParameterDescriptor == null || set == null || !set.contains(typeParameterDescriptor)) && !typeProjection.a() && !CollectionsKt.u(linkedHashSet, typeProjection.getType().H0().y()) && !Intrinsics.c(typeProjection.getType().H0(), simpleType.H0())) {
                KotlinType type = typeProjection.getType();
                type.getClass();
                e(type, simpleType, linkedHashSet, set);
            }
            i2 = i3;
        }
    }

    public static final KotlinBuiltIns f(KotlinType kotlinType) {
        kotlinType.getClass();
        KotlinBuiltIns kotlinBuiltInsG = kotlinType.H0().g();
        kotlinBuiltInsG.getClass();
        return kotlinBuiltInsG;
    }

    public static final KotlinType g(TypeParameterDescriptor typeParameterDescriptor) {
        Object obj;
        typeParameterDescriptor.getClass();
        List upperBounds = typeParameterDescriptor.getUpperBounds();
        upperBounds.getClass();
        upperBounds.isEmpty();
        List upperBounds2 = typeParameterDescriptor.getUpperBounds();
        upperBounds2.getClass();
        Iterator it = upperBounds2.iterator();
        while (true) {
            obj = null;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            ClassifierDescriptor classifierDescriptorY = ((KotlinType) next).H0().y();
            ClassDescriptor classDescriptor = classifierDescriptorY instanceof ClassDescriptor ? (ClassDescriptor) classifierDescriptorY : null;
            if (classDescriptor != null && classDescriptor.e() != ClassKind.INTERFACE && classDescriptor.e() != ClassKind.ANNOTATION_CLASS) {
                obj = next;
                break;
            }
        }
        KotlinType kotlinType = (KotlinType) obj;
        if (kotlinType != null) {
            return kotlinType;
        }
        List upperBounds3 = typeParameterDescriptor.getUpperBounds();
        upperBounds3.getClass();
        Object objB = CollectionsKt.B(upperBounds3);
        objB.getClass();
        return (KotlinType) objB;
    }

    public static final boolean h(TypeParameterDescriptor typeParameterDescriptor, TypeConstructor typeConstructor, Set set) {
        typeParameterDescriptor.getClass();
        List upperBounds = typeParameterDescriptor.getUpperBounds();
        upperBounds.getClass();
        List<KotlinType> list = upperBounds;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        for (KotlinType kotlinType : list) {
            kotlinType.getClass();
            if (a(kotlinType, typeParameterDescriptor.o().H0(), set) && (typeConstructor == null || Intrinsics.c(kotlinType.H0(), typeConstructor))) {
                return true;
            }
        }
        return false;
    }

    public static final KotlinType i(KotlinType kotlinType, Annotations annotations) {
        kotlinType.getClass();
        return (kotlinType.getAnnotations().isEmpty() && annotations.isEmpty()) ? kotlinType : kotlinType.K0().N0(TypeAttributesKt.a(kotlinType.G0(), annotations));
    }

    public static final UnwrappedType j(KotlinType kotlinType) {
        SimpleType simpleType;
        UnwrappedType unwrappedTypeD;
        kotlinType.getClass();
        UnwrappedType unwrappedTypeK0 = kotlinType.K0();
        if (unwrappedTypeK0 instanceof FlexibleType) {
            FlexibleType flexibleType = (FlexibleType) unwrappedTypeK0;
            SimpleType simpleTypeD = flexibleType.f74193c;
            if (!simpleTypeD.H0().getParameters().isEmpty() && simpleTypeD.H0().y() != null) {
                List parameters = simpleTypeD.H0().getParameters();
                parameters.getClass();
                List list = parameters;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(new StarProjectionImpl((TypeParameterDescriptor) it.next()));
                }
                simpleTypeD = TypeSubstitutionKt.d(simpleTypeD, arrayList, null, 2);
            }
            SimpleType simpleTypeD2 = flexibleType.d;
            if (!simpleTypeD2.H0().getParameters().isEmpty() && simpleTypeD2.H0().y() != null) {
                List parameters2 = simpleTypeD2.H0().getParameters();
                parameters2.getClass();
                List list2 = parameters2;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
                Iterator it2 = list2.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(new StarProjectionImpl((TypeParameterDescriptor) it2.next()));
                }
                simpleTypeD2 = TypeSubstitutionKt.d(simpleTypeD2, arrayList2, null, 2);
            }
            unwrappedTypeD = KotlinTypeFactory.a(simpleTypeD, simpleTypeD2);
        } else {
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
                List list3 = parameters3;
                ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list3, 10));
                Iterator it3 = list3.iterator();
                while (it3.hasNext()) {
                    arrayList3.add(new StarProjectionImpl((TypeParameterDescriptor) it3.next()));
                }
                unwrappedTypeD = TypeSubstitutionKt.d(simpleType, arrayList3, null, 2);
            }
        }
        unwrappedTypeD = simpleType;
        unwrappedTypeD = simpleType;
        unwrappedTypeD = simpleType;
        return TypeWithEnhancementKt.b(unwrappedTypeD, unwrappedTypeK0);
    }

    public static final boolean k(SimpleType simpleType) {
        TypeUtilsKt$$Lambda$4 typeUtilsKt$$Lambda$4 = new Function1() { // from class: kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt$$Lambda$4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                UnwrappedType unwrappedType = (UnwrappedType) obj;
                unwrappedType.getClass();
                ClassifierDescriptor classifierDescriptorY = unwrappedType.H0().y();
                return Boolean.valueOf(classifierDescriptorY != null && ((classifierDescriptorY instanceof TypeAliasDescriptor) || (classifierDescriptorY instanceof TypeParameterDescriptor)));
            }
        };
        typeUtilsKt$$Lambda$4.getClass();
        return TypeUtils.c(simpleType, typeUtilsKt$$Lambda$4);
    }
}
