package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupLocation;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.NonReportingOverrideStrategy;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.utils.SmartList;

/* JADX INFO: loaded from: classes4.dex */
public abstract class GivenFunctionsMemberScope extends MemberScopeImpl {
    public static final /* synthetic */ KProperty[] d = {Reflection.f71922a.h(new PropertyReference1Impl(GivenFunctionsMemberScope.class, "allDescriptors", "getAllDescriptors()Ljava/util/List;", 0))};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ClassDescriptor f73921b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final NotNullLazyValue f73922c;

    public GivenFunctionsMemberScope(StorageManager storageManager, ClassDescriptor classDescriptor) {
        storageManager.getClass();
        classDescriptor.getClass();
        this.f73921b = classDescriptor;
        this.f73922c = storageManager.c(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.resolve.scopes.GivenFunctionsMemberScope$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final GivenFunctionsMemberScope f73923b;

            {
                this.f73923b = this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r9v0, types: [kotlin.collections.EmptyList] */
            /* JADX WARN: Type inference failed for: r9v1 */
            /* JADX WARN: Type inference failed for: r9v3, types: [java.util.ArrayList] */
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                ?? arrayList;
                KProperty[] kPropertyArr = GivenFunctionsMemberScope.d;
                final GivenFunctionsMemberScope givenFunctionsMemberScope = this.f73923b;
                List listH = givenFunctionsMemberScope.h();
                List list = listH;
                final ArrayList arrayList2 = new ArrayList(3);
                Collection collectionI = givenFunctionsMemberScope.f73921b.j().i();
                collectionI.getClass();
                ArrayList arrayList3 = new ArrayList();
                Iterator it = collectionI.iterator();
                while (it.hasNext()) {
                    CollectionsKt.j(arrayList3, ResolutionScope.DefaultImpls.a(((KotlinType) it.next()).n(), null, 3));
                }
                ArrayList arrayList4 = new ArrayList();
                for (Object obj : arrayList3) {
                    if (obj instanceof CallableMemberDescriptor) {
                        arrayList4.add(obj);
                    }
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (Object obj2 : arrayList4) {
                    Name name = ((CallableMemberDescriptor) obj2).getName();
                    Object arrayList5 = linkedHashMap.get(name);
                    if (arrayList5 == null) {
                        arrayList5 = new ArrayList();
                        linkedHashMap.put(name, arrayList5);
                    }
                    ((List) arrayList5).add(obj2);
                }
                for (Map.Entry entry : linkedHashMap.entrySet()) {
                    Object key = entry.getKey();
                    key.getClass();
                    Name name2 = (Name) key;
                    List list2 = (List) entry.getValue();
                    LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                    for (Object obj3 : list2) {
                        Boolean boolValueOf = Boolean.valueOf(((CallableMemberDescriptor) obj3) instanceof FunctionDescriptor);
                        Object arrayList6 = linkedHashMap2.get(boolValueOf);
                        if (arrayList6 == null) {
                            arrayList6 = new ArrayList();
                            linkedHashMap2.put(boolValueOf, arrayList6);
                        }
                        ((List) arrayList6).add(obj3);
                    }
                    for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
                        boolean zBooleanValue = ((Boolean) entry2.getKey()).booleanValue();
                        List list3 = (List) entry2.getValue();
                        OverridingUtil overridingUtil = OverridingUtil.f73837e;
                        List list4 = list3;
                        if (zBooleanValue) {
                            arrayList = new ArrayList();
                            for (Object obj4 : listH) {
                                if (Intrinsics.c(((FunctionDescriptor) obj4).getName(), name2)) {
                                    arrayList.add(obj4);
                                }
                            }
                        } else {
                            arrayList = EmptyList.f71768b;
                        }
                        overridingUtil.h(name2, list4, (Collection) arrayList, givenFunctionsMemberScope.f73921b, new NonReportingOverrideStrategy() { // from class: kotlin.reflect.jvm.internal.impl.resolve.scopes.GivenFunctionsMemberScope$createFakeOverrides$4
                            @Override // kotlin.reflect.jvm.internal.impl.resolve.OverridingStrategy
                            public final void a(CallableMemberDescriptor callableMemberDescriptor) {
                                callableMemberDescriptor.getClass();
                                OverridingUtil.r(callableMemberDescriptor, null);
                                arrayList2.add(callableMemberDescriptor);
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.resolve.NonReportingOverrideStrategy
                            public final void c(CallableMemberDescriptor callableMemberDescriptor, CallableMemberDescriptor callableMemberDescriptor2) {
                                callableMemberDescriptor2.getClass();
                                throw new IllegalStateException(("Conflict in scope of " + givenFunctionsMemberScope.f73921b + ": " + callableMemberDescriptor + " vs " + callableMemberDescriptor2).toString());
                            }
                        });
                    }
                }
                return CollectionsKt.Y(list, kotlin.reflect.jvm.internal.impl.utils.CollectionsKt.a(arrayList2));
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Collection b(Name name, LookupLocation lookupLocation) {
        Collection collection;
        name.getClass();
        lookupLocation.getClass();
        List list = (List) StorageKt.a(this.f73922c, d[0]);
        if (list.isEmpty()) {
            collection = EmptyList.f71768b;
        } else {
            SmartList smartList = new SmartList();
            for (Object obj : list) {
                if ((obj instanceof SimpleFunctionDescriptor) && Intrinsics.c(((SimpleFunctionDescriptor) obj).getName(), name)) {
                    smartList.add(obj);
                }
            }
            collection = smartList;
        }
        return collection;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Collection c(Name name, LookupLocation lookupLocation) {
        Collection collection;
        name.getClass();
        lookupLocation.getClass();
        List list = (List) StorageKt.a(this.f73922c, d[0]);
        if (list.isEmpty()) {
            collection = EmptyList.f71768b;
        } else {
            SmartList smartList = new SmartList();
            for (Object obj : list) {
                if ((obj instanceof PropertyDescriptor) && Intrinsics.c(((PropertyDescriptor) obj).getName(), name)) {
                    smartList.add(obj);
                }
            }
            collection = smartList;
        }
        return collection;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public final Collection g(DescriptorKindFilter descriptorKindFilter, Function1 function1) {
        descriptorKindFilter.getClass();
        function1.getClass();
        if (!descriptorKindFilter.a(DescriptorKindFilter.m.f73918b)) {
            return EmptyList.f71768b;
        }
        return (List) StorageKt.a(this.f73922c, d[0]);
    }

    public abstract List h();
}
