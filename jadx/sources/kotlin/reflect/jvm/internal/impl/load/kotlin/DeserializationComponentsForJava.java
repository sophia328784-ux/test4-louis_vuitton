package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.PlatformDependentDeclarationFilter;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupTracker;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaPackageFragmentProvider;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.resolve.sam.SamConversionResolverImpl;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ContractDeserializer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationComponents;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationConfiguration;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ErrorReporter;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.JvmEnumEntriesDeserializationSupport;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.LocalClassifierTypeSettings;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.extensions.TypeAttributeTranslators;

/* JADX INFO: loaded from: classes4.dex */
public final class DeserializationComponentsForJava {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f73230b = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DeserializationComponents f73231a;

    public static final class Companion {

        public static final class ModuleData {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final DeserializationComponentsForJava f73232a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final DeserializedDescriptorResolver f73233b;

            public ModuleData(DeserializationComponentsForJava deserializationComponentsForJava, DeserializedDescriptorResolver deserializedDescriptorResolver) {
                deserializationComponentsForJava.getClass();
                deserializedDescriptorResolver.getClass();
                this.f73232a = deserializationComponentsForJava;
                this.f73233b = deserializedDescriptorResolver;
            }
        }

        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public DeserializationComponentsForJava(StorageManager storageManager, ModuleDescriptor moduleDescriptor, DeserializationConfiguration deserializationConfiguration, JavaClassDataFinder javaClassDataFinder, BinaryClassAnnotationAndConstantLoaderImpl binaryClassAnnotationAndConstantLoaderImpl, LazyJavaPackageFragmentProvider lazyJavaPackageFragmentProvider, NotFoundClasses notFoundClasses, ErrorReporter errorReporter, LookupTracker lookupTracker, ContractDeserializer contractDeserializer, NewKotlinTypeChecker newKotlinTypeChecker, TypeAttributeTranslators typeAttributeTranslators) {
        PlatformDependentDeclarationFilter platformDependentDeclarationFilterM;
        AdditionalClassPartsProvider additionalClassPartsProviderM;
        storageManager.getClass();
        moduleDescriptor.getClass();
        deserializationConfiguration.getClass();
        javaClassDataFinder.getClass();
        binaryClassAnnotationAndConstantLoaderImpl.getClass();
        lazyJavaPackageFragmentProvider.getClass();
        notFoundClasses.getClass();
        errorReporter.getClass();
        lookupTracker.getClass();
        contractDeserializer.getClass();
        newKotlinTypeChecker.getClass();
        typeAttributeTranslators.getClass();
        KotlinBuiltIns kotlinBuiltInsG = moduleDescriptor.g();
        JvmBuiltIns jvmBuiltIns = kotlinBuiltInsG instanceof JvmBuiltIns ? (JvmBuiltIns) kotlinBuiltInsG : null;
        EmptyList emptyList = EmptyList.f71768b;
        AdditionalClassPartsProvider additionalClassPartsProvider = (jvmBuiltIns == null || (additionalClassPartsProviderM = jvmBuiltIns.M()) == null) ? AdditionalClassPartsProvider.None.f72443a : additionalClassPartsProviderM;
        PlatformDependentDeclarationFilter platformDependentDeclarationFilter = (jvmBuiltIns == null || (platformDependentDeclarationFilterM = jvmBuiltIns.M()) == null) ? PlatformDependentDeclarationFilter.NoPlatformDependent.f72445a : platformDependentDeclarationFilterM;
        ExtensionRegistryLite extensionRegistryLite = JvmProtoBufUtil.f73672a;
        this.f73231a = new DeserializationComponents(storageManager, moduleDescriptor, deserializationConfiguration, javaClassDataFinder, binaryClassAnnotationAndConstantLoaderImpl, lazyJavaPackageFragmentProvider, LocalClassifierTypeSettings.Default.f74020a, errorReporter, lookupTracker, JavaFlexibleTypeDeserializer.f73242a, emptyList, notFoundClasses, contractDeserializer, additionalClassPartsProvider, platformDependentDeclarationFilter, JvmProtoBufUtil.f73672a, newKotlinTypeChecker, new SamConversionResolverImpl(storageManager, emptyList), typeAttributeTranslators.f74314a, JvmEnumEntriesDeserializationSupport.f74019a);
    }
}
