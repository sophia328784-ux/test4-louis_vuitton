package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import com.sensorsdata.analytics.android.sdk.plugin.property.beans.SAPropertyFilter;
import defpackage.tr;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupLocation;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.utils.SmartList;

/* JADX INFO: loaded from: classes4.dex */
public final class StaticScopeForKotlinEnum extends MemberScopeImpl {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ KProperty[] f73934f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ClassDescriptor f73935b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f73936c;
    public final NotNullLazyValue d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final NotNullLazyValue f73937e;

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(StaticScopeForKotlinEnum.class, "functions", "getFunctions()Ljava/util/List;", 0);
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        f73934f = new KProperty[]{reflectionFactory.h(propertyReference1Impl), tr.q(StaticScopeForKotlinEnum.class, SAPropertyFilter.PROPERTIES, "getProperties()Ljava/util/List;", 0, reflectionFactory)};
    }

    public StaticScopeForKotlinEnum(StorageManager storageManager, ClassDescriptor classDescriptor, boolean z) {
        storageManager.getClass();
        classDescriptor.getClass();
        this.f73935b = classDescriptor;
        this.f73936c = z;
        classDescriptor.e();
        ClassKind classKind = ClassKind.CLASS;
        this.d = storageManager.c(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.resolve.scopes.StaticScopeForKotlinEnum$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final StaticScopeForKotlinEnum f73938b;

            {
                this.f73938b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                StaticScopeForKotlinEnum staticScopeForKotlinEnum = this.f73938b;
                return CollectionsKt.P(DescriptorFactory.f(staticScopeForKotlinEnum.f73935b), DescriptorFactory.g(staticScopeForKotlinEnum.f73935b));
            }
        });
        this.f73937e = storageManager.c(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.resolve.scopes.StaticScopeForKotlinEnum$$Lambda$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final StaticScopeForKotlinEnum f73939b;

            {
                this.f73939b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                StaticScopeForKotlinEnum staticScopeForKotlinEnum = this.f73939b;
                return staticScopeForKotlinEnum.f73936c ? CollectionsKt.Q(DescriptorFactory.e(staticScopeForKotlinEnum.f73935b)) : EmptyList.f71768b;
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Collection b(Name name, LookupLocation lookupLocation) {
        name.getClass();
        lookupLocation.getClass();
        List list = (List) StorageKt.a(this.d, f73934f[0]);
        SmartList smartList = new SmartList();
        for (Object obj : list) {
            if (Intrinsics.c(((SimpleFunctionDescriptor) obj).getName(), name)) {
                smartList.add(obj);
            }
        }
        return smartList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Collection c(Name name, LookupLocation lookupLocation) {
        name.getClass();
        lookupLocation.getClass();
        List list = (List) StorageKt.a(this.f73937e, f73934f[1]);
        SmartList smartList = new SmartList();
        for (Object obj : list) {
            if (Intrinsics.c(((PropertyDescriptor) obj).getName(), name)) {
                smartList.add(obj);
            }
        }
        return smartList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public final ClassifierDescriptor f(Name name, LookupLocation lookupLocation) {
        name.getClass();
        lookupLocation.getClass();
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public final Collection g(DescriptorKindFilter descriptorKindFilter, Function1 function1) {
        descriptorKindFilter.getClass();
        function1.getClass();
        KProperty[] kPropertyArr = f73934f;
        return CollectionsKt.Y((List) StorageKt.a(this.d, kPropertyArr[0]), (List) StorageKt.a(this.f73937e, kPropertyArr[1]));
    }
}
