package kotlin.reflect.jvm.internal.calls;

import defpackage.wp;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.collections.builders.ListBuilder;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.IntProgressionIterator;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.reflect.jvm.internal.KDeclarationContainerImpl;
import kotlin.reflect.jvm.internal.KotlinReflectionInternalError;
import kotlin.reflect.jvm.internal.UtilKt;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutionKt;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0000\u0018\u0000*\f\b\u0000\u0010\u0002 \u0001*\u0004\u0018\u00010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0002\u000b\fB%\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;", "Ljava/lang/reflect/Member;", "M", "Lkotlin/reflect/jvm/internal/calls/Caller;", "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;", "descriptor", "oldCaller", "", "isDefault", "<init>", "(Lorg/jetbrains/kotlin/descriptors/CallableMemberDescriptor;Lkotlin/reflect/jvm/internal/calls/Caller;Z)V", "BoxUnboxData", "MultiFieldValueClassPrimaryConstructorCaller", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ValueClassAwareCaller<M extends Member> implements Caller<M> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f72219a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Caller f72220b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Member f72221c;
    public final BoxUnboxData d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final IntRange[] f72222e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f72223f;

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0014\u0010\u0007\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00050\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$BoxUnboxData;", "", "Lkotlin/ranges/IntRange;", "argumentRange", "", "", "Ljava/lang/reflect/Method;", "unboxParameters", "box", "<init>", "(Lkotlin/ranges/IntRange;[Ljava/util/List;Ljava/lang/reflect/Method;)V", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class BoxUnboxData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final IntRange f72225a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List[] f72226b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Method f72227c;

        public BoxUnboxData(IntRange intRange, List<Method>[] listArr, Method method) {
            intRange.getClass();
            listArr.getClass();
            this.f72225a = intRange;
            this.f72226b = listArr;
            this.f72227c = method;
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B-\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$MultiFieldValueClassPrimaryConstructorCaller;", "Lkotlin/reflect/jvm/internal/calls/Caller;", "", "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;", "descriptor", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "container", "", "constructorDesc", "", "Lkotlin/reflect/jvm/internal/impl/descriptors/ParameterDescriptor;", "originalParameters", "<init>", "(Lorg/jetbrains/kotlin/descriptors/FunctionDescriptor;Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/util/List;)V", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class MultiFieldValueClassPrimaryConstructorCaller implements Caller {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Method f72228a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Method f72229b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ArrayList f72230c;
        public final ArrayList d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final ArrayList f72231e;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v15, types: [java.util.List] */
        /* JADX WARN: Type inference failed for: r0v16, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r0v17, types: [java.util.ArrayList] */
        public MultiFieldValueClassPrimaryConstructorCaller(FunctionDescriptor functionDescriptor, KDeclarationContainerImpl kDeclarationContainerImpl, String str, List<? extends ParameterDescriptor> list) {
            ?? O;
            functionDescriptor.getClass();
            kDeclarationContainerImpl.getClass();
            str.getClass();
            list.getClass();
            Method methodH = kDeclarationContainerImpl.H("constructor-impl", str);
            methodH.getClass();
            this.f72228a = methodH;
            Method methodH2 = kDeclarationContainerImpl.H("box-impl", StringsKt.F(str, "V").concat(ReflectClassUtilKt.b(kDeclarationContainerImpl.getF72145e())));
            methodH2.getClass();
            this.f72229b = methodH2;
            List<? extends ParameterDescriptor> list2 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            Iterator it = list2.iterator();
            while (true) {
                List listO = null;
                if (!it.hasNext()) {
                    break;
                }
                KotlinType type = ((ParameterDescriptor) it.next()).getType();
                type.getClass();
                SimpleType simpleTypeA = TypeSubstitutionKt.a(type);
                ArrayList arrayListE = ValueClassAwareCallerKt.e(simpleTypeA);
                if (arrayListE == null) {
                    Class clsH = ValueClassAwareCallerKt.h(simpleTypeA);
                    if (clsH != null) {
                        listO = CollectionsKt.O(ValueClassAwareCallerKt.d(clsH, functionDescriptor));
                    }
                } else {
                    listO = arrayListE;
                }
                arrayList.add(listO);
            }
            this.f72230c = arrayList;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
            int i2 = 0;
            for (Object obj : list2) {
                int i3 = i2 + 1;
                if (i2 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                ClassifierDescriptor classifierDescriptorY = ((ParameterDescriptor) obj).getType().H0().y();
                classifierDescriptorY.getClass();
                ClassDescriptor classDescriptor = (ClassDescriptor) classifierDescriptorY;
                List list3 = (List) this.f72230c.get(i2);
                if (list3 != null) {
                    List list4 = list3;
                    O = new ArrayList(CollectionsKt.t(list4, 10));
                    Iterator it2 = list4.iterator();
                    while (it2.hasNext()) {
                        O.add(((Method) it2.next()).getReturnType());
                    }
                } else {
                    Class clsI = UtilKt.i(classDescriptor);
                    clsI.getClass();
                    O = CollectionsKt.O(clsI);
                }
                arrayList2.add(O);
                i2 = i3;
            }
            this.d = arrayList2;
            this.f72231e = CollectionsKt.D(arrayList2);
        }

        @Override // kotlin.reflect.jvm.internal.calls.Caller
        /* JADX INFO: renamed from: a */
        public final List getF72216b() {
            return this.f72231e;
        }

        @Override // kotlin.reflect.jvm.internal.calls.Caller
        /* JADX INFO: renamed from: b */
        public final /* bridge */ /* synthetic */ Member getF72221c() {
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.calls.Caller
        public final /* bridge */ boolean c() {
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r6v1, types: [java.util.List] */
        /* JADX WARN: Type inference failed for: r6v2 */
        /* JADX WARN: Type inference failed for: r6v4, types: [java.util.ArrayList] */
        @Override // kotlin.reflect.jvm.internal.calls.Caller
        public final Object call(Object[] objArr) throws IllegalAccessException, InvocationTargetException {
            ?? O;
            objArr.getClass();
            ArrayList arrayList = this.f72230c;
            arrayList.getClass();
            int length = objArr.length;
            ArrayList<Pair> arrayList2 = new ArrayList(Math.min(CollectionsKt.t(arrayList, 10), length));
            int i2 = 0;
            for (Object obj : arrayList) {
                if (i2 >= length) {
                    break;
                }
                arrayList2.add(new Pair(objArr[i2], obj));
                i2++;
            }
            ArrayList arrayList3 = new ArrayList();
            for (Pair pair : arrayList2) {
                Object obj2 = pair.f71705b;
                List list = (List) pair.f71706c;
                if (list != null) {
                    List list2 = list;
                    O = new ArrayList(CollectionsKt.t(list2, 10));
                    Iterator it = list2.iterator();
                    while (it.hasNext()) {
                        O.add(((Method) it.next()).invoke(obj2, null));
                    }
                } else {
                    O = CollectionsKt.O(obj2);
                }
                CollectionsKt.j(arrayList3, (Iterable) O);
            }
            Object[] array = arrayList3.toArray(new Object[0]);
            this.f72228a.invoke(null, Arrays.copyOf(array, array.length));
            return this.f72229b.invoke(null, Arrays.copyOf(array, array.length));
        }

        @Override // kotlin.reflect.jvm.internal.calls.Caller
        /* JADX INFO: renamed from: getReturnType */
        public final Type getF72207b() {
            Class<?> returnType = this.f72229b.getReturnType();
            returnType.getClass();
            return returnType;
        }
    }

    /* JADX WARN: Code duplicated, block: B:129:0x0278  */
    /* JADX WARN: Code duplicated, block: B:27:0x007a A[LOOP:1: B:25:0x0074->B:27:0x007a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:60:0x011f  */
    /* JADX WARN: Code duplicated, block: B:95:0x01c8  */
    public ValueClassAwareCaller(CallableMemberDescriptor callableMemberDescriptor, Caller<? extends M> caller, boolean z) {
        Class clsH;
        Method declaredMethod;
        BoxUnboxData boxUnboxData;
        List listE;
        SimpleType simpleTypeG;
        ArrayList arrayList;
        Iterator it;
        callableMemberDescriptor.getClass();
        caller.getClass();
        this.f72219a = z;
        boolean z2 = false;
        if (caller instanceof CallerImpl.Method.BoundStatic) {
            ReceiverParameterDescriptor receiverParameterDescriptorJ = callableMemberDescriptor.J();
            receiverParameterDescriptorJ = receiverParameterDescriptorJ == null ? callableMemberDescriptor.G() : receiverParameterDescriptorJ;
            KotlinType type = receiverParameterDescriptorJ != null ? receiverParameterDescriptorJ.getType() : null;
            if (type != null && InlineClassesUtilsKt.f(type)) {
                if (z) {
                    List listH = callableMemberDescriptor.h();
                    listH.getClass();
                    List list = listH;
                    if (!(list instanceof Collection) || !list.isEmpty()) {
                        Iterator it2 = list.iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                if (((ValueParameterDescriptor) it2.next()).u0()) {
                                    ArrayList arrayListE = ValueClassAwareCallerKt.e(TypeSubstitutionKt.a(type));
                                    arrayListE.getClass();
                                    arrayList = new ArrayList(CollectionsKt.t(arrayListE, 10));
                                    it = arrayListE.iterator();
                                    while (it.hasNext()) {
                                        arrayList.add(((Method) it.next()).invoke(((CallerImpl.Method.BoundStatic) caller).f72214h, null));
                                    }
                                    caller = new CallerImpl.Method.BoundStaticMultiFieldValueClass((Method) ((CallerImpl.Method) caller).f72206a, arrayList.toArray(new Object[0]));
                                }
                            }
                        }
                    }
                } else {
                    ArrayList arrayListE2 = ValueClassAwareCallerKt.e(TypeSubstitutionKt.a(type));
                    arrayListE2.getClass();
                    arrayList = new ArrayList(CollectionsKt.t(arrayListE2, 10));
                    it = arrayListE2.iterator();
                    while (it.hasNext()) {
                        arrayList.add(((Method) it.next()).invoke(((CallerImpl.Method.BoundStatic) caller).f72214h, null));
                    }
                    caller = new CallerImpl.Method.BoundStaticMultiFieldValueClass((Method) ((CallerImpl.Method) caller).f72206a, arrayList.toArray(new Object[0]));
                }
            }
        }
        this.f72220b = caller;
        this.f72221c = caller.getF72221c();
        KotlinType returnType = callableMemberDescriptor.getReturnType();
        returnType.getClass();
        boolean z3 = callableMemberDescriptor instanceof FunctionDescriptor;
        if ((z3 && ((FunctionDescriptor) callableMemberDescriptor).isSuspend() && (simpleTypeG = InlineClassesUtilsKt.g(returnType)) != null && KotlinBuiltIns.H(simpleTypeG)) || (clsH = ValueClassAwareCallerKt.h(returnType)) == null) {
            declaredMethod = null;
        } else {
            try {
                declaredMethod = clsH.getDeclaredMethod("box-impl", ValueClassAwareCallerKt.d(clsH, callableMemberDescriptor).getReturnType());
                declaredMethod.getClass();
            } catch (NoSuchMethodException unused) {
                wp.f("No box method found in inline class: ", clsH, " (calling ", callableMemberDescriptor);
                throw null;
            }
        }
        if (InlineClassesUtilsKt.a(callableMemberDescriptor)) {
            IntRange.INSTANCE.getClass();
            boxUnboxData = new BoxUnboxData(IntRange.g, new List[0], declaredMethod);
        } else {
            int i2 = -1;
            if ((!(caller instanceof CallerImpl.Method.BoundStatic) || ((CallerImpl.Method.BoundStatic) caller).g) && !(caller instanceof CallerImpl.Method.BoundStaticMultiFieldValueClass)) {
                if (callableMemberDescriptor instanceof ConstructorDescriptor) {
                    if (!(caller instanceof BoundCaller)) {
                        i2 = 0;
                    }
                } else if (callableMemberDescriptor.G() == null || (caller instanceof BoundCaller)) {
                    i2 = 0;
                } else {
                    DeclarationDescriptor declarationDescriptorD = callableMemberDescriptor.d();
                    declarationDescriptorD.getClass();
                    if (InlineClassesUtilsKt.e(declarationDescriptorD)) {
                        i2 = 0;
                    } else {
                        i2 = 1;
                    }
                }
            }
            int i3 = caller instanceof CallerImpl.Method.BoundStaticMultiFieldValueClass ? -((CallerImpl.Method.BoundStaticMultiFieldValueClass) caller).g.length : i2;
            Member f72221c = caller.getF72221c();
            ValueClassAwareCaller$$Lambda$0 valueClassAwareCaller$$Lambda$0 = ValueClassAwareCaller$$Lambda$0.f72224b;
            ArrayList arrayList2 = new ArrayList();
            ReceiverParameterDescriptor receiverParameterDescriptorJ2 = callableMemberDescriptor.J();
            KotlinType type2 = receiverParameterDescriptorJ2 != null ? receiverParameterDescriptorJ2.getType() : null;
            if (type2 != null) {
                arrayList2.add(type2);
            } else if (callableMemberDescriptor instanceof ConstructorDescriptor) {
                ClassDescriptor classDescriptorV = ((ConstructorDescriptor) callableMemberDescriptor).V();
                classDescriptorV.getClass();
                if (classDescriptorV.k()) {
                    DeclarationDescriptor declarationDescriptorD2 = classDescriptorV.d();
                    declarationDescriptorD2.getClass();
                    arrayList2.add(((ClassDescriptor) declarationDescriptorD2).o());
                }
            } else {
                DeclarationDescriptor declarationDescriptorD3 = callableMemberDescriptor.d();
                declarationDescriptorD3.getClass();
                if ((declarationDescriptorD3 instanceof ClassDescriptor) && ((Boolean) valueClassAwareCaller$$Lambda$0.invoke(declarationDescriptorD3)).booleanValue()) {
                    if (f72221c == null) {
                        arrayList2.add(((ClassDescriptor) declarationDescriptorD3).o());
                    } else {
                        Class<?> declaringClass = f72221c.getDeclaringClass();
                        if (declaringClass == null ? false : !Reflection.f71922a.b(declaringClass).r()) {
                            SimpleType simpleTypeO = ((ClassDescriptor) declarationDescriptorD3).o();
                            simpleTypeO.getClass();
                            arrayList2.add(TypeUtils.i(simpleTypeO, true));
                        } else {
                            arrayList2.add(((ClassDescriptor) declarationDescriptorD3).o());
                        }
                    }
                }
            }
            List listH2 = callableMemberDescriptor.h();
            listH2.getClass();
            Iterator it3 = listH2.iterator();
            while (it3.hasNext()) {
                arrayList2.add(((ValueParameterDescriptor) it3.next()).getType());
            }
            Iterator it4 = arrayList2.iterator();
            int size = 0;
            while (it4.hasNext()) {
                ArrayList arrayListE3 = ValueClassAwareCallerKt.e(TypeSubstitutionKt.a((KotlinType) it4.next()));
                size += arrayListE3 != null ? arrayListE3.size() : 1;
            }
            int i4 = size + i3 + (this.f72219a ? ((size + 31) / 32) + 1 : 0) + ((z3 && ((FunctionDescriptor) callableMemberDescriptor).isSuspend()) ? 1 : 0);
            boolean z4 = this.f72219a;
            if (getF72216b().size() != i4) {
                StringBuilder sb = new StringBuilder("Inconsistent number of parameters in the descriptor and Java reflection object: ");
                sb.append(this.f72220b.getF72216b().size());
                sb.append(" != ");
                sb.append(i4);
                sb.append("\nCalling: ");
                sb.append(callableMemberDescriptor);
                List f72216b = this.f72220b.getF72216b();
                sb.append("\nParameter types: ");
                sb.append(f72216b);
                sb.append(")\nDefault: ");
                sb.append(z4);
                throw new KotlinReflectionInternalError(sb.toString());
            }
            IntRange intRangeJ = RangesKt.j(Math.max(i2, 0), arrayList2.size() + i2);
            List[] listArr = new List[i4];
            for (int i5 = 0; i5 < i4; i5++) {
                int i6 = intRangeJ.f71951b;
                if (i5 > intRangeJ.f71952c || i6 > i5) {
                    listE = null;
                } else {
                    SimpleType simpleTypeA = TypeSubstitutionKt.a((KotlinType) arrayList2.get(i5 - i2));
                    listE = ValueClassAwareCallerKt.e(simpleTypeA);
                    if (listE == null) {
                        Class clsH2 = ValueClassAwareCallerKt.h(simpleTypeA);
                        if (clsH2 != null) {
                            listE = CollectionsKt.O(ValueClassAwareCallerKt.d(clsH2, callableMemberDescriptor));
                        } else {
                            listE = null;
                        }
                    }
                }
                listArr[i5] = listE;
            }
            boxUnboxData = new BoxUnboxData(intRangeJ, listArr, declaredMethod);
        }
        this.d = boxUnboxData;
        ListBuilder listBuilderV = CollectionsKt.v();
        Caller caller2 = this.f72220b;
        int length = caller2 instanceof CallerImpl.Method.BoundStaticMultiFieldValueClass ? ((CallerImpl.Method.BoundStaticMultiFieldValueClass) caller2).g.length : caller2 instanceof CallerImpl.Method.BoundStatic ? 1 : 0;
        if (length > 0) {
            listBuilderV.add(RangesKt.j(0, length));
        }
        List[] listArr2 = boxUnboxData.f72226b;
        int length2 = listArr2.length;
        int i7 = 0;
        while (i7 < length2) {
            List list2 = listArr2[i7];
            int size2 = (list2 != null ? list2.size() : 1) + length;
            listBuilderV.add(RangesKt.j(length, size2));
            i7++;
            length = size2;
        }
        this.f72222e = (IntRange[]) CollectionsKt.r(listBuilderV).toArray(new IntRange[0]);
        Iterable iterable = this.d.f72225a;
        if (!(iterable instanceof Collection) || !((Collection) iterable).isEmpty()) {
            Iterator<Integer> it5 = iterable.iterator();
            while (((IntProgressionIterator) it5).d) {
                List list3 = this.d.f72226b[((IntIterator) it5).nextInt()];
                if (list3 != null && list3.size() > 1) {
                    z2 = true;
                    break;
                }
            }
        }
        this.f72223f = z2;
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    /* JADX INFO: renamed from: a */
    public final List getF72216b() {
        return this.f72220b.getF72216b();
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    /* JADX INFO: renamed from: b, reason: from getter */
    public final Member getF72221c() {
        return this.f72221c;
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public final boolean c() {
        return this.f72220b instanceof CallerImpl.Method.BoundInstance;
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public final Object call(Object[] objArr) throws IllegalAccessException, InvocationTargetException {
        Object objInvoke;
        Object objD;
        Object objD2;
        objArr.getClass();
        BoxUnboxData boxUnboxData = this.d;
        IntRange intRange = boxUnboxData.f72225a;
        List[] listArr = boxUnboxData.f72226b;
        Method method = boxUnboxData.f72227c;
        boolean zIsEmpty = intRange.isEmpty();
        int i2 = intRange.f71952c;
        int i3 = intRange.f71951b;
        if (!zIsEmpty) {
            if (this.f72223f) {
                ListBuilder listBuilder = new ListBuilder(objArr.length);
                for (int i4 = 0; i4 < i3; i4++) {
                    listBuilder.add(objArr[i4]);
                }
                if (i3 <= i2) {
                    while (true) {
                        List<Method> list = listArr[i3];
                        Object obj = objArr[i3];
                        if (list != null) {
                            for (Method method2 : list) {
                                if (obj != null) {
                                    objD2 = method2.invoke(obj, null);
                                } else {
                                    Class<?> returnType = method2.getReturnType();
                                    returnType.getClass();
                                    objD2 = UtilKt.d(returnType);
                                }
                                listBuilder.add(objD2);
                            }
                        } else {
                            listBuilder.add(obj);
                        }
                        if (i3 == i2) {
                            break;
                        }
                        i3++;
                    }
                }
                int i5 = i2 + 1;
                int length = objArr.length - 1;
                if (i5 <= length) {
                    while (true) {
                        listBuilder.add(objArr[i5]);
                        if (i5 == length) {
                            break;
                        }
                        i5++;
                    }
                }
                objArr = CollectionsKt.r(listBuilder).toArray(new Object[0]);
            } else {
                int length2 = objArr.length;
                Object[] objArr2 = new Object[length2];
                for (int i6 = 0; i6 < length2; i6++) {
                    if (i6 > i2 || i3 > i6) {
                        objD = objArr[i6];
                    } else {
                        List list2 = listArr[i6];
                        Method method3 = list2 != null ? (Method) CollectionsKt.h0(list2) : null;
                        objD = objArr[i6];
                        if (method3 != null) {
                            if (objD != null) {
                                objD = method3.invoke(objD, null);
                            } else {
                                Class<?> returnType2 = method3.getReturnType();
                                returnType2.getClass();
                                objD = UtilKt.d(returnType2);
                            }
                        }
                    }
                    objArr2[i6] = objD;
                }
                objArr = objArr2;
            }
        }
        Object objCall = this.f72220b.call(objArr);
        return (objCall == CoroutineSingletons.COROUTINE_SUSPENDED || method == null || (objInvoke = method.invoke(null, objCall)) == null) ? objCall : objInvoke;
    }

    public final IntRange d(int i2) {
        IntRange[] intRangeArr = this.f72222e;
        if (i2 >= 0 && i2 < intRangeArr.length) {
            return intRangeArr[i2];
        }
        if (intRangeArr.length == 0) {
            return new IntRange(i2, i2);
        }
        int length = ((IntRange) ArraysKt.I(intRangeArr)).f71952c + 1 + (i2 - intRangeArr.length);
        return new IntRange(length, length);
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    /* JADX INFO: renamed from: getReturnType */
    public final Type getF72207b() {
        return this.f72220b.getF72207b();
    }
}
