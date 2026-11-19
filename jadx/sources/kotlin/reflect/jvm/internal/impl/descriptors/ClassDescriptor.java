package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;

/* JADX INFO: loaded from: classes4.dex */
public interface ClassDescriptor extends ClassOrPackageFragmentDescriptor, ClassifierDescriptorWithTypeParameters {
    boolean D0();

    ReceiverParameterDescriptor E0();

    MemberScope N();

    ValueClassRepresentation O();

    MemberScope Q();

    List S();

    boolean T();

    boolean W();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    /* JADX INFO: renamed from: a */
    ClassDescriptor y0();

    ClassKind e();

    MemberScope e0();

    Collection f();

    ClassDescriptor f0();

    DescriptorVisibility getVisibility();

    MemberScope i0(TypeSubstitution typeSubstitution);

    boolean isInline();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor
    SimpleType o();

    List p();

    Modality q();

    boolean r();

    ClassConstructorDescriptor y();
}
