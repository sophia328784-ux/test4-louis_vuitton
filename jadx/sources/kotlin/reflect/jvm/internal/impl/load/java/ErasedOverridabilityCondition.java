package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.RawSubstitution;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.RawTypeImpl;
import kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.sequences.FlatteningSequence;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.TransformingSequence;

/* JADX INFO: loaded from: classes4.dex */
public final class ErasedOverridabilityCondition implements ExternalOverridabilityCondition {

    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f72831a;

        static {
            int[] iArr = new int[OverridingUtil.OverrideCompatibilityInfo.Result.values().length];
            try {
                iArr[OverridingUtil.OverrideCompatibilityInfo.Result.OVERRIDABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f72831a = iArr;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition
    public final ExternalOverridabilityCondition.Contract a() {
        return ExternalOverridabilityCondition.Contract.SUCCESS_ONLY;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition
    public final ExternalOverridabilityCondition.Result b(CallableDescriptor callableDescriptor, CallableDescriptor callableDescriptor2, ClassDescriptor classDescriptor) {
        callableDescriptor.getClass();
        callableDescriptor2.getClass();
        if (callableDescriptor2 instanceof JavaMethodDescriptor) {
            JavaMethodDescriptor javaMethodDescriptor = (JavaMethodDescriptor) callableDescriptor2;
            if (javaMethodDescriptor.getTypeParameters().isEmpty()) {
                OverridingUtil.OverrideCompatibilityInfo overrideCompatibilityInfoI = OverridingUtil.i(callableDescriptor, callableDescriptor2);
                if ((overrideCompatibilityInfoI != null ? overrideCompatibilityInfoI.b() : null) != null) {
                    return ExternalOverridabilityCondition.Result.UNKNOWN;
                }
                List listH = javaMethodDescriptor.h();
                listH.getClass();
                TransformingSequence transformingSequenceR = SequencesKt.r(new CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1(listH), new Function1() { // from class: kotlin.reflect.jvm.internal.impl.load.java.ErasedOverridabilityCondition$$Lambda$0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return ((ValueParameterDescriptor) obj).getType();
                    }
                });
                KotlinType kotlinType = javaMethodDescriptor.f72493h;
                kotlinType.getClass();
                FlatteningSequence flatteningSequenceV = SequencesKt.v(transformingSequenceR, kotlinType);
                ReceiverParameterDescriptor receiverParameterDescriptor = javaMethodDescriptor.f72495j;
                FlatteningSequence.AnonymousClass1 anonymousClass1 = new FlatteningSequence.AnonymousClass1();
                while (anonymousClass1.hasNext()) {
                    KotlinType kotlinType2 = (KotlinType) anonymousClass1.next();
                    if (!kotlinType2.F0().isEmpty() && !(kotlinType2.K0() instanceof RawTypeImpl)) {
                        return ExternalOverridabilityCondition.Result.UNKNOWN;
                    }
                }
                CallableDescriptor callableDescriptorBuild = (CallableDescriptor) callableDescriptor.b(TypeSubstitutor.e(new RawSubstitution(null, 1, null)));
                if (callableDescriptorBuild == null) {
                    return ExternalOverridabilityCondition.Result.UNKNOWN;
                }
                if (callableDescriptorBuild instanceof SimpleFunctionDescriptor) {
                    SimpleFunctionDescriptor simpleFunctionDescriptor = (SimpleFunctionDescriptor) callableDescriptorBuild;
                    List typeParameters = simpleFunctionDescriptor.getTypeParameters();
                    typeParameters.getClass();
                    if (!typeParameters.isEmpty()) {
                        callableDescriptorBuild = simpleFunctionDescriptor.A0().a(EmptyList.f71768b).build();
                        callableDescriptorBuild.getClass();
                    }
                }
                OverridingUtil.OverrideCompatibilityInfo.Result resultB = OverridingUtil.f73837e.n(false, callableDescriptorBuild, callableDescriptor2).b();
                resultB.getClass();
                return WhenMappings.f72831a[resultB.ordinal()] == 1 ? ExternalOverridabilityCondition.Result.OVERRIDABLE : ExternalOverridabilityCondition.Result.UNKNOWN;
            }
        }
        return ExternalOverridabilityCondition.Result.UNKNOWN;
    }
}
