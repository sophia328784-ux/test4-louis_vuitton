package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupLocation;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.util.collectionUtils.ScopeUtilsKt;
import kotlin.reflect.jvm.internal.impl.utils.SmartList;

/* JADX INFO: loaded from: classes4.dex */
public final class TypeIntersectionScope extends AbstractScopeAdapter {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f73946c = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MemberScope f73947b;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static MemberScope a(String str, Collection collection) {
            collection.getClass();
            Collection collection2 = collection;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(collection2, 10));
            Iterator it = collection2.iterator();
            while (it.hasNext()) {
                arrayList.add(((KotlinType) it.next()).n());
            }
            SmartList smartListB = ScopeUtilsKt.b(arrayList);
            ChainedMemberScope.d.getClass();
            MemberScope memberScopeB = ChainedMemberScope.Companion.b(str, smartListB);
            return smartListB.f74392b <= 1 ? memberScopeB : new TypeIntersectionScope(str, memberScopeB, null);
        }
    }

    public TypeIntersectionScope(String str, MemberScope memberScope, DefaultConstructorMarker defaultConstructorMarker) {
        this.f73947b = memberScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.AbstractScopeAdapter, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Collection b(Name name, LookupLocation lookupLocation) {
        name.getClass();
        lookupLocation.getClass();
        return OverridingUtilsKt.a(super.b(name, lookupLocation), new Function1() { // from class: kotlin.reflect.jvm.internal.impl.resolve.scopes.TypeIntersectionScope$$Lambda$0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SimpleFunctionDescriptor simpleFunctionDescriptor = (SimpleFunctionDescriptor) obj;
                TypeIntersectionScope.Companion companion = TypeIntersectionScope.f73946c;
                simpleFunctionDescriptor.getClass();
                return simpleFunctionDescriptor;
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.AbstractScopeAdapter, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Collection c(Name name, LookupLocation lookupLocation) {
        name.getClass();
        lookupLocation.getClass();
        return OverridingUtilsKt.a(super.c(name, lookupLocation), new Function1() { // from class: kotlin.reflect.jvm.internal.impl.resolve.scopes.TypeIntersectionScope$$Lambda$1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                PropertyDescriptor propertyDescriptor = (PropertyDescriptor) obj;
                TypeIntersectionScope.Companion companion = TypeIntersectionScope.f73946c;
                propertyDescriptor.getClass();
                return propertyDescriptor;
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.AbstractScopeAdapter, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public final Collection g(DescriptorKindFilter descriptorKindFilter, Function1 function1) {
        descriptorKindFilter.getClass();
        function1.getClass();
        Collection collectionG = super.g(descriptorKindFilter, function1);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : collectionG) {
            if (((DeclarationDescriptor) obj) instanceof CallableDescriptor) {
                arrayList.add(obj);
            } else {
                arrayList2.add(obj);
            }
        }
        Pair pair = new Pair(arrayList, arrayList2);
        List list = (List) pair.f71705b;
        List list2 = (List) pair.f71706c;
        list.getClass();
        return CollectionsKt.Y(OverridingUtilsKt.a(list, new Function1() { // from class: kotlin.reflect.jvm.internal.impl.resolve.scopes.TypeIntersectionScope$$Lambda$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                CallableDescriptor callableDescriptor = (CallableDescriptor) obj2;
                TypeIntersectionScope.Companion companion = TypeIntersectionScope.f73946c;
                callableDescriptor.getClass();
                return callableDescriptor;
            }
        }), list2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.AbstractScopeAdapter
    public final MemberScope i() {
        return this.f73947b;
    }
}
