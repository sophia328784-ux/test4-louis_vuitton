package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibility;

/* JADX INFO: loaded from: classes4.dex */
public abstract class UtilsKt {
    public static final DescriptorVisibility a(Visibility visibility) {
        visibility.getClass();
        DescriptorVisibility descriptorVisibility = (DescriptorVisibility) JavaDescriptorVisibilities.d.get(visibility);
        return descriptorVisibility == null ? DescriptorVisibilities.g(visibility) : descriptorVisibility;
    }
}
