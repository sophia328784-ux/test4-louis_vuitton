package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.load.kotlin.JvmType;
import kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition;

/* JADX INFO: loaded from: classes4.dex */
public final class JavaIncompatibilityRulesOverridabilityCondition implements ExternalOverridabilityCondition {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f72849a = new Companion(null);

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static boolean a(CallableDescriptor callableDescriptor, CallableDescriptor callableDescriptor2) {
            callableDescriptor.getClass();
            callableDescriptor2.getClass();
            if (!(callableDescriptor2 instanceof JavaMethodDescriptor) || !(callableDescriptor instanceof FunctionDescriptor)) {
                return false;
            }
            JavaMethodDescriptor javaMethodDescriptor = (JavaMethodDescriptor) callableDescriptor2;
            javaMethodDescriptor.h().size();
            FunctionDescriptor functionDescriptor = (FunctionDescriptor) callableDescriptor;
            functionDescriptor.h().size();
            List listH = javaMethodDescriptor.y0().h();
            listH.getClass();
            List listH2 = functionDescriptor.y0().h();
            listH2.getClass();
            for (Pair pair : CollectionsKt.E0(listH, listH2)) {
                ValueParameterDescriptor valueParameterDescriptor = (ValueParameterDescriptor) pair.f71705b;
                ValueParameterDescriptor valueParameterDescriptor2 = (ValueParameterDescriptor) pair.f71706c;
                valueParameterDescriptor.getClass();
                boolean z = b((FunctionDescriptor) callableDescriptor2, valueParameterDescriptor) instanceof JvmType.Primitive;
                valueParameterDescriptor2.getClass();
                if (z != (b(functionDescriptor, valueParameterDescriptor2) instanceof JvmType.Primitive)) {
                    return true;
                }
            }
            return false;
        }

        /* JADX WARN: Code duplicated, block: B:31:0x00ae  */
        /* JADX WARN: Code duplicated, block: B:34:0x00b9  */
        /* JADX WARN: Code duplicated, block: B:36:0x00c1  */
        /* JADX WARN: Code duplicated, block: B:37:0x00c4  */
        /* JADX WARN: Code duplicated, block: B:40:0x00c8  */
        /* JADX WARN: Code duplicated, block: B:42:0x00e5  */
        /* JADX WARN: Code duplicated, block: B:45:0x00eb  */
        /* JADX WARN: Code duplicated, block: B:47:0x00f1  */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x00fd, code lost:
        
