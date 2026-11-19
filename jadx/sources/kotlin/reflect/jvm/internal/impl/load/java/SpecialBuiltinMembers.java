package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.LinkedHashMap;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyAccessorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaClassDescriptor;
import kotlin.reflect.jvm.internal.impl.load.kotlin.MethodSignatureMappingKt;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.checker.TypeCheckingProcedure;

/* JADX INFO: loaded from: classes4.dex */
public abstract class SpecialBuiltinMembers {
    public static final String a(FunctionDescriptor functionDescriptor) {
        CallableMemberDescriptor callableMemberDescriptorK;
        functionDescriptor.getClass();
        CallableMemberDescriptor callableMemberDescriptorB = KotlinBuiltIns.A(functionDescriptor) ? b(functionDescriptor) : null;
        if (callableMemberDescriptorB != null && (callableMemberDescriptorK = DescriptorUtilsKt.k(callableMemberDescriptorB)) != null) {
            if (callableMemberDescriptorK instanceof PropertyDescriptor) {
                return ClassicBuiltinSpecialProperties.a(callableMemberDescriptorK);
            }
            if (callableMemberDescriptorK instanceof SimpleFunctionDescriptor) {
                BuiltinMethodsWithDifferentJvmName.m.getClass();
                SpecialGenericSignatures.f72896a.getClass();
                LinkedHashMap linkedHashMap = SpecialGenericSignatures.f72903j;
                String strB = MethodSignatureMappingKt.b((SimpleFunctionDescriptor) callableMemberDescriptorK);
                Name name = strB == null ? null : (Name) linkedHashMap.get(strB);
                if (name != null) {
                    return name.b();
                }
            }
        }
        return null;
    }

