package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;

/* JADX INFO: loaded from: classes4.dex */
public interface CallableDescriptor extends DeclarationDescriptorNonRoot, DeclarationDescriptorWithVisibility, Substitutable<CallableDescriptor> {

    public interface UserDataKey<V> {
    }

    ReceiverParameterDescriptor G();

    ReceiverParameterDescriptor J();

    boolean Y();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    /* JADX INFO: renamed from: a */
    CallableDescriptor y0();

    KotlinType getReturnType();

    List getTypeParameters();

    List h();

    Collection i();

    Object n0(UserDataKey userDataKey);

    List r0();
}