            if (kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt.g(r0).equals(kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt.g(r1)) != false) goto L49;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static kotlin.reflect.jvm.internal.impl.load.kotlin.JvmType b(kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor r5, kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor r6) {
            /*
                Method dump skipped, instruction units count: 283
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.JavaIncompatibilityRulesOverridabilityCondition.Companion.b(kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor):kotlin.reflect.jvm.internal.impl.load.kotlin.JvmType");
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition
    public final ExternalOverridabilityCondition.Contract a() {
        return ExternalOverridabilityCondition.Contract.CONFLICTS_ONLY;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0041  */
    /* JADX WARN: Code duplicated, block: B:16:0x004c  */
    /* JADX WARN: Code duplicated, block: B:17:0x0050  */
    /* JADX WARN: Code duplicated, block: B:28:0x006b  */
    /* JADX WARN: Code duplicated, block: B:37:0x007f A[ADDED_TO_REGION] */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00a0, code lost:
    
        if (r7.equals(kotlin.reflect.jvm.internal.impl.load.kotlin.MethodSignatureMappingKt.a(r0, 2)) != false) goto L45;
     */
    @Override // kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition.Result b(kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor r5, kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor r6, kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor r7) {
        /*
            r4 = this;
            r5.getClass()
            r6.getClass()
            boolean r4 = r5 instanceof kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
            if (r4 == 0) goto La6
            boolean r4 = r6 instanceof kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor
            if (r4 == 0) goto La6
            boolean r4 = kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns.A(r6)
            if (r4 == 0) goto L16
            goto La6
        L16:
            kotlin.reflect.jvm.internal.impl.load.java.BuiltinMethodsWithSpecialGenericSignature r4 = kotlin.reflect.jvm.internal.impl.load.java.BuiltinMethodsWithSpecialGenericSignature.m
            r0 = r6
            kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor r0 = (kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor) r0
            kotlin.reflect.jvm.internal.impl.name.Name r1 = r0.getName()
            r1.getClass()
            r4.getClass()
            boolean r4 = kotlin.reflect.jvm.internal.impl.load.java.BuiltinMethodsWithSpecialGenericSignature.b(r1)
            if (r4 != 0) goto L41
            kotlin.reflect.jvm.internal.impl.load.java.SpecialGenericSignatures$Companion r4 = kotlin.reflect.jvm.internal.impl.load.java.SpecialGenericSignatures.f72896a
            kotlin.reflect.jvm.internal.impl.name.Name r1 = r0.getName()
            r1.getClass()
            r4.getClass()
            java.util.HashSet r4 = kotlin.reflect.jvm.internal.impl.load.java.SpecialGenericSignatures.f72904k
            boolean r4 = r4.contains(r1)
            if (r4 != 0) goto L41
            goto La6
        L41:
            r4 = r5
            kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor r4 = (kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor) r4
            kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor r4 = kotlin.reflect.jvm.internal.impl.load.java.SpecialBuiltinMembers.c(r4)
            boolean r1 = r5 instanceof kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor
            if (r1 == 0) goto L50
            r2 = r5
            kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor r2 = (kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor) r2
            goto L51
        L50:
            r2 = 0
        L51:
            if (r2 == 0) goto L5e
            boolean r3 = r0.w0()
            boolean r2 = r2.w0()
            if (r3 != r2) goto L5e
            goto L67
        L5e:
            if (r4 == 0) goto La3
            boolean r2 = r0.w0()
            if (r2 != 0) goto L67
            goto La3
        L67:
            boolean r2 = r7 instanceof kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaClassDescriptor
            if (r2 == 0) goto La6
            kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor r2 = r0.k0()
            if (r2 == 0) goto L72
            goto La6
        L72:
            if (r4 == 0) goto La6
            boolean r7 = kotlin.reflect.jvm.internal.impl.load.java.SpecialBuiltinMembers.d(r7, r4)
            if (r7 == 0) goto L7b
            goto La6
        L7b:
            boolean r7 = r4 instanceof kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor
            if (r7 == 0) goto La3
            if (r1 == 0) goto La3
            kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor r4 = (kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor) r4
            kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor r4 = kotlin.reflect.jvm.internal.impl.load.java.BuiltinMethodsWithSpecialGenericSignature.a(r4)
            if (r4 == 0) goto La3
            r4 = 2
            java.lang.String r7 = kotlin.reflect.jvm.internal.impl.load.kotlin.MethodSignatureMappingKt.a(r0, r4)
            r0 = r5
            kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor r0 = (kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor) r0
            kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor r0 = r0.y0()
            r0.getClass()
            java.lang.String r4 = kotlin.reflect.jvm.internal.impl.load.kotlin.MethodSignatureMappingKt.a(r0, r4)
            boolean r4 = r7.equals(r4)
            if (r4 == 0) goto La3
            goto La6
        La3:
            kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition$Result r4 = kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition.Result.INCOMPATIBLE
            return r4
        La6:
            kotlin.reflect.jvm.internal.impl.load.java.JavaIncompatibilityRulesOverridabilityCondition$Companion r4 = kotlin.reflect.jvm.internal.impl.load.java.JavaIncompatibilityRulesOverridabilityCondition.f72849a
            r4.getClass()
            boolean r4 = kotlin.reflect.jvm.internal.impl.load.java.JavaIncompatibilityRulesOverridabilityCondition.Companion.a(r5, r6)
            if (r4 == 0) goto Lb4
            kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition$Result r4 = kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition.Result.INCOMPATIBLE
            return r4
        Lb4:
            kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition$Result r4 = kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition.Result.UNKNOWN
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.JavaIncompatibilityRulesOverridabilityCondition.b(kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor):kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition$Result");
    }
}
