package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import defpackage.az;
import defpackage.ct0;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.FunctionTypesKt;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionTypeKind;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoTypeTableUtilKt;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.TypeTable;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedAnnotations;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedTypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNullable;
import kotlin.reflect.jvm.internal.impl.types.DefinitelyNotNullType;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.SpecialTypesKt;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionForAbsentTypeParameter;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeAliasExpander;
import kotlin.reflect.jvm.internal.impl.types.TypeAliasExpansion;
import kotlin.reflect.jvm.internal.impl.types.TypeAliasExpansionReportStrategy;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributeTranslator;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionBase;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.TransformingSequence;

/* JADX INFO: loaded from: classes4.dex */
public final class TypeDeserializer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DeserializationContext f74060a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TypeDeserializer f74061b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f74062c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MemoizedFunctionToNullable f74063e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MemoizedFunctionToNullable f74064f;
    public final Map g;

    public TypeDeserializer(DeserializationContext deserializationContext, TypeDeserializer typeDeserializer, List<ProtoBuf$TypeParameter> list, String str, String str2) {
        Map linkedHashMap;
        deserializationContext.getClass();
        list.getClass();
        str.getClass();
        str2.getClass();
        this.f74060a = deserializationContext;
        this.f74061b = typeDeserializer;
        this.f74062c = str;
        this.d = str2;
        DeserializationComponents deserializationComponents = deserializationContext.f73998a;
        this.f74063e = deserializationComponents.f73988a.g(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.TypeDeserializer$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final TypeDeserializer f74065b;

            {
                this.f74065b = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int iIntValue = ((Number) obj).intValue();
                DeserializationContext deserializationContext2 = this.f74065b.f74060a;
                ClassId classIdA = NameResolverUtilKt.a(deserializationContext2.f73999b, iIntValue);
                boolean z = classIdA.f73677c;
                DeserializationComponents deserializationComponents2 = deserializationContext2.f73998a;
                if (!z) {
                    return FindClassInModuleKt.b(deserializationComponents2.f73989b, classIdA);
                }
                deserializationComponents2.getClass();
                ClassDeserializer classDeserializer = deserializationComponents2.u;
                ClassDeserializer.Companion companion = ClassDeserializer.f73981c;
                return classDeserializer.a(classIdA, null);
            }
        });
        this.f74064f = deserializationComponents.f73988a.g(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.TypeDeserializer$$Lambda$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final TypeDeserializer f74066b;

            {
                this.f74066b = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int iIntValue = ((Number) obj).intValue();
                DeserializationContext deserializationContext2 = this.f74066b.f74060a;
                ClassId classIdA = NameResolverUtilKt.a(deserializationContext2.f73999b, iIntValue);
                if (classIdA.f73677c) {
                    return null;
                }
                ModuleDescriptor moduleDescriptor = deserializationContext2.f73998a.f73989b;
                moduleDescriptor.getClass();
                ClassifierDescriptor classifierDescriptorB = FindClassInModuleKt.b(moduleDescriptor, classIdA);
                if (classifierDescriptorB instanceof TypeAliasDescriptor) {
                    return (TypeAliasDescriptor) classifierDescriptorB;
                }
                return null;
            }
        });
        if (list.isEmpty()) {
            linkedHashMap = MapsKt.c();
        } else {
            linkedHashMap = new LinkedHashMap();
            int i2 = 0;
            for (ProtoBuf$TypeParameter protoBuf$TypeParameter : list) {
                linkedHashMap.put(Integer.valueOf(protoBuf$TypeParameter.f73507e), new DeserializedTypeParameterDescriptor(this.f74060a, protoBuf$TypeParameter, i2));
                i2++;
            }
        }
        this.g = linkedHashMap;
    }

    public static SimpleType a(SimpleType simpleType, KotlinType kotlinType) {
        KotlinBuiltIns kotlinBuiltInsF = TypeUtilsKt.f(simpleType);
        Annotations annotations = simpleType.getAnnotations();
        KotlinType kotlinTypeF = FunctionTypesKt.f(simpleType);
        List listD = FunctionTypesKt.d(simpleType);
        List listX = CollectionsKt.x(1, FunctionTypesKt.g(simpleType));
        ArrayList arrayList = new ArrayList(CollectionsKt.t(listX, 10));
        Iterator it = listX.iterator();
        while (it.hasNext()) {
            arrayList.add(((TypeProjection) it.next()).getType());
        }
        return FunctionTypesKt.b(kotlinBuiltInsF, annotations, kotlinTypeF, listD, arrayList, kotlinType, true).L0(simpleType.I0());
    }

    public static final ArrayList e(TypeDeserializer typeDeserializer, ProtoBuf$Type protoBuf$Type) {
        List list = protoBuf$Type.f73471e;
        list.getClass();
        List list2 = list;
        ProtoBuf$Type protoBuf$TypeE = ProtoTypeTableUtilKt.e(protoBuf$Type, typeDeserializer.f74060a.d);
        Iterable iterableE = protoBuf$TypeE != null ? e(typeDeserializer, protoBuf$TypeE) : null;
        if (iterableE == null) {
            iterableE = EmptyList.f71768b;
        }
        return CollectionsKt.Y(list2, iterableE);
    }

    public static TypeAttributes f(List list, Annotations annotations, TypeConstructor typeConstructor, DeclarationDescriptor declarationDescriptor) {
        List list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(((TypeAttributeTranslator) it.next()).a(annotations));
        }
        ArrayList arrayListD = CollectionsKt.D(arrayList);
        TypeAttributes.f74232c.getClass();
        return TypeAttributes.Companion.c(arrayListD);
    }

    public static final ClassDescriptor h(final TypeDeserializer typeDeserializer, ProtoBuf$Type protoBuf$Type, int i2) {
        DeserializationContext deserializationContext = typeDeserializer.f74060a;
        ClassId classIdA = NameResolverUtilKt.a(deserializationContext.f73999b, i2);
        TransformingSequence transformingSequenceR = SequencesKt.r(SequencesKt.n(protoBuf$Type, new Function1(typeDeserializer) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.TypeDeserializer$$Lambda$3

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final TypeDeserializer f74069b;

            {
                this.f74069b = typeDeserializer;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                ProtoBuf$Type protoBuf$Type2 = (ProtoBuf$Type) obj;
                protoBuf$Type2.getClass();
                return ProtoTypeTableUtilKt.e(protoBuf$Type2, this.f74069b.f74060a.d);
            }
        }), new Function1() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.TypeDeserializer$$Lambda$4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                ProtoBuf$Type protoBuf$Type2 = (ProtoBuf$Type) obj;
                protoBuf$Type2.getClass();
                return Integer.valueOf(protoBuf$Type2.f73471e.size());
            }
        });
        ArrayList arrayList = new ArrayList();
        Iterator f74480a = transformingSequenceR.getF74480a();
        while (true) {
            TransformingSequence.AnonymousClass1 anonymousClass1 = (TransformingSequence.AnonymousClass1) f74480a;
            if (!anonymousClass1.hasNext()) {
                break;
            }
            arrayList.add(anonymousClass1.next());
        }
        int iC = SequencesKt.c(SequencesKt.n(classIdA, TypeDeserializer$typeConstructor$notFoundClass$classNestingLevel$1.f74071b));
        while (arrayList.size() < iC) {
            arrayList.add(0);
        }
        return deserializationContext.f73998a.l.a(classIdA, arrayList);
    }

    public final List b() {
        return CollectionsKt.y0(this.g.values());
    }

    public final TypeParameterDescriptor c(int i2) {
        TypeParameterDescriptor typeParameterDescriptor = (TypeParameterDescriptor) this.g.get(Integer.valueOf(i2));
        if (typeParameterDescriptor != null) {
            return typeParameterDescriptor;
        }
        TypeDeserializer typeDeserializer = this.f74061b;
        if (typeDeserializer != null) {
            return typeDeserializer.c(i2);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0285  */
    /* JADX WARN: Code duplicated, block: B:102:0x0288  */
    /* JADX WARN: Code duplicated, block: B:103:0x028b  */
    /* JADX WARN: Code duplicated, block: B:105:0x0292  */
    /* JADX WARN: Code duplicated, block: B:106:0x02aa  */
    /* JADX WARN: Code duplicated, block: B:107:0x02ae  */
    /* JADX WARN: Code duplicated, block: B:109:0x02bd  */
    /* JADX WARN: Code duplicated, block: B:114:0x02c8  */
    /* JADX WARN: Code duplicated, block: B:119:0x02e0  */
    /* JADX WARN: Code duplicated, block: B:126:0x02fd  */
    /* JADX WARN: Code duplicated, block: B:127:0x0302  */
    /* JADX WARN: Code duplicated, block: B:130:0x030e  */
    /* JADX WARN: Code duplicated, block: B:137:0x0334  */
    /* JADX WARN: Code duplicated, block: B:138:0x0338  */
    /* JADX WARN: Code duplicated, block: B:140:0x033b  */
    /* JADX WARN: Code duplicated, block: B:141:0x0340  */
    /* JADX WARN: Code duplicated, block: B:144:0x0349  */
    /* JADX WARN: Code duplicated, block: B:145:0x034e  */
    /* JADX WARN: Code duplicated, block: B:147:0x0354  */
    /* JADX WARN: Code duplicated, block: B:148:0x0361  */
    /* JADX WARN: Code duplicated, block: B:150:0x0374  */
    /* JADX WARN: Code duplicated, block: B:152:0x037d A[PHI: r3
      0x037d: PHI (r3v25 kotlin.reflect.jvm.internal.impl.types.SimpleType) = (r3v24 kotlin.reflect.jvm.internal.impl.types.SimpleType), (r3v32 kotlin.reflect.jvm.internal.impl.types.SimpleType) binds: [B:151:0x037b, B:146:0x0352] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:153:0x0380  */
    /* JADX WARN: Code duplicated, block: B:157:0x0393  */
    /* JADX WARN: Code duplicated, block: B:158:0x0396  */
    /* JADX WARN: Code duplicated, block: B:160:0x039b  */
    /* JADX WARN: Code duplicated, block: B:161:0x03a2  */
    /* JADX WARN: Code duplicated, block: B:169:0x01f6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:170:0x019f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:44:0x0107  */
    /* JADX WARN: Code duplicated, block: B:46:0x0123  */
    /* JADX WARN: Code duplicated, block: B:49:0x0157  */
    /* JADX WARN: Code duplicated, block: B:51:0x015f  */
    /* JADX WARN: Code duplicated, block: B:53:0x0176 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:54:0x0178  */
    /* JADX WARN: Code duplicated, block: B:55:0x0185  */
    /* JADX WARN: Code duplicated, block: B:56:0x018c  */
    /* JADX WARN: Code duplicated, block: B:58:0x019a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:59:0x019c  */
    /* JADX WARN: Code duplicated, block: B:63:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:65:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:67:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:68:0x01af  */
    /* JADX WARN: Code duplicated, block: B:69:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:72:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:73:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:75:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:76:0x01cc  */
    /* JADX WARN: Code duplicated, block: B:78:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:79:0x01e4  */
    /* JADX WARN: Code duplicated, block: B:96:0x0266  */
    /* JADX WARN: Code duplicated, block: B:98:0x0276  */
    public final SimpleType d(final ProtoBuf$Type protoBuf$Type, boolean z) {
        TypeConstructor typeConstructorD;
        ClassifierDescriptor classifierDescriptorH;
        Object next;
        int i2;
        TypeTable typeTable;
        DeclarationDescriptor declarationDescriptor;
        DeserializationComponents deserializationComponents;
        TypeAttributes typeAttributesF;
        ArrayList arrayList;
        int i3;
        List listY0;
        boolean zBooleanValue;
        boolean z2;
        SimpleType simpleTypeD;
        SimpleType simpleTypeA;
        int size;
        ClassifierDescriptor classifierDescriptorY;
        FunctionTypeKind functionTypeKindE;
        TypeProjection typeProjection;
        KotlinType type;
        ClassifierDescriptor classifierDescriptorY2;
        FqName fqNameG;
        KotlinType type2;
        CallableDescriptor callableDescriptor;
        FqName fqNameC;
        int size2;
        int i4;
        ProtoBuf$Type protoBuf$TypeA;
        SimpleType simpleTypeC;
        int i5;
        ProtoBuf$Type.Argument argument;
        TypeParameterDescriptor typeParameterDescriptor;
        ProtoBuf$Type.Argument.Projection projection;
        int i6;
        Variance variance;
        int i7;
        ProtoBuf$Type protoBuf$TypeA2;
        TypeProjectionBase typeProjectionImpl;
        protoBuf$Type.getClass();
        boolean zS = protoBuf$Type.s();
        DeserializationContext deserializationContext = this.f74060a;
        if (zS) {
            if (NameResolverUtilKt.a(deserializationContext.f73999b, protoBuf$Type.f73475j).f73677c) {
                deserializationContext.f73998a.g.getClass();
            }
        } else if ((protoBuf$Type.d & 128) == 128) {
            if (NameResolverUtilKt.a(deserializationContext.f73999b, protoBuf$Type.m).f73677c) {
                deserializationContext.f73998a.g.getClass();
            }
        }
        if (!protoBuf$Type.s()) {
            int i8 = protoBuf$Type.d;
            if ((i8 & 32) == 32) {
                classifierDescriptorH = c(protoBuf$Type.f73476k);
                if (classifierDescriptorH == null) {
                    ErrorModuleDescriptor errorModuleDescriptor = ErrorUtils.f74310a;
                    typeConstructorD = ErrorUtils.d(ErrorTypeKind.CANNOT_LOAD_DESERIALIZE_TYPE_PARAMETER, String.valueOf(protoBuf$Type.f73476k), this.d);
                }
            } else if ((i8 & 64) == 64) {
                String string = deserializationContext.f73999b.getString(protoBuf$Type.l);
                Iterator it = b().iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!Intrinsics.c(((TypeParameterDescriptor) next).getName().b(), string));
                TypeParameterDescriptor typeParameterDescriptor2 = (TypeParameterDescriptor) next;
                if (typeParameterDescriptor2 == null) {
                    ErrorModuleDescriptor errorModuleDescriptor2 = ErrorUtils.f74310a;
                    typeConstructorD = ErrorUtils.d(ErrorTypeKind.CANNOT_LOAD_DESERIALIZE_TYPE_PARAMETER_BY_NAME, string, deserializationContext.f74000c.toString());
                } else {
                    classifierDescriptorH = typeParameterDescriptor2;
                }
            } else if ((i8 & 128) == 128) {
                classifierDescriptorH = (ClassifierDescriptor) this.f74064f.invoke(Integer.valueOf(protoBuf$Type.m));
                if (classifierDescriptorH == null) {
                    classifierDescriptorH = h(this, protoBuf$Type, protoBuf$Type.m);
                }
            } else {
                ErrorModuleDescriptor errorModuleDescriptor3 = ErrorUtils.f74310a;
                typeConstructorD = ErrorUtils.d(ErrorTypeKind.UNKNOWN_TYPE, new String[0]);
            }
            i2 = 1;
            if (ErrorUtils.f(typeConstructorD.y())) {
                ErrorModuleDescriptor errorModuleDescriptor4 = ErrorUtils.f74310a;
                ErrorTypeKind errorTypeKind = ErrorTypeKind.TYPE_FOR_ERROR_TYPE_CONSTRUCTOR;
                String[] strArr = {typeConstructorD.toString()};
                errorTypeKind.getClass();
                return ErrorUtils.e(errorTypeKind, EmptyList.f71768b, typeConstructorD, (String[]) Arrays.copyOf(strArr, 1));
            }
            DeserializationComponents deserializationComponents2 = deserializationContext.f73998a;
            typeTable = deserializationContext.d;
            declarationDescriptor = deserializationContext.f74000c;
            deserializationComponents = deserializationContext.f73998a;
            DeserializedAnnotations deserializedAnnotations = new DeserializedAnnotations(deserializationComponents2.f73988a, new Function0(this, protoBuf$Type) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.TypeDeserializer$$Lambda$2

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final TypeDeserializer f74067b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final ProtoBuf$Type f74068c;

                {
                    this.f74067b = this;
                    this.f74068c = protoBuf$Type;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    DeserializationContext deserializationContext2 = this.f74067b.f74060a;
                    return deserializationContext2.f73998a.f73991e.d(this.f74068c, deserializationContext2.f73999b);
                }
            });
            typeAttributesF = f(deserializationComponents.s, deserializedAnnotations, typeConstructorD, declarationDescriptor);
            ArrayList arrayListE = e(this, protoBuf$Type);
            arrayList = new ArrayList(CollectionsKt.t(arrayListE, 10));
            i3 = 0;
            for (Object obj : arrayListE) {
                i5 = i3 + 1;
                if (i3 >= 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                argument = (ProtoBuf$Type.Argument) obj;
                List parameters = typeConstructorD.getParameters();
                parameters.getClass();
                typeParameterDescriptor = (TypeParameterDescriptor) CollectionsKt.G(i3, parameters);
                projection = argument.d;
                if (projection == ProtoBuf$Type.Argument.Projection.STAR) {
                    projection.getClass();
                    i6 = ProtoEnumFlags.WhenMappings.d[projection.ordinal()];
                    if (i6 != i2) {
                        variance = Variance.IN_VARIANCE;
                    } else if (i6 != 2) {
                        variance = Variance.OUT_VARIANCE;
                    } else {
                        if (i6 != 3) {
                            if (i6 != 4) {
                                v40.g();
                                return null;
                            }
                            az.m(projection, "Only IN, OUT and INV are supported. Actual argument: ");
                            return null;
                        }
                        variance = Variance.INVARIANT;
                    }
                    typeTable.getClass();
                    i7 = argument.f73480c;
                    if ((i7 & 2) == 2) {
                        protoBuf$TypeA2 = argument.f73481e;
                    } else if ((i7 & 4) == 4) {
                        protoBuf$TypeA2 = typeTable.a(argument.f73482f);
                    } else {
                        protoBuf$TypeA2 = null;
                    }
                    if (protoBuf$TypeA2 == null) {
                        typeProjectionImpl = new TypeProjectionImpl(ErrorUtils.c(ErrorTypeKind.NO_RECORDED_TYPE, argument.toString()));
                    } else {
                        typeProjectionImpl = new TypeProjectionImpl(variance, g(protoBuf$TypeA2));
                    }
                } else if (typeParameterDescriptor == null) {
                    typeProjectionImpl = new StarProjectionForAbsentTypeParameter(deserializationComponents.f73989b.g());
                } else {
                    typeProjectionImpl = new StarProjectionImpl(typeParameterDescriptor);
                }
                arrayList.add(typeProjectionImpl);
                i3 = i5;
                i2 = 1;
            }
            listY0 = CollectionsKt.y0(arrayList);
            ClassifierDescriptor classifierDescriptorY3 = typeConstructorD.y();
            if (z || !(classifierDescriptorY3 instanceof TypeAliasDescriptor)) {
                zBooleanValue = Flags.f73572a.d(protoBuf$Type.r).booleanValue();
                z2 = protoBuf$Type.f73472f;
                if (zBooleanValue) {
                    size = typeConstructorD.getParameters().size() - listY0.size();
                    if (size == 0) {
                        simpleTypeA = KotlinTypeFactory.d(typeAttributesF, typeConstructorD, listY0, z2, null);
                        classifierDescriptorY = simpleTypeA.H0().y();
                        if (classifierDescriptorY == null && (classifierDescriptorY instanceof ClassDescriptor) && KotlinBuiltIns.K(classifierDescriptorY)) {
                            int i9 = DescriptorUtilsKt.f73888a;
                            FqNameUnsafe fqNameUnsafeF = DescriptorUtils.f(classifierDescriptorY);
                            fqNameUnsafeF.getClass();
                            functionTypeKindE = FunctionTypesKt.e(fqNameUnsafeF);
                        } else {
                            functionTypeKindE = null;
                        }
                        if (Intrinsics.c(functionTypeKindE, FunctionTypeKind.Function.f72293c) || (typeProjection = (TypeProjection) CollectionsKt.N(FunctionTypesKt.g(simpleTypeA))) == null || (type = typeProjection.getType()) == null) {
                            simpleTypeA = null;
                        } else {
                            classifierDescriptorY2 = type.H0().y();
                            if (classifierDescriptorY2 != null) {
                                fqNameG = DescriptorUtilsKt.g(classifierDescriptorY2);
                            } else {
                                fqNameG = null;
                            }
                            if (type.F0().size() == 1 && (Intrinsics.c(fqNameG, StandardNames.g) || Intrinsics.c(fqNameG, TypeDeserializerKt.f74072a))) {
                                type2 = ((TypeProjection) CollectionsKt.h0(type.F0())).getType();
                                type2.getClass();
                                if (declarationDescriptor instanceof CallableDescriptor) {
                                    callableDescriptor = (CallableDescriptor) declarationDescriptor;
                                } else {
                                    callableDescriptor = null;
                                }
                                if (callableDescriptor != null) {
                                    fqNameC = DescriptorUtilsKt.c(callableDescriptor);
                                } else {
                                    fqNameC = null;
                                }
                                if (Intrinsics.c(fqNameC, SuspendFunctionTypeUtilKt.f74059a)) {
                                    simpleTypeA = a(simpleTypeA, type2);
                                } else {
                                    simpleTypeA = a(simpleTypeA, type2);
                                }
                            }
                        }
                    } else if (size != 1) {
                        simpleTypeA = null;
                    } else {
                        size2 = listY0.size() - 1;
                        if (size2 >= 0) {
                            TypeConstructor typeConstructorJ = typeConstructorD.g().w(size2).j();
                            typeConstructorJ.getClass();
                            simpleTypeA = KotlinTypeFactory.d(typeAttributesF, typeConstructorJ, listY0, z2, null);
                        } else {
                            simpleTypeA = null;
                        }
                    }
                    if (simpleTypeA == null) {
                        ErrorModuleDescriptor errorModuleDescriptor5 = ErrorUtils.f74310a;
                        simpleTypeD = ErrorUtils.e(ErrorTypeKind.INCONSISTENT_SUSPEND_FUNCTION, listY0, typeConstructorD, new String[0]);
                    } else {
                        simpleTypeD = simpleTypeA;
                    }
                } else {
                    simpleTypeD = KotlinTypeFactory.d(typeAttributesF, typeConstructorD, listY0, z2, null);
                    if (Flags.f73573b.d(protoBuf$Type.r).booleanValue()) {
                        simpleTypeA = DefinitelyNotNullType.Companion.a(DefinitelyNotNullType.f74182e, simpleTypeD, true);
                        if (simpleTypeA == null) {
                            ct0.i(simpleTypeD, "null DefinitelyNotNullType for '");
                            return null;
                        }
                        simpleTypeD = simpleTypeA;
                    }
                }
            } else {
                listY0.getClass();
                TypeAliasExpander typeAliasExpander = new TypeAliasExpander(TypeAliasExpansionReportStrategy.DO_NOTHING.f74231a, false);
                TypeAliasExpansion.f74227e.getClass();
                TypeAliasExpansion typeAliasExpansionA = TypeAliasExpansion.Companion.a(null, (TypeAliasDescriptor) classifierDescriptorY3, listY0);
                TypeAttributes.f74232c.getClass();
                TypeAttributes typeAttributes = TypeAttributes.d;
                typeAttributes.getClass();
                SimpleType simpleTypeC2 = typeAliasExpander.c(typeAliasExpansionA, typeAttributes, false, 0, true);
                simpleTypeD = simpleTypeC2.L0(TypeUtils.g(simpleTypeC2) || protoBuf$Type.f73472f).N0(f(deserializationComponents.s, Annotations.Companion.a(CollectionsKt.V(deserializedAnnotations, simpleTypeC2.getAnnotations())), typeConstructorD, declarationDescriptor));
            }
            typeTable.getClass();
            i4 = protoBuf$Type.d;
            if ((i4 & 1024) == 1024) {
                protoBuf$TypeA = protoBuf$Type.p;
            } else if ((i4 & 2048) == 2048) {
                protoBuf$TypeA = typeTable.a(protoBuf$Type.q);
            } else {
                protoBuf$TypeA = null;
            }
            return (protoBuf$TypeA != null || (simpleTypeC = SpecialTypesKt.c(simpleTypeD, d(protoBuf$TypeA, false))) == null) ? simpleTypeD : simpleTypeC;
        }
        classifierDescriptorH = (ClassifierDescriptor) this.f74063e.invoke(Integer.valueOf(protoBuf$Type.f73475j));
        if (classifierDescriptorH == null) {
            classifierDescriptorH = h(this, protoBuf$Type, protoBuf$Type.f73475j);
        }
        typeConstructorD = classifierDescriptorH.j();
        typeConstructorD.getClass();
        i2 = 1;
        if (ErrorUtils.f(typeConstructorD.y())) {
            ErrorModuleDescriptor errorModuleDescriptor6 = ErrorUtils.f74310a;
            ErrorTypeKind errorTypeKind2 = ErrorTypeKind.TYPE_FOR_ERROR_TYPE_CONSTRUCTOR;
            String[] strArr2 = {typeConstructorD.toString()};
            errorTypeKind2.getClass();
            return ErrorUtils.e(errorTypeKind2, EmptyList.f71768b, typeConstructorD, (String[]) Arrays.copyOf(strArr2, 1));
        }
        DeserializationComponents deserializationComponents3 = deserializationContext.f73998a;
        typeTable = deserializationContext.d;
        declarationDescriptor = deserializationContext.f74000c;
        deserializationComponents = deserializationContext.f73998a;
        DeserializedAnnotations deserializedAnnotations2 = new DeserializedAnnotations(deserializationComponents3.f73988a, new Function0(this, protoBuf$Type) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.TypeDeserializer$$Lambda$2

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final TypeDeserializer f74067b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final ProtoBuf$Type f74068c;

            {
                this.f74067b = this;
                this.f74068c = protoBuf$Type;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                DeserializationContext deserializationContext2 = this.f74067b.f74060a;
                return deserializationContext2.f73998a.f73991e.d(this.f74068c, deserializationContext2.f73999b);
            }
        });
        typeAttributesF = f(deserializationComponents.s, deserializedAnnotations2, typeConstructorD, declarationDescriptor);
        ArrayList arrayListE2 = e(this, protoBuf$Type);
        arrayList = new ArrayList(CollectionsKt.t(arrayListE2, 10));
        i3 = 0;
        while (r11.hasNext()) {
            i5 = i3 + 1;
            if (i3 >= 0) {
                CollectionsKt.t0();
                throw null;
            }
            argument = (ProtoBuf$Type.Argument) obj;
            List parameters2 = typeConstructorD.getParameters();
            parameters2.getClass();
            typeParameterDescriptor = (TypeParameterDescriptor) CollectionsKt.G(i3, parameters2);
            projection = argument.d;
            if (projection == ProtoBuf$Type.Argument.Projection.STAR) {
                projection.getClass();
                i6 = ProtoEnumFlags.WhenMappings.d[projection.ordinal()];
                if (i6 != i2) {
                    variance = Variance.IN_VARIANCE;
                } else if (i6 != 2) {
                    variance = Variance.OUT_VARIANCE;
                } else {
                    if (i6 != 3) {
                        if (i6 != 4) {
                            v40.g();
                            return null;
                        }
                        az.m(projection, "Only IN, OUT and INV are supported. Actual argument: ");
                        return null;
                    }
                    variance = Variance.INVARIANT;
                }
                typeTable.getClass();
                i7 = argument.f73480c;
                if ((i7 & 2) == 2) {
                    protoBuf$TypeA2 = argument.f73481e;
                } else if ((i7 & 4) == 4) {
                    protoBuf$TypeA2 = typeTable.a(argument.f73482f);
                } else {
                    protoBuf$TypeA2 = null;
                }
                if (protoBuf$TypeA2 == null) {
                    typeProjectionImpl = new TypeProjectionImpl(ErrorUtils.c(ErrorTypeKind.NO_RECORDED_TYPE, argument.toString()));
                } else {
                    typeProjectionImpl = new TypeProjectionImpl(variance, g(protoBuf$TypeA2));
                }
            } else if (typeParameterDescriptor == null) {
                typeProjectionImpl = new StarProjectionForAbsentTypeParameter(deserializationComponents.f73989b.g());
            } else {
                typeProjectionImpl = new StarProjectionImpl(typeParameterDescriptor);
            }
            arrayList.add(typeProjectionImpl);
            i3 = i5;
            i2 = 1;
        }
        listY0 = CollectionsKt.y0(arrayList);
        ClassifierDescriptor classifierDescriptorY4 = typeConstructorD.y();
        if (z) {
            zBooleanValue = Flags.f73572a.d(protoBuf$Type.r).booleanValue();
            z2 = protoBuf$Type.f73472f;
            if (zBooleanValue) {
                size = typeConstructorD.getParameters().size() - listY0.size();
                if (size == 0) {
                    simpleTypeA = KotlinTypeFactory.d(typeAttributesF, typeConstructorD, listY0, z2, null);
                    classifierDescriptorY = simpleTypeA.H0().y();
                    if (classifierDescriptorY == null) {
                        functionTypeKindE = null;
                    } else {
                        functionTypeKindE = null;
                    }
                    if (Intrinsics.c(functionTypeKindE, FunctionTypeKind.Function.f72293c)) {
                        simpleTypeA = null;
                    } else {
                        classifierDescriptorY2 = type.H0().y();
                        if (classifierDescriptorY2 != null) {
                            fqNameG = DescriptorUtilsKt.g(classifierDescriptorY2);
                        } else {
                            fqNameG = null;
                        }
                        if (type.F0().size() == 1) {
                            type2 = ((TypeProjection) CollectionsKt.h0(type.F0())).getType();
                            type2.getClass();
                            if (declarationDescriptor instanceof CallableDescriptor) {
                                callableDescriptor = (CallableDescriptor) declarationDescriptor;
                            } else {
                                callableDescriptor = null;
                            }
                            if (callableDescriptor != null) {
                                fqNameC = DescriptorUtilsKt.c(callableDescriptor);
                            } else {
                                fqNameC = null;
                            }
                            if (Intrinsics.c(fqNameC, SuspendFunctionTypeUtilKt.f74059a)) {
                                simpleTypeA = a(simpleTypeA, type2);
                            } else {
                                simpleTypeA = a(simpleTypeA, type2);
                            }
                        }
                    }
                } else if (size != 1) {
                    simpleTypeA = null;
                } else {
                    size2 = listY0.size() - 1;
                    if (size2 >= 0) {
                        TypeConstructor typeConstructorJ2 = typeConstructorD.g().w(size2).j();
                        typeConstructorJ2.getClass();
                        simpleTypeA = KotlinTypeFactory.d(typeAttributesF, typeConstructorJ2, listY0, z2, null);
                    } else {
                        simpleTypeA = null;
                    }
                }
                if (simpleTypeA == null) {
                    ErrorModuleDescriptor errorModuleDescriptor7 = ErrorUtils.f74310a;
                    simpleTypeD = ErrorUtils.e(ErrorTypeKind.INCONSISTENT_SUSPEND_FUNCTION, listY0, typeConstructorD, new String[0]);
                } else {
                    simpleTypeD = simpleTypeA;
                }
            } else {
                simpleTypeD = KotlinTypeFactory.d(typeAttributesF, typeConstructorD, listY0, z2, null);
                if (Flags.f73573b.d(protoBuf$Type.r).booleanValue()) {
                    simpleTypeA = DefinitelyNotNullType.Companion.a(DefinitelyNotNullType.f74182e, simpleTypeD, true);
                    if (simpleTypeA == null) {
                        ct0.i(simpleTypeD, "null DefinitelyNotNullType for '");
                        return null;
                    }
                    simpleTypeD = simpleTypeA;
                }
            }
        } else {
            zBooleanValue = Flags.f73572a.d(protoBuf$Type.r).booleanValue();
            z2 = protoBuf$Type.f73472f;
            if (zBooleanValue) {
                size = typeConstructorD.getParameters().size() - listY0.size();
                if (size == 0) {
                    simpleTypeA = KotlinTypeFactory.d(typeAttributesF, typeConstructorD, listY0, z2, null);
                    classifierDescriptorY = simpleTypeA.H0().y();
                    if (classifierDescriptorY == null) {
                        functionTypeKindE = null;
                    } else {
                        functionTypeKindE = null;
                    }
                    if (Intrinsics.c(functionTypeKindE, FunctionTypeKind.Function.f72293c)) {
                        simpleTypeA = null;
                    } else {
                        classifierDescriptorY2 = type.H0().y();
                        if (classifierDescriptorY2 != null) {
                            fqNameG = DescriptorUtilsKt.g(classifierDescriptorY2);
                        } else {
                            fqNameG = null;
                        }
                        if (type.F0().size() == 1) {
                            type2 = ((TypeProjection) CollectionsKt.h0(type.F0())).getType();
                            type2.getClass();
                            if (declarationDescriptor instanceof CallableDescriptor) {
                                callableDescriptor = (CallableDescriptor) declarationDescriptor;
                            } else {
                                callableDescriptor = null;
                            }
                            if (callableDescriptor != null) {
                                fqNameC = DescriptorUtilsKt.c(callableDescriptor);
                            } else {
                                fqNameC = null;
                            }
                            if (Intrinsics.c(fqNameC, SuspendFunctionTypeUtilKt.f74059a)) {
                                simpleTypeA = a(simpleTypeA, type2);
                            } else {
                                simpleTypeA = a(simpleTypeA, type2);
                            }
                        }
                    }
                } else if (size != 1) {
                    simpleTypeA = null;
                } else {
                    size2 = listY0.size() - 1;
                    if (size2 >= 0) {
                        TypeConstructor typeConstructorJ3 = typeConstructorD.g().w(size2).j();
                        typeConstructorJ3.getClass();
                        simpleTypeA = KotlinTypeFactory.d(typeAttributesF, typeConstructorJ3, listY0, z2, null);
                    } else {
                        simpleTypeA = null;
                    }
                }
                if (simpleTypeA == null) {
                    ErrorModuleDescriptor errorModuleDescriptor8 = ErrorUtils.f74310a;
                    simpleTypeD = ErrorUtils.e(ErrorTypeKind.INCONSISTENT_SUSPEND_FUNCTION, listY0, typeConstructorD, new String[0]);
                } else {
                    simpleTypeD = simpleTypeA;
                }
            } else {
                simpleTypeD = KotlinTypeFactory.d(typeAttributesF, typeConstructorD, listY0, z2, null);
                if (Flags.f73573b.d(protoBuf$Type.r).booleanValue()) {
                    simpleTypeA = DefinitelyNotNullType.Companion.a(DefinitelyNotNullType.f74182e, simpleTypeD, true);
                    if (simpleTypeA == null) {
                        ct0.i(simpleTypeD, "null DefinitelyNotNullType for '");
                        return null;
                    }
                    simpleTypeD = simpleTypeA;
                }
            }
        }
        typeTable.getClass();
        i4 = protoBuf$Type.d;
        if ((i4 & 1024) == 1024) {
            protoBuf$TypeA = protoBuf$Type.p;
        } else if ((i4 & 2048) == 2048) {
            protoBuf$TypeA = typeTable.a(protoBuf$Type.q);
        } else {
            protoBuf$TypeA = null;
        }
        if (protoBuf$TypeA != null) {
        }
    }

    public final KotlinType g(ProtoBuf$Type protoBuf$Type) {
        ProtoBuf$Type protoBuf$TypeA;
        protoBuf$Type.getClass();
        if ((protoBuf$Type.d & 2) != 2) {
            return d(protoBuf$Type, true);
        }
        DeserializationContext deserializationContext = this.f74060a;
        String string = deserializationContext.f73999b.getString(protoBuf$Type.g);
        SimpleType simpleTypeD = d(protoBuf$Type, true);
        TypeTable typeTable = deserializationContext.d;
        typeTable.getClass();
        int i2 = protoBuf$Type.d;
        if ((i2 & 4) == 4) {
            protoBuf$TypeA = protoBuf$Type.f73473h;
        } else {
            protoBuf$TypeA = (i2 & 8) == 8 ? typeTable.a(protoBuf$Type.f73474i) : null;
        }
        protoBuf$TypeA.getClass();
        return deserializationContext.f73998a.f73995j.a(protoBuf$Type, string, simpleTypeD, d(protoBuf$TypeA, true));
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(this.f74062c);
        TypeDeserializer typeDeserializer = this.f74061b;
        if (typeDeserializer == null) {
            str = "";
        } else {
            str = ". Child of " + typeDeserializer.f74062c;
        }
        sb.append(str);
        return sb.toString();
    }
}
