package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JavaDescriptorResolver;

/* JADX INFO: loaded from: classes4.dex */
public final class SingleModuleClassResolver implements ModuleClassResolver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public JavaDescriptorResolver f72970a;

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.ModuleClassResolver
    public final ClassDescriptor a(JavaClass javaClass) {
        JavaDescriptorResolver javaDescriptorResolver = this.f72970a;
        if (javaDescriptorResolver != null) {
            return javaDescriptorResolver.a(javaClass);
        }
        Intrinsics.h("resolver");
        throw null;
    }
}
