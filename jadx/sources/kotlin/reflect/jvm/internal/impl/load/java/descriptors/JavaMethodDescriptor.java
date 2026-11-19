package kotlin.reflect.jvm.internal.impl.load.java.descriptors;

import com.appsflyer.sdk_base.referrer.Payload;
import com.batch.android.s.b;
import defpackage.md;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ReceiverParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotations;
import kotlin.reflect.jvm.internal.impl.load.java.sources.JavaSourceElement;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.util.Check;
import kotlin.reflect.jvm.internal.impl.util.CheckResult;
import kotlin.reflect.jvm.internal.impl.util.Checks;
import kotlin.reflect.jvm.internal.impl.util.OperatorChecks;
import kotlin.text.Regex;

/* JADX INFO: loaded from: classes4.dex */
public class JavaMethodDescriptor extends SimpleFunctionDescriptorImpl implements JavaCallableMemberDescriptor {
    public static final CallableDescriptor.UserDataKey H = new AnonymousClass1();
    public static final CallableDescriptor.UserDataKey I = new AnonymousClass2();
    public ParameterNamesStatus F;
    public final boolean G;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor$1, reason: invalid class name */
    public static class AnonymousClass1 implements CallableDescriptor.UserDataKey<ValueParameterDescriptor> {
    }

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor$2, reason: invalid class name */
    public static class AnonymousClass2 implements CallableDescriptor.UserDataKey<Boolean> {
    }

    public enum ParameterNamesStatus {
        NON_STABLE_DECLARED(false, false),
        STABLE_DECLARED(true, false),
        NON_STABLE_SYNTHESIZED(false, true),
        STABLE_SYNTHESIZED(true, true);

        public final boolean isStable;
        public final boolean isSynthesized;

