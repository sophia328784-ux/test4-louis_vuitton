package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.BuiltInsPackageFragmentImpl;
import kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNullable;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractDeserializedPackageFragmentProvider implements PackageFragmentProviderOptimized {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StorageManager f73969a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final KotlinMetadataFinder f73970b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ModuleDescriptor f73971c;
    public DeserializationComponents d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MemoizedFunctionToNullable f73972e;

    public AbstractDeserializedPackageFragmentProvider(StorageManager storageManager, KotlinMetadataFinder kotlinMetadataFinder, ModuleDescriptor moduleDescriptor) {
        storageManager.getClass();
        kotlinMetadataFinder.getClass();
        moduleDescriptor.getClass();
        this.f73969a = storageManager;
        this.f73970b = kotlinMetadataFinder;
        this.f73971c = moduleDescriptor;
        this.f73972e = storageManager.g(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractDeserializedPackageFragmentProvider$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final AbstractDeserializedPackageFragmentProvider f73973b;

            {
                this.f73973b = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                FqName fqName = (FqName) obj;
                fqName.getClass();
                AbstractDeserializedPackageFragmentProvider abstractDeserializedPackageFragmentProvider = this.f73973b;
                BuiltInsPackageFragmentImpl builtInsPackageFragmentImplD = abstractDeserializedPackageFragmentProvider.d(fqName);
                if (builtInsPackageFragmentImplD == null) {
                    return null;
                }
                DeserializationComponents deserializationComponents = abstractDeserializedPackageFragmentProvider.d;
                if (deserializationComponents != null) {
                    builtInsPackageFragmentImplD.F0(deserializationComponents);
                    return builtInsPackageFragmentImplD;
                }
                Intrinsics.h("components");
                throw null;
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProvider
    public final List a(FqName fqName) {
        fqName.getClass();
        return CollectionsKt.Q(this.f73972e.invoke(fqName));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized
    public final void b(FqName fqName, ArrayList arrayList) {
        fqName.getClass();
        Object objInvoke = this.f73972e.invoke(fqName);
        if (objInvoke != null) {
            arrayList.add(objInvoke);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized
    public final boolean c(FqName fqName) {
        fqName.getClass();
        MemoizedFunctionToNullable memoizedFunctionToNullable = this.f73972e;
        return (memoizedFunctionToNullable.h(fqName) ? (PackageFragmentDescriptor) memoizedFunctionToNullable.invoke(fqName) : d(fqName)) == null;
    }

    public abstract BuiltInsPackageFragmentImpl d(FqName fqName);

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProvider
    public final Collection m(FqName fqName, Function1 function1) {
        fqName.getClass();
        function1.getClass();
        return EmptySet.f71770b;
    }
}
