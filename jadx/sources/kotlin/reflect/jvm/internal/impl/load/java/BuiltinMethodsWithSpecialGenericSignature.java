package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.load.kotlin.MethodSignatureMappingKt;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class BuiltinMethodsWithSpecialGenericSignature extends SpecialGenericSignatures {
    public static final BuiltinMethodsWithSpecialGenericSignature m = new BuiltinMethodsWithSpecialGenericSignature();

    public static final FunctionDescriptor a(FunctionDescriptor functionDescriptor) {
        functionDescriptor.getClass();
        Name name = functionDescriptor.getName();
        name.getClass();
        m.getClass();
        if (b(name)) {
            return (FunctionDescriptor) DescriptorUtilsKt.b(functionDescriptor, new Function1() { // from class: kotlin.reflect.jvm.internal.impl.load.java.BuiltinMethodsWithSpecialGenericSignature$$Lambda$0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    CallableMemberDescriptor callableMemberDescriptor = (CallableMemberDescriptor) obj;
                    BuiltinMethodsWithSpecialGenericSignature builtinMethodsWithSpecialGenericSignature = BuiltinMethodsWithSpecialGenericSignature.m;
                    callableMemberDescriptor.getClass();
                    BuiltinMethodsWithSpecialGenericSignature.m.getClass();
                    SpecialGenericSignatures.f72896a.getClass();
                    return Boolean.valueOf(CollectionsKt.u(SpecialGenericSignatures.g, MethodSignatureMappingKt.b(callableMemberDescriptor)));
                }
            });
        }
        return null;
    }

    public static boolean b(Name name) {
        name.getClass();
        SpecialGenericSignatures.f72896a.getClass();
        return SpecialGenericSignatures.f72900f.contains(name);
    }
}
