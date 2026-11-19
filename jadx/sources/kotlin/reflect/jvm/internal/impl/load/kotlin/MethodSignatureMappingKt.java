package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.Iterator;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyGetterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.utils.FunctionsKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class MethodSignatureMappingKt {
    /* JADX WARN: Code duplicated, block: B:34:0x0097  */
    public static String a(FunctionDescriptor functionDescriptor, int i2) {
        String strB;
        boolean z = (i2 & 1) != 0;
        boolean z2 = (i2 & 2) != 0;
        functionDescriptor.getClass();
        StringBuilder sb = new StringBuilder();
        if (z2) {
            if (functionDescriptor instanceof ConstructorDescriptor) {
                strB = "<init>";
            } else {
                strB = functionDescriptor.getName().b();
                strB.getClass();
            }
            sb.append(strB);
        }
        sb.append("(");
        ReceiverParameterDescriptor receiverParameterDescriptorJ = functionDescriptor.J();
        if (receiverParameterDescriptorJ != null) {
            KotlinType type = receiverParameterDescriptorJ.getType();
            type.getClass();
            sb.append(c(type));
        }
        Iterator it = functionDescriptor.h().iterator();
        while (it.hasNext()) {
            KotlinType type2 = ((ValueParameterDescriptor) it.next()).getType();
            type2.getClass();
            sb.append(c(type2));
        }
        sb.append(")");
        if (z) {
            if (functionDescriptor instanceof ConstructorDescriptor) {
                sb.append("V");
            } else {
                KotlinType returnType = functionDescriptor.getReturnType();
                returnType.getClass();
                Name name = KotlinBuiltIns.f72242f;
                if (KotlinBuiltIns.E(returnType, StandardNames.FqNames.d)) {
                    KotlinType returnType2 = functionDescriptor.getReturnType();
                    returnType2.getClass();
                    if (!TypeUtils.g(returnType2) && !(functionDescriptor instanceof PropertyGetterDescriptor)) {
                        sb.append("V");
                    }
                }
                KotlinType returnType3 = functionDescriptor.getReturnType();
                returnType3.getClass();
                sb.append(c(returnType3));
            }
        }
        return sb.toString();
    }

    public static final String b(CallableDescriptor callableDescriptor) {
        callableDescriptor.getClass();
        if (!DescriptorUtils.m(callableDescriptor)) {
            DeclarationDescriptor declarationDescriptorD = callableDescriptor.d();
            ClassDescriptor classDescriptor = declarationDescriptorD instanceof ClassDescriptor ? (ClassDescriptor) declarationDescriptorD : null;
            if (classDescriptor != null && !classDescriptor.getName().f73688c) {
                CallableDescriptor callableDescriptorY0 = callableDescriptor.y0();
                SimpleFunctionDescriptor simpleFunctionDescriptor = callableDescriptorY0 instanceof SimpleFunctionDescriptor ? (SimpleFunctionDescriptor) callableDescriptorY0 : null;
                if (simpleFunctionDescriptor != null) {
                    return MethodSignatureBuildingUtilsKt.a(classDescriptor, a(simpleFunctionDescriptor, 3));
                }
            }
        }
        return null;
    }

    public static final JvmType c(KotlinType kotlinType) {
        kotlinType.getClass();
        return (JvmType) DescriptorBasedTypeSignatureMappingKt.b(kotlinType, TypeMappingMode.l, FunctionsKt.f74386b);
    }
}
