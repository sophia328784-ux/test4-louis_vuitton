package kotlin.reflect.jvm.internal.impl.types;

import defpackage.bm;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class TypeAliasExpander {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f74224c = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TypeAliasExpansionReportStrategy f74225a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f74226b;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new TypeAliasExpander(TypeAliasExpansionReportStrategy.DO_NOTHING.f74231a, false);
    }

    public TypeAliasExpander(TypeAliasExpansionReportStrategy typeAliasExpansionReportStrategy, boolean z) {
        typeAliasExpansionReportStrategy.getClass();
        this.f74225a = typeAliasExpansionReportStrategy;
        this.f74226b = z;
    }

    public static TypeAttributes b(UnwrappedType unwrappedType, TypeAttributes typeAttributes) {
        AnnotationsTypeAttribute annotationsTypeAttributeA;
        if (KotlinTypeKt.a(unwrappedType)) {
            return unwrappedType.G0();
        }
        TypeAttributes typeAttributesG0 = unwrappedType.G0();
        typeAttributes.getClass();
        TypeAttributes.Companion companion = TypeAttributes.f74232c;
        typeAttributesG0.getClass();
        if (typeAttributes.isEmpty() && typeAttributesG0.isEmpty()) {
            return typeAttributes;
        }
        ArrayList arrayList = new ArrayList();
        Collection collectionValues = companion.f74374a.values();
        collectionValues.getClass();
        Iterator it = collectionValues.iterator();
        while (it.hasNext()) {
            int iIntValue = ((Number) it.next()).intValue();
            TypeAttribute typeAttribute = (TypeAttribute) typeAttributes.f74330b.get(iIntValue);
            TypeAttribute typeAttribute2 = (TypeAttribute) typeAttributesG0.f74330b.get(iIntValue);
            if (typeAttribute == null) {
                annotationsTypeAttributeA = typeAttribute2 != null ? typeAttribute2.a(typeAttribute) : null;
            } else {
                annotationsTypeAttributeA = typeAttribute.a(typeAttribute2);
            }
            if (annotationsTypeAttributeA != null) {
                arrayList.add(annotationsTypeAttributeA);
            }
        }
        return TypeAttributes.Companion.c(arrayList);
    }

    public final void a(Annotations annotations, Annotations annotations2) {
        HashSet hashSet = new HashSet();
        Iterator<AnnotationDescriptor> it = annotations.iterator();
        while (it.hasNext()) {
            hashSet.add(it.next().c());
        }
        for (AnnotationDescriptor annotationDescriptor : annotations2) {
            if (hashSet.contains(annotationDescriptor.c())) {
                this.f74225a.d(annotationDescriptor);
            }
        }
    }

    public final SimpleType c(TypeAliasExpansion typeAliasExpansion, TypeAttributes typeAttributes, boolean z, int i2, boolean z2) {
        Variance variance = Variance.INVARIANT;
        TypeAliasDescriptor typeAliasDescriptor = typeAliasExpansion.f74229b;
        TypeProjection typeProjectionD = d(new TypeProjectionImpl(variance, typeAliasDescriptor.m0()), typeAliasExpansion, null, i2);
        KotlinType type = typeProjectionD.getType();
        type.getClass();
        SimpleType simpleTypeA = TypeSubstitutionKt.a(type);
        if (KotlinTypeKt.a(simpleTypeA)) {
            return simpleTypeA;
        }
        typeProjectionD.b();
        a(simpleTypeA.getAnnotations(), AnnotationsTypeAttributeKt.a(typeAttributes));
        if (!KotlinTypeKt.a(simpleTypeA)) {
            simpleTypeA = TypeSubstitutionKt.d(simpleTypeA, null, b(simpleTypeA, typeAttributes), 1);
        }
        SimpleType simpleTypeK = TypeUtils.k(simpleTypeA, z);
        if (!z2) {
            return simpleTypeK;
        }
        TypeConstructor typeConstructorJ = typeAliasDescriptor.j();
        typeConstructorJ.getClass();
        return SpecialTypesKt.c(simpleTypeK, KotlinTypeFactory.f(typeConstructorJ, typeAliasExpansion.f74230c, typeAttributes, z, MemberScope.Empty.f73933b));
    }

    public final TypeProjection d(TypeProjection typeProjection, TypeAliasExpansion typeAliasExpansion, TypeParameterDescriptor typeParameterDescriptor, int i2) {
        Variance varianceL;
        KotlinType dynamicType;
        Variance variance;
        Variance variance2;
        TypeAliasDescriptor typeAliasDescriptor = typeAliasExpansion.f74229b;
        f74224c.getClass();
        if (i2 > 100) {
            bm.d(typeAliasDescriptor.getName(), "Too deep recursion while expanding type alias ");
            return null;
        }
        if (typeProjection.a()) {
            typeParameterDescriptor.getClass();
            return TypeUtils.l(typeParameterDescriptor);
        }
        KotlinType type = typeProjection.getType();
        type.getClass();
        TypeConstructor typeConstructorH0 = type.H0();
        typeConstructorH0.getClass();
        ClassifierDescriptor classifierDescriptorY = typeConstructorH0.y();
        TypeProjection typeProjection2 = classifierDescriptorY instanceof TypeParameterDescriptor ? (TypeProjection) typeAliasExpansion.d.get(classifierDescriptorY) : null;
        TypeAliasExpansionReportStrategy typeAliasExpansionReportStrategy = this.f74225a;
        if (typeProjection2 != null) {
            if (typeProjection2.a()) {
                typeParameterDescriptor.getClass();
                return TypeUtils.l(typeParameterDescriptor);
            }
            UnwrappedType unwrappedTypeK0 = typeProjection2.getType().K0();
            Variance varianceB = typeProjection2.b();
            varianceB.getClass();
            Variance varianceB2 = typeProjection.b();
            varianceB2.getClass();
            if (varianceB2 != varianceB && varianceB2 != (variance2 = Variance.INVARIANT)) {
                if (varianceB == variance2) {
                    varianceB = varianceB2;
                } else {
                    typeAliasExpansionReportStrategy.a(typeAliasDescriptor, unwrappedTypeK0);
                }
            }
            if (typeParameterDescriptor == null || (varianceL = typeParameterDescriptor.l()) == null) {
                varianceL = Variance.INVARIANT;
            }
            if (varianceL != varianceB && varianceL != (variance = Variance.INVARIANT)) {
                if (varianceB == variance) {
                    varianceB = variance;
                } else {
                    typeAliasExpansionReportStrategy.a(typeAliasDescriptor, unwrappedTypeK0);
                }
            }
            a(type.getAnnotations(), unwrappedTypeK0.getAnnotations());
            if (unwrappedTypeK0 instanceof DynamicType) {
                DynamicType dynamicType2 = (DynamicType) unwrappedTypeK0;
                TypeAttributes typeAttributesB = b(dynamicType2, type.G0());
                typeAttributesB.getClass();
                dynamicType = new DynamicType(TypeUtilsKt.f(dynamicType2.d), typeAttributesB);
            } else {
                SimpleType simpleTypeK = TypeUtils.k(TypeSubstitutionKt.a(unwrappedTypeK0), type.I0());
                TypeAttributes typeAttributesG0 = type.G0();
                if (!KotlinTypeKt.a(simpleTypeK)) {
                    simpleTypeK = TypeSubstitutionKt.d(simpleTypeK, null, b(simpleTypeK, typeAttributesG0), 1);
                }
                dynamicType = simpleTypeK;
            }
            return new TypeProjectionImpl(varianceB, dynamicType);
        }
        UnwrappedType unwrappedTypeK1 = typeProjection.getType().K0();
        if (!(unwrappedTypeK1 instanceof DynamicType)) {
            SimpleType simpleTypeA = TypeSubstitutionKt.a(unwrappedTypeK1);
            if (!KotlinTypeKt.a(simpleTypeA) && TypeUtilsKt.k(simpleTypeA)) {
                TypeConstructor typeConstructorH1 = simpleTypeA.H0();
                ClassifierDescriptor classifierDescriptorY2 = typeConstructorH1.y();
                typeConstructorH1.getParameters().size();
                simpleTypeA.F0().size();
                if (!(classifierDescriptorY2 instanceof TypeParameterDescriptor)) {
                    int i3 = 0;
                    if (classifierDescriptorY2 instanceof TypeAliasDescriptor) {
                        TypeAliasDescriptor typeAliasDescriptor2 = (TypeAliasDescriptor) classifierDescriptorY2;
                        if (typeAliasExpansion.a(typeAliasDescriptor2)) {
                            typeAliasExpansionReportStrategy.c(typeAliasDescriptor2);
                            Variance variance3 = Variance.INVARIANT;
                            ErrorTypeKind errorTypeKind = ErrorTypeKind.RECURSIVE_TYPE_ALIAS;
                            String str = typeAliasDescriptor2.getName().f73687b;
                            str.getClass();
                            return new TypeProjectionImpl(variance3, ErrorUtils.c(errorTypeKind, str));
                        }
                        List listF0 = simpleTypeA.F0();
                        ArrayList arrayList = new ArrayList(CollectionsKt.t(listF0, 10));
                        for (Object obj : listF0) {
                            int i4 = i3 + 1;
                            if (i3 < 0) {
                                CollectionsKt.t0();
                                throw null;
                            }
                            arrayList.add(d((TypeProjection) obj, typeAliasExpansion, (TypeParameterDescriptor) typeConstructorH1.getParameters().get(i3), i2 + 1));
                            i3 = i4;
                        }
                        TypeAliasExpansion.f74227e.getClass();
                        SimpleType simpleTypeC = c(TypeAliasExpansion.Companion.a(typeAliasExpansion, typeAliasDescriptor2, arrayList), simpleTypeA.G0(), simpleTypeA.I0(), i2 + 1, false);
                        SimpleType simpleTypeE = e(simpleTypeA, typeAliasExpansion, i2);
                        simpleTypeC.getClass();
                        return new TypeProjectionImpl(typeProjection.b(), SpecialTypesKt.c(simpleTypeC, simpleTypeE));
                    }
                    SimpleType simpleTypeE2 = e(simpleTypeA, typeAliasExpansion, i2);
                    TypeSubstitutor typeSubstitutorD = TypeSubstitutor.d(simpleTypeE2);
                    for (Object obj2 : simpleTypeE2.F0()) {
                        int i5 = i3 + 1;
                        if (i3 < 0) {
                            CollectionsKt.t0();
                            throw null;
                        }
                        TypeProjection typeProjection3 = (TypeProjection) obj2;
                        if (!typeProjection3.a()) {
                            KotlinType type2 = typeProjection3.getType();
                            type2.getClass();
                            if (!TypeUtilsKt.b(type2)) {
                                TypeProjection typeProjection4 = (TypeProjection) simpleTypeA.F0().get(i3);
                                TypeParameterDescriptor typeParameterDescriptor2 = (TypeParameterDescriptor) simpleTypeA.H0().getParameters().get(i3);
                                if (this.f74226b) {
                                    KotlinType type3 = typeProjection4.getType();
                                    type3.getClass();
                                    KotlinType type4 = typeProjection3.getType();
                                    type4.getClass();
                                    typeParameterDescriptor2.getClass();
                                    typeAliasExpansionReportStrategy.b(typeSubstitutorD, type3, type4, typeParameterDescriptor2);
                                }
                            }
                        }
                        i3 = i5;
                    }
                    return new TypeProjectionImpl(typeProjection.b(), simpleTypeE2);
                }
            }
        }
        return typeProjection;
    }

    public final SimpleType e(SimpleType simpleType, TypeAliasExpansion typeAliasExpansion, int i2) {
        TypeConstructor typeConstructorH0 = simpleType.H0();
        List listF0 = simpleType.F0();
        ArrayList arrayList = new ArrayList(CollectionsKt.t(listF0, 10));
        int i3 = 0;
        for (Object obj : listF0) {
            int i4 = i3 + 1;
            if (i3 < 0) {
                CollectionsKt.t0();
                throw null;
            }
            TypeProjection typeProjection = (TypeProjection) obj;
            TypeProjection typeProjectionD = d(typeProjection, typeAliasExpansion, (TypeParameterDescriptor) typeConstructorH0.getParameters().get(i3), i2 + 1);
            if (!typeProjectionD.a()) {
                typeProjectionD = new TypeProjectionImpl(typeProjectionD.b(), TypeUtils.j(typeProjectionD.getType(), typeProjection.getType().I0()));
            }
            arrayList.add(typeProjectionD);
            i3 = i4;
        }
        return TypeSubstitutionKt.d(simpleType, arrayList, null, 2);
    }
}
