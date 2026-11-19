package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import kotlin.reflect.jvm.internal.impl.descriptors.ModuleCapability;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;

/* JADX INFO: loaded from: classes4.dex */
public interface PackageViewDescriptorFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f72538a = Companion.f72539a;

    public static final class Companion {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Companion f72539a = new Companion();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final ModuleCapability f72540b = new ModuleCapability("PackageViewDescriptorFactory");
    }

    public static final class Default implements PackageViewDescriptorFactory {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Default f72541b = new Default();

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.PackageViewDescriptorFactory
        public final LazyPackageViewDescriptorImpl a(ModuleDescriptorImpl moduleDescriptorImpl, FqName fqName, StorageManager storageManager) {
            moduleDescriptorImpl.getClass();
            fqName.getClass();
            storageManager.getClass();
            return new LazyPackageViewDescriptorImpl(moduleDescriptorImpl, fqName, storageManager);
        }
    }

    LazyPackageViewDescriptorImpl a(ModuleDescriptorImpl moduleDescriptorImpl, FqName fqName, StorageManager storageManager);
}