    public static final CallableMemberDescriptor b(CallableMemberDescriptor callableMemberDescriptor) {
        callableMemberDescriptor.getClass();
        SpecialGenericSignatures.f72896a.getClass();
        if (!SpecialGenericSignatures.f72904k.contains(callableMemberDescriptor.getName()) && !BuiltinSpecialProperties.d.contains(DescriptorUtilsKt.k(callableMemberDescriptor).getName())) {
            return null;
        }
        if ((callableMemberDescriptor instanceof PropertyDescriptor) || (callableMemberDescriptor instanceof PropertyAccessorDescriptor)) {
            return DescriptorUtilsKt.b(callableMemberDescriptor, new Function1() { // from class: kotlin.reflect.jvm.internal.impl.load.java.SpecialBuiltinMembers$$Lambda$0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    CallableMemberDescriptor callableMemberDescriptor2 = (CallableMemberDescriptor) obj;
                    callableMemberDescriptor2.getClass();
                    return Boolean.valueOf(ClassicBuiltinSpecialProperties.b(DescriptorUtilsKt.k(callableMemberDescriptor2)));
                }
            });
        }
        if (callableMemberDescriptor instanceof SimpleFunctionDescriptor) {
            return DescriptorUtilsKt.b(callableMemberDescriptor, new Function1() { // from class: kotlin.reflect.jvm.internal.impl.load.java.SpecialBuiltinMembers$$Lambda$1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    CallableMemberDescriptor callableMemberDescriptor2 = (CallableMemberDescriptor) obj;
                    callableMemberDescriptor2.getClass();
                    SimpleFunctionDescriptor simpleFunctionDescriptor = (SimpleFunctionDescriptor) callableMemberDescriptor2;
                    BuiltinMethodsWithDifferentJvmName.m.getClass();
                    return Boolean.valueOf(KotlinBuiltIns.A(simpleFunctionDescriptor) && DescriptorUtilsKt.b(simpleFunctionDescriptor, new Function1(simpleFunctionDescriptor) { // from class: kotlin.reflect.jvm.internal.impl.load.java.BuiltinMethodsWithDifferentJvmName$$Lambda$0

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public final SimpleFunctionDescriptor f72822b;

                        {
                            this.f72822b = simpleFunctionDescriptor;
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            BuiltinMethodsWithDifferentJvmName builtinMethodsWithDifferentJvmName = BuiltinMethodsWithDifferentJvmName.m;
                            ((CallableMemberDescriptor) obj2).getClass();
                            SpecialGenericSignatures.f72896a.getClass();
                            return Boolean.valueOf(SpecialGenericSignatures.f72903j.containsKey(MethodSignatureMappingKt.b(this.f72822b)));
                        }
                    }) != null);
                }
            });
        }
        return null;
    }

    public static final CallableMemberDescriptor c(CallableMemberDescriptor callableMemberDescriptor) {
        callableMemberDescriptor.getClass();
        CallableMemberDescriptor callableMemberDescriptorB = b(callableMemberDescriptor);
        if (callableMemberDescriptorB != null) {
            return callableMemberDescriptorB;
        }
        BuiltinMethodsWithSpecialGenericSignature builtinMethodsWithSpecialGenericSignature = BuiltinMethodsWithSpecialGenericSignature.m;
        Name name = callableMemberDescriptor.getName();
        name.getClass();
        builtinMethodsWithSpecialGenericSignature.getClass();
        if (BuiltinMethodsWithSpecialGenericSignature.b(name)) {
            return DescriptorUtilsKt.b(callableMemberDescriptor, new Function1() { // from class: kotlin.reflect.jvm.internal.impl.load.java.SpecialBuiltinMembers$$Lambda$2
                /* JADX WARN: Code duplicated, block: B:21:0x004f  */
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    boolean z;
                    CallableMemberDescriptor callableMemberDescriptorB2;
                    String strB;
                    CallableMemberDescriptor callableMemberDescriptor2 = (CallableMemberDescriptor) obj;
                    callableMemberDescriptor2.getClass();
                    if (KotlinBuiltIns.A(callableMemberDescriptor2)) {
                        BuiltinMethodsWithSpecialGenericSignature builtinMethodsWithSpecialGenericSignature2 = BuiltinMethodsWithSpecialGenericSignature.m;
                        SpecialGenericSignatures.f72896a.getClass();
                        SpecialGenericSignatures.SpecialSignatureInfo specialSignatureInfo = null;
                        if (SpecialGenericSignatures.f72900f.contains(callableMemberDescriptor2.getName()) && (callableMemberDescriptorB2 = DescriptorUtilsKt.b(callableMemberDescriptor2, new Function1() { // from class: kotlin.reflect.jvm.internal.impl.load.java.BuiltinMethodsWithSpecialGenericSignature$$Lambda$2
                            /* JADX WARN: Code duplicated, block: B:7:0x0025  */
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj2) {
                                boolean z2;
                                CallableMemberDescriptor callableMemberDescriptor3 = (CallableMemberDescriptor) obj2;
                                BuiltinMethodsWithSpecialGenericSignature builtinMethodsWithSpecialGenericSignature3 = BuiltinMethodsWithSpecialGenericSignature.m;
                                callableMemberDescriptor3.getClass();
                                if (callableMemberDescriptor3 instanceof FunctionDescriptor) {
                                    BuiltinMethodsWithSpecialGenericSignature.m.getClass();
                                    SpecialGenericSignatures.f72896a.getClass();
                                    if (CollectionsKt.u(SpecialGenericSignatures.g, MethodSignatureMappingKt.b(callableMemberDescriptor3))) {
                                        z2 = true;
                                    } else {
                                        z2 = false;
                                    }
                                } else {
                                    z2 = false;
                                }
                                return Boolean.valueOf(z2);
                            }
                        })) != null && (strB = MethodSignatureMappingKt.b(callableMemberDescriptorB2)) != null) {
                            if (SpecialGenericSignatures.f72898c.contains(strB)) {
                                specialSignatureInfo = SpecialGenericSignatures.SpecialSignatureInfo.ONE_COLLECTION_PARAMETER;
                            } else {
                                specialSignatureInfo = ((SpecialGenericSignatures.TypeSafeBarrierDescription) MapsKt.d(SpecialGenericSignatures.f72899e, strB)) == SpecialGenericSignatures.TypeSafeBarrierDescription.NULL ? SpecialGenericSignatures.SpecialSignatureInfo.OBJECT_PARAMETER_GENERIC : SpecialGenericSignatures.SpecialSignatureInfo.OBJECT_PARAMETER_NON_GENERIC;
                            }
                        }
                        if (specialSignatureInfo != null) {
                            z = true;
                        } else {
                            z = false;
                        }
                    } else {
                        z = false;
                    }
                    return Boolean.valueOf(z);
                }
            });
        }
        return null;
    }

    public static final boolean d(ClassDescriptor classDescriptor, CallableMemberDescriptor callableMemberDescriptor) {
        classDescriptor.getClass();
        callableMemberDescriptor.getClass();
        DeclarationDescriptor declarationDescriptorD = callableMemberDescriptor.d();
        declarationDescriptorD.getClass();
        SimpleType simpleTypeO = ((ClassDescriptor) declarationDescriptorD).o();
        simpleTypeO.getClass();
        for (ClassDescriptor classDescriptorI = DescriptorUtils.i(classDescriptor); classDescriptorI != null; classDescriptorI = DescriptorUtils.i(classDescriptorI)) {
            if (!(classDescriptorI instanceof JavaClassDescriptor) && TypeCheckingProcedure.b(classDescriptorI.o(), simpleTypeO) != null) {
                return !KotlinBuiltIns.A(classDescriptorI);
            }
        }
        return false;
    }
}
