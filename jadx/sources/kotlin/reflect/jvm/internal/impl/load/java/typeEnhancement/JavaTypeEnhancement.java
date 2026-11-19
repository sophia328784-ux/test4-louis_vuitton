package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import defpackage.lc0;
import defpackage.md;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMap;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMapper;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.CompositeAnnotations;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.JavaResolverSettings;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.RawTypeImpl;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.DefaultTypeAttributeTranslator;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.FlexibleTypesKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.RawType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionBase;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.TypeWithEnhancementKt;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class JavaTypeEnhancement {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final JavaResolverSettings f73102a;

    public static final class Result {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final KotlinType f73103a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f73104b;

        public Result(KotlinType kotlinType, int i2) {
            this.f73103a = kotlinType;
            this.f73104b = i2;
        }
    }

    public static final class SimpleResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SimpleType f73105a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f73106b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f73107c;

        public SimpleResult(SimpleType simpleType, int i2, boolean z) {
            this.f73105a = simpleType;
            this.f73106b = i2;
            this.f73107c = z;
        }
    }

    public JavaTypeEnhancement(JavaResolverSettings javaResolverSettings) {
        javaResolverSettings.getClass();
        this.f73102a = javaResolverSettings;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x008e  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:56:0x00ca  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v27 */
    public final SimpleResult a(SimpleType simpleType, Function1 function1, int i2, TypeComponentPosition typeComponentPosition, boolean z, boolean z2) {
        ClassifierDescriptor classifierDescriptorY;
        ClassDescriptor classDescriptorA;
        Boolean bool;
        TypeConstructor typeConstructorH0;
        Result result;
        TypeProjectionBase typeProjectionBaseL;
        Function1 function2 = function1;
        typeComponentPosition.getClass();
        TypeComponentPosition typeComponentPosition2 = TypeComponentPosition.INFLEXIBLE;
        ?? r5 = 0;
        boolean z3 = typeComponentPosition != typeComponentPosition2;
        boolean z4 = (z2 && z) ? false : true;
        KotlinType kotlinType = null;
        if ((z3 || !simpleType.F0().isEmpty()) && (classifierDescriptorY = simpleType.H0().y()) != null) {
            AbstractSignatureParts$$Lambda$3 abstractSignatureParts$$Lambda$3 = (AbstractSignatureParts$$Lambda$3) function2;
            JavaTypeQualifiers javaTypeQualifiers = (JavaTypeQualifiers) abstractSignatureParts$$Lambda$3.invoke(Integer.valueOf(i2));
            Annotations annotations = TypeEnhancementKt.f73191a;
            if (typeComponentPosition == typeComponentPosition2 || !(classifierDescriptorY instanceof ClassDescriptor)) {
                classDescriptorA = null;
            } else if (javaTypeQualifiers.f73111b == MutabilityQualifier.READ_ONLY && typeComponentPosition == TypeComponentPosition.FLEXIBLE_LOWER) {
                ClassDescriptor classDescriptor = (ClassDescriptor) classifierDescriptorY;
                if (JavaToKotlinClassMapper.b(classDescriptor)) {
                    FqName fqName = (FqName) JavaToKotlinClassMap.f72312j.get(DescriptorUtils.f(classDescriptor));
                    if (fqName == null) {
                        lc0.n("Given class ", classDescriptor, " is not a mutable collection");
                        return null;
                    }
                    classDescriptorA = DescriptorUtilsKt.i(classDescriptor).g().j(fqName);
                    classDescriptorA.getClass();
                } else if (javaTypeQualifiers.f73111b == MutabilityQualifier.MUTABLE) {
                    classDescriptorA = null;
                } else {
                    classDescriptorA = null;
                }
            } else if (javaTypeQualifiers.f73111b == MutabilityQualifier.MUTABLE || typeComponentPosition != TypeComponentPosition.FLEXIBLE_UPPER) {
                classDescriptorA = null;
            } else {
                ClassDescriptor classDescriptor2 = (ClassDescriptor) classifierDescriptorY;
                String str = JavaToKotlinClassMap.f72305a;
                if (JavaToKotlinClassMap.f72313k.containsKey(DescriptorUtils.f(classDescriptor2))) {
                    classDescriptorA = JavaToKotlinClassMapper.a(classDescriptor2);
                } else {
                    classDescriptorA = null;
                }
            }
            if (typeComponentPosition == typeComponentPosition2) {
                bool = null;
            } else {
                NullabilityQualifier nullabilityQualifier = javaTypeQualifiers.f73110a;
                int i3 = nullabilityQualifier == null ? -1 : TypeEnhancementKt.WhenMappings.f73193a[nullabilityQualifier.ordinal()];
                if (i3 == 1) {
                    bool = Boolean.TRUE;
                } else if (i3 != 2) {
                    bool = null;
                } else {
                    bool = Boolean.FALSE;
                }
            }
            if (classDescriptorA == null || (typeConstructorH0 = classDescriptorA.j()) == null) {
                typeConstructorH0 = simpleType.H0();
            }
            int i4 = i2 + 1;
            List listF0 = simpleType.F0();
            List parameters = typeConstructorH0.getParameters();
            parameters.getClass();
            List list = parameters;
            Iterator it = listF0.iterator();
            Iterator it2 = list.iterator();
            ArrayList arrayList = new ArrayList(Math.min(CollectionsKt.t(listF0, 10), CollectionsKt.t(list, 10)));
            while (it.hasNext() && it2.hasNext()) {
                Object next = it.next();
                TypeParameterDescriptor typeParameterDescriptor = (TypeParameterDescriptor) it2.next();
                TypeProjection typeProjection = (TypeProjection) next;
                if (!z4) {
                    result = new Result(kotlinType, r5);
                } else if (!typeProjection.a()) {
                    result = b(typeProjection.getType().K0(), function2, i4, z2);
                } else if (((JavaTypeQualifiers) abstractSignatureParts$$Lambda$3.invoke(Integer.valueOf(i4))).f73110a == NullabilityQualifier.FORCE_FLEXIBILITY) {
                    UnwrappedType unwrappedTypeK0 = typeProjection.getType().K0();
                    result = new Result(KotlinTypeFactory.a(FlexibleTypesKt.a(unwrappedTypeK0).L0(r5), FlexibleTypesKt.b(unwrappedTypeK0).L0(true)), 1);
                } else {
                    result = new Result(null, 1);
                }
                i4 += result.f73104b;
                KotlinType kotlinType2 = result.f73103a;
                if (kotlinType2 != null) {
                    Variance varianceB = typeProjection.b();
                    varianceB.getClass();
                    typeProjectionBaseL = TypeUtilsKt.d(kotlinType2, varianceB, typeParameterDescriptor);
                } else if (classDescriptorA == null || typeProjection.a()) {
                    typeProjectionBaseL = classDescriptorA != null ? TypeUtils.l(typeParameterDescriptor) : null;
                } else {
                    KotlinType type = typeProjection.getType();
                    type.getClass();
                    Variance varianceB2 = typeProjection.b();
                    varianceB2.getClass();
                    typeProjectionBaseL = TypeUtilsKt.d(type, varianceB2, typeParameterDescriptor);
                }
                arrayList.add(typeProjectionBaseL);
                function2 = function1;
                r5 = 0;
                kotlinType = null;
            }
            int i5 = i4 - i2;
            if (classDescriptorA == null && bool == null) {
                if (!arrayList.isEmpty()) {
                    Iterator it3 = arrayList.iterator();
                    do {
                        if (it3.hasNext()) {
                        }
                    } while (((TypeProjection) it3.next()) == null);
                }
                return new SimpleResult(null, i5, false);
            }
            Annotations annotations2 = simpleType.getAnnotations();
            EnhancedTypeAnnotations enhancedTypeAnnotations = TypeEnhancementKt.f73192b;
            if (classDescriptorA == null) {
                enhancedTypeAnnotations = null;
            }
            Annotations annotations3 = TypeEnhancementKt.f73191a;
            if (bool == null) {
                annotations3 = null;
            }
            ArrayList arrayListV = ArraysKt.v(new Annotations[]{annotations2, enhancedTypeAnnotations, annotations3});
            int size = arrayListV.size();
            if (size == 0) {
                md.k("At least one Annotations object expected");
                return null;
            }
            Annotations compositeAnnotations = size != 1 ? new CompositeAnnotations((List<? extends Annotations>) CollectionsKt.y0(arrayListV)) : (Annotations) CollectionsKt.h0(arrayListV);
            compositeAnnotations.getClass();
            TypeAttributes typeAttributesA = DefaultTypeAttributeTranslator.f74181a.a(compositeAnnotations);
            List listF1 = simpleType.F0();
            Iterator it4 = arrayList.iterator();
            Iterator it5 = listF1.iterator();
            ArrayList arrayList2 = new ArrayList(Math.min(CollectionsKt.t(arrayList, 10), CollectionsKt.t(listF1, 10)));
            while (it4.hasNext() && it5.hasNext()) {
                Object next2 = it4.next();
                TypeProjection typeProjection2 = (TypeProjection) it5.next();
                TypeProjection typeProjection3 = (TypeProjection) next2;
                if (typeProjection3 != null) {
                    typeProjection2 = typeProjection3;
                }
                arrayList2.add(typeProjection2);
            }
            SimpleType simpleTypeD = KotlinTypeFactory.d(typeAttributesA, typeConstructorH0, arrayList2, bool != null ? bool.booleanValue() : simpleType.I0(), null);
            if (javaTypeQualifiers.f73112c) {
                this.f73102a.getClass();
                simpleTypeD = new NotNullTypeParameterImpl(simpleTypeD);
            }
            return new SimpleResult(simpleTypeD, i5, bool != null && javaTypeQualifiers.d);
        }
        return new SimpleResult(null, 1, false);
    }

    /* JADX WARN: Code duplicated, block: B:41:0x006f  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4, types: [kotlin.reflect.jvm.internal.impl.types.SimpleType] */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5, types: [kotlin.reflect.jvm.internal.impl.types.SimpleType] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8, types: [kotlin.reflect.jvm.internal.impl.types.SimpleType] */
    /* JADX WARN: Type inference failed for: r3v9 */
    public final Result b(UnwrappedType unwrappedType, Function1 function1, int i2, boolean z) {
        ?? r3;
        ?? r4;
        KotlinType kotlinTypeC = null;
        if (KotlinTypeKt.a(unwrappedType)) {
            return new Result(null, 1);
        }
        if (!(unwrappedType instanceof FlexibleType)) {
            if (!(unwrappedType instanceof SimpleType)) {
                v40.g();
                return null;
            }
            SimpleResult simpleResultA = a((SimpleType) unwrappedType, function1, i2, TypeComponentPosition.INFLEXIBLE, false, z);
            boolean z2 = simpleResultA.f73107c;
            KotlinType kotlinTypeC2 = simpleResultA.f73105a;
            if (z2) {
                kotlinTypeC2 = TypeWithEnhancementKt.c(unwrappedType, kotlinTypeC2);
            }
            return new Result(kotlinTypeC2, simpleResultA.f73106b);
        }
        boolean z3 = unwrappedType instanceof RawType;
        FlexibleType flexibleType = (FlexibleType) unwrappedType;
        SimpleType simpleType = flexibleType.d;
        SimpleType simpleType2 = flexibleType.f74193c;
        SimpleResult simpleResultA2 = a(simpleType2, function1, i2, TypeComponentPosition.FLEXIBLE_LOWER, z3, z);
        UnwrappedType unwrappedType2 = simpleResultA2.f73105a;
        SimpleResult simpleResultA3 = a(flexibleType.d, function1, i2, TypeComponentPosition.FLEXIBLE_UPPER, z3, z);
        SimpleType simpleType3 = simpleResultA3.f73105a;
        if (unwrappedType2 != null || simpleType3 != null) {
            if (simpleResultA2.f73107c || simpleResultA3.f73107c) {
                if (simpleType3 == null) {
                    unwrappedType2.getClass();
                } else {
                    UnwrappedType unwrappedTypeA = KotlinTypeFactory.a(unwrappedType2 == null ? simpleType3 : unwrappedType2, simpleType3);
                    if (unwrappedTypeA == null) {
                        unwrappedType2.getClass();
                    } else {
                        unwrappedType2 = unwrappedTypeA;
                    }
                }
                kotlinTypeC = TypeWithEnhancementKt.c(unwrappedType, unwrappedType2);
            } else if (z3) {
                if (unwrappedType2 != null) {
                    r4 = unwrappedType2;
                }
                if (simpleType3 != null) {
                    r4 = simpleType2;
                    simpleType = simpleType3;
                }
                r4 = simpleType2;
                kotlinTypeC = new RawTypeImpl(r4, simpleType);
            } else {
                if (unwrappedType2 != null) {
                    r3 = unwrappedType2;
                }
                if (simpleType3 != null) {
                    r3 = simpleType2;
                    simpleType = simpleType3;
                }
                r3 = simpleType2;
                kotlinTypeC = KotlinTypeFactory.a(r3, simpleType);
            }
        }
        return new Result(kotlinTypeC, simpleResultA2.f73106b);
    }
}
