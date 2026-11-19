package kotlin.reflect.jvm.internal.impl.util;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ImplicitClassReceiver;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ReceiverValue;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class OperatorChecks extends AbstractModifierChecks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final OperatorChecks f74352a = new OperatorChecks();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final List f74353b;

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Name name = OperatorNameConventions.f74363i;
        MemberKindCheck.MemberOrExtension memberOrExtension = MemberKindCheck.MemberOrExtension.f74345b;
        Checks checks = new Checks(name, new Check[]{memberOrExtension, new ValueParameterCountCheck.AtLeast(1)}, (Function1) null, 4, (DefaultConstructorMarker) null);
        Checks checks2 = new Checks(OperatorNameConventions.f74364j, new Check[]{memberOrExtension, new ValueParameterCountCheck.AtLeast(2)}, new Function1() { // from class: kotlin.reflect.jvm.internal.impl.util.OperatorChecks$$Lambda$0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                FunctionDescriptor functionDescriptor = (FunctionDescriptor) obj;
                OperatorChecks operatorChecks = OperatorChecks.f74352a;
                functionDescriptor.getClass();
                List listH = functionDescriptor.h();
                listH.getClass();
                ValueParameterDescriptor valueParameterDescriptor = (ValueParameterDescriptor) CollectionsKt.N(listH);
                if (valueParameterDescriptor == null || DescriptorUtilsKt.a(valueParameterDescriptor) || valueParameterDescriptor.o0() != null) {
                    return "last parameter should not have a default value or be a vararg";
                }
                return null;
            }
        });
        Name name2 = OperatorNameConventions.f74357a;
        ValueParameterCountCheck.AtLeast atLeast = new ValueParameterCountCheck.AtLeast(2);
        NoDefaultAndVarargsCheck noDefaultAndVarargsCheck = NoDefaultAndVarargsCheck.f74347a;
        IsKPropertyCheck isKPropertyCheck = IsKPropertyCheck.f74342a;
        int i2 = 4;
        DefaultConstructorMarker defaultConstructorMarker = null;
        Checks checks3 = new Checks(name2, new Check[]{memberOrExtension, noDefaultAndVarargsCheck, atLeast, isKPropertyCheck}, (Function1) null, i2, defaultConstructorMarker);
        Checks checks4 = new Checks(OperatorNameConventions.f74358b, new Check[]{memberOrExtension, noDefaultAndVarargsCheck, new ValueParameterCountCheck.AtLeast(3), isKPropertyCheck}, (Function1) null, i2, defaultConstructorMarker);
        Checks checks5 = new Checks(OperatorNameConventions.f74359c, new Check[]{memberOrExtension, noDefaultAndVarargsCheck, new ValueParameterCountCheck.Equals(2), isKPropertyCheck}, (Function1) null, 4, (DefaultConstructorMarker) null);
        Checks checks6 = new Checks(OperatorNameConventions.g, new Check[]{memberOrExtension}, (Function1) null, 4, (DefaultConstructorMarker) null);
        Name name3 = OperatorNameConventions.f74361f;
        ValueParameterCountCheck.SingleValueParameter singleValueParameter = ValueParameterCountCheck.SingleValueParameter.f74381b;
        ReturnsCheck.ReturnsBoolean returnsBoolean = ReturnsCheck.ReturnsBoolean.f74368c;
        Checks checks7 = new Checks(name3, new Check[]{memberOrExtension, singleValueParameter, noDefaultAndVarargsCheck, returnsBoolean}, (Function1) null, 4, (DefaultConstructorMarker) null);
        Name name4 = OperatorNameConventions.f74362h;
        ValueParameterCountCheck.NoValueParameters noValueParameters = ValueParameterCountCheck.NoValueParameters.f74380b;
        f74353b = CollectionsKt.P(checks, checks2, checks3, checks4, checks5, checks6, checks7, new Checks(name4, new Check[]{memberOrExtension, noValueParameters}, (Function1) null, 4, (DefaultConstructorMarker) null), new Checks(OperatorNameConventions.f74365k, new Check[]{memberOrExtension, noValueParameters}, (Function1) null, 4, (DefaultConstructorMarker) null), new Checks(OperatorNameConventions.l, new Check[]{memberOrExtension, noValueParameters, returnsBoolean}, (Function1) null, 4, (DefaultConstructorMarker) null), new Checks(OperatorNameConventions.p, new Check[]{memberOrExtension, singleValueParameter, noDefaultAndVarargsCheck}, (Function1) null, 4, (DefaultConstructorMarker) null), new Checks(OperatorNameConventions.q, new Check[]{memberOrExtension, singleValueParameter, noDefaultAndVarargsCheck}, (Function1) null, 4, (DefaultConstructorMarker) null), new Checks(OperatorNameConventions.d, new Check[]{MemberKindCheck.Member.f74344b}, new Function1() { // from class: kotlin.reflect.jvm.internal.impl.util.OperatorChecks$$Lambda$1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SimpleType simpleTypeO;
                UnwrappedType unwrappedTypeJ;
                KotlinType returnType;
                FunctionDescriptor functionDescriptor = (FunctionDescriptor) obj;
                OperatorChecks operatorChecks = OperatorChecks.f74352a;
                functionDescriptor.getClass();
                DeclarationDescriptor declarationDescriptorD = functionDescriptor.d();
                declarationDescriptorD.getClass();
                if (declarationDescriptorD instanceof ClassDescriptor) {
                    Name name5 = KotlinBuiltIns.f72242f;
                    if (KotlinBuiltIns.b((ClassDescriptor) declarationDescriptorD, StandardNames.FqNames.f72271a)) {
                        return null;
                    }
                }
                Collection collectionI = functionDescriptor.i();
                collectionI.getClass();
                Collection collection = collectionI;
                if (!collection.isEmpty()) {
                    Iterator it = collection.iterator();
                    while (it.hasNext()) {
                        DeclarationDescriptor declarationDescriptorD2 = ((FunctionDescriptor) it.next()).d();
                        declarationDescriptorD2.getClass();
                        if (declarationDescriptorD2 instanceof ClassDescriptor) {
                            Name name6 = KotlinBuiltIns.f72242f;
                            if (KotlinBuiltIns.b((ClassDescriptor) declarationDescriptorD2, StandardNames.FqNames.f72271a)) {
                                return null;
                            }
                        }
                    }
                }
                DeclarationDescriptor declarationDescriptorD3 = functionDescriptor.d();
                ClassDescriptor classDescriptor = declarationDescriptorD3 instanceof ClassDescriptor ? (ClassDescriptor) declarationDescriptorD3 : null;
                if (classDescriptor != null) {
                    if (!InlineClassesUtilsKt.e(classDescriptor)) {
                        classDescriptor = null;
                    }
                    if (classDescriptor != null && (simpleTypeO = classDescriptor.o()) != null && (unwrappedTypeJ = TypeUtilsKt.j(simpleTypeO)) != null && (returnType = functionDescriptor.getReturnType()) != null && Intrinsics.c(functionDescriptor.getName(), OperatorNameConventions.d)) {
                        Name name7 = KotlinBuiltIns.f72242f;
                        if ((KotlinBuiltIns.C(returnType, StandardNames.FqNames.f72276h) || KotlinBuiltIns.F(returnType)) && functionDescriptor.h().size() == 1) {
                            KotlinType type = ((ValueParameterDescriptor) functionDescriptor.h().get(0)).getType();
                            type.getClass();
                            if (Intrinsics.c(TypeUtilsKt.j(type), unwrappedTypeJ) && functionDescriptor.r0().isEmpty() && functionDescriptor.J() == null) {
                                return null;
                            }
                        }
                    }
                }
                StringBuilder sb = new StringBuilder("must override ''equals()'' in Any");
                DeclarationDescriptor declarationDescriptorD4 = functionDescriptor.d();
                declarationDescriptorD4.getClass();
                if (InlineClassesUtilsKt.e(declarationDescriptorD4)) {
                    DescriptorRendererImpl descriptorRendererImpl = DescriptorRenderer.f73779c;
                    DeclarationDescriptor declarationDescriptorD5 = functionDescriptor.d();
                    declarationDescriptorD5.getClass();
                    SimpleType simpleTypeO2 = ((ClassDescriptor) declarationDescriptorD5).o();
                    simpleTypeO2.getClass();
                    sb.append(" or define ''equals(other: " + descriptorRendererImpl.Y(TypeUtilsKt.j(simpleTypeO2)) + "): Boolean''");
                }
                return sb.toString();
            }
        }), new Checks(OperatorNameConventions.f74360e, new Check[]{memberOrExtension, ReturnsCheck.ReturnsInt.f74370c, singleValueParameter, noDefaultAndVarargsCheck}, (Function1) (0 == true ? 1 : 0), 4, (DefaultConstructorMarker) null), new Checks(OperatorNameConventions.t, new Check[]{memberOrExtension, singleValueParameter, noDefaultAndVarargsCheck}, (Function1) null, 4, (DefaultConstructorMarker) null), new Checks(OperatorNameConventions.s, new Check[]{memberOrExtension, noValueParameters}, (Function1) null, 4, (DefaultConstructorMarker) null), new Checks(CollectionsKt.P(OperatorNameConventions.n, OperatorNameConventions.o), new Check[]{memberOrExtension}, new Function1() { // from class: kotlin.reflect.jvm.internal.impl.util.OperatorChecks$$Lambda$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean zD;
                ClassId classIdF;
                KotlinType returnType;
                FunctionDescriptor functionDescriptor = (FunctionDescriptor) obj;
                OperatorChecks operatorChecks = OperatorChecks.f74352a;
                functionDescriptor.getClass();
                ReceiverParameterDescriptor receiverParameterDescriptorG = functionDescriptor.G();
                if (receiverParameterDescriptorG == null) {
                    receiverParameterDescriptorG = functionDescriptor.J();
                }
                OperatorChecks operatorChecks2 = OperatorChecks.f74352a;
                if (receiverParameterDescriptorG == null) {
                    return "receiver must be a supertype of the return type";
                }
                KotlinType returnType2 = functionDescriptor.getReturnType();
                boolean zD2 = false;
                if (returnType2 != null) {
                    KotlinType type = receiverParameterDescriptorG.getType();
                    type.getClass();
                    zD = KotlinTypeChecker.f74269a.d(returnType2, type);
                } else {
                    zD = false;
                }
                if (!zD) {
                    operatorChecks2.getClass();
                    ReceiverValue value = receiverParameterDescriptorG.getValue();
                    value.getClass();
                    if (value instanceof ImplicitClassReceiver) {
                        ClassDescriptor classDescriptor = ((ImplicitClassReceiver) value).f73956a;
                        if (classDescriptor.c0() && (classIdF = DescriptorUtilsKt.f(classDescriptor)) != null) {
                            ModuleDescriptor moduleDescriptorC = DescriptorUtils.c(classDescriptor);
                            moduleDescriptorC.getClass();
                            ClassifierDescriptor classifierDescriptorB = FindClassInModuleKt.b(moduleDescriptorC, classIdF);
                            TypeAliasDescriptor typeAliasDescriptor = classifierDescriptorB instanceof TypeAliasDescriptor ? (TypeAliasDescriptor) classifierDescriptorB : null;
                            if (typeAliasDescriptor != null && (returnType = functionDescriptor.getReturnType()) != null) {
                                zD2 = KotlinTypeChecker.f74269a.d(returnType, typeAliasDescriptor.C());
                            }
                        }
                    }
                    if (!zD2) {
                        return "receiver must be a supertype of the return type";
                    }
                }
                return null;
            }
        }), new Checks((Collection) OperatorNameConventions.x, new Check[]{memberOrExtension, ReturnsCheck.ReturnsUnit.f74372c, singleValueParameter, noDefaultAndVarargsCheck}, (Function1) (0 == true ? 1 : 0), 4, (DefaultConstructorMarker) null), new Checks(OperatorNameConventions.m, new Check[]{memberOrExtension, noValueParameters}, (Function1) null, 4, (DefaultConstructorMarker) null));
    }
}