        ParameterNamesStatus(boolean z, boolean z2) {
            this.isStable = z;
            this.isSynthesized = z2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JavaMethodDescriptor(DeclarationDescriptor declarationDescriptor, SimpleFunctionDescriptor simpleFunctionDescriptor, Annotations annotations, Name name, CallableMemberDescriptor.Kind kind, SourceElement sourceElement, boolean z) {
        super(declarationDescriptor, simpleFunctionDescriptor, annotations, name, kind, sourceElement);
        if (declarationDescriptor == null) {
            Z(0);
            throw null;
        }
        if (annotations == null) {
            Z(1);
            throw null;
        }
        if (name == null) {
            Z(2);
            throw null;
        }
        if (kind == null) {
            Z(3);
            throw null;
        }
        if (sourceElement == null) {
            Z(4);
            throw null;
        }
        this.F = null;
        this.G = z;
    }

    public static JavaMethodDescriptor T0(DeclarationDescriptor declarationDescriptor, LazyJavaAnnotations lazyJavaAnnotations, Name name, JavaSourceElement javaSourceElement, boolean z) {
        if (declarationDescriptor == null) {
            Z(5);
            throw null;
        }
        if (name == null) {
            Z(7);
            throw null;
        }
        if (javaSourceElement != null) {
            return new JavaMethodDescriptor(declarationDescriptor, null, lazyJavaAnnotations, name, CallableMemberDescriptor.Kind.DECLARATION, javaSourceElement, z);
        }
        Z(8);
        throw null;
    }

    public static /* synthetic */ void Z(int i2) {
        String str = (i2 == 13 || i2 == 18 || i2 == 21) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i2 == 13 || i2 == 18 || i2 == 21) ? 2 : 3];
        switch (i2) {
            case 1:
            case 6:
            case 16:
                objArr[0] = "annotations";
                break;
            case 2:
            case 7:
                objArr[0] = "name";
                break;
            case 3:
            case 15:
                objArr[0] = b.a.d;
                break;
            case 4:
            case 8:
            case 17:
                objArr[0] = Payload.SOURCE;
                break;
            case 5:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 9:
                objArr[0] = "contextReceiverParameters";
                break;
            case 10:
                objArr[0] = "typeParameters";
                break;
            case 11:
                objArr[0] = "unsubstitutedValueParameters";
                break;
            case 12:
                objArr[0] = "visibility";
                break;
            case 13:
            case 18:
            case 21:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor";
                break;
            case 14:
                objArr[0] = "newOwner";
                break;
            case 19:
                objArr[0] = "enhancedValueParameterTypes";
                break;
            case 20:
                objArr[0] = "enhancedReturnType";
                break;
        }
        if (i2 == 13) {
            objArr[1] = "initialize";
        } else if (i2 == 18) {
            objArr[1] = "createSubstitutedCopy";
        } else if (i2 != 21) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor";
        } else {
            objArr[1] = "enhance";
        }
        switch (i2) {
            case 5:
            case 6:
            case 7:
            case 8:
                objArr[2] = "createJavaMethod";
                break;
            case 9:
            case 10:
            case 11:
            case 12:
                objArr[2] = "initialize";
                break;
            case 13:
            case 18:
            case 21:
                break;
            case 14:
            case 15:
            case 16:
            case 17:
                objArr[2] = "createSubstitutedCopy";
                break;
            case 19:
            case 20:
                objArr[2] = "enhance";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i2 != 13 && i2 != 18 && i2 != 21) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public final FunctionDescriptorImpl G0(CallableMemberDescriptor.Kind kind, DeclarationDescriptor declarationDescriptor, FunctionDescriptor functionDescriptor, SourceElement sourceElement, Annotations annotations, Name name) {
        if (declarationDescriptor == null) {
            Z(14);
            throw null;
        }
        if (kind == null) {
            Z(15);
            throw null;
        }
        if (annotations == null) {
            Z(16);
            throw null;
        }
        SimpleFunctionDescriptor simpleFunctionDescriptor = (SimpleFunctionDescriptor) functionDescriptor;
        if (name == null) {
            name = getName();
        }
        JavaMethodDescriptor javaMethodDescriptor = new JavaMethodDescriptor(declarationDescriptor, simpleFunctionDescriptor, annotations, name, kind, sourceElement, this.G);
        ParameterNamesStatus parameterNamesStatus = this.F;
        javaMethodDescriptor.U0(parameterNamesStatus.isStable, parameterNamesStatus.isSynthesized);
        return javaMethodDescriptor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl
    public final SimpleFunctionDescriptorImpl S0(ReceiverParameterDescriptor receiverParameterDescriptor, ReceiverParameterDescriptor receiverParameterDescriptor2, List list, List list2, List list3, KotlinType kotlinType, Modality modality, DescriptorVisibility descriptorVisibility, Map map) {
        CheckResult illegalSignature;
        if (list == null) {
            Z(9);
            throw null;
        }
        if (list2 == null) {
            Z(10);
            throw null;
        }
        if (list3 == null) {
            Z(11);
            throw null;
        }
        if (descriptorVisibility == null) {
            Z(12);
            throw null;
        }
        super.S0(receiverParameterDescriptor, receiverParameterDescriptor2, list, list2, list3, kotlinType, modality, descriptorVisibility, map);
        OperatorChecks.f74352a.getClass();
        for (Checks checks : OperatorChecks.f74353b) {
            Regex regex = checks.f74335b;
            Name name = checks.f74334a;
            if (name == null || Intrinsics.c(getName(), name)) {
                if (regex != null) {
                    String strB = getName().b();
                    strB.getClass();
                    if (!regex.f(strB)) {
                        continue;
                    }
                }
                Collection collection = checks.f74336c;
                if (collection == null || collection.contains(getName())) {
                    for (Check check : checks.f74337e) {
                        String strB2 = check.b(this);
                        if (strB2 != null) {
                            illegalSignature = new CheckResult.IllegalSignature(strB2);
                            this.n = illegalSignature.f74331a;
                            return this;
                        }
                    }
                    String str = (String) checks.d.invoke(this);
                    illegalSignature = str != null ? new CheckResult.IllegalSignature(str) : CheckResult.SuccessCheck.f74333b;
                    this.n = illegalSignature.f74331a;
                    return this;
                }
            }
        }
        illegalSignature = CheckResult.IllegalFunctionName.f74332b;
        this.n = illegalSignature.f74331a;
        return this;
    }

    public final void U0(boolean z, boolean z2) {
        ParameterNamesStatus parameterNamesStatus;
        if (z) {
            parameterNamesStatus = z2 ? ParameterNamesStatus.STABLE_SYNTHESIZED : ParameterNamesStatus.STABLE_DECLARED;
        } else {
            parameterNamesStatus = z2 ? ParameterNamesStatus.NON_STABLE_SYNTHESIZED : ParameterNamesStatus.NON_STABLE_DECLARED;
        }
        if (parameterNamesStatus != null) {
            this.F = parameterNamesStatus;
        } else {
            md.k("@NotNull method kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor$ParameterNamesStatus.get must not return null");
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final boolean Y() {
        return this.F.isSynthesized;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaCallableMemberDescriptor
    public final JavaCallableMemberDescriptor p0(KotlinType kotlinType, ArrayList arrayList, KotlinType kotlinType2, Pair pair) {
        if (kotlinType2 == null) {
            Z(20);
            throw null;
        }
        ArrayList arrayListA = UtilKt.a(arrayList, h(), this);
        ReceiverParameterDescriptorImpl receiverParameterDescriptorImplH = kotlinType == null ? null : DescriptorFactory.h(this, kotlinType, Annotations.Companion.f72432a);
        FunctionDescriptorImpl.CopyConfiguration copyConfigurationK0 = K0(TypeSubstitutor.f74260b);
        copyConfigurationK0.g = arrayListA;
        copyConfigurationK0.f72508k = kotlinType2;
        copyConfigurationK0.f72506i = receiverParameterDescriptorImplH;
        copyConfigurationK0.p = true;
        copyConfigurationK0.o = true;
        JavaMethodDescriptor javaMethodDescriptor = (JavaMethodDescriptor) copyConfigurationK0.x.H0(copyConfigurationK0);
        if (pair != null) {
            javaMethodDescriptor.L0((CallableDescriptor.UserDataKey) pair.f71705b, pair.f71706c);
        }
        if (javaMethodDescriptor != null) {
            return javaMethodDescriptor;
        }
        Z(21);
        throw null;
    }
}
