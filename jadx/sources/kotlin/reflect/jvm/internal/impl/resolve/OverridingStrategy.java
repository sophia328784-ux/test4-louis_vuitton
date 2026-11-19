package kotlin.reflect.jvm.internal.impl.resolve;

import java.util.Collection;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;

/* JADX INFO: loaded from: classes4.dex */
public abstract class OverridingStrategy {
    public abstract void a(CallableMemberDescriptor callableMemberDescriptor);

    public void b(CallableMemberDescriptor callableMemberDescriptor, Collection collection) {
        callableMemberDescriptor.getClass();
        callableMemberDescriptor.x0(collection);
    }
}
