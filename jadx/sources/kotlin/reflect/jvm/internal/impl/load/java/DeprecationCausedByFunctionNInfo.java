package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.deprecation.DeprecationLevelValue;
import kotlin.reflect.jvm.internal.impl.resolve.deprecation.DescriptorBasedDeprecationInfo;

/* JADX INFO: loaded from: classes4.dex */
public final class DeprecationCausedByFunctionNInfo extends DescriptorBasedDeprecationInfo {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DeclarationDescriptor f72829b;

    public DeprecationCausedByFunctionNInfo(DeclarationDescriptor declarationDescriptor) {
        declarationDescriptor.getClass();
        this.f72829b = declarationDescriptor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.deprecation.DeprecationInfo
    public final DeprecationLevelValue a() {
        return DeprecationLevelValue.ERROR;
    }
}
