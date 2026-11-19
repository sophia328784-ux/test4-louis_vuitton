package kotlin.reflect.jvm.internal.types;

import defpackage.d20;
import defpackage.tr;
import defpackage.v40;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KProperty;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;
import kotlin.reflect.KVariance;
import kotlin.reflect.jvm.KTypesJvm;
import kotlin.reflect.jvm.internal.ConvertFromMetadataKt;
import kotlin.reflect.jvm.internal.KClassImpl;
import kotlin.reflect.jvm.internal.KTypeAliasImpl;
import kotlin.reflect.jvm.internal.KTypeParameterImpl;
import kotlin.reflect.jvm.internal.ReflectProperties;
import kotlin.reflect.jvm.internal.SystemPropertiesKt;
import kotlin.reflect.jvm.internal.UtilKt;
import kotlin.reflect.jvm.internal.impl.builtins.FunctionTypesKt;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMapper;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.AbbreviatedType;
import kotlin.reflect.jvm.internal.impl.types.DefinitelyNotNullType;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.RawType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004¢\u0006\u0004\b\t\u0010\u000b¨\u0006\f"}, d2 = {"Lkotlin/reflect/jvm/internal/types/DescriptorKType;", "Lkotlin/reflect/jvm/internal/types/AbstractKType;", "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;", "type", "Lkotlin/Function0;", "Ljava/lang/reflect/Type;", "computeJavaType", "", "isAbbreviation", "<init>", "(Lorg/jetbrains/kotlin/types/KotlinType;Lkotlin/jvm/functions/Function0;Z)V", "(Lorg/jetbrains/kotlin/types/KotlinType;Lkotlin/jvm/functions/Function0;)V", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DescriptorKType extends AbstractKType {
    public static final /* synthetic */ KProperty[] g;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final KotlinType f74413c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ReflectProperties.LazySoftVal f74414e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ReflectProperties.LazySoftVal f74415f;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f74422a;

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
            f74422a = iArr;
        }
    }

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(DescriptorKType.class, "classifier", "getClassifier()Lkotlin/reflect/KClassifier;", 0);
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        g = new KProperty[]{reflectionFactory.h(propertyReference1Impl), tr.q(DescriptorKType.class, "arguments", "getArguments()Ljava/util/List;", 0, reflectionFactory)};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DescriptorKType(KotlinType kotlinType, final Function0<? extends Type> function0, boolean z) {
        super(function0);
        kotlinType.getClass();
        this.f74413c = kotlinType;
        this.d = z;
        this.f74414e = ReflectProperties.a(null, new Function0(this) { // from class: kotlin.reflect.jvm.internal.types.DescriptorKType$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final DescriptorKType f74416b;

            {
                this.f74416b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                DescriptorKType descriptorKType = this.f74416b;
                return descriptorKType.I(descriptorKType.f74413c);
            }
        });
        this.f74415f = ReflectProperties.a(null, new Function0(this, function0) { // from class: kotlin.reflect.jvm.internal.types.DescriptorKType$$Lambda$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final DescriptorKType f74417b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final Function0 f74418c;

            {
                this.f74417b = this;
                this.f74418c = function0;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                KTypeProjection kTypeProjectionA;
                final DescriptorKType descriptorKType = this.f74417b;
                List listF0 = descriptorKType.f74413c.F0();
                if (listF0.isEmpty()) {
                    return EmptyList.f71768b;
                }
                List list = listF0;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
                int i2 = 0;
                for (Object obj : list) {
                    int i3 = i2 + 1;
                    if (i2 < 0) {
                        CollectionsKt.t0();
                        throw null;
                    }
                    TypeProjection typeProjection = (TypeProjection) obj;
                    Function0 function0A = this.f74418c == null ? null : ConvertFromMetadataKt.a(i2, new Function0(descriptorKType) { // from class: kotlin.reflect.jvm.internal.types.DescriptorKType$$Lambda$4

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public final DescriptorKType f74421b;

                        {
                            this.f74421b = descriptorKType;
                        }

                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            KProperty[] kPropertyArr = DescriptorKType.g;
                            return this.f74421b;
                        }
                    });
                    if (typeProjection.a()) {
                        KTypeProjection.INSTANCE.getClass();
                        kTypeProjectionA = KTypeProjection.d;
                    } else {
                        KotlinType type = typeProjection.getType();
                        type.getClass();
                        DescriptorKType descriptorKType2 = new DescriptorKType(type, function0A);
                        int i4 = DescriptorKType.WhenMappings.f74422a[typeProjection.b().ordinal()];
                        if (i4 == 1) {
                            KTypeProjection.INSTANCE.getClass();
                            kTypeProjectionA = KTypeProjection.Companion.a(descriptorKType2);
                        } else if (i4 == 2) {
                            KTypeProjection.INSTANCE.getClass();
                            kTypeProjectionA = new KTypeProjection(KVariance.IN, descriptorKType2);
                        } else {
                            if (i4 != 3) {
                                v40.g();
                                return null;
                            }
                            KTypeProjection.INSTANCE.getClass();
                            kTypeProjectionA = new KTypeProjection(KVariance.OUT, descriptorKType2);
                        }
                    }
                    arrayList.add(kTypeProjectionA);
                    i2 = i3;
                }
                return arrayList;
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    /* JADX INFO: renamed from: A */
    public final AbstractKType getF74424c() {
        UnwrappedType unwrappedTypeK0 = this.f74413c.K0();
        Function0 function0 = null;
        Object[] objArr = 0;
        if (unwrappedTypeK0 instanceof FlexibleType) {
            return new DescriptorKType(((FlexibleType) unwrappedTypeK0).f74193c, function0, 2, objArr == true ? 1 : 0);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:6:0x0011 A[PHI: r4
      0x0011: PHI (r4v8 kotlin.reflect.jvm.internal.impl.types.KotlinType) = (r4v4 kotlin.reflect.jvm.internal.impl.types.KotlinType), (r4v10 kotlin.reflect.jvm.internal.impl.types.KotlinType) binds: [B:13:0x0020, B:5:0x000f] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    public final AbstractKType D(boolean z) {
        KotlinType kotlinTypeA;
        KotlinType kotlinType = this.f74413c;
        if (z) {
            kotlinTypeA = DefinitelyNotNullType.Companion.a(DefinitelyNotNullType.f74182e, kotlinType.K0(), true);
            if (kotlinTypeA != null) {
                kotlinType = kotlinTypeA;
            }
        } else {
            DefinitelyNotNullType definitelyNotNullType = kotlinType instanceof DefinitelyNotNullType ? (DefinitelyNotNullType) kotlinType : null;
            if (definitelyNotNullType != null && (kotlinTypeA = definitelyNotNullType.f74183c) != null) {
                kotlinType = kotlinTypeA;
            }
        }
        return new DescriptorKType(kotlinType, this.f74405b);
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    public final AbstractKType G(boolean z) {
        KotlinType kotlinType = this.f74413c;
        kotlinType.getClass();
        return ((kotlinType.K0() instanceof FlexibleType) || kotlinType.I0() != z) ? new DescriptorKType(TypeUtils.i(kotlinType, z), this.f74405b) : this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    /* JADX INFO: renamed from: H */
    public final AbstractKType getD() {
        UnwrappedType unwrappedTypeK0 = this.f74413c.K0();
        Function0 function0 = null;
        Object[] objArr = 0;
        if (unwrappedTypeK0 instanceof FlexibleType) {
            return new DescriptorKType(((FlexibleType) unwrappedTypeK0).d, function0, 2, objArr == true ? 1 : 0);
        }
        return null;
    }

    public final KClassifier I(KotlinType kotlinType) {
        KotlinType type;
        if (this.d) {
            ClassifierDescriptor classifierDescriptorY = kotlinType.H0().y();
            NotFoundClasses.MockClassDescriptor mockClassDescriptor = classifierDescriptorY instanceof NotFoundClasses.MockClassDescriptor ? (NotFoundClasses.MockClassDescriptor) classifierDescriptorY : null;
            if (mockClassDescriptor != null) {
                return new KTypeAliasImpl(DescriptorUtilsKt.g(mockClassDescriptor));
            }
        }
        ClassifierDescriptor classifierDescriptorY2 = kotlinType.H0().y();
        if (classifierDescriptorY2 instanceof ClassDescriptor) {
            Class clsI = UtilKt.i((ClassDescriptor) classifierDescriptorY2);
            if (clsI != null) {
                if (!KotlinBuiltIns.z(kotlinType)) {
                    if (TypeUtils.g(kotlinType)) {
                        return new KClassImpl(clsI);
                    }
                    Class cls = (Class) ReflectClassUtilKt.f72603b.get(clsI);
                    if (cls != null) {
                        clsI = cls;
                    }
                    return new KClassImpl(clsI);
                }
                TypeProjection typeProjection = (TypeProjection) CollectionsKt.j0(kotlinType.F0());
                if (typeProjection == null || (type = typeProjection.getType()) == null) {
                    return new KClassImpl(clsI);
                }
                KClassifier kClassifierI = I(TypeUtils.i(type, true));
                if (kClassifierI != null) {
                    return new KClassImpl(UtilKt.c(JvmClassMappingKt.b(KTypesJvm.a(kClassifierI))));
                }
                d20.c(this, "Cannot determine classifier for array element type: ");
                return null;
            }
        } else if (classifierDescriptorY2 instanceof TypeParameterDescriptor) {
            return new KTypeParameterImpl(null, (TypeParameterDescriptor) classifierDescriptorY2);
        }
        return null;
    }

    @Override // kotlin.reflect.KType
    /* JADX INFO: renamed from: a */
    public final KClassifier getF74442c() {
        KProperty kProperty = g[0];
        return (KClassifier) this.f74414e.mo47invoke();
    }

    @Override // kotlin.reflect.KType
    /* JADX INFO: renamed from: b */
    public final List getD() {
        KProperty kProperty = g[1];
        Object objMo47invoke = this.f74415f.mo47invoke();
        objMo47invoke.getClass();
        return (List) objMo47invoke;
    }

    @Override // kotlin.reflect.KType
    /* JADX INFO: renamed from: d */
    public final boolean getF74407e() {
        return this.f74413c.I0();
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    public final boolean equals(Object obj) {
        if (!SystemPropertiesKt.f72181a) {
            return super.equals(obj);
        }
        if (!(obj instanceof DescriptorKType)) {
            return false;
        }
        DescriptorKType descriptorKType = (DescriptorKType) obj;
        return Intrinsics.c(this.f74413c, descriptorKType.f74413c) && Intrinsics.c(getF74442c(), descriptorKType.getF74442c()) && Intrinsics.c(getD(), descriptorKType.getD());
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    /* JADX INFO: renamed from: g */
    public final KType getG() {
        KotlinType kotlinType = this.f74413c;
        kotlinType.getClass();
        UnwrappedType unwrappedTypeK0 = kotlinType.K0();
        AbbreviatedType abbreviatedType = unwrappedTypeK0 instanceof AbbreviatedType ? (AbbreviatedType) unwrappedTypeK0 : null;
        SimpleType simpleType = abbreviatedType != null ? abbreviatedType.d : null;
        if (simpleType != null) {
            return new DescriptorKType(simpleType, this.f74405b, true);
        }
        return null;
    }

    @Override // kotlin.reflect.KAnnotatedElement
    /* JADX INFO: renamed from: getAnnotations */
    public final List getF74444f() {
        return UtilKt.b(this.f74413c);
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    /* JADX INFO: renamed from: h */
    public final KClass getF74448k() {
        ClassifierDescriptor classifierDescriptorY = this.f74413c.H0().y();
        final ClassDescriptor classDescriptor = classifierDescriptorY instanceof ClassDescriptor ? (ClassDescriptor) classifierDescriptorY : null;
        if (classDescriptor == null || !JavaToKotlinClassMapper.b(classDescriptor)) {
            return null;
        }
        if (SystemPropertiesKt.f72181a) {
            KClassifier kClassifierA = getF74442c();
            kClassifierA.getClass();
            return new MutableCollectionKClass((KClass) kClassifierA, DescriptorUtilsKt.g(classDescriptor).f73679a.f73683a, new Function1(classDescriptor) { // from class: kotlin.reflect.jvm.internal.types.DescriptorKType$$Lambda$2

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final ClassDescriptor f74419b;

                {
                    this.f74419b = classDescriptor;
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    MutableCollectionKClass mutableCollectionKClass = (MutableCollectionKClass) obj;
                    KProperty[] kPropertyArr = DescriptorKType.g;
                    mutableCollectionKClass.getClass();
                    List listP = this.f74419b.p();
                    listP.getClass();
                    List<TypeParameterDescriptor> list = listP;
                    ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
                    for (TypeParameterDescriptor typeParameterDescriptor : list) {
                        typeParameterDescriptor.getClass();
                        arrayList.add(new KTypeParameterImpl(mutableCollectionKClass, typeParameterDescriptor));
                    }
                    return arrayList;
                }
            }, new Function1(classDescriptor) { // from class: kotlin.reflect.jvm.internal.types.DescriptorKType$$Lambda$3

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final ClassDescriptor f74420b;

                {
                    this.f74420b = classDescriptor;
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    KProperty[] kPropertyArr = DescriptorKType.g;
                    ((MutableCollectionKClass) obj).getClass();
                    Collection collectionI = this.f74420b.j().i();
                    collectionI.getClass();
                    Collection collection = collectionI;
                    ArrayList arrayList = new ArrayList(CollectionsKt.t(collection, 10));
                    Iterator it = collection.iterator();
                    while (it.hasNext()) {
                        arrayList.add(new DescriptorKType((KotlinType) it.next(), null, 2, 0 == true ? 1 : 0));
                    }
                    return arrayList;
                }
            });
        }
        FqName fqNameG = DescriptorUtilsKt.g(classDescriptor);
        KClassifier kClassifierA2 = getF74442c();
        kClassifierA2.getClass();
        return MutableCollectionKClassKt.a(fqNameG, (KClass) kClassifierA2);
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    public final int hashCode() {
        if (!SystemPropertiesKt.f72181a) {
            return super.hashCode();
        }
        int iHashCode = this.f74413c.hashCode() * 31;
        KClassifier kClassifierA = getF74442c();
        return getD().hashCode() + ((iHashCode + (kClassifierA != null ? kClassifierA.hashCode() : 0)) * 31);
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    /* JADX INFO: renamed from: l */
    public final boolean getF74445h() {
        KotlinType kotlinType = this.f74413c;
        kotlinType.getClass();
        return kotlinType.K0() instanceof DefinitelyNotNullType;
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    /* JADX INFO: renamed from: p */
    public final boolean getF74446i() {
        KotlinType kotlinType = this.f74413c;
        if (kotlinType != null) {
            Name name = KotlinBuiltIns.f72242f;
            return KotlinBuiltIns.B(kotlinType, StandardNames.FqNames.f72272b);
        }
        KotlinBuiltIns.a(138);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    /* JADX INFO: renamed from: q */
    public final boolean getF74425e() {
        return this.f74413c instanceof RawType;
    }

    @Override // kotlin.reflect.jvm.internal.types.AbstractKType
    /* JADX INFO: renamed from: y */
    public final boolean getF74447j() {
        return FunctionTypesKt.i(this.f74413c);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DescriptorKType(KotlinType kotlinType, Function0<? extends Type> function0) {
        this(kotlinType, function0, false);
        kotlinType.getClass();
    }

    public /* synthetic */ DescriptorKType(KotlinType kotlinType, Function0 function0, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(kotlinType, (i2 & 2) != 0 ? null : function0);
    }
}
