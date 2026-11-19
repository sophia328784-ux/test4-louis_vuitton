package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import defpackage.a61;
import defpackage.b21;
import defpackage.bm;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IndexedValue;
import kotlin.collections.IndexingIterable;
import kotlin.collections.IndexingIterator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMap;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMapper;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.CompositeAnnotations;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaType;
import kotlin.reflect.jvm.internal.impl.load.java.JavaNullabilityAnnotationSettingsKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotations;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaResolverContext;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.TypeParameterResolver;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaTypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaArrayType;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClassifier;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClassifierType;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaPrimitiveType;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaType;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaTypeParameter;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaWildcardType;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.types.DefaultTypeAttributeTranslator;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.LazyWrappedType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeParameterUpperBoundEraser;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionBase;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeUsage;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.sequences.FilteringSequence;

/* JADX INFO: loaded from: classes4.dex */
public final class JavaTypeResolver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LazyJavaResolverContext f73073a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TypeParameterResolver f73074b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RawProjectionComputer f73075c;
    public final TypeParameterUpperBoundEraser d;

    /* JADX WARN: Multi-variable type inference failed */
    public JavaTypeResolver(LazyJavaResolverContext lazyJavaResolverContext, TypeParameterResolver typeParameterResolver) {
        lazyJavaResolverContext.getClass();
        typeParameterResolver.getClass();
        this.f73073a = lazyJavaResolverContext;
        this.f73074b = typeParameterResolver;
        RawProjectionComputer rawProjectionComputer = new RawProjectionComputer();
        this.f73075c = rawProjectionComputer;
        this.d = new TypeParameterUpperBoundEraser(rawProjectionComputer, null, 2, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:84:0x0139  */
    public final SimpleType a(final JavaClassifierType javaClassifierType, final JavaTypeAttributes javaTypeAttributes, SimpleType simpleType) {
        TypeAttributes typeAttributesA;
        TypeConstructor typeConstructorJ;
        TypeConstructor typeConstructor;
        KotlinTypeRefiner kotlinTypeRefiner;
        boolean z;
        TypeConstructor typeConstructor2;
        TypeProjectionBase typeProjectionImpl;
        boolean z2;
        Object next;
        List listY0;
        JavaTypeResolver javaTypeResolver;
        TypeConstructor typeConstructor3;
        TypeProjection typeProjectionA;
        ClassDescriptor classDescriptorC;
        Variance varianceL;
        final JavaTypeResolver javaTypeResolver2 = this;
        JavaTypeAttributes javaTypeAttributes2 = javaTypeAttributes;
        TypeUsage typeUsage = javaTypeAttributes2.d;
        JavaTypeFlexibility javaTypeFlexibility = javaTypeAttributes2.f73069e;
        boolean z3 = javaTypeAttributes2.g;
        if (simpleType == null || (typeAttributesA = simpleType.G0()) == null) {
            typeAttributesA = DefaultTypeAttributeTranslator.f74181a.a(new LazyJavaAnnotations(javaTypeResolver2.f73073a, javaClassifierType, false, 4, null));
        }
        JavaClassifier javaClassifierA = javaClassifierType.a();
        LazyJavaTypeParameterDescriptor lazyJavaTypeParameterDescriptor = null;
        if (javaClassifierA == null) {
            b(javaClassifierType);
            throw null;
        }
        boolean z4 = javaClassifierA instanceof JavaClass;
        LazyJavaResolverContext lazyJavaResolverContext = javaTypeResolver2.f73073a;
        if (z4) {
            JavaClass javaClass = (JavaClass) javaClassifierA;
            FqName fqNameC = javaClass.c();
            if (fqNameC == null) {
                bm.d(javaClassifierA, "Class type should have a FQ name: ");
                return null;
            }
            if (z3 && fqNameC.equals(JavaTypeResolverKt.f73080a)) {
                classDescriptorC = lazyJavaResolverContext.f72962a.p.a();
            } else {
                classDescriptorC = JavaToKotlinClassMapper.c(fqNameC, lazyJavaResolverContext.f72962a.o.g());
                if (classDescriptorC == null) {
                    classDescriptorC = null;
                } else {
                    String str = JavaToKotlinClassMap.f72305a;
                    if (JavaToKotlinClassMap.f72313k.containsKey(DescriptorUtils.f(classDescriptorC))) {
                        if (javaTypeFlexibility == JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND || typeUsage == TypeUsage.SUPERTYPE) {
                            classDescriptorC = JavaToKotlinClassMapper.a(classDescriptorC);
                        } else {
                            JavaType javaType = (JavaType) CollectionsKt.N(javaClassifierType.v());
                            JavaWildcardType javaWildcardType = javaType instanceof JavaWildcardType ? (JavaWildcardType) javaType : null;
                            if (javaWildcardType != null && javaWildcardType.p() != null && !javaWildcardType.F()) {
                                List parameters = JavaToKotlinClassMapper.a(classDescriptorC).j().getParameters();
                                parameters.getClass();
                                TypeParameterDescriptor typeParameterDescriptor = (TypeParameterDescriptor) CollectionsKt.N(parameters);
                                if (typeParameterDescriptor != null && (varianceL = typeParameterDescriptor.l()) != null && varianceL != Variance.OUT_VARIANCE) {
                                    classDescriptorC = JavaToKotlinClassMapper.a(classDescriptorC);
                                }
                            }
                        }
                    }
                }
            }
            if (classDescriptorC == null) {
                classDescriptorC = lazyJavaResolverContext.f72962a.f72952k.a(javaClass);
            }
            if (classDescriptorC == null || (typeConstructorJ = classDescriptorC.j()) == null) {
                b(javaClassifierType);
                throw null;
            }
        } else {
            if (!(javaClassifierA instanceof JavaTypeParameter)) {
                a61.q(javaClassifierA, "Unknown classifier kind: ");
                return null;
            }
            TypeParameterDescriptor typeParameterDescriptorA = javaTypeResolver2.f73074b.a((JavaTypeParameter) javaClassifierA);
            typeConstructorJ = typeParameterDescriptorA != null ? typeParameterDescriptorA.j() : null;
        }
        if (typeConstructorJ == null) {
            return null;
        }
        boolean z5 = false;
        boolean z6 = true;
        boolean z7 = (javaTypeFlexibility == JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND || z3 || typeUsage == TypeUsage.SUPERTYPE) ? false : true;
        if (Intrinsics.c(simpleType != null ? simpleType.H0() : null, typeConstructorJ) && !javaClassifierType.q() && z7) {
            return simpleType.L0(true);
        }
        if (!javaClassifierType.q()) {
            if (javaClassifierType.v().isEmpty()) {
                List parameters2 = typeConstructorJ.getParameters();
                parameters2.getClass();
                if (parameters2.isEmpty()) {
                    z6 = false;
                }
            } else {
                z6 = false;
            }
        }
        List parameters3 = typeConstructorJ.getParameters();
        parameters3.getClass();
        if (!z6) {
            TypeConstructor typeConstructor4 = typeConstructorJ;
            if (parameters3.size() == javaClassifierType.v().size()) {
                IndexingIterable indexingIterableD0 = CollectionsKt.D0(javaClassifierType.v());
                ArrayList arrayList = new ArrayList(CollectionsKt.t(indexingIterableD0, 10));
                Iterator it = indexingIterableD0.iterator();
                while (true) {
                    IndexingIterator indexingIterator = (IndexingIterator) it;
                    if (!indexingIterator.f71774b.hasNext()) {
                        typeConstructor = typeConstructor4;
                        kotlinTypeRefiner = null;
                        listY0 = CollectionsKt.y0(arrayList);
                        break;
                    }
                    IndexedValue indexedValue = (IndexedValue) indexingIterator.next();
                    int i2 = indexedValue.f71771a;
                    JavaType javaType2 = (JavaType) indexedValue.f71772b;
                    parameters3.size();
                    TypeParameterDescriptor typeParameterDescriptor2 = (TypeParameterDescriptor) parameters3.get(i2);
                    JavaTypeAttributes javaTypeAttributesA = JavaTypeAttributesKt.a(TypeUsage.COMMON, z5, lazyJavaTypeParameterDescriptor, 7);
                    typeParameterDescriptor2.getClass();
                    if (javaType2 instanceof JavaWildcardType) {
                        JavaWildcardType javaWildcardType2 = (JavaWildcardType) javaType2;
                        ReflectJavaType reflectJavaTypeP = javaWildcardType2.p();
                        Variance variance = javaWildcardType2.F() ? Variance.OUT_VARIANCE : Variance.IN_VARIANCE;
                        if (reflectJavaTypeP != null) {
                            if (typeParameterDescriptor2.l() == Variance.INVARIANT || variance == typeParameterDescriptor2.l()) {
                                lazyJavaResolverContext.getClass();
                                if (javaWildcardType2.p() == null) {
                                    md.n("Nullability annotations on unbounded wildcards aren't supported");
                                    return null;
                                }
                                Variance variance2 = variance;
                                TypeConstructor typeConstructor5 = typeConstructor4;
                                int i3 = 0;
                                Iterator<AnnotationDescriptor> it2 = new LazyJavaAnnotations(lazyJavaResolverContext, javaWildcardType2, false, 4, null).iterator();
                                while (true) {
                                    FilteringSequence.AnonymousClass1 anonymousClass1 = (FilteringSequence.AnonymousClass1) it2;
                                    if (!anonymousClass1.hasNext()) {
                                        next = null;
                                        break;
                                    }
                                    next = anonymousClass1.next();
                                    AnnotationDescriptor annotationDescriptor = (AnnotationDescriptor) next;
                                    FqName[] fqNameArr = JavaNullabilityAnnotationSettingsKt.f72851b;
                                    int length = fqNameArr.length;
                                    int i4 = i3;
                                    while (i4 < length) {
                                        if (Intrinsics.c(annotationDescriptor.c(), fqNameArr[i4])) {
                                            break;
                                        }
                                        i4++;
                                        i3 = 0;
                                    }
                                }
                                AnnotationDescriptor annotationDescriptor2 = (AnnotationDescriptor) next;
                                z2 = false;
                                KotlinType kotlinTypeD = javaTypeResolver2.d(reflectJavaTypeP, JavaTypeAttributesKt.a(TypeUsage.COMMON, false, null, 7));
                                if (annotationDescriptor2 != null) {
                                    kotlinTypeD = TypeUtilsKt.i(kotlinTypeD, Annotations.Companion.a(CollectionsKt.W(kotlinTypeD.getAnnotations(), annotationDescriptor2)));
                                }
                                typeProjectionImpl = TypeUtilsKt.d(kotlinTypeD, variance2, typeParameterDescriptor2);
                                typeConstructor2 = typeConstructor5;
                            } else {
                                z2 = false;
                            }
                            z = z2;
                        } else {
                            z2 = z5;
                        }
                        typeConstructor2 = typeConstructor4;
                        typeProjectionImpl = TypeUtils.m(typeParameterDescriptor2, javaTypeAttributesA);
                        z = z2;
                    } else {
                        it = it;
                        z = z5;
                        typeConstructor2 = typeConstructor4;
                        typeProjectionImpl = new TypeProjectionImpl(Variance.INVARIANT, javaTypeResolver2.d(javaType2, javaTypeAttributesA));
                    }
                    arrayList.add(typeProjectionImpl);
                    it = it;
                    typeConstructor4 = typeConstructor2;
                    z5 = z;
                    lazyJavaTypeParameterDescriptor = null;
                }
            } else {
                List<TypeParameterDescriptor> list = parameters3;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list, 10));
                for (TypeParameterDescriptor typeParameterDescriptor3 : list) {
                    ErrorTypeKind errorTypeKind = ErrorTypeKind.MISSED_TYPE_ARGUMENT_FOR_TYPE_PARAMETER;
                    String strB = typeParameterDescriptor3.getName().b();
                    strB.getClass();
                    arrayList2.add(new TypeProjectionImpl(ErrorUtils.c(errorTypeKind, strB)));
                }
                List listY1 = CollectionsKt.y0(arrayList2);
                kotlinTypeRefiner = null;
                typeConstructor = typeConstructor4;
                listY0 = listY1;
            }
        } else {
            List<TypeParameterDescriptor> list2 = parameters3;
            ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list2, 10));
            for (final TypeParameterDescriptor typeParameterDescriptor4 : list2) {
                if (TypeUtilsKt.h(typeParameterDescriptor4, null, javaTypeAttributes2.f73071h)) {
                    typeProjectionA = TypeUtils.m(typeParameterDescriptor4, javaTypeAttributes2);
                    typeConstructor3 = typeConstructorJ;
                    javaTypeResolver = javaTypeResolver2;
                } else {
                    final TypeConstructor typeConstructor6 = typeConstructorJ;
                    javaTypeResolver = javaTypeResolver2;
                    typeConstructor3 = typeConstructor6;
                    typeProjectionA = javaTypeResolver.f73075c.a(typeParameterDescriptor4, JavaTypeAttributes.e(javaTypeAttributes, null, javaClassifierType.q(), null, null, 59), javaTypeResolver.d, new LazyWrappedType(lazyJavaResolverContext.f72962a.f72944a, new Function0(javaTypeResolver2, typeParameterDescriptor4, javaTypeAttributes, typeConstructor6, javaClassifierType) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolver$$Lambda$0

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public final JavaTypeResolver f73076b;

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public final TypeParameterDescriptor f73077c;
                        public final JavaTypeAttributes d;

                        /* JADX INFO: renamed from: e, reason: collision with root package name */
                        public final TypeConstructor f73078e;

                        /* JADX INFO: renamed from: f, reason: collision with root package name */
                        public final JavaClassifierType f73079f;

                        {
                            this.f73076b = javaTypeResolver2;
                            this.f73077c = typeParameterDescriptor4;
                            this.d = javaTypeAttributes;
                            this.f73078e = typeConstructor6;
                            this.f73079f = javaClassifierType;
                        }

                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            TypeParameterUpperBoundEraser typeParameterUpperBoundEraser = this.f73076b.d;
                            ClassifierDescriptor classifierDescriptorY = this.f73078e.y();
                            SimpleType simpleTypeO = classifierDescriptorY != null ? classifierDescriptorY.o() : null;
                            JavaTypeAttributes javaTypeAttributes3 = this.d;
                            javaTypeAttributes3.getClass();
                            return typeParameterUpperBoundEraser.b(this.f73077c, JavaTypeAttributes.e(JavaTypeAttributes.e(javaTypeAttributes3, null, false, null, simpleTypeO, 31), null, this.f73079f.q(), null, null, 59));
                        }
                    }));
                }
                arrayList3.add(typeProjectionA);
                javaTypeAttributes2 = javaTypeAttributes;
                javaTypeResolver2 = javaTypeResolver;
                typeConstructorJ = typeConstructor3;
            }
            typeConstructor = typeConstructorJ;
            kotlinTypeRefiner = null;
            listY0 = arrayList3;
        }
        return KotlinTypeFactory.d(typeAttributesA, typeConstructor, listY0, z7, kotlinTypeRefiner);
    }

    public final TypeConstructor b(JavaClassifierType javaClassifierType) {
        ClassId.Companion companion = ClassId.d;
        javaClassifierType.C();
        throw null;
    }

    public final UnwrappedType c(JavaArrayType javaArrayType, JavaTypeAttributes javaTypeAttributes, boolean z) {
        boolean z2 = javaTypeAttributes.g;
        javaArrayType.getClass();
        JavaType javaTypeX = javaArrayType.x();
        JavaPrimitiveType javaPrimitiveType = javaTypeX instanceof JavaPrimitiveType ? (JavaPrimitiveType) javaTypeX : null;
        PrimitiveType type = javaPrimitiveType != null ? javaPrimitiveType.getType() : null;
        LazyJavaResolverContext lazyJavaResolverContext = this.f73073a;
        LazyJavaAnnotations lazyJavaAnnotations = new LazyJavaAnnotations(lazyJavaResolverContext, javaArrayType, true);
        if (type == null) {
            KotlinType kotlinTypeD = d(javaTypeX, JavaTypeAttributesKt.a(TypeUsage.COMMON, z2, null, 6));
            if (z2) {
                return lazyJavaResolverContext.f72962a.o.g().i(z ? Variance.OUT_VARIANCE : Variance.INVARIANT, kotlinTypeD, lazyJavaAnnotations);
            }
            return KotlinTypeFactory.a(lazyJavaResolverContext.f72962a.o.g().i(Variance.INVARIANT, kotlinTypeD, lazyJavaAnnotations), lazyJavaResolverContext.f72962a.o.g().i(Variance.OUT_VARIANCE, kotlinTypeD, lazyJavaAnnotations).L0(true));
        }
        SimpleType simpleTypeR = lazyJavaResolverContext.f72962a.o.g().r(type);
        KotlinType kotlinTypeI = TypeUtilsKt.i(simpleTypeR, new CompositeAnnotations(simpleTypeR.getAnnotations(), lazyJavaAnnotations));
        kotlinTypeI.getClass();
        SimpleType simpleType = (SimpleType) kotlinTypeI;
        return z2 ? simpleType : KotlinTypeFactory.a(simpleType, simpleType.L0(true));
    }

    public final KotlinType d(JavaType javaType, JavaTypeAttributes javaTypeAttributes) {
        KotlinType kotlinTypeD;
        SimpleType simpleTypeA;
        boolean z = javaType instanceof JavaPrimitiveType;
        LazyJavaResolverContext lazyJavaResolverContext = this.f73073a;
        if (z) {
            PrimitiveType type = ((JavaPrimitiveType) javaType).getType();
            SimpleType simpleTypeT = type != null ? lazyJavaResolverContext.f72962a.o.g().t(type) : lazyJavaResolverContext.f72962a.o.g().x();
            simpleTypeT.getClass();
            return simpleTypeT;
        }
        boolean z2 = false;
        if (!(javaType instanceof JavaClassifierType)) {
            if (javaType instanceof JavaArrayType) {
                return c((JavaArrayType) javaType, javaTypeAttributes, false);
            }
            if (javaType instanceof JavaWildcardType) {
                ReflectJavaType reflectJavaTypeP = ((JavaWildcardType) javaType).p();
                return (reflectJavaTypeP == null || (kotlinTypeD = d(reflectJavaTypeP, javaTypeAttributes)) == null) ? lazyJavaResolverContext.f72962a.o.g().n() : kotlinTypeD;
            }
            if (javaType == null) {
                return lazyJavaResolverContext.f72962a.o.g().n();
            }
            b21.p(javaType, "Unsupported type: ");
            return null;
        }
        JavaClassifierType javaClassifierType = (JavaClassifierType) javaType;
        if (!javaTypeAttributes.g && javaTypeAttributes.d != TypeUsage.SUPERTYPE) {
            z2 = true;
        }
        boolean zQ = javaClassifierType.q();
        if (!zQ && !z2) {
            SimpleType simpleTypeA2 = a(javaClassifierType, javaTypeAttributes, null);
            return simpleTypeA2 != null ? simpleTypeA2 : ErrorUtils.c(ErrorTypeKind.UNRESOLVED_JAVA_CLASS, javaClassifierType.A());
        }
        SimpleType simpleTypeA3 = a(javaClassifierType, javaTypeAttributes.f(JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND), null);
        if (simpleTypeA3 != null && (simpleTypeA = a(javaClassifierType, javaTypeAttributes.f(JavaTypeFlexibility.FLEXIBLE_UPPER_BOUND), simpleTypeA3)) != null) {
            return zQ ? new RawTypeImpl(simpleTypeA3, simpleTypeA) : KotlinTypeFactory.a(simpleTypeA3, simpleTypeA);
        }
        return ErrorUtils.c(ErrorTypeKind.UNRESOLVED_JAVA_CLASS, javaClassifierType.A());
    }
}
