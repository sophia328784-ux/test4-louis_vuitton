package kotlin.reflect.jvm.internal;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.b21;
import defpackage.md;
import defpackage.mt;
import defpackage.tg0;
import defpackage.v40;
import io.jsonwebtoken.JwtParser;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.CallableReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.RepeatableContainer;
import kotlin.reflect.KCallable;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;
import kotlin.reflect.jvm.internal.calls.AnnotationConstructorCallerKt;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionTypeKind;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMap;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectAnnotationSource;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectJavaClassFinderKt;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectKotlinClass;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.RuntimeModuleData;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.RuntimeSourceElementFactory;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaAnnotation;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaElement;
import kotlin.reflect.jvm.internal.impl.km.KmClass;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinarySourceElement;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.BinaryVersion;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AnnotationValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ArrayValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ClassLiteralValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.EnumValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ErrorValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.KClassValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.NullValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.TypedArrayValue;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationComponents;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationContext;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000H\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a'\u0010\u0003\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0080\bø\u0001\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001an\u0010\u0016\u001a\u00028\u0001\"\b\b\u0000\u0010\u0006*\u00020\u0005\"\b\b\u0001\u0010\b*\u00020\u00072\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\t2\u0006\u0010\u000b\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u001d\u0010\u0015\u001a\u0019\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0012¢\u0006\u0002\b\u0014H\u0000¢\u0006\u0004\b\u0016\u0010\u0017\"\u001a\u0010\u001b\u001a\u0004\u0018\u00010\u0018*\u00020\u00078@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001a\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001c"}, d2 = {"R", "Lkotlin/Function0;", "block", "reflectionCall", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;", "M", "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;", "D", "Ljava/lang/Class;", "moduleAnchor", "proto", "Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;", "nameResolver", "Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;", "typeTable", "Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;", "metadataVersion", "Lkotlin/Function2;", "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;", "Lkotlin/ExtensionFunctionType;", "createDescriptor", "deserializeToDescriptor", "(Ljava/lang/Class;Lorg/jetbrains/kotlin/protobuf/MessageLite;Lorg/jetbrains/kotlin/metadata/deserialization/NameResolver;Lorg/jetbrains/kotlin/metadata/deserialization/TypeTable;Lorg/jetbrains/kotlin/metadata/deserialization/BinaryVersion;Lkotlin/jvm/functions/Function2;)Lorg/jetbrains/kotlin/descriptors/CallableDescriptor;", "Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;", "getInstanceReceiverParameter", "(Lorg/jetbrains/kotlin/descriptors/CallableDescriptor;)Lorg/jetbrains/kotlin/descriptors/ReceiverParameterDescriptor;", "instanceReceiverParameter", "kotlin-reflection"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class UtilKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final FqName f72187a = new FqName("kotlin.jvm.JvmStatic");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f72188b;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f72189a;

        static {
            int[] iArr = new int[PrimitiveType.values().length];
            try {
                iArr[PrimitiveType.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PrimitiveType.CHAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PrimitiveType.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PrimitiveType.SHORT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[PrimitiveType.INT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[PrimitiveType.FLOAT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[PrimitiveType.LONG.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[PrimitiveType.DOUBLE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            f72189a = iArr;
        }
    }

    static {
        StringBuilder sb = new StringBuilder();
        FunctionTypeKind.SuspendFunction suspendFunction = FunctionTypeKind.SuspendFunction.f72296c;
        sb.append(suspendFunction.f72291a.f73679a.f73683a);
        sb.append(JwtParser.SEPARATOR_CHAR);
        sb.append(suspendFunction.f72292b);
        f72188b = sb.toString();
    }

    public static final ReflectKCallable a(KCallable kCallable) {
        if (kCallable instanceof ReflectKCallable) {
            return (ReflectKCallable) kCallable;
        }
        if (!(kCallable instanceof CallableReference)) {
            return null;
        }
        KCallable kCallableCompute = ((CallableReference) kCallable).compute();
        if (kCallableCompute instanceof ReflectKCallable) {
            return (ReflectKCallable) kCallableCompute;
        }
        return null;
    }

    public static final List b(Annotated annotated) {
        Annotation annotationH;
        annotated.getClass();
        Annotations annotations = annotated.getAnnotations();
        ArrayList arrayList = new ArrayList();
        for (AnnotationDescriptor annotationDescriptor : annotations) {
            SourceElement source = annotationDescriptor.getSource();
            if (source instanceof ReflectAnnotationSource) {
                annotationH = ((ReflectAnnotationSource) source).f72577b;
            } else if (source instanceof RuntimeSourceElementFactory.RuntimeSourceElement) {
                ReflectJavaElement reflectJavaElement = ((RuntimeSourceElementFactory.RuntimeSourceElement) source).f72590b;
                ReflectJavaAnnotation reflectJavaAnnotation = reflectJavaElement instanceof ReflectJavaAnnotation ? (ReflectJavaAnnotation) reflectJavaElement : null;
                annotationH = reflectJavaAnnotation != null ? reflectJavaAnnotation.f72607a : null;
            } else {
                annotationH = h(annotationDescriptor);
            }
            if (annotationH != null) {
                arrayList.add(annotationH);
            }
        }
        return k(arrayList);
    }

    public static final Class c(Class cls) {
        cls.getClass();
        return Array.newInstance((Class<?>) cls, 0).getClass();
    }

    public static final Object d(Type type) {
        type.getClass();
        if (type instanceof Class) {
            Class cls = (Class) type;
            if (cls.isPrimitive()) {
                if (cls.equals(Boolean.TYPE)) {
                    return Boolean.FALSE;
                }
                if (cls.equals(Character.TYPE)) {
                    return (char) 0;
                }
                if (cls.equals(Byte.TYPE)) {
                    return (byte) 0;
                }
                if (cls.equals(Short.TYPE)) {
                    return (short) 0;
                }
                if (cls.equals(Integer.TYPE)) {
                    return 0;
                }
                if (cls.equals(Float.TYPE)) {
                    return Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                }
                if (cls.equals(Long.TYPE)) {
                    return 0L;
                }
                if (cls.equals(Double.TYPE)) {
                    return Double.valueOf(0.0d);
                }
                if (cls.equals(Void.TYPE)) {
                    md.k("Parameter with void type is illegal");
                    return null;
                }
                b21.p(type, "Unknown primitive: ");
            }
        }
        return null;
    }

    public static final CallableDescriptor e(Class cls, GeneratedMessageLite.ExtendableMessage extendableMessage, NameResolver nameResolver, TypeTable typeTable, BinaryVersion binaryVersion, Function2 function2) {
        List list;
        cls.getClass();
        extendableMessage.getClass();
        nameResolver.getClass();
        typeTable.getClass();
        binaryVersion.getClass();
        function2.getClass();
        RuntimeModuleData runtimeModuleDataA = ModuleByClassLoaderKt.a(cls);
        if (extendableMessage instanceof ProtoBuf$Function) {
            list = ((ProtoBuf$Function) extendableMessage).f73406j;
        } else {
            if (!(extendableMessage instanceof ProtoBuf$Property)) {
                mt.f(extendableMessage, "Unsupported message: ");
                return null;
            }
            list = ((ProtoBuf$Property) extendableMessage).f73442j;
        }
        List list2 = list;
        DeserializationComponents deserializationComponents = runtimeModuleDataA.f72587a;
        ModuleDescriptor moduleDescriptor = deserializationComponents.f73989b;
        VersionRequirementTable.f73600b.getClass();
        VersionRequirementTable versionRequirementTable = VersionRequirementTable.f73601c;
        list2.getClass();
        return (CallableDescriptor) function2.invoke(new MemberDeserializer(new DeserializationContext(deserializationComponents, nameResolver, moduleDescriptor, typeTable, versionRequirementTable, binaryVersion, null, null, list2)), extendableMessage);
    }

    public static final boolean f(KType kType) {
        kType.getClass();
        KClassifier kClassifierA = kType.getF74442c();
        KClassImpl kClassImpl = kClassifierA instanceof KClassImpl ? (KClassImpl) kClassifierA : null;
        if (kClassImpl == null || !kClassImpl.r()) {
            return false;
        }
        KmClass kmClassX = kClassImpl.X();
        return (kmClassX != null ? kmClassX.m : null) == null;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final Class g(ClassLoader classLoader, ClassId classId, int i2) {
        classLoader.getClass();
        classId.getClass();
        FqNameUnsafe fqNameUnsafe = classId.a().f73679a;
        String str = fqNameUnsafe.f73683a;
        Integer intOrNull = StringsKt.toIntOrNull(StringsKt.Q(str, f72188b, str));
        if (intOrNull != null) {
            int iIntValue = intOrNull.intValue();
            FunctionTypeKind.Function function = FunctionTypeKind.Function.f72293c;
            function.getClass();
            return g(classLoader, new ClassId(function.f72291a, function.a(iIntValue + 1)), i2);
        }
        String str2 = JavaToKotlinClassMap.f72305a;
        ClassId classIdF = JavaToKotlinClassMap.f(fqNameUnsafe);
        if (classIdF == null) {
            classIdF = classId;
        }
        if (!classIdF.equals(classId)) {
            classLoader = ReflectClassUtilKt.d(Unit.class);
        }
        String str3 = classIdF.f73675a.f73679a.f73683a;
        String str4 = classIdF.f73676b.f73679a.f73683a;
        if (Intrinsics.c(str3, "kotlin")) {
            switch (str4.hashCode()) {
                case -901856463:
                    if (str4.equals("BooleanArray")) {
                        return boolean[].class;
                    }
                    break;
                case -763279523:
                    if (str4.equals("ShortArray")) {
                        return short[].class;
                    }
                    break;
                case -755911549:
                    if (str4.equals("CharArray")) {
                        return char[].class;
                    }
                    break;
                case -74930671:
                    if (str4.equals("ByteArray")) {
                        return byte[].class;
                    }
                    break;
                case 22374632:
                    if (str4.equals("DoubleArray")) {
                        return double[].class;
                    }
                    break;
                case 63537721:
                    if (str4.equals("Array")) {
                        return Object[].class;
                    }
                    break;
                case 601811914:
                    if (str4.equals("IntArray")) {
                        return int[].class;
                    }
                    break;
                case 948852093:
                    if (str4.equals("FloatArray")) {
                        return float[].class;
                    }
                    break;
                case 2104330525:
                    if (str4.equals("LongArray")) {
                        return long[].class;
                    }
                    break;
            }
        }
        StringBuilder sb = new StringBuilder();
        if (i2 > 0) {
            for (int i3 = 0; i3 < i2; i3++) {
                sb.append("[");
            }
            sb.append("L");
        }
        if (str3.length() > 0) {
            sb.append(str3.concat(FileUtils.HIDDEN_PREFIX));
        }
        sb.append(StringsKt.I(str4, JwtParser.SEPARATOR_CHAR, '$'));
        if (i2 > 0) {
            sb.append(";");
        }
        return ReflectJavaClassFinderKt.a(classLoader, sb.toString());
    }

    public static final Annotation h(AnnotationDescriptor annotationDescriptor) {
        ClassDescriptor classDescriptorD = DescriptorUtilsKt.d(annotationDescriptor);
        Class clsI = classDescriptorD != null ? i(classDescriptorD) : null;
        if (clsI == null) {
            clsI = null;
        }
        if (clsI == null) {
            return null;
        }
        Set<Map.Entry> setEntrySet = annotationDescriptor.a().entrySet();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : setEntrySet) {
            Name name = (Name) entry.getKey();
            ConstantValue constantValue = (ConstantValue) entry.getValue();
            ClassLoader classLoader = clsI.getClassLoader();
            classLoader.getClass();
            Object objJ = j(constantValue, classLoader);
            Pair pair = objJ != null ? new Pair(name.b(), objJ) : null;
            if (pair != null) {
                arrayList.add(pair);
            }
        }
        return (Annotation) AnnotationConstructorCallerKt.b(clsI, MapsKt.n(arrayList));
    }

    public static final Class i(ClassDescriptor classDescriptor) {
        classDescriptor.getClass();
        SourceElement source = classDescriptor.getSource();
        source.getClass();
        if (source instanceof KotlinJvmBinarySourceElement) {
            KotlinJvmBinaryClass kotlinJvmBinaryClass = ((KotlinJvmBinarySourceElement) source).f73258b;
            kotlinJvmBinaryClass.getClass();
            return ((ReflectKotlinClass) kotlinJvmBinaryClass).f72580a;
        }
        if (source instanceof RuntimeSourceElementFactory.RuntimeSourceElement) {
            ReflectJavaElement reflectJavaElement = ((RuntimeSourceElementFactory.RuntimeSourceElement) source).f72590b;
            reflectJavaElement.getClass();
            return ((ReflectJavaClass) reflectJavaElement).f72614a;
        }
        ClassId classIdF = DescriptorUtilsKt.f(classDescriptor);
        if (classIdF == null) {
            return null;
        }
        return g(ReflectClassUtilKt.d(classDescriptor.getClass()), classIdF, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Object j(ConstantValue constantValue, ClassLoader classLoader) {
        KotlinType kotlinType;
        Class clsG;
        if (constantValue instanceof AnnotationValue) {
            return h((AnnotationDescriptor) ((AnnotationValue) constantValue).f73869a);
        }
        int i2 = 0;
        if (constantValue instanceof ArrayValue) {
            ArrayValue arrayValue = (ArrayValue) constantValue;
            TypedArrayValue typedArrayValue = arrayValue instanceof TypedArrayValue ? (TypedArrayValue) arrayValue : null;
            if (typedArrayValue != null && (kotlinType = typedArrayValue.f73885c) != null) {
                Object obj = arrayValue.f73869a;
                Iterable iterable = (Iterable) obj;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(iterable, 10));
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    arrayList.add(j((ConstantValue) it.next(), classLoader));
                }
                Name name = KotlinBuiltIns.f72242f;
                ClassifierDescriptor classifierDescriptorY = kotlinType.H0().y();
                PrimitiveType primitiveTypeS = classifierDescriptorY == null ? null : KotlinBuiltIns.s(classifierDescriptorY);
                switch (primitiveTypeS == null ? -1 : WhenMappings.f72189a[primitiveTypeS.ordinal()]) {
                    case -1:
                        if (!KotlinBuiltIns.z(kotlinType)) {
                            tg0.d(kotlinType, "Not an array type: ");
                            return null;
                        }
                        KotlinType type = ((TypeProjection) CollectionsKt.h0(kotlinType.F0())).getType();
                        type.getClass();
                        ClassifierDescriptor classifierDescriptorY2 = type.H0().y();
                        ClassDescriptor classDescriptor = classifierDescriptorY2 instanceof ClassDescriptor ? (ClassDescriptor) classifierDescriptorY2 : null;
                        if (classDescriptor == null) {
                            mt.f(type, "Not a class type: ");
                            return null;
                        }
                        if (KotlinBuiltIns.I(type)) {
                            int size = ((List) obj).size();
                            String[] strArr = new String[size];
                            while (i2 < size) {
                                Object obj2 = arrayList.get(i2);
                                obj2.getClass();
                                strArr[i2] = obj2;
                                i2++;
                            }
                            return strArr;
                        }
                        if (KotlinBuiltIns.b(classDescriptor, StandardNames.FqNames.Q)) {
                            int size2 = ((List) obj).size();
                            Class[] clsArr = new Class[size2];
                            while (i2 < size2) {
                                Object obj3 = arrayList.get(i2);
                                obj3.getClass();
                                clsArr[i2] = obj3;
                                i2++;
                            }
                            return clsArr;
                        }
                        ClassId classIdF = DescriptorUtilsKt.f(classDescriptor);
                        if (classIdF != null && (clsG = g(classLoader, classIdF, 0)) != null) {
                            Object objNewInstance = Array.newInstance((Class<?>) clsG, ((List) obj).size());
                            objNewInstance.getClass();
                            Object[] objArr = (Object[]) objNewInstance;
                            int size3 = arrayList.size();
                            while (i2 < size3) {
                                objArr[i2] = arrayList.get(i2);
                                i2++;
                            }
                            return objArr;
                        }
                        break;
                    case 0:
                    default:
                        v40.g();
                        return null;
                    case 1:
                        int size4 = ((List) obj).size();
                        boolean[] zArr = new boolean[size4];
                        while (i2 < size4) {
                            Object obj4 = arrayList.get(i2);
                            obj4.getClass();
                            zArr[i2] = ((Boolean) obj4).booleanValue();
                            i2++;
                        }
                        return zArr;
                    case 2:
                        int size5 = ((List) obj).size();
                        char[] cArr = new char[size5];
                        while (i2 < size5) {
                            Object obj5 = arrayList.get(i2);
                            obj5.getClass();
                            cArr[i2] = ((Character) obj5).charValue();
                            i2++;
                        }
                        return cArr;
                    case 3:
                        int size6 = ((List) obj).size();
                        byte[] bArr = new byte[size6];
                        while (i2 < size6) {
                            Object obj6 = arrayList.get(i2);
                            obj6.getClass();
                            bArr[i2] = ((Byte) obj6).byteValue();
                            i2++;
                        }
                        return bArr;
                    case 4:
                        int size7 = ((List) obj).size();
                        short[] sArr = new short[size7];
                        while (i2 < size7) {
                            Object obj7 = arrayList.get(i2);
                            obj7.getClass();
                            sArr[i2] = ((Short) obj7).shortValue();
                            i2++;
                        }
                        return sArr;
                    case 5:
                        int size8 = ((List) obj).size();
                        int[] iArr = new int[size8];
                        while (i2 < size8) {
                            Object obj8 = arrayList.get(i2);
                            obj8.getClass();
                            iArr[i2] = ((Integer) obj8).intValue();
                            i2++;
                        }
                        return iArr;
                    case 6:
                        int size9 = ((List) obj).size();
                        float[] fArr = new float[size9];
                        while (i2 < size9) {
                            Object obj9 = arrayList.get(i2);
                            obj9.getClass();
                            fArr[i2] = ((Float) obj9).floatValue();
                            i2++;
                        }
                        return fArr;
                    case 7:
                        int size10 = ((List) obj).size();
                        long[] jArr = new long[size10];
                        while (i2 < size10) {
                            Object obj10 = arrayList.get(i2);
                            obj10.getClass();
                            jArr[i2] = ((Long) obj10).longValue();
                            i2++;
                        }
                        return jArr;
                    case 8:
                        int size11 = ((List) obj).size();
                        double[] dArr = new double[size11];
                        while (i2 < size11) {
                            Object obj11 = arrayList.get(i2);
                            obj11.getClass();
                            dArr[i2] = ((Double) obj11).doubleValue();
                            i2++;
                        }
                        return dArr;
                }
            }
        } else if (constantValue instanceof EnumValue) {
            Pair pair = (Pair) ((EnumValue) constantValue).f73869a;
            ClassId classId = (ClassId) pair.f71705b;
            Name name2 = (Name) pair.f71706c;
            Class clsG2 = g(classLoader, classId, 0);
            if (clsG2 != null) {
                return Enum.valueOf(clsG2, name2.b());
            }
        } else {
            if (!(constantValue instanceof KClassValue)) {
                if ((constantValue instanceof ErrorValue) || (constantValue instanceof NullValue)) {
                    return null;
                }
                return constantValue.b();
            }
            KClassValue.Value value = (KClassValue.Value) ((KClassValue) constantValue).f73869a;
            if (value instanceof KClassValue.Value.NormalClass) {
                ClassLiteralValue classLiteralValue = ((KClassValue.Value.NormalClass) value).f73884a;
                return g(classLoader, classLiteralValue.f73867a, classLiteralValue.f73868b);
            }
            if (!(value instanceof KClassValue.Value.LocalClass)) {
                v40.g();
                return null;
            }
            ClassifierDescriptor classifierDescriptorY3 = ((KClassValue.Value.LocalClass) value).f73883a.H0().y();
            ClassDescriptor classDescriptor2 = classifierDescriptorY3 instanceof ClassDescriptor ? (ClassDescriptor) classifierDescriptorY3 : null;
            if (classDescriptor2 != null) {
                return i(classDescriptor2);
            }
        }
        return null;
    }

    public static final List k(ArrayList arrayList) throws IllegalAccessException, InvocationTargetException {
        List listO;
        if (!arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (JvmClassMappingKt.b(JvmClassMappingKt.a((Annotation) it.next())).getSimpleName().equals("Container")) {
                    ArrayList arrayList2 = new ArrayList();
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        Annotation annotation = (Annotation) it2.next();
                        Class clsB = JvmClassMappingKt.b(JvmClassMappingKt.a(annotation));
                        if (!clsB.getSimpleName().equals("Container") || clsB.getAnnotation(RepeatableContainer.class) == null) {
                            listO = CollectionsKt.O(annotation);
                        } else {
                            Object objInvoke = clsB.getDeclaredMethod("value", null).invoke(annotation, null);
                            objInvoke.getClass();
                            listO = Arrays.asList((Annotation[]) objInvoke);
                            listO.getClass();
                        }
                        CollectionsKt.j(arrayList2, listO);
                    }
                    return arrayList2;
                }
            }
        }
        return arrayList;
    }
}
