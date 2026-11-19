package kotlin.reflect.jvm.internal;

import defpackage.d20;
import defpackage.wp;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;
import kotlin.reflect.KTypeProjection;
import kotlin.reflect.KVariance;
import kotlin.reflect.jvm.KTypesJvm;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMap;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.types.AbstractKType;
import kotlin.reflect.jvm.internal.types.FlexibleKType;
import kotlin.reflect.jvm.internal.types.MutableCollectionKClassKt;
import kotlin.reflect.jvm.internal.types.SimpleKType;
import kotlin.sequences.SequencesKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlin-reflection"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ConvertFromJavaKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f71998a;

        static {
            int[] iArr = new int[TypeNullability.values().length];
            try {
                iArr[TypeNullability.NOT_NULL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TypeNullability.NULLABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f71998a = iArr;
        }
    }

    public static final List a(Class cls) {
        cls.getClass();
        return SequencesKt.x(SequencesKt.i(SequencesKt.n(cls, new Function1() { // from class: kotlin.reflect.jvm.internal.ConvertFromJavaKt$$Lambda$5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Class cls2 = (Class) obj;
                cls2.getClass();
                if (Modifier.isStatic(cls2.getModifiers())) {
                    return null;
                }
                return cls2.getDeclaringClass();
            }
        }), new Function1() { // from class: kotlin.reflect.jvm.internal.ConvertFromJavaKt$$Lambda$6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Class cls2 = (Class) obj;
                cls2.getClass();
                TypeVariable[] typeParameters = cls2.getTypeParameters();
                typeParameters.getClass();
                return ArraysKt.e(typeParameters);
            }
        }));
    }

    public static SimpleKType b(Type type, KClassifier kClassifier, List list, boolean z) {
        return new SimpleKType(kClassifier, list, z, EmptyList.f71768b, null, false, false, false, null, new ConvertFromJavaKt$$Lambda$2(type));
    }

    public static final KClassImpl c(TypeVariable typeVariable) {
        GenericDeclaration genericDeclaration = typeVariable.getGenericDeclaration();
        if (genericDeclaration instanceof Class) {
            return (KClassImpl) Reflection.f71922a.b((Class) genericDeclaration);
        }
        wp.f("Non-class container of a type parameter is not supported: ", genericDeclaration, " (", typeVariable);
        return null;
    }

    public static final FlexibleKType d(SimpleKType simpleKType, final Type type) {
        FlexibleKType.Companion companion = FlexibleKType.f74423f;
        KClassifier kClassifier = simpleKType.f74442c;
        List<KTypeProjection> list = simpleKType.d;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (KTypeProjection kTypeProjection : list) {
            KType kType = kTypeProjection.f71960b;
            if (kType != null) {
                KTypeProjection.INSTANCE.getClass();
                kTypeProjection = new KTypeProjection(KVariance.OUT, kType);
            }
            arrayList.add(kTypeProjection);
        }
        SimpleKType simpleKTypeB = b(type, kClassifier, arrayList, true);
        Function0 function0 = new Function0(type) { // from class: kotlin.reflect.jvm.internal.ConvertFromJavaKt$$Lambda$9

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final Type f71997b;

            {
                this.f71997b = type;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.f71997b;
            }
        };
        companion.getClass();
        return (FlexibleKType) FlexibleKType.Companion.a(simpleKType, simpleKTypeB, false, function0);
    }

    public static KType e(final Type type, Map map, TypeNullability typeNullability, boolean z, int i2) {
        ArrayList arrayList;
        SimpleKType simpleKTypeB;
        AbstractKType abstractKType;
        String f74431c;
        TypeNullability typeNullability2 = (i2 & 2) != 0 ? TypeNullability.FLEXIBLE : typeNullability;
        boolean z2 = (i2 & 4) != 0 ? false : z;
        type.getClass();
        typeNullability2.getClass();
        FqNameUnsafe fqNameUnsafe = null;
        if (type instanceof Class) {
            final Class cls = (Class) type;
            if (!a(cls).isEmpty() && !z2) {
                FlexibleKType.Companion companion = FlexibleKType.f74423f;
                KClass kClassE = JvmClassMappingKt.e(cls);
                List listA = a(cls);
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(listA, 10));
                Iterator it = listA.iterator();
                while (it.hasNext()) {
                    Type[] bounds = ((TypeVariable) SequencesKt.q(SequencesKt.n((TypeVariable) it.next(), new Function1() { // from class: kotlin.reflect.jvm.internal.ConvertFromJavaKt$$Lambda$3
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            TypeVariable typeVariable = (TypeVariable) obj;
                            typeVariable.getClass();
                            Type[] bounds2 = typeVariable.getBounds();
                            bounds2.getClass();
                            Object objW = ArraysKt.w(bounds2);
                            if (objW instanceof TypeVariable) {
                                return (TypeVariable) objW;
                            }
                            return null;
                        }
                    }))).getBounds();
                    bounds.getClass();
                    Type type2 = (Type) ArraysKt.w(bounds);
                    KTypeProjection.Companion companion2 = KTypeProjection.INSTANCE;
                    type2.getClass();
                    KType kTypeE = e(type2, map, null, true, 2);
                    companion2.getClass();
                    arrayList2.add(KTypeProjection.Companion.a(kTypeE));
                }
                SimpleKType simpleKTypeB2 = b(cls, kClassE, arrayList2, false);
                KClass kClassB = Reflection.f71922a.b(cls);
                List<TypeVariable> listA2 = a(cls);
                ArrayList arrayList3 = new ArrayList(CollectionsKt.t(listA2, 10));
                for (TypeVariable typeVariable : listA2) {
                    KTypeProjection.INSTANCE.getClass();
                    arrayList3.add(KTypeProjection.d);
                }
                SimpleKType simpleKTypeB3 = b(cls, kClassB, arrayList3, true);
                Function0 function0 = new Function0(cls) { // from class: kotlin.reflect.jvm.internal.ConvertFromJavaKt$$Lambda$4

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final Class f71992b;

                    {
                        this.f71992b = cls;
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return this.f71992b;
                    }
                };
                companion.getClass();
                return FlexibleKType.Companion.a(simpleKTypeB2, simpleKTypeB3, true, function0);
            }
            if (cls.isArray()) {
                KClass kClassB2 = Reflection.f71922a.b(cls);
                Class<?> componentType = cls.getComponentType();
                componentType.getClass();
                return d(b(type, kClassB2, CollectionsKt.O(f(componentType, map)), false), type);
            }
            KClass kClassB3 = Reflection.f71922a.b(cls);
            List<TypeVariable> listA3 = a(cls);
            ArrayList arrayList4 = new ArrayList(CollectionsKt.t(listA3, 10));
            for (TypeVariable typeVariable2 : listA3) {
                KTypeProjection.INSTANCE.getClass();
                arrayList4.add(KTypeProjection.d);
            }
            simpleKTypeB = b(type, kClassB3, arrayList4, false);
        } else {
            if (type instanceof GenericArrayType) {
                Type genericComponentType = ((GenericArrayType) type).getGenericComponentType();
                genericComponentType.getClass();
                KTypeProjection kTypeProjectionF = f(genericComponentType, map);
                KType kType = kTypeProjectionF.f71960b;
                kType.getClass();
                return d(b(type, Reflection.f71922a.b(UtilKt.c(JvmClassMappingKt.b(KTypesJvm.b(kType)))), CollectionsKt.O(kTypeProjectionF), false), type);
            }
            if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                Type rawType = parameterizedType.getRawType();
                rawType.getClass();
                KClass kClassB4 = Reflection.f71922a.b((Class) rawType);
                if (z2) {
                    List<Type> listX = SequencesKt.x(SequencesKt.j(SequencesKt.n(parameterizedType, new Function1() { // from class: kotlin.reflect.jvm.internal.ConvertFromJavaKt$$Lambda$7
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            ParameterizedType parameterizedType2 = (ParameterizedType) obj;
                            parameterizedType2.getClass();
                            Type ownerType = parameterizedType2.getOwnerType();
                            if (ownerType instanceof ParameterizedType) {
                                return (ParameterizedType) ownerType;
                            }
                            return null;
                        }
                    }), new Function1() { // from class: kotlin.reflect.jvm.internal.ConvertFromJavaKt$$Lambda$8
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            ParameterizedType parameterizedType2 = (ParameterizedType) obj;
                            parameterizedType2.getClass();
                            Type[] actualTypeArguments = parameterizedType2.getActualTypeArguments();
                            actualTypeArguments.getClass();
                            return ArraysKt.W(actualTypeArguments);
                        }
                    }));
                    arrayList = new ArrayList(CollectionsKt.t(listX, 10));
                    for (Type type3 : listX) {
                        KTypeProjection.INSTANCE.getClass();
                        arrayList.add(KTypeProjection.d);
                    }
                } else {
                    List listX2 = SequencesKt.x(SequencesKt.j(SequencesKt.n(parameterizedType, new Function1() { // from class: kotlin.reflect.jvm.internal.ConvertFromJavaKt$$Lambda$7
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            ParameterizedType parameterizedType2 = (ParameterizedType) obj;
                            parameterizedType2.getClass();
                            Type ownerType = parameterizedType2.getOwnerType();
                            if (ownerType instanceof ParameterizedType) {
                                return (ParameterizedType) ownerType;
                            }
                            return null;
                        }
                    }), new Function1() { // from class: kotlin.reflect.jvm.internal.ConvertFromJavaKt$$Lambda$8
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            ParameterizedType parameterizedType2 = (ParameterizedType) obj;
                            parameterizedType2.getClass();
                            Type[] actualTypeArguments = parameterizedType2.getActualTypeArguments();
                            actualTypeArguments.getClass();
                            return ArraysKt.W(actualTypeArguments);
                        }
                    }));
                    ArrayList arrayList5 = new ArrayList(CollectionsKt.t(listX2, 10));
                    Iterator it2 = listX2.iterator();
                    while (it2.hasNext()) {
                        arrayList5.add(f((Type) it2.next(), map));
                    }
                    arrayList = arrayList5;
                }
                simpleKTypeB = b(type, kClassB4, arrayList, false);
            } else {
                if (!(type instanceof TypeVariable)) {
                    if (type instanceof WildcardType) {
                        d20.c(type, "Wildcard type is not possible here: ");
                        return null;
                    }
                    StringBuilder sb = new StringBuilder("Type is not supported: ");
                    sb.append(type);
                    d20.o(sb, " (", type.getClass());
                    return null;
                }
                TypeVariable typeVariable3 = (TypeVariable) type;
                KTypeParameter kTypeParameter = (KTypeParameter) map.get(typeVariable3);
                if (kTypeParameter == null) {
                    Iterator it3 = c(typeVariable3).getD().iterator();
                    boolean z3 = false;
                    Object obj = null;
                    while (true) {
                        if (!it3.hasNext()) {
                            if (!z3) {
                                break;
                            }
                            break;
                        }
                        Object next = it3.next();
                        if (Intrinsics.c(((KTypeParameter) next).getD(), typeVariable3.getName())) {
                            if (!z3) {
                                z3 = true;
                                obj = next;
                            }
                        }
                        obj = null;
                        break;
                    }
                    kTypeParameter = (KTypeParameter) obj;
                    if (kTypeParameter == null) {
                        throw new KotlinReflectionInternalError("Type parameter " + typeVariable3.getName() + " is not found in " + c(typeVariable3));
                    }
                }
                simpleKTypeB = b(type, kTypeParameter, EmptyList.f71768b, false);
            }
        }
        KClassifier kClassifier = simpleKTypeB.f74442c;
        KClass kClass = kClassifier instanceof KClass ? (KClass) kClassifier : null;
        String str = JavaToKotlinClassMap.f72305a;
        if (kClass != null && (f74431c = kClass.getF74431c()) != null) {
            fqNameUnsafe = new FqNameUnsafe(f74431c);
        }
        FqName fqName = (FqName) JavaToKotlinClassMap.f72313k.get(fqNameUnsafe);
        AbstractKType abstractKTypeA = simpleKTypeB;
        abstractKTypeA = simpleKTypeB;
        if (fqName != null && kClass != null) {
            SimpleKType simpleKType = new SimpleKType(kClassifier, simpleKTypeB.d, simpleKTypeB.f74443e, EmptyList.f71768b, null, false, false, false, MutableCollectionKClassKt.a(fqName, kClass), new ConvertFromJavaKt$$Lambda$2(type));
            FlexibleKType.Companion companion3 = FlexibleKType.f74423f;
            Function0 function1 = new Function0(type) { // from class: kotlin.reflect.jvm.internal.ConvertFromJavaKt$$Lambda$0

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final Type f71988b;

                {
                    this.f71988b = type;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    return this.f71988b;
                }
            };
            companion3.getClass();
            abstractKTypeA = FlexibleKType.Companion.a(simpleKType, simpleKTypeB, false, function1);
        }
        int i3 = WhenMappings.f71998a[typeNullability2.ordinal()];
        if (i3 == 1) {
            return abstractKTypeA;
        }
        if (i3 == 2) {
            return abstractKTypeA.G(true);
        }
        FlexibleKType.Companion companion4 = FlexibleKType.f74423f;
        AbstractKType f74424c = abstractKTypeA.getF74424c();
        if (f74424c == null) {
            abstractKType = f74424c;
            abstractKType = abstractKTypeA;
        }
        abstractKType = f74424c;
        AbstractKType d = abstractKTypeA.getD();
        AbstractKType abstractKType2 = abstractKTypeA;
        if (d != null) {
            abstractKType2 = d;
        }
        AbstractKType abstractKTypeG = abstractKType2.G(true);
        Function0 function2 = new Function0(type) { // from class: kotlin.reflect.jvm.internal.ConvertFromJavaKt$$Lambda$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final Type f71989b;

            {
                this.f71989b = type;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.f71989b;
            }
        };
        companion4.getClass();
        return FlexibleKType.Companion.a(abstractKType, abstractKTypeG, false, function2);
    }

    public static final KTypeProjection f(Type type, Map map) {
        if (!(type instanceof WildcardType)) {
            KTypeProjection.Companion companion = KTypeProjection.INSTANCE;
            KType kTypeE = e(type, map, null, false, 6);
            companion.getClass();
            return KTypeProjection.Companion.a(kTypeE);
        }
        WildcardType wildcardType = (WildcardType) type;
        Type[] upperBounds = wildcardType.getUpperBounds();
        Type[] lowerBounds = wildcardType.getLowerBounds();
        if (upperBounds.length > 1 || lowerBounds.length > 1) {
            d20.c(type, "Wildcard types with many bounds are not supported: ");
            return null;
        }
        if (lowerBounds.length == 1) {
            KTypeProjection.Companion companion2 = KTypeProjection.INSTANCE;
            Object objQ = ArraysKt.Q(lowerBounds);
            objQ.getClass();
            KType kTypeE2 = e((Type) objQ, map, null, false, 6);
            companion2.getClass();
            kTypeE2.getClass();
            return new KTypeProjection(KVariance.IN, kTypeE2);
        }
        if (upperBounds.length != 1) {
            KTypeProjection.INSTANCE.getClass();
            return KTypeProjection.d;
        }
        KTypeProjection.Companion companion3 = KTypeProjection.INSTANCE;
        Object objQ2 = ArraysKt.Q(upperBounds);
        objQ2.getClass();
        KType kTypeE3 = e((Type) objQ2, map, null, false, 6);
        companion3.getClass();
        kTypeE3.getClass();
        return new KTypeProjection(KVariance.OUT, kTypeE3);
    }
}
