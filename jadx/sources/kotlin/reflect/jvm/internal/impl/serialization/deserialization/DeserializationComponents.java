package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProvider;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.ClassDescriptorFactory;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.PlatformDependentDeclarationFilter;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupTracker;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.resolve.sam.SamConversionResolver;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.DefaultTypeAttributeTranslator;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributeTranslator;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker;

/* JADX INFO: loaded from: classes4.dex */
public final class DeserializationComponents {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StorageManager f73988a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ModuleDescriptor f73989b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DeserializationConfiguration f73990c;
    public final ClassDataFinder d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AnnotationAndConstantLoader f73991e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final PackageFragmentProvider f73992f;
    public final LocalClassifierTypeSettings g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ErrorReporter f73993h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LookupTracker f73994i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final FlexibleTypeDeserializer f73995j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Iterable f73996k;
    public final NotFoundClasses l;
    public final ContractDeserializer m;
    public final AdditionalClassPartsProvider n;
    public final PlatformDependentDeclarationFilter o;
    public final ExtensionRegistryLite p;
    public final NewKotlinTypeChecker q;
    public final SamConversionResolver r;
    public final List s;
    public final EnumEntriesDeserializationSupport t;
    public final ClassDeserializer u;

    public DeserializationComponents(StorageManager storageManager, ModuleDescriptor moduleDescriptor, DeserializationConfiguration deserializationConfiguration, ClassDataFinder classDataFinder, AnnotationAndConstantLoader<? extends AnnotationDescriptor, ? extends ConstantValue<?>> annotationAndConstantLoader, PackageFragmentProvider packageFragmentProvider, LocalClassifierTypeSettings localClassifierTypeSettings, ErrorReporter errorReporter, LookupTracker lookupTracker, FlexibleTypeDeserializer flexibleTypeDeserializer, Iterable<? extends ClassDescriptorFactory> iterable, NotFoundClasses notFoundClasses, ContractDeserializer contractDeserializer, AdditionalClassPartsProvider additionalClassPartsProvider, PlatformDependentDeclarationFilter platformDependentDeclarationFilter, ExtensionRegistryLite extensionRegistryLite, NewKotlinTypeChecker newKotlinTypeChecker, SamConversionResolver samConversionResolver, List<? extends TypeAttributeTranslator> list, EnumEntriesDeserializationSupport enumEntriesDeserializationSupport) {
        storageManager.getClass();
        moduleDescriptor.getClass();
        deserializationConfiguration.getClass();
        classDataFinder.getClass();
        annotationAndConstantLoader.getClass();
        packageFragmentProvider.getClass();
        localClassifierTypeSettings.getClass();
        errorReporter.getClass();
        lookupTracker.getClass();
        flexibleTypeDeserializer.getClass();
        iterable.getClass();
        notFoundClasses.getClass();
        contractDeserializer.getClass();
        additionalClassPartsProvider.getClass();
        platformDependentDeclarationFilter.getClass();
        extensionRegistryLite.getClass();
        newKotlinTypeChecker.getClass();
        samConversionResolver.getClass();
        list.getClass();
        enumEntriesDeserializationSupport.getClass();
        this.f73988a = storageManager;
        this.f73989b = moduleDescriptor;
        this.f73990c = deserializationConfiguration;
        this.d = classDataFinder;
        this.f73991e = annotationAndConstantLoader;
        this.f73992f = packageFragmentProvider;
        this.g = localClassifierTypeSettings;
        this.f73993h = errorReporter;
        this.f73994i = lookupTracker;
        this.f73995j = flexibleTypeDeserializer;
        this.f73996k = iterable;
        this.l = notFoundClasses;
        this.m = contractDeserializer;
        this.n = additionalClassPartsProvider;
        this.o = platformDependentDeclarationFilter;
        this.p = extensionRegistryLite;
        this.q = newKotlinTypeChecker;
        this.r = samConversionResolver;
        this.s = list;
        this.t = enumEntriesDeserializationSupport;
        this.u = new ClassDeserializer(this);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DeserializationComponents(StorageManager storageManager, ModuleDescriptor moduleDescriptor, DeserializationConfiguration deserializationConfiguration, ClassDataFinder classDataFinder, AnnotationAndConstantLoader annotationAndConstantLoader, PackageFragmentProvider packageFragmentProvider, LocalClassifierTypeSettings localClassifierTypeSettings, ErrorReporter errorReporter, LookupTracker lookupTracker, FlexibleTypeDeserializer flexibleTypeDeserializer, Iterable iterable, NotFoundClasses notFoundClasses, ContractDeserializer contractDeserializer, AdditionalClassPartsProvider additionalClassPartsProvider, PlatformDependentDeclarationFilter platformDependentDeclarationFilter, ExtensionRegistryLite extensionRegistryLite, NewKotlinTypeChecker newKotlinTypeChecker, SamConversionResolver samConversionResolver, List list, EnumEntriesDeserializationSupport enumEntriesDeserializationSupport, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        NewKotlinTypeChecker newKotlinTypeChecker2;
        AdditionalClassPartsProvider additionalClassPartsProvider2 = (i2 & 8192) != 0 ? AdditionalClassPartsProvider.None.f72443a : additionalClassPartsProvider;
        PlatformDependentDeclarationFilter platformDependentDeclarationFilter2 = (i2 & 16384) != 0 ? PlatformDependentDeclarationFilter.All.f72444a : platformDependentDeclarationFilter;
        if ((65536 & i2) != 0) {
            NewKotlinTypeChecker.f74286b.getClass();
            newKotlinTypeChecker2 = NewKotlinTypeChecker.Companion.f74288b;
        } else {
            newKotlinTypeChecker2 = newKotlinTypeChecker;
        }
        this(storageManager, moduleDescriptor, deserializationConfiguration, classDataFinder, annotationAndConstantLoader, packageFragmentProvider, localClassifierTypeSettings, errorReporter, lookupTracker, flexibleTypeDeserializer, iterable, notFoundClasses, contractDeserializer, additionalClassPartsProvider2, platformDependentDeclarationFilter2, extensionRegistryLite, newKotlinTypeChecker2, samConversionResolver, (262144 & i2) != 0 ? CollectionsKt.O(DefaultTypeAttributeTranslator.f74181a) : list, (i2 & 524288) != 0 ? EnumEntriesDeserializationSupport.Default.f74012a : enumEntriesDeserializationSupport);
    }
}
