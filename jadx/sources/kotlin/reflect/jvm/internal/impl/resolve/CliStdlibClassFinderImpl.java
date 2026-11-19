package kotlin.reflect.jvm.internal.impl.resolve;

import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.name.StandardClassIds;

/* JADX INFO: loaded from: classes4.dex */
final class CliStdlibClassFinderImpl implements StdlibClassFinder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CliStdlibClassFinderImpl f73825a = new CliStdlibClassFinderImpl();

    @Override // kotlin.reflect.jvm.internal.impl.resolve.StdlibClassFinder
    public final ClassDescriptor a(ModuleDescriptor moduleDescriptor) {
        return FindClassInModuleKt.a(moduleDescriptor, StandardClassIds.D);
    }
}
