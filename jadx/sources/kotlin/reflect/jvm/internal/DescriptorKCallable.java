package kotlin.reflect.jvm.internal;

import defpackage.az;
import defpackage.md;
import defpackage.os;
import java.lang.reflect.Array;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.comparisons.ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KParameter;
import kotlin.reflect.KType;
import kotlin.reflect.KVisibility;
import kotlin.reflect.TypesJVMKt;
import kotlin.reflect.full.IllegalCallableAccessException;
import kotlin.reflect.jvm.KTypesJvm;
import kotlin.reflect.jvm.internal.calls.Caller;
import kotlin.reflect.jvm.internal.calls.ValueClassAwareCallerKt;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyAccessorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.km.KmClass;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaCallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedPropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedSimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutionKt;
import kotlin.reflect.jvm.internal.types.DescriptorKType;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b \u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\t\u001a\u00020\u00068&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lkotlin/reflect/jvm/internal/DescriptorKCallable;", "R", "Lkotlin/reflect/jvm/internal/ReflectKCallable;", "Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;", "<init>", "()V", "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;", "getDescriptor", "()Lorg/jetbrains/kotlin/descriptors/CallableMemberDescriptor;", "descriptor", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class DescriptorKCallable<R> implements KTypeParameterOwnerImpl, ReflectKCallable<R> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ReflectProperties.LazySoftVal f72010b = ReflectProperties.a(null, new Function0(this) { // from class: kotlin.reflect.jvm.internal.DescriptorKCallable$$Lambda$0

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final DescriptorKCallable f72015b;

        {
            this.f72015b = this;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: invoke */
        public final Object mo47invoke() {
            return UtilKt.b(this.f72015b.H());
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ReflectProperties.LazySoftVal f72011c = ReflectProperties.a(null, new Function0(this) { // from class: kotlin.reflect.jvm.internal.DescriptorKCallable$$Lambda$1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final DescriptorKCallable f72016b;

        {
            this.f72016b = this;
        }

        /* JADX WARN: Code duplicated, block: B:22:0x0088  */
        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: invoke */
        public final Object mo47invoke() {
            final ReceiverParameterDescriptor receiverParameterDescriptorE0;
            Pair pair;
            final List list;
            ArrayList arrayList = new ArrayList();
            DescriptorKCallable descriptorKCallable = this.f72016b;
            CallableMemberDescriptor callableMemberDescriptorH = descriptorKCallable.H();
            FqName fqName = UtilKt.f72187a;
            callableMemberDescriptorH.getClass();
            if (callableMemberDescriptorH.G() != null) {
                DeclarationDescriptor declarationDescriptorD = callableMemberDescriptorH.d();
                declarationDescriptorD.getClass();
                receiverParameterDescriptorE0 = ((ClassDescriptor) declarationDescriptorD).E0();
            } else {
                receiverParameterDescriptorE0 = null;
            }
            if (receiverParameterDescriptorE0 != null) {
                arrayList.add(new DescriptorKParameter(descriptorKCallable, arrayList.size(), KParameter.Kind.INSTANCE, new Function0(receiverParameterDescriptorE0) { // from class: kotlin.reflect.jvm.internal.DescriptorKCallable$$Lambda$7

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final ReceiverParameterDescriptor f72025b;

                    {
                        this.f72025b = receiverParameterDescriptorE0;
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return this.f72025b;
                    }
                }));
            }
            CallableMemberDescriptor callableMemberDescriptorH2 = descriptorKCallable.H();
            if (callableMemberDescriptorH2 instanceof DeserializedSimpleFunctionDescriptor) {
                DeserializedSimpleFunctionDescriptor deserializedSimpleFunctionDescriptor = (DeserializedSimpleFunctionDescriptor) callableMemberDescriptorH2;
                pair = new Pair(deserializedSimpleFunctionDescriptor.G, deserializedSimpleFunctionDescriptor.F.p);
            } else if (callableMemberDescriptorH2 instanceof DeserializedPropertyDescriptor) {
                DeserializedPropertyDescriptor deserializedPropertyDescriptor = (DeserializedPropertyDescriptor) callableMemberDescriptorH2;
                pair = new Pair(deserializedPropertyDescriptor.C, deserializedPropertyDescriptor.B.p);
            } else if (callableMemberDescriptorH2 instanceof PropertyAccessorDescriptor) {
                PropertyDescriptor propertyDescriptorP = ((PropertyAccessorDescriptor) callableMemberDescriptorH2).P();
                DeserializedPropertyDescriptor deserializedPropertyDescriptor2 = propertyDescriptorP instanceof DeserializedPropertyDescriptor ? (DeserializedPropertyDescriptor) propertyDescriptorP : null;
                if (deserializedPropertyDescriptor2 != null) {
                    pair = new Pair(deserializedPropertyDescriptor2.C, deserializedPropertyDescriptor2.B.p);
                } else {
                    pair = null;
                }
            } else {
                pair = null;
            }
            if (pair == null) {
                list = EmptyList.f71768b;
            } else {
                NameResolver nameResolver = (NameResolver) pair.f71705b;
                List list2 = (List) pair.f71706c;
                List listR0 = callableMemberDescriptorH2.r0();
                listR0.getClass();
                List list3 = listR0;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list3, 10));
                int i2 = 0;
                for (Object obj : list3) {
                    int i3 = i2 + 1;
                    if (i2 < 0) {
                        CollectionsKt.t0();
                        throw null;
                    }
                    ReceiverParameterDescriptor receiverParameterDescriptor = (ReceiverParameterDescriptor) obj;
                    Annotations annotations = receiverParameterDescriptor.getAnnotations();
                    Name nameD = Name.d(nameResolver.getString(((ProtoBuf$ValueParameter) list2.get(i2)).f73529f));
                    KotlinType type = receiverParameterDescriptor.getType();
                    type.getClass();
                    SourceElement source = receiverParameterDescriptor.getSource();
                    source.getClass();
                    arrayList2.add(new ValueParameterDescriptorImpl(callableMemberDescriptorH2, null, i2, annotations, nameD, type, false, false, false, null, source));
                    i2 = i3;
                }
                list = arrayList2;
            }
            int size = list.size();
            for (final int i4 = 0; i4 < size; i4++) {
                arrayList.add(new DescriptorKParameter(descriptorKCallable, arrayList.size(), KParameter.Kind.CONTEXT, new Function0(list, i4) { // from class: kotlin.reflect.jvm.internal.DescriptorKCallable$$Lambda$8

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final List f72026b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final int f72027c;

                    {
                        this.f72026b = list;
                        this.f72027c = i4;
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return (ParameterDescriptor) this.f72026b.get(this.f72027c);
                    }
                }));
            }
            final ReceiverParameterDescriptor receiverParameterDescriptorJ = descriptorKCallable.H().J();
            if (receiverParameterDescriptorJ != null) {
                arrayList.add(new DescriptorKParameter(descriptorKCallable, arrayList.size(), KParameter.Kind.EXTENSION_RECEIVER, new Function0(receiverParameterDescriptorJ) { // from class: kotlin.reflect.jvm.internal.DescriptorKCallable$$Lambda$9

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final ReceiverParameterDescriptor f72028b;

                    {
                        this.f72028b = receiverParameterDescriptorJ;
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return this.f72028b;
                    }
                }));
            }
            return arrayList;
        }
    });
    public final ReflectProperties.LazySoftVal d = ReflectProperties.a(null, new Function0(this) { // from class: kotlin.reflect.jvm.internal.DescriptorKCallable$$Lambda$2

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final DescriptorKCallable f72020b;

        {
            this.f72020b = this;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: invoke */
        public final Object mo47invoke() {
            DescriptorKCallable descriptorKCallable = this.f72020b;
            CallableMemberDescriptor callableMemberDescriptorH = descriptorKCallable.H();
            ArrayList arrayList = new ArrayList();
            if (!ReflectKCallableKt.a(descriptorKCallable)) {
                arrayList.addAll(descriptorKCallable.u());
            }
            int size = callableMemberDescriptorH.h().size();
            for (int i2 = 0; i2 < size; i2++) {
                arrayList.add(new DescriptorKParameter(descriptorKCallable, arrayList.size(), KParameter.Kind.VALUE, new Function0(callableMemberDescriptorH, i2) { // from class: kotlin.reflect.jvm.internal.DescriptorKCallable$$Lambda$10

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final CallableMemberDescriptor f72017b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final int f72018c;

                    {
                        this.f72017b = callableMemberDescriptorH;
                        this.f72018c = i2;
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        Object obj = this.f72017b.h().get(this.f72018c);
                        obj.getClass();
                        return (ParameterDescriptor) obj;
                    }
                }));
            }
            if (descriptorKCallable.J() && (callableMemberDescriptorH instanceof JavaCallableMemberDescriptor) && arrayList.size() > 1) {
                CollectionsKt.m0(new Comparator() { // from class: kotlin.reflect.jvm.internal.DescriptorKCallable$_parameters$lambda$0$$inlined$sortBy$1
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return ComparisonsKt.a(((KParameter) obj).getName(), ((KParameter) obj2).getName());
                    }
                }, arrayList);
            }
            arrayList.trimToSize();
            return arrayList;
        }
    });

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ReflectProperties.LazySoftVal f72012e = ReflectProperties.a(null, new Function0(this) { // from class: kotlin.reflect.jvm.internal.DescriptorKCallable$$Lambda$3

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final DescriptorKCallable f72021b;

        {
            this.f72021b = this;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: invoke */
        public final Object mo47invoke() {
            DescriptorKCallable descriptorKCallable = this.f72021b;
            KotlinType returnType = descriptorKCallable.H().getReturnType();
            returnType.getClass();
            return new DescriptorKType(returnType, new Function0(descriptorKCallable) { // from class: kotlin.reflect.jvm.internal.DescriptorKCallable$$Lambda$11

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final DescriptorKCallable f72019b;

                {
                    this.f72019b = descriptorKCallable;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    Type[] lowerBounds;
                    DescriptorKCallable descriptorKCallable2 = this.f72019b;
                    Type type = null;
                    if (descriptorKCallable2.isSuspend()) {
                        Object objN = CollectionsKt.N(descriptorKCallable2.x().a());
                        ParameterizedType parameterizedType = objN instanceof ParameterizedType ? (ParameterizedType) objN : null;
                        if (Intrinsics.c(parameterizedType != null ? parameterizedType.getRawType() : null, Continuation.class)) {
                            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                            actualTypeArguments.getClass();
                            Object objQ = ArraysKt.Q(actualTypeArguments);
                            WildcardType wildcardType = objQ instanceof WildcardType ? (WildcardType) objQ : null;
                            if (wildcardType != null && (lowerBounds = wildcardType.getLowerBounds()) != null) {
                                type = (Type) ArraysKt.w(lowerBounds);
                            }
                        }
                    }
                    return type == null ? descriptorKCallable2.x().getReturnType() : type;
                }
            });
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ReflectProperties.LazySoftVal f72013f = ReflectProperties.a(null, new Function0(this) { // from class: kotlin.reflect.jvm.internal.DescriptorKCallable$$Lambda$4

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final DescriptorKCallable f72022b;

        {
            this.f72022b = this;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: invoke */
        public final Object mo47invoke() {
            DescriptorKCallable descriptorKCallable = this.f72022b;
            List typeParameters = descriptorKCallable.H().getTypeParameters();
            typeParameters.getClass();
            List<TypeParameterDescriptor> list = typeParameters;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
            for (TypeParameterDescriptor typeParameterDescriptor : list) {
                typeParameterDescriptor.getClass();
                arrayList.add(new KTypeParameterImpl(descriptorKCallable, typeParameterDescriptor));
            }
            return arrayList;
        }
    });
    public final ReflectProperties.LazySoftVal g = ReflectProperties.a(null, new Function0(this) { // from class: kotlin.reflect.jvm.internal.DescriptorKCallable$$Lambda$5

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final DescriptorKCallable f72023b;

        {
            this.f72023b = this;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: invoke */
        public final Object mo47invoke() {
            int I;
            DescriptorKCallable descriptorKCallable = this.f72023b;
            List<KParameter> parameters = descriptorKCallable.getParameters();
            int size = (descriptorKCallable.isSuspend() ? 1 : 0) + parameters.size();
            if (((Boolean) descriptorKCallable.f72014h.getF71699b()).booleanValue()) {
                I = 0;
                for (KParameter kParameter : parameters) {
                    I += kParameter.e() == KParameter.Kind.VALUE ? descriptorKCallable.I(kParameter) : 0;
                }
            } else {
                List list = parameters;
                if ((list instanceof Collection) && list.isEmpty()) {
                    I = 0;
                } else {
                    Iterator it = list.iterator();
                    I = 0;
                    while (it.hasNext()) {
                        if (((KParameter) it.next()).e() == KParameter.Kind.VALUE && (I = I + 1) < 0) {
                            CollectionsKt.s0();
                            throw null;
                        }
                    }
                }
            }
            int i2 = (I + 31) / 32;
            Object[] objArr = new Object[size + i2 + 1];
            for (KParameter kParameter2 : parameters) {
                if (kParameter2.F()) {
                    DescriptorKType type = kParameter2.getType();
                    FqName fqName = UtilKt.f72187a;
                    KClassifier f74442c = type.getF74442c();
                    KClassImpl kClassImpl = f74442c instanceof KClassImpl ? (KClassImpl) f74442c : null;
                    if (kClassImpl != null) {
                        KmClass kmClassX = kClassImpl.X();
                        if ((kmClassX != null ? kmClassX.m : null) != null) {
                        }
                    }
                    int index = kParameter2.getIndex();
                    DescriptorKType type2 = kParameter2.getType();
                    Type typeJ = type2.j();
                    if (typeJ == null) {
                        typeJ = TypesJVMKt.b(type2, false);
                    }
                    objArr[index] = UtilKt.d(typeJ);
                }
                if (kParameter2.n()) {
                    objArr[kParameter2.getIndex()] = DescriptorKCallable.G(kParameter2.getType());
                }
            }
            for (int i3 = 0; i3 < i2; i3++) {
                objArr[size + i3] = 0;
            }
            return objArr;
        }
    });

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Lazy f72014h = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new Function0(this) { // from class: kotlin.reflect.jvm.internal.DescriptorKCallable$$Lambda$6

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final DescriptorKCallable f72024b;

        {
            this.f72024b = this;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: invoke */
        public final Object mo47invoke() {
            boolean z;
            List parameters = this.f72024b.getParameters();
            if ((parameters instanceof Collection) && parameters.isEmpty()) {
                z = false;
            } else {
                Iterator it = parameters.iterator();
                while (it.hasNext()) {
                    if (UtilKt.f(((KParameter) it.next()).getType())) {
                        z = true;
                    }
                }
                z = false;
            }
            return Boolean.valueOf(z);
        }
    });

    public static Object G(KType kType) {
        Class clsB = JvmClassMappingKt.b(KTypesJvm.b(kType));
        if (clsB.isArray()) {
            Object objNewInstance = Array.newInstance(clsB.getComponentType(), 0);
            objNewInstance.getClass();
            return objNewInstance;
        }
        throw new KotlinReflectionInternalError("Cannot instantiate the default empty array of type " + clsB.getSimpleName() + ", because it is not an array type");
    }

    public abstract CallableMemberDescriptor H();

    public final int I(KParameter kParameter) {
        if (!((Boolean) this.f72014h.getF71699b()).booleanValue()) {
            md.n("Check if parametersNeedMFVCFlattening is true before");
            return 0;
        }
        if (!UtilKt.f(kParameter.getType())) {
            return 1;
        }
        ArrayList arrayListE = ValueClassAwareCallerKt.e(TypeSubstitutionKt.a(kParameter.getType().f74413c));
        arrayListE.getClass();
        return arrayListE.size();
    }

    public final boolean J() {
        return Intrinsics.c(getF72049j(), "<init>") && getF72029i().getF71916b().isAnnotation();
    }

    @Override // kotlin.reflect.KCallable
    public final Object call(Object... objArr) throws IllegalCallableAccessException {
        objArr.getClass();
        try {
            return x().call(objArr);
        } catch (IllegalAccessException e2) {
            throw new IllegalCallableAccessException(e2);
        }
    }

    @Override // kotlin.reflect.KCallable
    public final Object callBy(Map map) throws IllegalCallableAccessException {
        Object objG;
        map.getClass();
        boolean z = false;
        if (J()) {
            List<KParameter> parameters = getParameters();
            ArrayList arrayList = new ArrayList(CollectionsKt.t(parameters, 10));
            for (KParameter kParameter : parameters) {
                if (map.containsKey(kParameter)) {
                    objG = map.get(kParameter);
                    if (objG == null) {
                        throw new IllegalArgumentException("Annotation argument value cannot be null (" + kParameter + ')');
                    }
                } else if (kParameter.F()) {
                    objG = null;
                } else {
                    if (!kParameter.n()) {
                        az.m(kParameter, "No argument provided for a required parameter: ");
                        return null;
                    }
                    objG = G(kParameter.getType());
                }
                arrayList.add(objG);
            }
            Caller callerC = c();
            if (callerC == null) {
                os.f(H(), "This callable does not support a default call: ");
                return null;
            }
            try {
                return callerC.call(arrayList.toArray(new Object[0]));
            } catch (IllegalAccessException e2) {
                throw new IllegalCallableAccessException(e2);
            }
        }
        List<KParameter> parameters2 = getParameters();
        if (parameters2.isEmpty()) {
            try {
                return x().call(isSuspend() ? new Continuation[]{null} : new Continuation[0]);
            } catch (IllegalAccessException e3) {
                throw new IllegalCallableAccessException(e3);
            }
        }
        int size = (isSuspend() ? 1 : 0) + parameters2.size();
        Object[] objArr = (Object[]) ((Object[]) this.g.mo47invoke()).clone();
        if (isSuspend()) {
            objArr[parameters2.size()] = null;
        }
        boolean zBooleanValue = ((Boolean) this.f72014h.getF71699b()).booleanValue();
        int i2 = 0;
        for (KParameter kParameter2 : parameters2) {
            int I = zBooleanValue ? I(kParameter2) : 1;
            if (map.containsKey(kParameter2)) {
                objArr[kParameter2.getIndex()] = map.get(kParameter2);
            } else if (kParameter2.F()) {
                if (zBooleanValue) {
                    int i3 = i2 + I;
                    for (int i4 = i2; i4 < i3; i4++) {
                        int i5 = (i4 / 32) + size;
                        Object obj = objArr[i5];
                        obj.getClass();
                        objArr[i5] = Integer.valueOf(((Integer) obj).intValue() | (1 << (i4 % 32)));
                    }
                } else {
                    int i6 = (i2 / 32) + size;
                    Object obj2 = objArr[i6];
                    obj2.getClass();
                    objArr[i6] = Integer.valueOf(((Integer) obj2).intValue() | (1 << (i2 % 32)));
                }
                z = true;
            } else if (!kParameter2.n()) {
                az.m(kParameter2, "No argument provided for a required parameter: ");
                return null;
            }
            if (kParameter2.e() == KParameter.Kind.VALUE) {
                i2 += I;
            }
        }
        if (!z) {
            try {
                return x().call(Arrays.copyOf(objArr, size));
            } catch (IllegalAccessException e4) {
                throw new IllegalCallableAccessException(e4);
            }
        }
        Caller callerC2 = c();
        if (callerC2 == null) {
            os.f(H(), "This callable does not support a default call: ");
            return null;
        }
        try {
            return callerC2.call(objArr);
        } catch (IllegalAccessException e5) {
            throw new IllegalCallableAccessException(e5);
        }
    }

    @Override // kotlin.reflect.KAnnotatedElement
    /* JADX INFO: renamed from: getAnnotations */
    public final List getF74444f() {
        Object objMo47invoke = this.f72010b.mo47invoke();
        objMo47invoke.getClass();
        return (List) objMo47invoke;
    }

    @Override // kotlin.reflect.KCallable
    public final List getParameters() {
        Object objMo47invoke = this.d.mo47invoke();
        objMo47invoke.getClass();
        return (List) objMo47invoke;
    }

    @Override // kotlin.reflect.KCallable
    public final KType getReturnType() {
        Object objMo47invoke = this.f72012e.mo47invoke();
        objMo47invoke.getClass();
        return (KType) objMo47invoke;
    }

    @Override // kotlin.reflect.KCallable
    public final List getTypeParameters() {
        Object objMo47invoke = this.f72013f.mo47invoke();
        objMo47invoke.getClass();
        return (List) objMo47invoke;
    }

    @Override // kotlin.reflect.KCallable
    public final KVisibility getVisibility() {
        DescriptorVisibility visibility = H().getVisibility();
        visibility.getClass();
        FqName fqName = UtilKt.f72187a;
        if (visibility.equals(DescriptorVisibilities.f72369e)) {
            return KVisibility.PUBLIC;
        }
        if (visibility.equals(DescriptorVisibilities.f72368c)) {
            return KVisibility.PROTECTED;
        }
        if (visibility.equals(DescriptorVisibilities.d)) {
            return KVisibility.INTERNAL;
        }
        if (visibility.equals(DescriptorVisibilities.f72366a) || visibility.equals(DescriptorVisibilities.f72367b)) {
            return KVisibility.PRIVATE;
        }
        return null;
    }

    @Override // kotlin.reflect.KCallable
    public final boolean isAbstract() {
        return H().q() == Modality.ABSTRACT;
    }

    @Override // kotlin.reflect.KCallable
    public final boolean isFinal() {
        return H().q() == Modality.FINAL;
    }

    @Override // kotlin.reflect.KCallable
    public final boolean isOpen() {
        return H().q() == Modality.OPEN;
    }

    @Override // kotlin.reflect.jvm.internal.ReflectKCallable
    public final List u() {
        Object objMo47invoke = this.f72011c.mo47invoke();
        objMo47invoke.getClass();
        return (List) objMo47invoke;
    }
}
