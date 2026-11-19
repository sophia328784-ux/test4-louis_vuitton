package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import defpackage.tg0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgressionIterator;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AnnotationValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ArrayValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.BooleanValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ByteValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.CharValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.DoubleValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.EnumValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ErrorValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.FloatValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.IntValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.KClassValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.LongValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ShortValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.StringValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.TypedArrayValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.UByteValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.UIntValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ULongValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.UShortValue;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;

/* JADX INFO: loaded from: classes4.dex */
public final class AnnotationDeserializer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ModuleDescriptor f73975a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final NotFoundClasses f73976b;

    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f73977a;

        static {
            int[] iArr = new int[ProtoBuf$Annotation.Argument.Value.Type.values().length];
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.BYTE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.CHAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.SHORT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.INT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.LONG.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.FLOAT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.DOUBLE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.BOOLEAN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.STRING.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.CLASS.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.ENUM.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.ANNOTATION.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.ARRAY.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            f73977a = iArr;
        }
    }

    public AnnotationDeserializer(ModuleDescriptor moduleDescriptor, NotFoundClasses notFoundClasses) {
        moduleDescriptor.getClass();
        notFoundClasses.getClass();
        this.f73975a = moduleDescriptor;
        this.f73976b = notFoundClasses;
    }

    public final AnnotationDescriptorImpl a(ProtoBuf$Annotation protoBuf$Annotation, NameResolver nameResolver) {
        protoBuf$Annotation.getClass();
        nameResolver.getClass();
        ClassDescriptor classDescriptorC = FindClassInModuleKt.c(this.f73975a, NameResolverUtilKt.a(nameResolver, protoBuf$Annotation.d), this.f73976b);
        Map mapC = MapsKt.c();
        if (protoBuf$Annotation.f73302e.size() != 0 && !ErrorUtils.f(classDescriptorC)) {
            int i2 = DescriptorUtils.f73834a;
            if (DescriptorUtils.l(classDescriptorC, ClassKind.ANNOTATION_CLASS)) {
                Collection collectionF = classDescriptorC.f();
                collectionF.getClass();
                ClassConstructorDescriptor classConstructorDescriptor = (ClassConstructorDescriptor) CollectionsKt.i0(collectionF);
                if (classConstructorDescriptor != null) {
                    List listH = classConstructorDescriptor.h();
                    listH.getClass();
                    List list = listH;
                    int iG = MapsKt.g(CollectionsKt.t(list, 10));
                    if (iG < 16) {
                        iG = 16;
                    }
                    LinkedHashMap linkedHashMap = new LinkedHashMap(iG);
                    for (Object obj : list) {
                        linkedHashMap.put(((ValueParameterDescriptor) obj).getName(), obj);
                    }
                    List<ProtoBuf$Annotation.Argument> list2 = protoBuf$Annotation.f73302e;
                    list2.getClass();
                    ArrayList arrayList = new ArrayList();
                    for (ProtoBuf$Annotation.Argument argument : list2) {
                        argument.getClass();
                        ValueParameterDescriptor valueParameterDescriptor = (ValueParameterDescriptor) linkedHashMap.get(Name.d(nameResolver.getString(argument.d)));
                        Object pair = null;
                        if (valueParameterDescriptor != null) {
                            Name nameD = Name.d(nameResolver.getString(argument.d));
                            KotlinType type = valueParameterDescriptor.getType();
                            type.getClass();
                            ProtoBuf$Annotation.Argument.Value value = argument.f73308e;
                            value.getClass();
                            ConstantValue constantValueC = c(type, value, nameResolver);
                            pair = b(constantValueC, type, value) ? constantValueC : null;
                            if (pair == null) {
                                ErrorValue.Companion companion = ErrorValue.f73873b;
                                String str = "Unexpected argument value: actual type " + value.d + " != expected type " + type;
                                companion.getClass();
                                pair = new ErrorValue.ErrorValueWithMessage(str);
                            }
                            pair = new Pair(nameD, pair);
                        }
                        if (pair != null) {
                            arrayList.add(pair);
                        }
                    }
                    mapC = MapsKt.n(arrayList);
                }
            }
        }
        return new AnnotationDescriptorImpl(classDescriptorC.o(), mapC, SourceElement.f72405a);
    }

    public final boolean b(ConstantValue constantValue, KotlinType kotlinType, ProtoBuf$Annotation.Argument.Value value) {
        ProtoBuf$Annotation.Argument.Value.Type type = value.d;
        int i2 = type == null ? -1 : WhenMappings.f73977a[type.ordinal()];
        if (i2 != 10) {
            ModuleDescriptor moduleDescriptor = this.f73975a;
            if (i2 != 13) {
                return Intrinsics.c(constantValue.a(moduleDescriptor), kotlinType);
            }
            if (constantValue instanceof ArrayValue) {
                Object obj = ((ArrayValue) constantValue).f73869a;
                if (((List) obj).size() == value.l.size()) {
                    KotlinType kotlinTypeG = moduleDescriptor.g().g(kotlinType);
                    if (kotlinTypeG != null) {
                        Iterable iterableE = CollectionsKt.E((Collection) obj);
                        if ((iterableE instanceof Collection) && ((Collection) iterableE).isEmpty()) {
                            return true;
                        }
                        Iterator<Integer> it = iterableE.iterator();
                        while (((IntProgressionIterator) it).d) {
                            int iNextInt = ((IntIterator) it).nextInt();
                            ConstantValue constantValue2 = (ConstantValue) ((List) obj).get(iNextInt);
                            ProtoBuf$Annotation.Argument.Value value2 = (ProtoBuf$Annotation.Argument.Value) value.l.get(iNextInt);
                            value2.getClass();
                            if (!b(constantValue2, kotlinTypeG, value2)) {
                            }
                        }
                        return true;
                    }
                }
            }
            tg0.d(constantValue, "Deserialized ArrayValue should have the same number of elements as the original array value: ");
            return false;
        }
        ClassifierDescriptor classifierDescriptorY = kotlinType.H0().y();
        ClassDescriptor classDescriptor = classifierDescriptorY instanceof ClassDescriptor ? (ClassDescriptor) classifierDescriptorY : null;
        if (classDescriptor == null) {
            return true;
        }
        Name name = KotlinBuiltIns.f72242f;
        if (KotlinBuiltIns.b(classDescriptor, StandardNames.FqNames.Q)) {
            return true;
        }
        return false;
    }

    public final ConstantValue c(KotlinType kotlinType, ProtoBuf$Annotation.Argument.Value value, NameResolver nameResolver) {
        kotlinType.getClass();
        value.getClass();
        nameResolver.getClass();
        boolean zBooleanValue = Flags.P.d(value.n).booleanValue();
        ProtoBuf$Annotation.Argument.Value.Type type = value.d;
        switch (type == null ? -1 : WhenMappings.f73977a[type.ordinal()]) {
            case 1:
                byte b2 = (byte) value.f73314e;
                return zBooleanValue ? new UByteValue(b2) : new ByteValue(b2);
            case 2:
                return new CharValue((char) value.f73314e);
            case 3:
                short s = (short) value.f73314e;
                return zBooleanValue ? new UShortValue(s) : new ShortValue(s);
            case 4:
                int i2 = (int) value.f73314e;
                return zBooleanValue ? new UIntValue(i2) : new IntValue(i2);
            case 5:
                long j2 = value.f73314e;
                return zBooleanValue ? new ULongValue(j2) : new LongValue(j2);
            case 6:
                return new FloatValue(value.f73315f);
            case 7:
                return new DoubleValue(value.g);
            case 8:
                return new BooleanValue(value.f73314e != 0);
            case 9:
                return new StringValue(nameResolver.getString(value.f73316h));
            case 10:
                return new KClassValue(NameResolverUtilKt.a(nameResolver, value.f73317i), value.m);
            case 11:
                return new EnumValue(NameResolverUtilKt.a(nameResolver, value.f73317i), Name.d(nameResolver.getString(value.f73318j)));
            case 12:
                ProtoBuf$Annotation protoBuf$Annotation = value.f73319k;
                protoBuf$Annotation.getClass();
                return new AnnotationValue(a(protoBuf$Annotation, nameResolver));
            case 13:
                List list = value.l;
                list.getClass();
                List<ProtoBuf$Annotation.Argument.Value> list2 = list;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                for (ProtoBuf$Annotation.Argument.Value value2 : list2) {
                    SimpleType simpleTypeE = this.f73975a.g().e();
                    simpleTypeE.getClass();
                    value2.getClass();
                    arrayList.add(c(simpleTypeE, value2, nameResolver));
                }
                return new TypedArrayValue(arrayList, kotlinType);
            default:
                throw new IllegalStateException(("Unsupported annotation argument type: " + value.d + " (expected " + kotlinType + ')').toString());
        }
    }
}
