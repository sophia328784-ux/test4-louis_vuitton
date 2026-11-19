package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.collections.ArraysKt___ArraysKt$asIterable$$inlined$Iterable$1;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters;
import kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupLocation;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.util.collectionUtils.ScopeUtilsKt;
import kotlin.reflect.jvm.internal.impl.utils.SmartList;

/* JADX INFO: loaded from: classes4.dex */
public final class ChainedMemberScope implements MemberScope {
    public static final Companion d = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f73905b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MemberScope[] f73906c;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static MemberScope a(Iterable iterable, String str) {
            iterable.getClass();
            SmartList smartList = new SmartList();
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                MemberScope memberScope = (MemberScope) it.next();
                if (memberScope != MemberScope.Empty.f73933b) {
                    if (memberScope instanceof ChainedMemberScope) {
                        CollectionsKt.k(smartList, ((ChainedMemberScope) memberScope).f73906c);
                    } else {
                        smartList.add(memberScope);
                    }
                }
            }
            return b(str, smartList);
        }

        public static MemberScope b(String str, SmartList smartList) {
            int i2 = smartList.f74392b;
            if (i2 != 0) {
                return i2 != 1 ? new ChainedMemberScope(str, (MemberScope[]) smartList.toArray(new MemberScope[0]), null) : (MemberScope) smartList.get(0);
            }
            return MemberScope.Empty.f73933b;
        }
    }

    public ChainedMemberScope(String str, MemberScope[] memberScopeArr, DefaultConstructorMarker defaultConstructorMarker) {
        this.f73905b = str;
        this.f73906c = memberScopeArr;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Set a() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (MemberScope memberScope : this.f73906c) {
            CollectionsKt.j(linkedHashSet, memberScope.a());
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Collection b(Name name, LookupLocation lookupLocation) {
        name.getClass();
        lookupLocation.getClass();
        MemberScope[] memberScopeArr = this.f73906c;
        int length = memberScopeArr.length;
        if (length == 0) {
            return EmptyList.f71768b;
        }
        if (length == 1) {
            return memberScopeArr[0].b(name, lookupLocation);
        }
        Collection collectionA = null;
        for (MemberScope memberScope : memberScopeArr) {
            collectionA = ScopeUtilsKt.a(collectionA, memberScope.b(name, lookupLocation));
        }
        return collectionA == null ? EmptySet.f71770b : collectionA;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Collection c(Name name, LookupLocation lookupLocation) {
        name.getClass();
        lookupLocation.getClass();
        MemberScope[] memberScopeArr = this.f73906c;
        int length = memberScopeArr.length;
        if (length == 0) {
            return EmptyList.f71768b;
        }
        if (length == 1) {
            return memberScopeArr[0].c(name, lookupLocation);
        }
        Collection collectionA = null;
        for (MemberScope memberScope : memberScopeArr) {
            collectionA = ScopeUtilsKt.a(collectionA, memberScope.c(name, lookupLocation));
        }
        return collectionA == null ? EmptySet.f71770b : collectionA;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Set d() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (MemberScope memberScope : this.f73906c) {
            CollectionsKt.j(linkedHashSet, memberScope.d());
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Set e() {
        MemberScope[] memberScopeArr = this.f73906c;
        memberScopeArr.getClass();
        return MemberScopeKt.a(memberScopeArr.length == 0 ? EmptyList.f71768b : new ArraysKt___ArraysKt$asIterable$$inlined$Iterable$1(memberScopeArr));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public final ClassifierDescriptor f(Name name, LookupLocation lookupLocation) {
        name.getClass();
        lookupLocation.getClass();
        ClassifierDescriptor classifierDescriptor = null;
        for (MemberScope memberScope : this.f73906c) {
            ClassifierDescriptor classifierDescriptorF = memberScope.f(name, lookupLocation);
            if (classifierDescriptorF != null) {
                if (!(classifierDescriptorF instanceof ClassifierDescriptorWithTypeParameters) || !((MemberDescriptor) classifierDescriptorF).c0()) {
                    return classifierDescriptorF;
                }
                if (classifierDescriptor == null) {
                    classifierDescriptor = classifierDescriptorF;
                }
            }
        }
        return classifierDescriptor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public final Collection g(DescriptorKindFilter descriptorKindFilter, Function1 function1) {
        descriptorKindFilter.getClass();
        function1.getClass();
        MemberScope[] memberScopeArr = this.f73906c;
        int length = memberScopeArr.length;
        if (length == 0) {
            return EmptyList.f71768b;
        }
        if (length == 1) {
            return memberScopeArr[0].g(descriptorKindFilter, function1);
        }
        Collection collectionA = null;
        for (MemberScope memberScope : memberScopeArr) {
            collectionA = ScopeUtilsKt.a(collectionA, memberScope.g(descriptorKindFilter, function1));
        }
        return collectionA == null ? EmptySet.f71770b : collectionA;
    }

    public final String toString() {
        return this.f73905b;
    }
}
