package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;

/* JADX INFO: loaded from: classes4.dex */
public interface FunctionDescriptor extends CallableMemberDescriptor {

    public interface CopyBuilder<D extends FunctionDescriptor> {
        CopyBuilder a(EmptyList emptyList);

        CopyBuilder b(List list);

        FunctionDescriptor build();

        CopyBuilder c(ReceiverParameterDescriptor receiverParameterDescriptor);

        CopyBuilder d();

        CopyBuilder e();

        CopyBuilder f(TypeSubstitution typeSubstitution);

        CopyBuilder g(DescriptorVisibility descriptorVisibility);

        CopyBuilder h();

        CopyBuilder i(Name name);

        CopyBuilder j(ClassConstructorDescriptor classConstructorDescriptor);

        CopyBuilder k(Modality modality);

        CopyBuilder l();

        CopyBuilder m(KotlinType kotlinType);

        CopyBuilder n();

        CopyBuilder o(DeclarationDescriptor declarationDescriptor);

        CopyBuilder p(CallableMemberDescriptor.Kind kind);

        CopyBuilder q(Annotations annotations);

        CopyBuilder r();
    }

    CopyBuilder A0();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    /* JADX INFO: renamed from: a */
    FunctionDescriptor y0();

    FunctionDescriptor b(TypeSubstitutor typeSubstitutor);

    boolean isInfix();

    boolean isInline();

    boolean isOperator();

    boolean isSuspend();

    FunctionDescriptor k0();

    boolean w0();

    boolean x();

    boolean z0();
}
