package kotlin.reflect.jvm.internal;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.d20;
import defpackage.fc;
import defpackage.pq0;
import defpackage.tr;
import defpackage.v40;
import io.jsonwebtoken.JwtParser;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KFunction;
import kotlin.reflect.KParameter;
import kotlin.reflect.KProperty;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;
import kotlin.reflect.KVariance;
import kotlin.reflect.jvm.KTypesJvm;
import kotlin.reflect.jvm.internal.calls.AnnotationConstructorCallerKt;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMap;
import kotlin.reflect.jvm.internal.impl.km.Attributes;
import kotlin.reflect.jvm.internal.impl.km.KmAnnotation;
import kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.km.KmClassifier;
import kotlin.reflect.jvm.internal.impl.km.KmType;
import kotlin.reflect.jvm.internal.impl.km.KmTypeProjection;
import kotlin.reflect.jvm.internal.impl.km.KmVariance;
import kotlin.reflect.jvm.internal.impl.km.internal.BooleanFlagDelegate;
import kotlin.reflect.jvm.internal.impl.km.internal.extensions.ExtensionNodesKt;
import kotlin.reflect.jvm.internal.impl.km.internal.extensions.KmExtensionType;
import kotlin.reflect.jvm.internal.impl.km.internal.extensions.KmTypeExtension;
import kotlin.reflect.jvm.internal.impl.km.jvm.internal.JvmTypeExtension;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.types.DescriptorKType;
import kotlin.reflect.jvm.internal.types.MutableCollectionKClass;
import kotlin.reflect.jvm.internal.types.MutableCollectionKClassKt;
import kotlin.reflect.jvm.internal.types.SimpleKType;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.TransformingIndexedSequence;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0003²\u0006\u0012\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u00008\nX\u008a\u0084\u0002"}, d2 = {"", "Ljava/lang/reflect/Type;", "javaParameterizedTypeArguments", "kotlin-reflection"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ConvertFromMetadataKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f72008a;

        static {
            int[] iArr = new int[KmVariance.values().length];
            try {
                iArr[KmVariance.IN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[KmVariance.OUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[KmVariance.INVARIANT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f72008a = iArr;
        }
    }

    public static final Function0 a(int i2, Function0 function0) {
        return new ConvertFromMetadataKt$$Lambda$3(function0, i2);
    }

    public static final KClass b(ClassLoader classLoader, String str) {
        classLoader.getClass();
        str.getClass();
        Class clsG = UtilKt.g(classLoader, e(str), 0);
        if (clsG != null) {
            return Reflection.f71922a.b(clsG);
        }
        return null;
    }

    public static final Annotation c(KmAnnotation kmAnnotation, ClassLoader classLoader) {
        String str = kmAnnotation.f72667a;
        Class clsG = UtilKt.g(classLoader, e(str), 0);
        if (clsG == null) {
            throw new KotlinReflectionInternalError(tr.g("Annotation class not found: ", str));
        }
        Map map = kmAnnotation.f72668b;
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.g(map.size()));
        for (Map.Entry entry : map.entrySet()) {
            linkedHashMap.put(entry.getKey(), d((KmAnnotationArgument) entry.getValue(), str, (String) entry.getKey(), classLoader));
        }
        return (Annotation) AnnotationConstructorCallerKt.b(clsG, linkedHashMap);
    }

    public static final Object d(KmAnnotationArgument kmAnnotationArgument, String str, String str2, ClassLoader classLoader) {
        List parameters;
        if (kmAnnotationArgument instanceof KmAnnotationArgument.AnnotationValue) {
            return c(((KmAnnotationArgument.AnnotationValue) kmAnnotationArgument).f72670a, classLoader);
        }
        int i2 = 0;
        if (kmAnnotationArgument instanceof KmAnnotationArgument.ArrayKClassValue) {
            KmAnnotationArgument.ArrayKClassValue arrayKClassValue = (KmAnnotationArgument.ArrayKClassValue) kmAnnotationArgument;
            String str3 = arrayKClassValue.f72671a;
            KClass kClassB = b(classLoader, str3);
            if (kClassB == null) {
                throw new KotlinReflectionInternalError("Unresolved class: ".concat(str3));
            }
            Class clsB = JvmClassMappingKt.b(kClassB);
            int i3 = arrayKClassValue.f72672b;
            while (i2 < i3) {
                clsB = UtilKt.c(clsB);
                i2++;
            }
            return clsB;
        }
        Object obj = null;
        if (kmAnnotationArgument instanceof KmAnnotationArgument.ArrayValue) {
            KClass kClassB2 = b(classLoader, str);
            if (kClassB2 != null) {
                if (!JvmClassMappingKt.b(kClassB2).isAnnotation()) {
                    kClassB2 = null;
                }
                if (kClassB2 != null) {
                    KFunction kFunction = (KFunction) CollectionsKt.i0(kClassB2.f());
                    if (kFunction != null && (parameters = kFunction.getParameters()) != null) {
                        Iterator it = parameters.iterator();
                        boolean z = false;
                        Object obj2 = null;
                        while (true) {
                            if (!it.hasNext()) {
                                if (!z) {
                                    break;
                                }
                                break;
                            }
                            Object next = it.next();
                            if (Intrinsics.c(((KParameter) next).getName(), str2)) {
                                if (!z) {
                                    z = true;
                                    obj2 = next;
                                }
                            }
                            obj2 = null;
                            break;
                        }
                        KParameter kParameter = (KParameter) obj2;
                        if (kParameter != null) {
                            DescriptorKType type = kParameter.getType();
                            KClassifier f74442c = type.getF74442c();
                            KClass kClass = f74442c instanceof KClass ? (KClass) f74442c : null;
                            if (kClass == null) {
                                d20.c(type, "Array parameter type is not a class: ");
                                return null;
                            }
                            Class clsB2 = JvmClassMappingKt.b(kClass);
                            Class<?> componentType = Intrinsics.c(clsB2.getComponentType(), KClass.class) ? Class.class : clsB2.getComponentType();
                            List list = ((KmAnnotationArgument.ArrayValue) kmAnnotationArgument).f72674a;
                            Object objNewInstance = Array.newInstance(componentType, list.size());
                            Iterator it2 = list.iterator();
                            while (it2.hasNext()) {
                                Array.set(objNewInstance, i2, d((KmAnnotationArgument) it2.next(), str, null, classLoader));
                                i2++;
                            }
                            objNewInstance.getClass();
                            return objNewInstance;
                        }
                    }
                    throw new KotlinReflectionInternalError(fc.i("No parameter ", str2, " found in annotation constructor of ", str));
                }
            }
            throw new KotlinReflectionInternalError("Not an annotation class: ".concat(str));
        }
        if (!(kmAnnotationArgument instanceof KmAnnotationArgument.EnumValue)) {
            if (!(kmAnnotationArgument instanceof KmAnnotationArgument.KClassValue)) {
                if (kmAnnotationArgument instanceof KmAnnotationArgument.LiteralValue) {
                    return ((KmAnnotationArgument.LiteralValue) kmAnnotationArgument).a();
                }
                v40.g();
                return null;
            }
            String str4 = ((KmAnnotationArgument.KClassValue) kmAnnotationArgument).f72683a;
            Class clsG = UtilKt.g(classLoader, e(str4), 0);
            if (clsG != null) {
                return clsG;
            }
            throw new KotlinReflectionInternalError("Unresolved class: ".concat(str4));
        }
        KmAnnotationArgument.EnumValue enumValue = (KmAnnotationArgument.EnumValue) kmAnnotationArgument;
        String str5 = enumValue.f72680b;
        String str6 = enumValue.f72679a;
        Class clsG2 = UtilKt.g(classLoader, e(str6), 0);
        if (clsG2 == null) {
            throw new KotlinReflectionInternalError("Unresolved enum class: ".concat(str6));
        }
        Object[] enumConstants = clsG2.getEnumConstants();
        enumConstants.getClass();
        int length = enumConstants.length;
        boolean z2 = false;
        Object obj3 = null;
        while (true) {
            if (i2 >= length) {
                if (!z2) {
                    break;
                }
                obj = obj3;
                break;
            }
            Object obj4 = enumConstants[i2];
            obj4.getClass();
            if (Intrinsics.c(((Enum) obj4).name(), str5)) {
                if (z2) {
                    break;
                }
                z2 = true;
                obj3 = obj4;
            }
            i2++;
        }
        if (obj != null) {
            return obj;
        }
        throw new KotlinReflectionInternalError("Unresolved enum entry: " + str6 + JwtParser.SEPARATOR_CHAR + str5);
    }

    public static final ClassId e(String str) {
        str.getClass();
        boolean zP = StringsKt.P(str, FileUtils.HIDDEN_PREFIX, false);
        if (zP) {
            str = str.substring(1);
        }
        int iZ = StringsKt.z(str, '/', 0, 6);
        String strReplace = (iZ == -1 ? "" : str.substring(0, iZ)).replace('/', JwtParser.SEPARATOR_CHAR);
        strReplace.getClass();
        return new ClassId(new FqName(strReplace), new FqName(StringsKt.R('/', str, str)), zP);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00cf A[LOOP:0: B:24:0x00c9->B:26:0x00cf, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:29:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:30:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:33:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:34:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:36:0x0102  */
    /* JADX WARN: Code duplicated, block: B:37:0x0105  */
    /* JADX WARN: Code duplicated, block: B:40:0x011e  */
    /* JADX WARN: Code duplicated, block: B:41:0x0121  */
    /* JADX WARN: Code duplicated, block: B:48:0x0136  */
    public static final SimpleKType f(KmType kmType, final ClassLoader classLoader, final TypeParameterTable typeParameterTable, final Function0 function0) {
        KClassifier kClassifierA;
        KClassifier kClassifierB;
        ArrayList arrayList;
        Iterator it;
        KmType kmType2;
        SimpleKType simpleKTypeF;
        KmClassifier kmClassifierA;
        KmClassifier.Class r1;
        String str;
        KmClassifier kmClassifierA2;
        KmClassifier.Class r0;
        String str2;
        ClassId classIdE;
        kmType.getClass();
        classLoader.getClass();
        typeParameterTable.getClass();
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        List listX = SequencesKt.x(new TransformingIndexedSequence(SequencesKt.j(SequencesKt.n(kmType, new Function1() { // from class: kotlin.reflect.jvm.internal.ConvertFromMetadataKt$$Lambda$0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                KmType kmType3 = (KmType) obj;
                kmType3.getClass();
                return kmType3.f72740e;
            }
        }), new Function1() { // from class: kotlin.reflect.jvm.internal.ConvertFromMetadataKt$$Lambda$1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                KmType kmType3 = (KmType) obj;
                kmType3.getClass();
                return kmType3.f72739c;
            }
        }), new Function2(classLoader, typeParameterTable, function0, ref$ObjectRef) { // from class: kotlin.reflect.jvm.internal.ConvertFromMetadataKt$$Lambda$2

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final ClassLoader f72001b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final TypeParameterTable f72002c;
            public final Function0 d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final Ref$ObjectRef f72003e;

            {
                this.f72001b = classLoader;
                this.f72002c = typeParameterTable;
                this.d = function0;
                this.f72003e = ref$ObjectRef;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                ConvertFromMetadataKt$$Lambda$3 convertFromMetadataKt$$Lambda$3;
                int iIntValue = ((Number) obj).intValue();
                KmTypeProjection kmTypeProjection = (KmTypeProjection) obj2;
                kmTypeProjection.getClass();
                if (this.d == null) {
                    convertFromMetadataKt$$Lambda$3 = null;
                } else {
                    final Ref$ObjectRef ref$ObjectRef2 = this.f72003e;
                    convertFromMetadataKt$$Lambda$3 = new ConvertFromMetadataKt$$Lambda$3(new Function0(ref$ObjectRef2) { // from class: kotlin.reflect.jvm.internal.ConvertFromMetadataKt$$Lambda$4

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public final Ref$ObjectRef f72006b;

                        {
                            this.f72006b = ref$ObjectRef2;
                        }

                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            Object obj3 = this.f72006b.f71921b;
                            if (obj3 != null) {
                                return (SimpleKType) obj3;
                            }
                            Intrinsics.h("result");
                            throw null;
                        }
                    }, iIntValue);
                }
                if (kmTypeProjection.equals(KmTypeProjection.f72750c)) {
                    KTypeProjection.INSTANCE.getClass();
                    return KTypeProjection.d;
                }
                KmVariance kmVariance = kmTypeProjection.f72751a;
                KVariance kVarianceG = kmVariance != null ? ConvertFromMetadataKt.g(kmVariance) : null;
                KmType kmType3 = kmTypeProjection.f72752b;
                return new KTypeProjection(kVarianceG, kmType3 != null ? ConvertFromMetadataKt.f(kmType3, this.f72001b, this.f72002c, convertFromMetadataKt$$Lambda$3) : null);
            }
        }));
        KmClassifier kmClassifierA3 = kmType.a();
        MutableCollectionKClass mutableCollectionKClassA = null;
        if (kmClassifierA3 instanceof KmClassifier.Class) {
            String str3 = ((KmClassifier.Class) kmClassifierA3).f72700a;
            if (Intrinsics.c(str3, "kotlin/Array")) {
                KType kType = ((KTypeProjection) CollectionsKt.h0(listX)).f71960b;
                if (kType == null) {
                    kType = StandardKTypes.f72178a;
                }
                kClassifierB = Reflection.f71922a.b(UtilKt.c(JvmClassMappingKt.b(KTypesJvm.b(kType))));
            } else {
                kClassifierA = b(classLoader, str3);
                if (kClassifierA == null) {
                    throw new KotlinReflectionInternalError("Class not found: ".concat(str3));
                }
            }
            boolean zA = Attributes.g.a(kmType, Attributes.f72643a[46]);
            KmExtensionType kmExtensionType = JvmTypeExtension.f72813c;
            kmExtensionType.getClass();
            ArrayList arrayList2 = ((JvmTypeExtension) ((KmTypeExtension) ExtensionNodesKt.a(kmType.g, kmExtensionType))).f72815b;
            arrayList = new ArrayList(CollectionsKt.t(arrayList2, 10));
            it = arrayList2.iterator();
            while (it.hasNext()) {
                arrayList.add(c((KmAnnotation) it.next(), classLoader));
            }
            kmType2 = kmType.d;
            if (kmType2 != null) {
                simpleKTypeF = f(kmType2, classLoader, typeParameterTable, null);
            } else {
                simpleKTypeF = null;
            }
            BooleanFlagDelegate booleanFlagDelegate = Attributes.f72649i;
            KProperty[] kPropertyArr = Attributes.f72643a;
            boolean zA2 = booleanFlagDelegate.a(kmType, kPropertyArr[48]);
            kmClassifierA = kmType.a();
            if (kmClassifierA instanceof KmClassifier.Class) {
                r1 = (KmClassifier.Class) kmClassifierA;
            } else {
                r1 = null;
            }
            if (r1 != null) {
                str = r1.f72700a;
            } else {
                str = null;
            }
            boolean zC = Intrinsics.c(str, "kotlin/Nothing");
            boolean zA3 = Attributes.f72648h.a(kmType, kPropertyArr[47]);
            kmClassifierA2 = kmType.a();
            if (kmClassifierA2 instanceof KmClassifier.Class) {
                r0 = (KmClassifier.Class) kmClassifierA2;
            } else {
                r0 = null;
            }
            if (r0 != null && (str2 = r0.f72700a) != null) {
                classIdE = e(str2);
                if (JavaToKotlinClassMap.l.containsKey(classIdE)) {
                    mutableCollectionKClassA = MutableCollectionKClassKt.a(classIdE.a(), (KClass) kClassifierB);
                }
            }
            SimpleKType simpleKType = new SimpleKType(kClassifierB, listX, zA, arrayList, simpleKTypeF, zA2, zC, zA3, mutableCollectionKClassA, function0);
            ref$ObjectRef.f71921b = simpleKType;
            return simpleKType;
        }
        if (kmClassifierA3 instanceof KmClassifier.TypeAlias) {
            kClassifierA = new KTypeAliasImpl(e(((KmClassifier.TypeAlias) kmClassifierA3).f72701a).a());
        } else {
            if (!(kmClassifierA3 instanceof KmClassifier.TypeParameter)) {
                v40.g();
                return null;
            }
            int i2 = ((KmClassifier.TypeParameter) kmClassifierA3).f72702a;
            kClassifierA = typeParameterTable.a(i2);
            if (kClassifierA == null) {
                throw new KotlinReflectionInternalError(pq0.k(i2, "Type parameter not found: "));
            }
        }
        kClassifierB = kClassifierA;
        boolean zA4 = Attributes.g.a(kmType, Attributes.f72643a[46]);
        KmExtensionType kmExtensionType2 = JvmTypeExtension.f72813c;
        kmExtensionType2.getClass();
        ArrayList arrayList3 = ((JvmTypeExtension) ((KmTypeExtension) ExtensionNodesKt.a(kmType.g, kmExtensionType2))).f72815b;
        arrayList = new ArrayList(CollectionsKt.t(arrayList3, 10));
        it = arrayList3.iterator();
        while (it.hasNext()) {
            arrayList.add(c((KmAnnotation) it.next(), classLoader));
        }
        kmType2 = kmType.d;
        if (kmType2 != null) {
            simpleKTypeF = f(kmType2, classLoader, typeParameterTable, null);
        } else {
            simpleKTypeF = null;
        }
        BooleanFlagDelegate booleanFlagDelegate2 = Attributes.f72649i;
        KProperty[] kPropertyArr2 = Attributes.f72643a;
        boolean zA5 = booleanFlagDelegate2.a(kmType, kPropertyArr2[48]);
        kmClassifierA = kmType.a();
        if (kmClassifierA instanceof KmClassifier.Class) {
            r1 = (KmClassifier.Class) kmClassifierA;
        } else {
            r1 = null;
        }
        if (r1 != null) {
            str = r1.f72700a;
        } else {
            str = null;
        }
        boolean zC2 = Intrinsics.c(str, "kotlin/Nothing");
        boolean zA6 = Attributes.f72648h.a(kmType, kPropertyArr2[47]);
        kmClassifierA2 = kmType.a();
        if (kmClassifierA2 instanceof KmClassifier.Class) {
            r0 = (KmClassifier.Class) kmClassifierA2;
        } else {
            r0 = null;
        }
        if (r0 != null) {
            classIdE = e(str2);
            if (JavaToKotlinClassMap.l.containsKey(classIdE)) {
                mutableCollectionKClassA = MutableCollectionKClassKt.a(classIdE.a(), (KClass) kClassifierB);
            }
        }
        SimpleKType simpleKType2 = new SimpleKType(kClassifierB, listX, zA4, arrayList, simpleKTypeF, zA5, zC2, zA6, mutableCollectionKClassA, function0);
        ref$ObjectRef.f71921b = simpleKType2;
        return simpleKType2;
    }

    public static final KVariance g(KmVariance kmVariance) {
        int i2 = WhenMappings.f72008a[kmVariance.ordinal()];
        if (i2 == 1) {
            return KVariance.IN;
        }
        if (i2 == 2) {
            return KVariance.OUT;
        }
        if (i2 == 3) {
            return KVariance.INVARIANT;
        }
        v40.g();
        return null;
    }
}
