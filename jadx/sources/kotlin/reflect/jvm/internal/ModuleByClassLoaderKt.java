package kotlin.reflect.jvm.internal;

import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.KotlinVersion;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.reflect.jvm.internal.impl.builtins.ReflectionTypes;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsPackageFragmentProvider;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.SupertypeLoopChecker;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.CompositePackageFragmentProvider;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDependenciesImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.PackagePartScopeCache;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectJavaClassFinder;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectKotlinClassFinder;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.RuntimeErrorReporter;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.RuntimeModuleData;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.RuntimeSourceElementFactory;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupTracker;
import kotlin.reflect.jvm.internal.impl.load.java.AnnotationTypeQualifierResolver;
import kotlin.reflect.jvm.internal.impl.load.java.JavaClassesTracker;
import kotlin.reflect.jvm.internal.impl.load.java.JavaTypeEnhancementState;
import kotlin.reflect.jvm.internal.impl.load.java.components.JavaPropertyInitializerEvaluator;
import kotlin.reflect.jvm.internal.impl.load.java.components.JavaResolverCache;
import kotlin.reflect.jvm.internal.impl.load.java.components.SignaturePropagator;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.JavaResolverComponents;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.JavaResolverSettings;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaPackageFragmentProvider;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.SingleModuleClassResolver;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeEnhancement;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement;
import kotlin.reflect.jvm.internal.impl.load.kotlin.BinaryClassAnnotationAndConstantLoaderImpl;
import kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializationComponentsForJava;
import kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializationComponentsForJavaKt$makeLazyJavaPackageFragmentProvider$javaResolverComponents$1;
import kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver;
import kotlin.reflect.jvm.internal.impl.load.kotlin.JavaClassDataFinder;
import kotlin.reflect.jvm.internal.impl.load.kotlin.PackagePartProvider;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.MetadataVersion;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JavaDescriptorResolver;
import kotlin.reflect.jvm.internal.impl.resolve.sam.SamConversionResolverImpl;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ContractDeserializer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationComponents;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationConfiguration;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.DefaultTypeAttributeTranslator;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeCheckerImpl;
import kotlin.reflect.jvm.internal.impl.types.extensions.TypeAttributeTranslators;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlin-reflection"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ModuleByClassLoaderKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ConcurrentHashMap f72165a = new ConcurrentHashMap();

    public static final RuntimeModuleData a(Class cls) {
        cls.getClass();
        ClassLoader classLoaderD = ReflectClassUtilKt.d(cls);
        WeakClassLoaderBox weakClassLoaderBox = new WeakClassLoaderBox(classLoaderD);
        ConcurrentHashMap concurrentHashMap = f72165a;
        WeakReference weakReference = (WeakReference) concurrentHashMap.get(weakClassLoaderBox);
        if (weakReference != null) {
            RuntimeModuleData runtimeModuleData = (RuntimeModuleData) weakReference.get();
            if (runtimeModuleData != null) {
                return runtimeModuleData;
            }
            concurrentHashMap.remove(weakClassLoaderBox, weakReference);
        }
        RuntimeModuleData.f72586c.getClass();
        classLoaderD.getClass();
        ReflectKotlinClassFinder reflectKotlinClassFinder = new ReflectKotlinClassFinder(classLoaderD);
        DeserializationComponentsForJava.Companion companion = DeserializationComponentsForJava.f73230b;
        ClassLoader classLoader = Unit.class.getClassLoader();
        classLoader.getClass();
        ReflectKotlinClassFinder reflectKotlinClassFinder2 = new ReflectKotlinClassFinder(classLoader);
        ReflectJavaClassFinder reflectJavaClassFinder = new ReflectJavaClassFinder(classLoaderD);
        companion.getClass();
        LockBasedStorageManager lockBasedStorageManager = new LockBasedStorageManager("DeserializationComponentsForJava.ModuleData");
        JvmBuiltIns jvmBuiltIns = new JvmBuiltIns(lockBasedStorageManager, JvmBuiltIns.Kind.FROM_DEPENDENCIES);
        ModuleDescriptorImpl moduleDescriptorImpl = new ModuleDescriptorImpl(Name.g("<" + ("runtime module for " + classLoaderD) + '>'), lockBasedStorageManager, jvmBuiltIns, null, null, null, 56, null);
        jvmBuiltIns.L(moduleDescriptorImpl);
        jvmBuiltIns.N(moduleDescriptorImpl);
        DeserializedDescriptorResolver deserializedDescriptorResolver = new DeserializedDescriptorResolver();
        SingleModuleClassResolver singleModuleClassResolver = new SingleModuleClassResolver();
        NotFoundClasses notFoundClasses = new NotFoundClasses(lockBasedStorageManager, moduleDescriptorImpl);
        JavaTypeEnhancementState.Companion companion2 = JavaTypeEnhancementState.d;
        KotlinVersion kotlinVersion = new KotlinVersion(1, 9);
        companion2.getClass();
        JavaTypeEnhancementState javaTypeEnhancementStateA = JavaTypeEnhancementState.Companion.a(kotlinVersion);
        EmptyList emptyList = EmptyList.f71768b;
        SamConversionResolverImpl samConversionResolverImpl = new SamConversionResolverImpl(lockBasedStorageManager, emptyList);
        ReflectionTypes reflectionTypes = new ReflectionTypes(moduleDescriptorImpl, notFoundClasses);
        AnnotationTypeQualifierResolver annotationTypeQualifierResolver = new AnnotationTypeQualifierResolver(javaTypeEnhancementStateA);
        JavaResolverSettings.Default r4 = JavaResolverSettings.Default.f72953a;
        SignatureEnhancement signatureEnhancement = new SignatureEnhancement(new JavaTypeEnhancement(r4));
        NewKotlinTypeChecker.f74286b.getClass();
        NewKotlinTypeCheckerImpl newKotlinTypeCheckerImpl = NewKotlinTypeChecker.Companion.f74288b;
        DeserializationComponentsForJavaKt$makeLazyJavaPackageFragmentProvider$javaResolverComponents$1 deserializationComponentsForJavaKt$makeLazyJavaPackageFragmentProvider$javaResolverComponents$1 = new DeserializationComponentsForJavaKt$makeLazyJavaPackageFragmentProvider$javaResolverComponents$1();
        SignaturePropagator signaturePropagator = SignaturePropagator.f72934a;
        RuntimeErrorReporter runtimeErrorReporter = RuntimeErrorReporter.f72585b;
        JavaResolverCache javaResolverCache = JavaResolverCache.f72929a;
        JavaPropertyInitializerEvaluator.DoNothing doNothing = JavaPropertyInitializerEvaluator.DoNothing.f72928a;
        RuntimeSourceElementFactory runtimeSourceElementFactory = RuntimeSourceElementFactory.f72589a;
        PackagePartProvider.Empty empty = PackagePartProvider.Empty.f73261a;
        SupertypeLoopChecker.EMPTY empty2 = SupertypeLoopChecker.EMPTY.f72407a;
        LookupTracker.DO_NOTHING do_nothing = LookupTracker.DO_NOTHING.f72642a;
        LazyJavaPackageFragmentProvider lazyJavaPackageFragmentProvider = new LazyJavaPackageFragmentProvider(new JavaResolverComponents(lockBasedStorageManager, reflectJavaClassFinder, reflectKotlinClassFinder, deserializedDescriptorResolver, signaturePropagator, runtimeErrorReporter, javaResolverCache, doNothing, samConversionResolverImpl, runtimeSourceElementFactory, singleModuleClassResolver, empty, empty2, do_nothing, moduleDescriptorImpl, reflectionTypes, annotationTypeQualifierResolver, signatureEnhancement, JavaClassesTracker.Default.f72837a, r4, newKotlinTypeCheckerImpl, javaTypeEnhancementStateA, deserializationComponentsForJavaKt$makeLazyJavaPackageFragmentProvider$javaResolverComponents$1, null, 8388608, null));
        MetadataVersion metadataVersion = MetadataVersion.g;
        metadataVersion.getClass();
        JavaClassDataFinder javaClassDataFinder = new JavaClassDataFinder(reflectKotlinClassFinder, deserializedDescriptorResolver);
        BinaryClassAnnotationAndConstantLoaderImpl binaryClassAnnotationAndConstantLoaderImpl = new BinaryClassAnnotationAndConstantLoaderImpl(moduleDescriptorImpl, notFoundClasses, lockBasedStorageManager, reflectKotlinClassFinder);
        binaryClassAnnotationAndConstantLoaderImpl.f73214h = metadataVersion;
        TypeAttributeTranslators typeAttributeTranslators = new TypeAttributeTranslators(CollectionsKt.O(DefaultTypeAttributeTranslator.f74181a));
        DeserializationConfiguration.Default r15 = DeserializationConfiguration.Default.f73997a;
        DeserializationComponentsForJava deserializationComponentsForJava = new DeserializationComponentsForJava(lockBasedStorageManager, moduleDescriptorImpl, r15, javaClassDataFinder, binaryClassAnnotationAndConstantLoaderImpl, lazyJavaPackageFragmentProvider, notFoundClasses, runtimeErrorReporter, do_nothing, ContractDeserializer.Companion.f73987a, newKotlinTypeCheckerImpl, typeAttributeTranslators);
        DeserializationComponents deserializationComponents = deserializationComponentsForJava.f73231a;
        deserializationComponents.getClass();
        deserializedDescriptorResolver.f73238a = deserializationComponents;
        JavaDescriptorResolver javaDescriptorResolver = new JavaDescriptorResolver(lazyJavaPackageFragmentProvider, javaResolverCache);
        singleModuleClassResolver.f72970a = javaDescriptorResolver;
        JvmBuiltInsPackageFragmentProvider jvmBuiltInsPackageFragmentProvider = new JvmBuiltInsPackageFragmentProvider(lockBasedStorageManager, reflectKotlinClassFinder2, moduleDescriptorImpl, notFoundClasses, jvmBuiltIns.M(), jvmBuiltIns.M(), r15, newKotlinTypeCheckerImpl, new SamConversionResolverImpl(lockBasedStorageManager, emptyList));
        List listW = ArraysKt.W(new ModuleDescriptorImpl[]{moduleDescriptorImpl});
        listW.getClass();
        EmptySet emptySet = EmptySet.f71770b;
        emptySet.getClass();
        moduleDescriptorImpl.f72529h = new ModuleDependenciesImpl(listW, emptySet, emptyList, emptySet);
        moduleDescriptorImpl.f72530i = new CompositePackageFragmentProvider(CollectionsKt.P(javaDescriptorResolver.f73897a, jvmBuiltInsPackageFragmentProvider), "CompositeProvider@RuntimeModuleData for " + moduleDescriptorImpl);
        DeserializationComponentsForJava.Companion.ModuleData moduleData = new DeserializationComponentsForJava.Companion.ModuleData(deserializationComponentsForJava, deserializedDescriptorResolver);
        RuntimeModuleData runtimeModuleData2 = new RuntimeModuleData(moduleData.f73232a.f73231a, new PackagePartScopeCache(moduleData.f73233b, reflectKotlinClassFinder), null);
        while (true) {
            WeakReference weakReference2 = (WeakReference) concurrentHashMap.putIfAbsent(weakClassLoaderBox, new WeakReference(runtimeModuleData2));
            if (weakReference2 == null) {
                return runtimeModuleData2;
            }
            RuntimeModuleData runtimeModuleData3 = (RuntimeModuleData) weakReference2.get();
            if (runtimeModuleData3 != null) {
                return runtimeModuleData3;
            }
            concurrentHashMap.remove(weakClassLoaderBox, weakReference2);
        }
    }
}
