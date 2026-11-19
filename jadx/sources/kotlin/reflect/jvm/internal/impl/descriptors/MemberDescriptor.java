package kotlin.reflect.jvm.internal.impl.descriptors;

/* JADX INFO: loaded from: classes4.dex */
public interface MemberDescriptor extends DeclarationDescriptorNonRoot, DeclarationDescriptorWithVisibility {
    boolean R();

    boolean c0();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithVisibility
    DescriptorVisibility getVisibility();

    boolean isExternal();

    Modality q();
}
