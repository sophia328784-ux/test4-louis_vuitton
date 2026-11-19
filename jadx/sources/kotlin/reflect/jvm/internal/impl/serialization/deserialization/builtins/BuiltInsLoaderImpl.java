package kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins;

import com.google.ar.core.ImageMetadata;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import kotlin.collections.EmptyList;
import kotlin.reflect.jvm.internal.impl.builtins.BuiltInsLoader;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.PlatformDependentDeclarationFilter;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupTracker;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.resolve.sam.SamConversionResolverImpl;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationAndConstantLoaderImpl;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ContractDeserializer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationComponents;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationConfiguration;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializedClassDataFinder;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ErrorReporter;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.FlexibleTypeDeserializer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.LocalClassifierTypeSettings;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;

/* JADX INFO: loaded from: classes4.dex */
public final class BuiltInsLoaderImpl implements BuiltInsLoader {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BuiltInsResourceLoader f74073b = new BuiltInsResourceLoader();

    @Override // kotlin.reflect.jvm.internal.impl.builtins.BuiltInsLoader
    public final PackageFragmentProviderImpl a(StorageManager storageManager, ModuleDescriptor moduleDescriptor, Iterable iterable, PlatformDependentDeclarationFilter platformDependentDeclarationFilter, AdditionalClassPartsProvider additionalClassPartsProvider, boolean z) throws IOException {
        BuiltInsPackageFragmentImpl builtInsPackageFragmentImplA;
        storageManager.getClass();
        moduleDescriptor.getClass();
        iterable.getClass();
        platformDependentDeclarationFilter.getClass();
        additionalClassPartsProvider.getClass();
        Set<FqName> set = StandardNames.r;
        BuiltInsLoaderImpl$createPackageFragmentProvider$1 builtInsLoaderImpl$createPackageFragmentProvider$1 = new BuiltInsLoaderImpl$createPackageFragmentProvider$1(1, this.f74073b, BuiltInsResourceLoader.class, "loadResource", "loadResource(Ljava/lang/String;)Ljava/io/InputStream;", 0);
        set.getClass();
        ArrayList arrayList = new ArrayList();
        for (FqName fqName : set) {
            BuiltInSerializerProtocol.q.getClass();
            InputStream inputStream = (InputStream) builtInsLoaderImpl$createPackageFragmentProvider$1.invoke(BuiltInSerializerProtocol.a(fqName));
            if (inputStream != null) {
                BuiltInsPackageFragmentImpl.o.getClass();
                builtInsPackageFragmentImplA = BuiltInsPackageFragmentImpl.Companion.a(fqName, storageManager, moduleDescriptor, inputStream, z);
            } else {
                builtInsPackageFragmentImplA = null;
            }
            if (builtInsPackageFragmentImplA != null) {
                arrayList.add(builtInsPackageFragmentImplA);
            }
        }
        PackageFragmentProviderImpl packageFragmentProviderImpl = new PackageFragmentProviderImpl(arrayList);
        NotFoundClasses notFoundClasses = new NotFoundClasses(storageManager, moduleDescriptor);
        DeserializedClassDataFinder deserializedClassDataFinder = new DeserializedClassDataFinder(packageFragmentProviderImpl);
        BuiltInSerializerProtocol builtInSerializerProtocol = BuiltInSerializerProtocol.q;
        DeserializationComponents deserializationComponents = new DeserializationComponents(storageManager, moduleDescriptor, DeserializationConfiguration.Default.f73997a, deserializedClassDataFinder, new AnnotationAndConstantLoaderImpl(moduleDescriptor, notFoundClasses, builtInSerializerProtocol), packageFragmentProviderImpl, LocalClassifierTypeSettings.Default.f74020a, ErrorReporter.f74013a, LookupTracker.DO_NOTHING.f72642a, FlexibleTypeDeserializer.ThrowException.f74014a, iterable, notFoundClasses, ContractDeserializer.Companion.f73987a, additionalClassPartsProvider, platformDependentDeclarationFilter, builtInSerializerProtocol.f73958a, null, new SamConversionResolverImpl(storageManager, EmptyList.f71768b), null, null, ImageMetadata.SCALER_CROP_REGION, null);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((BuiltInsPackageFragmentImpl) it.next()).F0(deserializationComponents);
        }
        return packageFragmentProviderImpl;
    }
}
