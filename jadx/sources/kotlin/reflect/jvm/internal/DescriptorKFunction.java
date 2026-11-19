package kotlin.reflect.jvm.internal;

import androidx.compose.runtime.Composer;
import defpackage.fc;
import defpackage.tg0;
import defpackage.v40;
import java.lang.reflect.Constructor;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.CallableReference;
import kotlin.jvm.internal.FunctionBase;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KCallable;
import kotlin.reflect.KParameter;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.calls.AnnotationConstructorCaller;
import kotlin.reflect.jvm.internal.calls.Caller;
import kotlin.reflect.jvm.internal.calls.CallerImpl;
import kotlin.reflect.jvm.internal.calls.ValueClassAwareCaller;
import kotlin.reflect.jvm.internal.calls.ValueClassAwareCallerKt;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters;
import kotlin.reflect.jvm.internal.impl.descriptors.ConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.ClassMapperLite;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMemberSignature;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.InlineClassManglingRulesKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.sequences.FlatteningSequence;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\u00020\u00032\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00042\u00020\u0005B5\b\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000e\u0010\u000fB\u0019\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0010\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u0011B+\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000e\u0010\u0013¨\u0006\u0014"}, d2 = {"Lkotlin/reflect/jvm/internal/DescriptorKFunction;", "Lkotlin/reflect/jvm/internal/DescriptorKCallable;", "", "Lkotlin/reflect/jvm/internal/ReflectKFunction;", "Lkotlin/jvm/internal/FunctionBase;", "Lkotlin/reflect/jvm/internal/FunctionWithAllInvokes;", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "container", "", "name", "signature", "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;", "descriptorInitialValue", "rawBoundReceiver", "<init>", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Lorg/jetbrains/kotlin/descriptors/FunctionDescriptor;Ljava/lang/Object;)V", "descriptor", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lorg/jetbrains/kotlin/descriptors/FunctionDescriptor;)V", "boundReceiver", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DescriptorKFunction extends DescriptorKCallable<Object> implements FunctionBase<Object>, FunctionWithAllInvokes, ReflectKFunction {
    public static final /* synthetic */ KProperty[] o = {Reflection.f71922a.h(new PropertyReference1Impl(DescriptorKFunction.class, "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/FunctionDescriptor;", 0))};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final KDeclarationContainerImpl f72029i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f72030j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Object f72031k;
    public final ReflectProperties.LazySoftVal l;
    public final Lazy m;
    public final Lazy n;

    public DescriptorKFunction(KDeclarationContainerImpl kDeclarationContainerImpl, final String str, String str2, FunctionDescriptor functionDescriptor, Object obj) {
        this.f72029i = kDeclarationContainerImpl;
        this.f72030j = str2;
        this.f72031k = obj;
        this.l = ReflectProperties.a(functionDescriptor, new Function0(this, str) { // from class: kotlin.reflect.jvm.internal.DescriptorKFunction$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final DescriptorKFunction f72032b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final String f72033c;

            {
                this.f72032b = this;
                this.f72033c = str;
            }

            /* JADX WARN: Code duplicated, block: B:18:0x0094  */
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                List listJ;
                ArrayList arrayList;
                String f72079b;
                DescriptorKFunction descriptorKFunction = this.f72032b;
                KDeclarationContainerImpl kDeclarationContainerImpl2 = descriptorKFunction.f72029i;
                String str3 = descriptorKFunction.f72030j;
                kDeclarationContainerImpl2.getClass();
                String str4 = this.f72033c;
                str4.getClass();
                str3.getClass();
                if (str4.equals("<init>")) {
                    listJ = CollectionsKt.y0(kDeclarationContainerImpl2.I());
                    arrayList = new ArrayList();
                    for (Object obj2 : listJ) {
                        ConstructorDescriptor constructorDescriptor = (ConstructorDescriptor) obj2;
                        if (constructorDescriptor.U()) {
                            ClassifierDescriptorWithTypeParameters classifierDescriptorWithTypeParametersD = constructorDescriptor.d();
                            classifierDescriptorWithTypeParametersD.getClass();
                            if (InlineClassesUtilsKt.c(classifierDescriptorWithTypeParametersD)) {
                                String f72079b2 = RuntimeTypeMapper.c(constructorDescriptor).getF72079b();
                                if (!StringsKt.P(f72079b2, "constructor-impl", false) || !StringsKt.p(f72079b2, ")V", false)) {
                                    tg0.h("Invalid signature of ", constructorDescriptor, ": ", f72079b2);
                                    return null;
                                }
                                String strF = StringsKt.F(f72079b2, "V");
                                ClassifierDescriptorWithTypeParameters classifierDescriptorWithTypeParametersD2 = constructorDescriptor.d();
                                classifierDescriptorWithTypeParametersD2.getClass();
                                ClassId classIdF = DescriptorUtilsKt.f(classifierDescriptorWithTypeParametersD2);
                                classIdF.getClass();
                                f72079b = strF.concat(ClassMapperLite.b(classIdF.b()));
                            } else {
                                f72079b = RuntimeTypeMapper.c(constructorDescriptor).getF72079b();
                            }
                        } else {
                            f72079b = RuntimeTypeMapper.c(constructorDescriptor).getF72079b();
                        }
                        if (Intrinsics.c(f72079b, str3)) {
                            arrayList.add(obj2);
                        }
                    }
                } else {
                    listJ = kDeclarationContainerImpl2.J(Name.e(str4));
                    arrayList = new ArrayList();
                    for (Object obj3 : listJ) {
                        if (Intrinsics.c(RuntimeTypeMapper.c((FunctionDescriptor) obj3).getF72079b(), str3)) {
                            arrayList.add(obj3);
                        }
                    }
                }
                if (arrayList.size() == 1) {
                    return (FunctionDescriptor) CollectionsKt.h0(arrayList);
                }
                String strK = CollectionsKt.K(listJ, "\n", null, null, new Function1() { // from class: kotlin.reflect.jvm.internal.KDeclarationContainerImpl$$Lambda$3
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj4) {
                        FunctionDescriptor functionDescriptor2 = (FunctionDescriptor) obj4;
                        KDeclarationContainerImpl.Companion companion = KDeclarationContainerImpl.f72134b;
                        functionDescriptor2.getClass();
                        return DescriptorRenderer.d.y(functionDescriptor2) + " | " + RuntimeTypeMapper.c(functionDescriptor2).getF72079b();
                    }
                }, 30);
                StringBuilder sbS = fc.s("Function '", str4, "' (JVM signature: ", str3, ") not resolved in ");
                sbS.append(kDeclarationContainerImpl2);
                sbS.append(':');
                sbS.append(strK.length() == 0 ? " no members found" : "\n".concat(strK));
                throw new KotlinReflectionInternalError(sbS.toString());
            }
        });
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        this.m = LazyKt.a(lazyThreadSafetyMode, new Function0(this) { // from class: kotlin.reflect.jvm.internal.DescriptorKFunction$$Lambda$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final DescriptorKFunction f72034b;

            {
                this.f72034b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                Object objH;
                CallerImpl callerImplL;
                CallerImpl boundJvmStaticInObject;
                KProperty[] kPropertyArr = DescriptorKFunction.o;
                ClassId classId = RuntimeTypeMapper.f72176a;
                DescriptorKFunction descriptorKFunction = this.f72034b;
                FunctionDescriptor functionDescriptorH = descriptorKFunction.H();
                KDeclarationContainerImpl kDeclarationContainerImpl2 = descriptorKFunction.f72029i;
                JvmFunctionSignature jvmFunctionSignatureC = RuntimeTypeMapper.c(functionDescriptorH);
                if (jvmFunctionSignatureC instanceof JvmFunctionSignature.KotlinConstructor) {
                    if (descriptorKFunction.J()) {
                        Class f72090e = kDeclarationContainerImpl2.getF72090e();
                        List parameters = descriptorKFunction.getParameters();
                        ArrayList arrayList = new ArrayList(CollectionsKt.t(parameters, 10));
                        Iterator it = parameters.iterator();
                        while (it.hasNext()) {
                            String name = ((KParameter) it.next()).getName();
                            name.getClass();
                            arrayList.add(name);
                        }
                        return new AnnotationConstructorCaller(f72090e, arrayList, AnnotationConstructorCaller.CallMode.POSITIONAL_CALL, AnnotationConstructorCaller.Origin.KOTLIN, null, 16, null);
                    }
                    String str3 = ((JvmFunctionSignature.KotlinConstructor) jvmFunctionSignatureC).f72076a.f73667b;
                    kDeclarationContainerImpl2.getClass();
                    str3.getClass();
                    objH = KDeclarationContainerImpl.Q(kDeclarationContainerImpl2.O(str3, false).f72143a, kDeclarationContainerImpl2.getF72090e());
                } else if (jvmFunctionSignatureC instanceof JvmFunctionSignature.KotlinFunction) {
                    FunctionDescriptor functionDescriptorH2 = descriptorKFunction.H();
                    DeclarationDescriptor declarationDescriptorD = functionDescriptorH2.d();
                    declarationDescriptorD.getClass();
                    if (InlineClassesUtilsKt.c(declarationDescriptorD) && (functionDescriptorH2 instanceof ConstructorDescriptor) && ((ConstructorDescriptor) functionDescriptorH2).U()) {
                        FunctionDescriptor functionDescriptorH3 = descriptorKFunction.H();
                        String str4 = ((JvmFunctionSignature.KotlinFunction) jvmFunctionSignatureC).f72078a.f73667b;
                        List listH = descriptorKFunction.H().h();
                        listH.getClass();
                        return new ValueClassAwareCaller.MultiFieldValueClassPrimaryConstructorCaller(functionDescriptorH3, kDeclarationContainerImpl2, str4, listH);
                    }
                    JvmMemberSignature.Method method = ((JvmFunctionSignature.KotlinFunction) jvmFunctionSignatureC).f72078a;
                    objH = kDeclarationContainerImpl2.H(method.f73666a, method.f73667b);
                } else if (jvmFunctionSignatureC instanceof JvmFunctionSignature.JavaMethod) {
                    objH = ((JvmFunctionSignature.JavaMethod) jvmFunctionSignatureC).f72075a;
                    objH.getClass();
                } else {
                    if (!(jvmFunctionSignatureC instanceof JvmFunctionSignature.JavaConstructor)) {
                        if (!(jvmFunctionSignatureC instanceof JvmFunctionSignature.FakeJavaAnnotationConstructor)) {
                            v40.g();
                            return null;
                        }
                        List list = ((JvmFunctionSignature.FakeJavaAnnotationConstructor) jvmFunctionSignatureC).f72071a;
                        Class f72090e2 = kDeclarationContainerImpl2.getF72090e();
                        List list2 = list;
                        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
                        Iterator it2 = list2.iterator();
                        while (it2.hasNext()) {
                            arrayList2.add(((Method) it2.next()).getName());
                        }
                        return new AnnotationConstructorCaller(f72090e2, arrayList2, AnnotationConstructorCaller.CallMode.POSITIONAL_CALL, AnnotationConstructorCaller.Origin.JAVA, list);
                    }
                    objH = ((JvmFunctionSignature.JavaConstructor) jvmFunctionSignatureC).f72073a;
                    objH.getClass();
                }
                if (objH instanceof Constructor) {
                    callerImplL = descriptorKFunction.K((Constructor) objH, descriptorKFunction.H(), false);
                } else {
                    if (!(objH instanceof Method)) {
                        throw new KotlinReflectionInternalError("Could not compute caller for function: " + descriptorKFunction.H() + " (member = " + objH + ')');
                    }
                    Method method2 = (Method) objH;
                    if (!Modifier.isStatic(method2.getModifiers())) {
                        boundJvmStaticInObject = ReflectKCallableKt.a(descriptorKFunction) ? new CallerImpl.Method.BoundInstance(method2, ValueClassAwareCallerKt.a(descriptorKFunction.f72031k, descriptorKFunction.H())) : new CallerImpl.Method.Instance(method2);
                    } else if (descriptorKFunction.H().getAnnotations().j(UtilKt.f72187a) != null) {
                        boundJvmStaticInObject = ReflectKCallableKt.a(descriptorKFunction) ? new CallerImpl.Method.BoundJvmStaticInObject(method2) : new CallerImpl.Method.JvmStaticInObject(method2);
                    } else {
                        callerImplL = descriptorKFunction.L(method2, false);
                    }
                    callerImplL = boundJvmStaticInObject;
                }
                return ValueClassAwareCallerKt.b(descriptorKFunction.H(), callerImplL, false);
            }
        });
        this.n = LazyKt.a(lazyThreadSafetyMode, new Function0(this) { // from class: kotlin.reflect.jvm.internal.DescriptorKFunction$$Lambda$2

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final DescriptorKFunction f72035b;

            {
                this.f72035b = this;
            }

            /* JADX WARN: Code duplicated, block: B:26:0x0094  */
            /* JADX WARN: Code duplicated, block: B:28:0x00a9  */
            /* JADX WARN: Code duplicated, block: B:31:0x00b8  */
            /* JADX WARN: Code duplicated, block: B:39:0x00e0  */
            /* JADX WARN: Code duplicated, block: B:45:0x00f2  */
            /* JADX WARN: Code duplicated, block: B:46:0x00f5  */
            /* JADX WARN: Code duplicated, block: B:84:0x021d  */
            /* JADX WARN: Code duplicated, block: B:92:0x00ed A[SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:93:0x00ee A[EDGE_INSN: B:93:0x00ee->B:43:0x00ee BREAK  A[LOOP:0: B:29:0x00b2->B:94:0x00b2, LOOP_LABEL: LOOP:0: B:29:0x00b2->B:94:0x00b2], SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:97:? A[LOOP:1: B:37:0x00da->B:97:?, LOOP_END, SYNTHETIC] */
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                GenericDeclaration genericDeclarationQ;
                CallerImpl callerImplL;
                FunctionDescriptor functionDescriptor2;
                DeclarationDescriptor declarationDescriptorD;
                Member f72206a;
                FlatteningSequence.AnonymousClass1 anonymousClass1;
                Object next;
                List list;
                Iterator it;
                KProperty[] kPropertyArr = DescriptorKFunction.o;
                ClassId classId = RuntimeTypeMapper.f72176a;
                DescriptorKFunction descriptorKFunction = this.f72035b;
                FunctionDescriptor functionDescriptorH = descriptorKFunction.H();
                KDeclarationContainerImpl kDeclarationContainerImpl2 = descriptorKFunction.f72029i;
                JvmFunctionSignature jvmFunctionSignatureC = RuntimeTypeMapper.c(functionDescriptorH);
                if (jvmFunctionSignatureC instanceof JvmFunctionSignature.KotlinFunction) {
                    FunctionDescriptor functionDescriptorH2 = descriptorKFunction.H();
                    DeclarationDescriptor declarationDescriptorD2 = functionDescriptorH2.d();
                    declarationDescriptorD2.getClass();
                    if (InlineClassesUtilsKt.c(declarationDescriptorD2) && (functionDescriptorH2 instanceof ConstructorDescriptor) && ((ConstructorDescriptor) functionDescriptorH2).U()) {
                        throw new KotlinReflectionInternalError(descriptorKFunction.H().d() + " cannot have default arguments");
                    }
                    FunctionDescriptor functionDescriptorH3 = descriptorKFunction.H();
                    List listH = functionDescriptorH3.h();
                    listH.getClass();
                    List list2 = listH;
                    if ((list2 instanceof Collection) && list2.isEmpty()) {
                        declarationDescriptorD = functionDescriptorH3.d();
                        declarationDescriptorD.getClass();
                        if (InlineClassesUtilsKt.e(declarationDescriptorD)) {
                            f72206a = descriptorKFunction.x().getF72206a();
                            f72206a.getClass();
                            if (Modifier.isStatic(f72206a.getModifiers())) {
                                anonymousClass1 = new FlatteningSequence.AnonymousClass1();
                                loop0: while (true) {
                                    if (anonymousClass1.hasNext()) {
                                        next = null;
                                        break;
                                    }
                                    next = anonymousClass1.next();
                                    List listH2 = ((CallableMemberDescriptor) next).h();
                                    listH2.getClass();
                                    list = listH2;
                                    if (list instanceof Collection) {
                                    }
                                    it = list.iterator();
                                    while (it.hasNext()) {
                                        if (((ValueParameterDescriptor) it.next()).u0()) {
                                            break loop0;
                                            break loop0;
                                        }
                                    }
                                }
                                if (next instanceof FunctionDescriptor) {
                                    functionDescriptor2 = (FunctionDescriptor) next;
                                } else {
                                    functionDescriptor2 = null;
                                }
                            } else {
                                functionDescriptor2 = null;
                            }
                        } else {
                            functionDescriptor2 = null;
                        }
                    } else {
                        Iterator it2 = list2.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                declarationDescriptorD = functionDescriptorH3.d();
                                declarationDescriptorD.getClass();
                                if (InlineClassesUtilsKt.e(declarationDescriptorD)) {
                                    f72206a = descriptorKFunction.x().getF72206a();
                                    f72206a.getClass();
                                    if (Modifier.isStatic(f72206a.getModifiers())) {
                                        anonymousClass1 = new FlatteningSequence.AnonymousClass1();
                                        loop0: while (true) {
                                            if (anonymousClass1.hasNext()) {
                                                next = null;
                                                break;
                                            }
                                            next = anonymousClass1.next();
                                            List listH3 = ((CallableMemberDescriptor) next).h();
                                            listH3.getClass();
                                            list = listH3;
                                            if ((list instanceof Collection) || !list.isEmpty()) {
                                                it = list.iterator();
                                                while (it.hasNext()) {
                                                    if (((ValueParameterDescriptor) it.next()).u0()) {
                                                        break loop0;
                                                    }
                                                }
                                            }
                                        }
                                        if (next instanceof FunctionDescriptor) {
                                            functionDescriptor2 = (FunctionDescriptor) next;
                                        }
                                    }
                                }
                            } else if (((ValueParameterDescriptor) it2.next()).u0()) {
                            }
                            functionDescriptor2 = null;
                        }
                    }
                    if (functionDescriptor2 != null) {
                        JvmMemberSignature.Method method = ((JvmFunctionSignature.KotlinFunction) RuntimeTypeMapper.c(functionDescriptor2)).f72078a;
                        genericDeclarationQ = kDeclarationContainerImpl2.G(method.f73666a, method.f73667b, true);
                    } else {
                        JvmMemberSignature.Method method2 = ((JvmFunctionSignature.KotlinFunction) jvmFunctionSignatureC).f72078a;
                        String str3 = method2.f73666a;
                        String str4 = method2.f73667b;
                        Member f72206a2 = descriptorKFunction.x().getF72206a();
                        f72206a2.getClass();
                        genericDeclarationQ = kDeclarationContainerImpl2.G(str3, str4, !Modifier.isStatic(f72206a2.getModifiers()));
                    }
                } else if (jvmFunctionSignatureC instanceof JvmFunctionSignature.KotlinConstructor) {
                    if (descriptorKFunction.J()) {
                        Class f72090e = kDeclarationContainerImpl2.getF72090e();
                        List parameters = descriptorKFunction.getParameters();
                        ArrayList arrayList = new ArrayList(CollectionsKt.t(parameters, 10));
                        Iterator it3 = parameters.iterator();
                        while (it3.hasNext()) {
                            String name = ((KParameter) it3.next()).getName();
                            name.getClass();
                            arrayList.add(name);
                        }
                        return new AnnotationConstructorCaller(f72090e, arrayList, AnnotationConstructorCaller.CallMode.CALL_BY_NAME, AnnotationConstructorCaller.Origin.KOTLIN, null, 16, null);
                    }
                    String str5 = ((JvmFunctionSignature.KotlinConstructor) jvmFunctionSignatureC).f72076a.f73667b;
                    kDeclarationContainerImpl2.getClass();
                    str5.getClass();
                    Class f72090e2 = kDeclarationContainerImpl2.getF72090e();
                    ArrayList arrayList2 = new ArrayList();
                    KDeclarationContainerImpl.D(arrayList2, kDeclarationContainerImpl2.O(str5, false).f72143a, true);
                    genericDeclarationQ = KDeclarationContainerImpl.Q(arrayList2, f72090e2);
                } else {
                    if (jvmFunctionSignatureC instanceof JvmFunctionSignature.FakeJavaAnnotationConstructor) {
                        List list3 = ((JvmFunctionSignature.FakeJavaAnnotationConstructor) jvmFunctionSignatureC).f72071a;
                        Class f72090e3 = kDeclarationContainerImpl2.getF72090e();
                        List list4 = list3;
                        ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list4, 10));
                        Iterator it4 = list4.iterator();
                        while (it4.hasNext()) {
                            arrayList3.add(((Method) it4.next()).getName());
                        }
                        return new AnnotationConstructorCaller(f72090e3, arrayList3, AnnotationConstructorCaller.CallMode.CALL_BY_NAME, AnnotationConstructorCaller.Origin.JAVA, list3);
                    }
                    genericDeclarationQ = null;
                }
                if (genericDeclarationQ instanceof Constructor) {
                    callerImplL = descriptorKFunction.K((Constructor) genericDeclarationQ, descriptorKFunction.H(), true);
                } else if (!(genericDeclarationQ instanceof Method)) {
                    callerImplL = null;
                } else if (descriptorKFunction.H().getAnnotations().j(UtilKt.f72187a) != null) {
                    DeclarationDescriptor declarationDescriptorD3 = descriptorKFunction.H().d();
                    declarationDescriptorD3.getClass();
                    if (((ClassDescriptor) declarationDescriptorD3).T()) {
                        callerImplL = descriptorKFunction.L((Method) genericDeclarationQ, descriptorKFunction.x().c());
                    } else {
                        Method method3 = (Method) genericDeclarationQ;
                        callerImplL = ReflectKCallableKt.a(descriptorKFunction) ? new CallerImpl.Method.BoundJvmStaticInObject(method3) : new CallerImpl.Method.JvmStaticInObject(method3);
                    }
                } else {
                    callerImplL = descriptorKFunction.L((Method) genericDeclarationQ, descriptorKFunction.x().c());
                }
                if (callerImplL != null) {
                    return ValueClassAwareCallerKt.b(descriptorKFunction.H(), callerImplL, true);
                }
                return null;
            }
        });
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        return call(obj, obj2, obj3);
    }

    @Override // kotlin.reflect.jvm.internal.ReflectKCallable
    /* JADX INFO: renamed from: C, reason: from getter */
    public final Object getL() {
        return this.f72031k;
    }

    @Override // kotlin.jvm.functions.Function5
    public final Object D(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        return call(obj, obj2, obj3, obj4, obj5);
    }

    public final CallerImpl K(Constructor constructor, FunctionDescriptor functionDescriptor, boolean z) {
        Object obj = this.f72031k;
        if (!z) {
            functionDescriptor.getClass();
            ClassConstructorDescriptor classConstructorDescriptor = functionDescriptor instanceof ClassConstructorDescriptor ? (ClassConstructorDescriptor) functionDescriptor : null;
            if (classConstructorDescriptor != null && !DescriptorVisibilities.e(classConstructorDescriptor.getVisibility())) {
                ClassDescriptor classDescriptorV = classConstructorDescriptor.V();
                classDescriptorV.getClass();
                if (!InlineClassesUtilsKt.e(classDescriptorV) && !DescriptorUtils.o(classConstructorDescriptor.V())) {
                    List listH = classConstructorDescriptor.h();
                    listH.getClass();
                    List list = listH;
                    if (!(list instanceof Collection) || !list.isEmpty()) {
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            KotlinType type = ((ValueParameterDescriptor) it.next()).getType();
                            type.getClass();
                            if (InlineClassManglingRulesKt.a(type)) {
                                return ReflectKCallableKt.a(this) ? new CallerImpl.AccessorForHiddenBoundConstructor(constructor, ValueClassAwareCallerKt.a(obj, H())) : new CallerImpl.AccessorForHiddenConstructor(constructor);
                            }
                        }
                    }
                }
            }
        }
        return ReflectKCallableKt.a(this) ? new CallerImpl.BoundConstructor(constructor, ValueClassAwareCallerKt.a(obj, H())) : new CallerImpl.Constructor(constructor);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0045  */
    public final CallerImpl.Method L(Method method, boolean z) {
        KotlinType type;
        if (!ReflectKCallableKt.a(this)) {
            return new CallerImpl.Method.Static(method);
        }
        ReceiverParameterDescriptor receiverParameterDescriptorG = H().G();
        Object objA = this.f72031k;
        if (receiverParameterDescriptorG == null || (type = receiverParameterDescriptorG.getType()) == null) {
            objA = ValueClassAwareCallerKt.a(objA, H());
        } else {
            int i2 = InlineClassesUtilsKt.f73835a;
            ClassifierDescriptor classifierDescriptorY = type.H0().y();
            if (classifierDescriptorY != null ? InlineClassesUtilsKt.b(classifierDescriptorY) : false) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                parameterTypes.getClass();
                Class cls = (Class) ArraysKt.x(parameterTypes);
                if (cls == null || !cls.isInterface()) {
                    objA = ValueClassAwareCallerKt.a(objA, H());
                }
            } else {
                objA = ValueClassAwareCallerKt.a(objA, H());
            }
        }
        return new CallerImpl.Method.BoundStatic(method, z, objA);
    }

    @Override // kotlin.reflect.jvm.internal.DescriptorKCallable
    /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
    public final FunctionDescriptor H() {
        KProperty kProperty = o[0];
        Object objMo47invoke = this.l.mo47invoke();
        objMo47invoke.getClass();
        return (FunctionDescriptor) objMo47invoke;
    }

    @Override // kotlin.reflect.jvm.internal.ReflectKCallable
    public final Caller c() {
        return (Caller) this.n.getF71699b();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001b  */
    public final boolean equals(Object obj) {
        ReflectKFunction reflectKFunction;
        FqName fqName = UtilKt.f72187a;
        if (obj instanceof ReflectKFunction) {
            reflectKFunction = (ReflectKFunction) obj;
        } else if (obj instanceof FunctionReference) {
            KCallable kCallableCompute = ((FunctionReference) obj).compute();
            if (kCallableCompute instanceof ReflectKFunction) {
                reflectKFunction = (ReflectKFunction) kCallableCompute;
            } else {
                reflectKFunction = null;
            }
        } else {
            reflectKFunction = null;
        }
        return reflectKFunction != null && Intrinsics.c(this.f72029i, reflectKFunction.getF72048i()) && Intrinsics.c(getF72049j(), reflectKFunction.getF72049j()) && Intrinsics.c(this.f72030j, reflectKFunction.getF72030j()) && Intrinsics.c(this.f72031k, reflectKFunction.getL());
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
        return call(obj, obj2, obj3, obj4);
    }

    @Override // kotlin.jvm.internal.FunctionBase
    public final int getArity() {
        Caller callerX = x();
        callerX.getClass();
        return callerX.getF72216b().size();
    }

    @Override // kotlin.reflect.jvm.internal.ReflectKCallable
    /* JADX INFO: renamed from: getContainer, reason: from getter */
    public final KDeclarationContainerImpl getF72048i() {
        return this.f72029i;
    }

    @Override // kotlin.reflect.KCallable
    /* JADX INFO: renamed from: getName */
    public final String getF72049j() {
        String strB = H().getName().b();
        strB.getClass();
        return strB;
    }

    @Override // kotlin.reflect.jvm.internal.ReflectKFunction
    /* JADX INFO: renamed from: getSignature, reason: from getter */
    public final String getF72030j() {
        return this.f72030j;
    }

    public final int hashCode() {
        return this.f72030j.hashCode() + ((getF72049j().hashCode() + (this.f72029i.hashCode() * 31)) * 31);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return call(obj);
    }

    @Override // kotlin.reflect.KFunction
    public final boolean isExternal() {
        return H().isExternal();
    }

    @Override // kotlin.reflect.KFunction
    public final boolean isInfix() {
        return H().isInfix();
    }

    @Override // kotlin.reflect.KFunction
    public final boolean isInline() {
        return H().isInline();
    }

    @Override // kotlin.reflect.KFunction
    public final boolean isOperator() {
        return H().isOperator();
    }

    @Override // kotlin.reflect.KCallable
    public final boolean isSuspend() {
        return H().isSuspend();
    }

    @Override // kotlin.jvm.functions.Function6
    public final Object l(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        return call(obj, obj2, obj3, obj4, obj5, obj6);
    }

    @Override // kotlin.jvm.functions.Function8
    public final Object q(Object obj, Object obj2, Boolean bool, Object obj3, Object obj4, Object obj5, Composer composer, Integer num) {
        return call(obj, obj2, bool, obj3, obj4, obj5, composer, num);
    }

    public final String toString() {
        return ReflectionObjectRenderer.c(this);
    }

    @Override // kotlin.reflect.jvm.internal.ReflectKCallable
    public final Caller x() {
        return (Caller) this.m.getF71699b();
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        return call(new Object[0]);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return call(obj, obj2);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DescriptorKFunction(KDeclarationContainerImpl kDeclarationContainerImpl, String str, String str2, Object obj) {
        this(kDeclarationContainerImpl, str, str2, null, obj);
        kDeclarationContainerImpl.getClass();
        str.getClass();
        str2.getClass();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DescriptorKFunction(KDeclarationContainerImpl kDeclarationContainerImpl, FunctionDescriptor functionDescriptor) {
        kDeclarationContainerImpl.getClass();
        functionDescriptor.getClass();
        String strB = functionDescriptor.getName().b();
        strB.getClass();
        this(kDeclarationContainerImpl, strB, RuntimeTypeMapper.c(functionDescriptor).getF72079b(), functionDescriptor, CallableReference.NO_RECEIVER);
    }
}
