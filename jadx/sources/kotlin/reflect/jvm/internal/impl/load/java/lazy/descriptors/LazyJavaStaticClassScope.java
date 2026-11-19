package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupLocation;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.java.components.DescriptorResolverUtils;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaClassDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.UtilKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.JavaResolverComponents;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaResolverContext;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaMember;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.utils.DFS;

/* JADX INFO: loaded from: classes4.dex */
public final class LazyJavaStaticClassScope extends LazyJavaStaticScope {
    public static final /* synthetic */ int p = 0;
    public final JavaClass n;
    public final JavaClassDescriptor o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaStaticClassScope(LazyJavaResolverContext lazyJavaResolverContext, JavaClass javaClass, JavaClassDescriptor javaClassDescriptor) {
        super(lazyJavaResolverContext);
        lazyJavaResolverContext.getClass();
        javaClass.getClass();
        javaClassDescriptor.getClass();
        this.n = javaClass;
        this.o = javaClassDescriptor;
    }

    public static PropertyDescriptor v(PropertyDescriptor propertyDescriptor) {
        CallableMemberDescriptor.Kind kindE = propertyDescriptor.e();
        kindE.getClass();
        if (kindE != CallableMemberDescriptor.Kind.FAKE_OVERRIDE) {
            return propertyDescriptor;
        }
        Collection collectionI = propertyDescriptor.i();
        collectionI.getClass();
        Collection<PropertyDescriptor> collection = collectionI;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(collection, 10));
        for (PropertyDescriptor propertyDescriptor2 : collection) {
            propertyDescriptor2.getClass();
            arrayList.add(v(propertyDescriptor2));
        }
        return (PropertyDescriptor) CollectionsKt.h0(CollectionsKt.y0(CollectionsKt.A0(arrayList)));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public final ClassifierDescriptor f(Name name, LookupLocation lookupLocation) {
        name.getClass();
        lookupLocation.getClass();
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final Set h(DescriptorKindFilter descriptorKindFilter, Function1 function1) {
        descriptorKindFilter.getClass();
        return EmptySet.f71770b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final Set i(DescriptorKindFilter descriptorKindFilter, Function1 function1) {
        descriptorKindFilter.getClass();
        LinkedHashSet linkedHashSetA0 = CollectionsKt.A0(((DeclaredMemberIndex) this.f73034e.mo47invoke()).a());
        JavaClassDescriptor javaClassDescriptor = this.o;
        LazyJavaStaticClassScope lazyJavaStaticClassScopeB = UtilKt.b(javaClassDescriptor);
        Set setA = lazyJavaStaticClassScopeB != null ? lazyJavaStaticClassScopeB.a() : null;
        if (setA == null) {
            setA = EmptySet.f71770b;
        }
        linkedHashSetA0.addAll(setA);
        if (this.n.s()) {
            linkedHashSetA0.addAll(CollectionsKt.P(StandardNames.f72264c, StandardNames.f72262a));
        }
        LazyJavaResolverContext lazyJavaResolverContext = this.f73032b;
        linkedHashSetA0.addAll(lazyJavaResolverContext.f72962a.x.g(javaClassDescriptor, lazyJavaResolverContext));
        return linkedHashSetA0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final void j(ArrayList arrayList, Name name) {
        name.getClass();
        LazyJavaResolverContext lazyJavaResolverContext = this.f73032b;
        lazyJavaResolverContext.f72962a.x.e(this.o, name, arrayList, lazyJavaResolverContext);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final DeclaredMemberIndex k() {
        return new ClassDeclaredMemberIndex(this.n, new Function1() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaStaticClassScope$$Lambda$0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                JavaMember javaMember = (JavaMember) obj;
                int i2 = LazyJavaStaticClassScope.p;
                javaMember.getClass();
                return Boolean.valueOf(javaMember.isStatic());
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final void m(LinkedHashSet linkedHashSet, Name name) {
        name.getClass();
        JavaClassDescriptor javaClassDescriptor = this.o;
        LazyJavaStaticClassScope lazyJavaStaticClassScopeB = UtilKt.b(javaClassDescriptor);
        Collection collectionB0 = lazyJavaStaticClassScopeB == null ? EmptySet.f71770b : CollectionsKt.B0(lazyJavaStaticClassScopeB.b(name, NoLookupLocation.WHEN_GET_SUPER_MEMBERS));
        JavaResolverComponents javaResolverComponents = this.f73032b.f72962a;
        linkedHashSet.addAll(DescriptorResolverUtils.e(linkedHashSet, collectionB0, this.o, name, javaResolverComponents.u.a(), javaResolverComponents.f72948f));
        if (this.n.s()) {
            if (name.equals(StandardNames.f72264c)) {
                linkedHashSet.add(DescriptorFactory.f(javaClassDescriptor));
            } else if (name.equals(StandardNames.f72262a)) {
                linkedHashSet.add(DescriptorFactory.g(javaClassDescriptor));
            }
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaStaticScope, kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final void n(ArrayList arrayList, final Name name) {
        Name name2;
        ArrayList arrayList2;
        PropertyDescriptorImpl propertyDescriptorImplE;
        name.getClass();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Function1 function1 = new Function1(name) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaStaticClassScope$$Lambda$2

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final Name f73063b;

            {
                this.f73063b = name;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                MemberScope memberScope = (MemberScope) obj;
                int i2 = LazyJavaStaticClassScope.p;
                memberScope.getClass();
                return memberScope.c(this.f73063b, NoLookupLocation.WHEN_GET_SUPER_MEMBERS);
            }
        };
        JavaClassDescriptor javaClassDescriptor = this.o;
        DFS.b(CollectionsKt.O(javaClassDescriptor), LazyJavaStaticClassScope$$Lambda$3.f73064a, new LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$2(javaClassDescriptor, linkedHashSet, function1));
        boolean zIsEmpty = arrayList.isEmpty();
        LazyJavaResolverContext lazyJavaResolverContext = this.f73032b;
        if (zIsEmpty) {
            ArrayList arrayList3 = arrayList;
            name2 = name;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj : linkedHashSet) {
                PropertyDescriptor propertyDescriptorV = v((PropertyDescriptor) obj);
                Object arrayList4 = linkedHashMap.get(propertyDescriptorV);
                if (arrayList4 == null) {
                    arrayList4 = new ArrayList();
                    linkedHashMap.put(propertyDescriptorV, arrayList4);
                }
                ((List) arrayList4).add(obj);
            }
            ArrayList arrayList5 = new ArrayList();
            Iterator it = linkedHashMap.entrySet().iterator();
            while (it.hasNext()) {
                Collection collection = (Collection) ((Map.Entry) it.next()).getValue();
                JavaResolverComponents javaResolverComponents = lazyJavaResolverContext.f72962a;
                ArrayList arrayList6 = arrayList3;
                CollectionsKt.j(arrayList5, DescriptorResolverUtils.e(arrayList6, collection, this.o, name2, javaResolverComponents.u.a(), javaResolverComponents.f72948f));
                arrayList3 = arrayList6;
            }
            arrayList2 = arrayList3;
            arrayList2.addAll(arrayList5);
        } else {
            JavaResolverComponents javaResolverComponents2 = lazyJavaResolverContext.f72962a;
            name2 = name;
            arrayList.addAll(DescriptorResolverUtils.e(arrayList, linkedHashSet, this.o, name2, javaResolverComponents2.u.a(), javaResolverComponents2.f72948f));
            arrayList2 = arrayList;
        }
        if (this.n.s() && name2.equals(StandardNames.f72263b) && (propertyDescriptorImplE = DescriptorFactory.e(javaClassDescriptor)) != null) {
            arrayList2.add(propertyDescriptorImplE);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final Set o(DescriptorKindFilter descriptorKindFilter) {
        descriptorKindFilter.getClass();
        LinkedHashSet linkedHashSetA0 = CollectionsKt.A0(((DeclaredMemberIndex) this.f73034e.mo47invoke()).c());
        LazyJavaStaticClassScope$$Lambda$1 lazyJavaStaticClassScope$$Lambda$1 = new Function1() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaStaticClassScope$$Lambda$1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                MemberScope memberScope = (MemberScope) obj;
                int i2 = LazyJavaStaticClassScope.p;
                memberScope.getClass();
                return memberScope.d();
            }
        };
        JavaClassDescriptor javaClassDescriptor = this.o;
        DFS.b(CollectionsKt.O(javaClassDescriptor), LazyJavaStaticClassScope$$Lambda$3.f73064a, new LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$2(javaClassDescriptor, linkedHashSetA0, lazyJavaStaticClassScope$$Lambda$1));
        if (this.n.s()) {
            linkedHashSetA0.add(StandardNames.f72263b);
        }
        return linkedHashSetA0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    public final DeclarationDescriptor q() {
        return this.o;
    }
}
