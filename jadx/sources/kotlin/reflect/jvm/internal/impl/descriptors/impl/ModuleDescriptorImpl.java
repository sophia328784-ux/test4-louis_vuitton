package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import defpackage.az;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorVisitor;
import kotlin.reflect.jvm.internal.impl.descriptors.InvalidModuleException;
import kotlin.reflect.jvm.internal.impl.descriptors.InvalidModuleExceptionKt;
import kotlin.reflect.jvm.internal.impl.descriptors.InvalidModuleNotifier;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleCapability;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProvider;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageViewDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.platform.TargetPlatform;
import kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNotNull;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;

/* JADX INFO: loaded from: classes4.dex */
public final class ModuleDescriptorImpl extends DeclarationDescriptorImpl implements ModuleDescriptor {
    public final StorageManager d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final KotlinBuiltIns f72527e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Map f72528f;
    public final PackageViewDescriptorFactory g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ModuleDependenciesImpl f72529h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public PackageFragmentProvider f72530i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f72531j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MemoizedFunctionToNotNull f72532k;
    public final Lazy l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModuleDescriptorImpl(Name name, StorageManager storageManager, KotlinBuiltIns kotlinBuiltIns, TargetPlatform targetPlatform, Map<ModuleCapability<?>, ? extends Object> map, Name name2) {
        super(Annotations.Companion.f72432a, name);
        name.getClass();
        storageManager.getClass();
        kotlinBuiltIns.getClass();
        map.getClass();
        this.d = storageManager;
        this.f72527e = kotlinBuiltIns;
        if (!name.f73688c) {
            az.m(name, "Module name must be special: ");
            throw null;
        }
        this.f72528f = map;
        PackageViewDescriptorFactory.f72538a.getClass();
        PackageViewDescriptorFactory packageViewDescriptorFactory = (PackageViewDescriptorFactory) C0(PackageViewDescriptorFactory.Companion.f72540b);
        this.g = packageViewDescriptorFactory == null ? PackageViewDescriptorFactory.Default.f72541b : packageViewDescriptorFactory;
        this.f72531j = true;
        this.f72532k = storageManager.i(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final ModuleDescriptorImpl f72533b;

            {
                this.f72533b = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                FqName fqName = (FqName) obj;
                fqName.getClass();
                ModuleDescriptorImpl moduleDescriptorImpl = this.f72533b;
                return moduleDescriptorImpl.g.a(moduleDescriptorImpl, fqName, moduleDescriptorImpl.d);
            }
        });
        this.l = LazyKt.b(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl$$Lambda$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final ModuleDescriptorImpl f72534b;

            {
                this.f72534b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                ModuleDescriptorImpl moduleDescriptorImpl = this.f72534b;
                ModuleDependenciesImpl moduleDependenciesImpl = moduleDescriptorImpl.f72529h;
                if (moduleDependenciesImpl == null) {
                    String str = moduleDescriptorImpl.getName().f73687b;
                    str.getClass();
                    v40.k("Dependencies of module ", str, " were not set before querying module content");
                    return null;
                }
                List list = moduleDependenciesImpl.f72524a;
                moduleDescriptorImpl.y0();
                list.contains(moduleDescriptorImpl);
                List list2 = list;
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    ((ModuleDescriptorImpl) it.next()).getClass();
                }
                ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                Iterator it2 = list2.iterator();
                while (it2.hasNext()) {
                    PackageFragmentProvider packageFragmentProvider = ((ModuleDescriptorImpl) it2.next()).f72530i;
                    packageFragmentProvider.getClass();
                    arrayList.add(packageFragmentProvider);
                }
                return new CompositePackageFragmentProvider(arrayList, "CompositeProvider@ModuleDescriptor for " + moduleDescriptorImpl.getName());
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
    public final Object C0(ModuleCapability moduleCapability) {
        moduleCapability.getClass();
        Object obj = this.f72528f.get(moduleCapability);
        if (obj == null) {
            return null;
        }
        return obj;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
    public final boolean F(ModuleDescriptor moduleDescriptor) {
        moduleDescriptor.getClass();
        if (this == moduleDescriptor) {
            return true;
        }
        ModuleDependenciesImpl moduleDependenciesImpl = this.f72529h;
        moduleDependenciesImpl.getClass();
        return CollectionsKt.u(moduleDependenciesImpl.f72525b, moduleDescriptor) || t0().contains(moduleDescriptor) || moduleDescriptor.t0().contains(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final /* bridge */ DeclarationDescriptor d() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
    public final PackageViewDescriptor d0(FqName fqName) {
        fqName.getClass();
        y0();
        return (PackageViewDescriptor) this.f72532k.invoke(fqName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
    public final KotlinBuiltIns g() {
        return this.f72527e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
    public final Collection m(FqName fqName, Function1 function1) {
        fqName.getClass();
        function1.getClass();
        y0();
        y0();
        return ((CompositePackageFragmentProvider) this.l.getF71699b()).m(fqName, function1);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
    public final List t0() {
        ModuleDependenciesImpl moduleDependenciesImpl = this.f72529h;
        if (moduleDependenciesImpl != null) {
            return moduleDependenciesImpl.f72526c;
        }
        String str = getName().f73687b;
        str.getClass();
        v40.k("Dependencies of module ", str, " were not set");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(DeclarationDescriptorImpl.b0(this));
        if (!this.f72531j) {
            sb.append(" !isValid");
        }
        sb.append(" packageFragmentProvider: ");
        PackageFragmentProvider packageFragmentProvider = this.f72530i;
        sb.append(packageFragmentProvider != null ? packageFragmentProvider.getClass().getSimpleName() : null);
        return sb.toString();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final Object v(DeclarationDescriptorVisitor declarationDescriptorVisitor, Object obj) {
        return declarationDescriptorVisitor.d(this, obj);
    }

    public final void y0() {
        if (this.f72531j) {
            return;
        }
        InvalidModuleNotifier invalidModuleNotifier = (InvalidModuleNotifier) C0(InvalidModuleExceptionKt.f72380a);
        if (invalidModuleNotifier != null) {
            invalidModuleNotifier.a();
        } else {
            throw new InvalidModuleException("Accessing invalid module descriptor " + this);
        }
    }

    public /* synthetic */ ModuleDescriptorImpl(Name name, StorageManager storageManager, KotlinBuiltIns kotlinBuiltIns, TargetPlatform targetPlatform, Map map, Name name2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(name, storageManager, kotlinBuiltIns, (i2 & 8) != 0 ? null : targetPlatform, (i2 & 16) != 0 ? MapsKt.c() : map, (i2 & 32) != 0 ? null : name2);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ModuleDescriptorImpl(Name name, StorageManager storageManager, KotlinBuiltIns kotlinBuiltIns, TargetPlatform targetPlatform) {
        this(name, storageManager, kotlinBuiltIns, targetPlatform, null, null, 48, null);
        name.getClass();
        storageManager.getClass();
        kotlinBuiltIns.getClass();
    }
}
