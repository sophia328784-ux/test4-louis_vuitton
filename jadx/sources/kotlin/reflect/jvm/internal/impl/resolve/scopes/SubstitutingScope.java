package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import defpackage.mt;
import defpackage.v40;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Substitutable;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupLocation;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructorKt;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;

/* JADX INFO: loaded from: classes4.dex */
public final class SubstitutingScope implements MemberScope {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MemberScope f73940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Lazy f73941c;
    public final TypeSubstitutor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public HashMap f73942e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Lazy f73943f;

    public SubstitutingScope(MemberScope memberScope, final TypeSubstitutor typeSubstitutor) {
        memberScope.getClass();
        typeSubstitutor.getClass();
        this.f73940b = memberScope;
        this.f73941c = LazyKt.b(new Function0(typeSubstitutor) { // from class: kotlin.reflect.jvm.internal.impl.resolve.scopes.SubstitutingScope$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final TypeSubstitutor f73944b;

            {
                this.f73944b = typeSubstitutor;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                TypeSubstitution typeSubstitutionG = this.f73944b.g();
                typeSubstitutionG.getClass();
                return TypeSubstitutor.e(typeSubstitutionG);
            }
        });
        TypeSubstitution typeSubstitutionG = typeSubstitutor.g();
        typeSubstitutionG.getClass();
        this.d = TypeSubstitutor.e(CapturedTypeConstructorKt.b(typeSubstitutionG));
        this.f73943f = LazyKt.b(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.resolve.scopes.SubstitutingScope$$Lambda$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final SubstitutingScope f73945b;

            {
                this.f73945b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                SubstitutingScope substitutingScope = this.f73945b;
                return substitutingScope.h(ResolutionScope.DefaultImpls.a(substitutingScope.f73940b, null, 3));
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Set a() {
        return this.f73940b.a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Collection b(Name name, LookupLocation lookupLocation) {
        name.getClass();
        lookupLocation.getClass();
        return h(this.f73940b.b(name, lookupLocation));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Collection c(Name name, LookupLocation lookupLocation) {
        name.getClass();
        lookupLocation.getClass();
        return h(this.f73940b.c(name, lookupLocation));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Set d() {
        return this.f73940b.d();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Set e() {
        return this.f73940b.e();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public final ClassifierDescriptor f(Name name, LookupLocation lookupLocation) {
        name.getClass();
        lookupLocation.getClass();
        ClassifierDescriptor classifierDescriptorF = this.f73940b.f(name, lookupLocation);
        if (classifierDescriptorF != null) {
            return (ClassifierDescriptor) i(classifierDescriptorF);
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public final Collection g(DescriptorKindFilter descriptorKindFilter, Function1 function1) {
        descriptorKindFilter.getClass();
        function1.getClass();
        return (Collection) this.f73943f.getF71699b();
    }

    public final Collection h(Collection collection) {
        if (this.d.f74261a.e() || collection.isEmpty()) {
            return collection;
        }
        int size = collection.size();
        LinkedHashSet linkedHashSet = new LinkedHashSet(size >= 3 ? (size / 3) + size + 1 : 3);
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(i((DeclarationDescriptor) it.next()));
        }
        return linkedHashSet;
    }

    public final DeclarationDescriptor i(DeclarationDescriptor declarationDescriptor) {
        TypeSubstitutor typeSubstitutor = this.d;
        if (typeSubstitutor.f74261a.e()) {
            return declarationDescriptor;
        }
        if (this.f73942e == null) {
            this.f73942e = new HashMap();
        }
        HashMap map = this.f73942e;
        map.getClass();
        Object objB = map.get(declarationDescriptor);
        if (objB == null) {
            if (!(declarationDescriptor instanceof Substitutable)) {
                mt.f(declarationDescriptor, "Unknown descriptor in scope: ");
                return null;
            }
            objB = ((Substitutable) declarationDescriptor).b(typeSubstitutor);
            if (objB == null) {
                v40.k("We expect that no conflict should happen while substitution is guaranteed to generate invariant projection, but ", declarationDescriptor, " substitution fails");
                return null;
            }
            map.put(declarationDescriptor, objB);
        }
        return (DeclarationDescriptor) objB;
    }
}
