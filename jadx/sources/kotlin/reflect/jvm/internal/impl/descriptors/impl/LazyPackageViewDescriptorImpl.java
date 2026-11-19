package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import defpackage.tr;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorVisitor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderKt;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageViewDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.ChainedMemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.LazyScopeAdapter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;

/* JADX INFO: loaded from: classes4.dex */
public class LazyPackageViewDescriptorImpl extends DeclarationDescriptorImpl implements PackageViewDescriptor {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ KProperty[] f72510i;
    public final ModuleDescriptorImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FqName f72511e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final NotNullLazyValue f72512f;
    public final NotNullLazyValue g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final LazyScopeAdapter f72513h;

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(LazyPackageViewDescriptorImpl.class, "fragments", "getFragments()Ljava/util/List;", 0);
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        f72510i = new KProperty[]{reflectionFactory.h(propertyReference1Impl), tr.q(LazyPackageViewDescriptorImpl.class, "empty", "getEmpty()Z", 0, reflectionFactory)};
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public LazyPackageViewDescriptorImpl(ModuleDescriptorImpl moduleDescriptorImpl, FqName fqName, StorageManager storageManager) {
        moduleDescriptorImpl.getClass();
        fqName.getClass();
        storageManager.getClass();
        FqNameUnsafe fqNameUnsafe = fqName.f73679a;
        super(Annotations.Companion.f72432a, fqNameUnsafe.c() ? FqNameUnsafe.f73682f : fqNameUnsafe.g());
        this.d = moduleDescriptorImpl;
        this.f72511e = fqName;
        this.f72512f = storageManager.c(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.LazyPackageViewDescriptorImpl$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final LazyPackageViewDescriptorImpl f72514b;

            {
                this.f72514b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                LazyPackageViewDescriptorImpl lazyPackageViewDescriptorImpl = this.f72514b;
                ModuleDescriptorImpl moduleDescriptorImpl2 = lazyPackageViewDescriptorImpl.d;
                moduleDescriptorImpl2.y0();
                return PackageFragmentProviderKt.c((CompositePackageFragmentProvider) moduleDescriptorImpl2.l.getF71699b(), lazyPackageViewDescriptorImpl.f72511e);
            }
        });
        this.g = storageManager.c(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.LazyPackageViewDescriptorImpl$$Lambda$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final LazyPackageViewDescriptorImpl f72515b;

            {
                this.f72515b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                LazyPackageViewDescriptorImpl lazyPackageViewDescriptorImpl = this.f72515b;
                ModuleDescriptorImpl moduleDescriptorImpl2 = lazyPackageViewDescriptorImpl.d;
                moduleDescriptorImpl2.y0();
                return Boolean.valueOf(PackageFragmentProviderKt.b((CompositePackageFragmentProvider) moduleDescriptorImpl2.l.getF71699b(), lazyPackageViewDescriptorImpl.f72511e));
            }
        });
        this.f72513h = new LazyScopeAdapter(storageManager, new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.LazyPackageViewDescriptorImpl$$Lambda$2

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final LazyPackageViewDescriptorImpl f72516b;

            {
                this.f72516b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                KProperty[] kPropertyArr = LazyPackageViewDescriptorImpl.f72510i;
                LazyPackageViewDescriptorImpl lazyPackageViewDescriptorImpl = this.f72516b;
                boolean zIsEmpty = lazyPackageViewDescriptorImpl.isEmpty();
                FqName fqName2 = lazyPackageViewDescriptorImpl.f72511e;
                ModuleDescriptorImpl moduleDescriptorImpl2 = lazyPackageViewDescriptorImpl.d;
                if (zIsEmpty) {
                    return MemberScope.Empty.f73933b;
                }
                List listA0 = lazyPackageViewDescriptorImpl.a0();
                ArrayList arrayList = new ArrayList(CollectionsKt.t(listA0, 10));
                Iterator it = listA0.iterator();
                while (it.hasNext()) {
                    arrayList.add(((PackageFragmentDescriptor) it.next()).n());
                }
                ArrayList arrayListX = CollectionsKt.X(new SubpackagesScope(moduleDescriptorImpl2, fqName2), arrayList);
                ChainedMemberScope.Companion companion = ChainedMemberScope.d;
                String str = "package view scope for " + fqName2 + " in " + moduleDescriptorImpl2.getName();
                companion.getClass();
                return ChainedMemberScope.Companion.a(arrayListX, str);
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageViewDescriptor
    public final List a0() {
        return (List) StorageKt.a(this.f72512f, f72510i[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageViewDescriptor
    public final FqName c() {
        return this.f72511e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final DeclarationDescriptor d() {
        FqName fqName = this.f72511e;
        if (fqName.f73679a.c()) {
            return null;
        }
        return this.d.d0(fqName.b());
    }

    public final boolean equals(Object obj) {
        PackageViewDescriptor packageViewDescriptor = obj instanceof PackageViewDescriptor ? (PackageViewDescriptor) obj : null;
        return packageViewDescriptor != null && Intrinsics.c(this.f72511e, packageViewDescriptor.c()) && Intrinsics.c(this.d, packageViewDescriptor.v0());
    }

    public final int hashCode() {
        return this.f72511e.hashCode() + (this.d.hashCode() * 31);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageViewDescriptor
    public final boolean isEmpty() {
        return ((Boolean) StorageKt.a(this.g, f72510i[1])).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageViewDescriptor
    public final MemberScope n() {
        return this.f72513h;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final Object v(DeclarationDescriptorVisitor declarationDescriptorVisitor, Object obj) {
        return declarationDescriptorVisitor.a(this, obj);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageViewDescriptor
    public final ModuleDescriptorImpl v0() {
        return this.d;
    }
}
