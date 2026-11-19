package kotlin.reflect.jvm.internal.calls;

import defpackage.d20;
import defpackage.wp;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.reflect.jvm.internal.UtilKt;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.MultiFieldValueClassRepresentation;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueClassRepresentation;
import kotlin.reflect.jvm.internal.impl.descriptors.VariableDescriptor;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutionKt;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\"\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u0001*\u00020\u00008BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;", "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;", "getExpectedReceiverType", "(Lorg/jetbrains/kotlin/descriptors/CallableMemberDescriptor;)Lorg/jetbrains/kotlin/types/KotlinType;", "expectedReceiverType", "kotlin-reflection"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ValueClassAwareCallerKt {
    public static final Object a(Object obj, CallableMemberDescriptor callableMemberDescriptor) {
        KotlinType kotlinTypeC;
        Class clsH;
        callableMemberDescriptor.getClass();
        return (((callableMemberDescriptor instanceof PropertyDescriptor) && InlineClassesUtilsKt.d((VariableDescriptor) callableMemberDescriptor)) || (kotlinTypeC = c(callableMemberDescriptor)) == null || (clsH = h(kotlinTypeC)) == null) ? obj : d(clsH, callableMemberDescriptor).invoke(obj, null);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0063  */
    /* JADX WARN: Code duplicated, block: B:26:0x006d  */
    /* JADX WARN: Code duplicated, block: B:28:0x0084  */
    /* JADX WARN: Code duplicated, block: B:29:0x0089  */
    /* JADX WARN: Code duplicated, block: B:34:0x0094  */
    /* JADX WARN: Code duplicated, block: B:36:0x009e  */
    /* JADX WARN: Code duplicated, block: B:37:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:40:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:42:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:44:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:51:0x00bf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:? A[LOOP:0: B:24:0x0067->B:54:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00bb, code lost:
    
        if ((r0 != null ? kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt.e(r0) : false) == true) goto L48;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final kotlin.reflect.jvm.internal.calls.Caller b(kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor r3, kotlin.reflect.jvm.internal.calls.Caller r4, boolean r5) {
        /*
            r3.getClass()
            boolean r0 = kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt.a(r3)
            if (r0 != 0) goto Lbf
            java.util.List r0 = r3.r0()
            r0.getClass()
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            boolean r1 = r0 instanceof java.util.Collection
            r2 = 0
            if (r1 == 0) goto L21
            r1 = r0
            java.util.Collection r1 = (java.util.Collection) r1
            boolean r1 = r1.isEmpty()
            if (r1 == 0) goto L21
            goto L4c
        L21:
            java.util.Iterator r0 = r0.iterator()
        L25:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L4c
            java.lang.Object r1 = r0.next()
            kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor r1 = (kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor) r1
            kotlin.reflect.jvm.internal.impl.types.KotlinType r1 = r1.getType()
            r1.getClass()
            kotlin.reflect.jvm.internal.impl.types.TypeConstructor r1 = r1.H0()
            kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor r1 = r1.y()
            if (r1 == 0) goto L47
            boolean r1 = kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt.e(r1)
            goto L48
        L47:
            r1 = r2
        L48:
            if (r1 == 0) goto L25
            goto Lbf
        L4c:
            java.util.List r0 = r3.h()
            r0.getClass()
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            boolean r1 = r0 instanceof java.util.Collection
            if (r1 == 0) goto L63
            r1 = r0
            java.util.Collection r1 = (java.util.Collection) r1
            boolean r1 = r1.isEmpty()
            if (r1 == 0) goto L63
            goto L8d
        L63:
            java.util.Iterator r0 = r0.iterator()
        L67:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L8d
            java.lang.Object r1 = r0.next()
            kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor r1 = (kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor) r1
            kotlin.reflect.jvm.internal.impl.types.KotlinType r1 = r1.getType()
            r1.getClass()
            kotlin.reflect.jvm.internal.impl.types.TypeConstructor r1 = r1.H0()
            kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor r1 = r1.y()
            if (r1 == 0) goto L89
            boolean r1 = kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt.e(r1)
            goto L8a
        L89:
            r1 = r2
        L8a:
            if (r1 == 0) goto L67
            goto Lbf
        L8d:
            kotlin.reflect.jvm.internal.impl.types.KotlinType r0 = r3.getReturnType()
            r1 = 1
            if (r0 == 0) goto La7
            kotlin.reflect.jvm.internal.impl.types.TypeConstructor r0 = r0.H0()
            kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor r0 = r0.y()
            if (r0 == 0) goto La3
            boolean r0 = kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt.b(r0)
            goto La4
        La3:
            r0 = r2
        La4:
            if (r0 != r1) goto La7
            goto Lbf
        La7:
            kotlin.reflect.jvm.internal.impl.types.KotlinType r0 = c(r3)
            if (r0 == 0) goto Lbe
            kotlin.reflect.jvm.internal.impl.types.TypeConstructor r0 = r0.H0()
            kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor r0 = r0.y()
            if (r0 == 0) goto Lbb
            boolean r2 = kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt.e(r0)
        Lbb:
            if (r2 != r1) goto Lbe
            goto Lbf
        Lbe:
            return r4
        Lbf:
            kotlin.reflect.jvm.internal.calls.ValueClassAwareCaller r0 = new kotlin.reflect.jvm.internal.calls.ValueClassAwareCaller
            r0.<init>(r3, r4, r5)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.calls.ValueClassAwareCallerKt.b(kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor, kotlin.reflect.jvm.internal.calls.Caller, boolean):kotlin.reflect.jvm.internal.calls.Caller");
    }

    public static final KotlinType c(CallableMemberDescriptor callableMemberDescriptor) {
        ReceiverParameterDescriptor receiverParameterDescriptorJ = callableMemberDescriptor.J();
        ReceiverParameterDescriptor receiverParameterDescriptorG = callableMemberDescriptor.G();
        if (receiverParameterDescriptorJ != null) {
            return receiverParameterDescriptorJ.getType();
        }
        if (receiverParameterDescriptorG != null) {
            if (callableMemberDescriptor instanceof ConstructorDescriptor) {
                return receiverParameterDescriptorG.getType();
            }
            DeclarationDescriptor declarationDescriptorD = callableMemberDescriptor.d();
            ClassDescriptor classDescriptor = declarationDescriptorD instanceof ClassDescriptor ? (ClassDescriptor) declarationDescriptorD : null;
            if (classDescriptor != null) {
                return classDescriptor.o();
            }
        }
        return null;
    }

    public static final Method d(Class cls, CallableMemberDescriptor callableMemberDescriptor) {
        callableMemberDescriptor.getClass();
        try {
            Method declaredMethod = cls.getDeclaredMethod("unbox-impl", null);
            declaredMethod.getClass();
            return declaredMethod;
        } catch (NoSuchMethodException unused) {
            wp.f("No unbox method found in inline class: ", cls, " (calling ", callableMemberDescriptor);
            return null;
        }
    }

    public static final ArrayList e(SimpleType simpleType) {
        ArrayList arrayListF = f(TypeSubstitutionKt.a(simpleType));
        if (arrayListF == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(CollectionsKt.t(arrayListF, 10));
        Iterator it = arrayListF.iterator();
        while (it.hasNext()) {
            arrayList.add("unbox-impl-" + ((String) it.next()));
        }
        ClassifierDescriptor classifierDescriptorY = simpleType.H0().y();
        classifierDescriptorY.getClass();
        Class clsI = UtilKt.i((ClassDescriptor) classifierDescriptorY);
        clsI.getClass();
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(clsI.getDeclaredMethod((String) it2.next(), null));
        }
        return arrayList2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.util.ArrayList] */
    public static final ArrayList f(SimpleType simpleType) {
        ?? O;
        if (!InlineClassesUtilsKt.f(simpleType)) {
            return null;
        }
        ClassifierDescriptor classifierDescriptorY = simpleType.H0().y();
        classifierDescriptorY.getClass();
        int i2 = DescriptorUtilsKt.f73888a;
        ValueClassRepresentation valueClassRepresentationO = ((ClassDescriptor) classifierDescriptorY).O();
        MultiFieldValueClassRepresentation multiFieldValueClassRepresentation = valueClassRepresentationO instanceof MultiFieldValueClassRepresentation ? (MultiFieldValueClassRepresentation) valueClassRepresentationO : null;
        multiFieldValueClassRepresentation.getClass();
        List<Pair> list = multiFieldValueClassRepresentation.f72382a;
        ArrayList arrayList = new ArrayList();
        for (Pair pair : list) {
            Name name = (Name) pair.f71705b;
            ArrayList arrayListF = f((SimpleType) pair.f71706c);
            if (arrayListF != null) {
                O = new ArrayList(CollectionsKt.t(arrayListF, 10));
                Iterator it = arrayListF.iterator();
                while (it.hasNext()) {
                    O.add(name.c() + '-' + ((String) it.next()));
                }
            } else {
                O = CollectionsKt.O(name.c());
            }
            CollectionsKt.j(arrayList, (Iterable) O);
        }
        return arrayList;
    }

    public static final Class g(DeclarationDescriptor declarationDescriptor) {
        if ((declarationDescriptor instanceof ClassDescriptor) && InlineClassesUtilsKt.b(declarationDescriptor)) {
            ClassDescriptor classDescriptor = (ClassDescriptor) declarationDescriptor;
            Class clsI = UtilKt.i(classDescriptor);
            if (clsI != null) {
                return clsI;
            }
            StringBuilder sb = new StringBuilder("Class object for the class ");
            sb.append(classDescriptor.getName());
            d20.o(sb, " cannot be found (classId=", DescriptorUtilsKt.f((ClassifierDescriptor) declarationDescriptor));
        }
        return null;
    }

    public static final Class h(KotlinType kotlinType) {
        SimpleType simpleTypeG;
        Class clsG = g(kotlinType.H0().y());
        if (clsG == null) {
            return null;
        }
        if (TypeUtils.g(kotlinType) && ((simpleTypeG = InlineClassesUtilsKt.g(kotlinType)) == null || TypeUtils.g(simpleTypeG) || KotlinBuiltIns.H(simpleTypeG))) {
            return null;
        }
        return clsG;
    }
}
