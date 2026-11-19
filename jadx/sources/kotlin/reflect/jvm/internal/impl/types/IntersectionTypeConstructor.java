package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.TypeIntersectionScope;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.model.IntersectionTypeConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
public final class IntersectionTypeConstructor implements TypeConstructor, IntersectionTypeConstructorMarker {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public KotlinType f74198b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinkedHashSet f74199c;
    public final int d;

    public IntersectionTypeConstructor(Collection<? extends KotlinType> collection) {
        collection.getClass();
        collection.isEmpty();
        LinkedHashSet linkedHashSet = new LinkedHashSet(collection);
        this.f74199c = linkedHashSet;
        this.d = linkedHashSet.hashCode();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final boolean A() {
        return false;
    }

    public final SimpleType a() {
        TypeAttributes.f74232c.getClass();
        TypeAttributes typeAttributes = TypeAttributes.d;
        EmptyList emptyList = EmptyList.f71768b;
        TypeIntersectionScope.f73946c.getClass();
        return KotlinTypeFactory.e(typeAttributes, this, emptyList, false, TypeIntersectionScope.Companion.a("member scope for intersection type", this.f74199c), new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor$$Lambda$2

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final IntersectionTypeConstructor f74202b;

            {
                this.f74202b = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                KotlinTypeRefiner kotlinTypeRefiner = (KotlinTypeRefiner) obj;
                kotlinTypeRefiner.getClass();
                IntersectionTypeConstructor intersectionTypeConstructor = this.f74202b;
                intersectionTypeConstructor.getClass();
                kotlinTypeRefiner.getClass();
                LinkedHashSet linkedHashSet = intersectionTypeConstructor.f74199c;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(linkedHashSet, 10));
                Iterator it = linkedHashSet.iterator();
                boolean z = false;
                while (it.hasNext()) {
                    arrayList.add(((KotlinType) it.next()).J0(kotlinTypeRefiner));
                    z = true;
                }
                IntersectionTypeConstructor intersectionTypeConstructor2 = null;
                if (z) {
                    KotlinType kotlinType = intersectionTypeConstructor.f74198b;
                    KotlinType kotlinTypeJ0 = kotlinType != null ? kotlinType.J0(kotlinTypeRefiner) : null;
                    IntersectionTypeConstructor intersectionTypeConstructor3 = new IntersectionTypeConstructor(new IntersectionTypeConstructor(arrayList).f74199c);
                    intersectionTypeConstructor3.f74198b = kotlinTypeJ0;
                    intersectionTypeConstructor2 = intersectionTypeConstructor3;
                }
                if (intersectionTypeConstructor2 != null) {
                    intersectionTypeConstructor = intersectionTypeConstructor2;
                }
                return intersectionTypeConstructor.a();
            }
        });
    }

    public final String b(final Function1 function1) {
        function1.getClass();
        return CollectionsKt.K(CollectionsKt.o0(this.f74199c, new Comparator() { // from class: kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor$makeDebugNameForIntersectionType$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                KotlinType kotlinType = (KotlinType) obj;
                kotlinType.getClass();
                Function1 function2 = function1;
                String string = function2.invoke(kotlinType).toString();
                KotlinType kotlinType2 = (KotlinType) obj2;
                kotlinType2.getClass();
                return ComparisonsKt.a(string, function2.invoke(kotlinType2).toString());
            }
        }), " & ", "{", "}", new Function1(function1) { // from class: kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final Function1 f74200b;

            {
                this.f74200b = function1;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                KotlinType kotlinType = (KotlinType) obj;
                kotlinType.getClass();
                return this.f74200b.invoke(kotlinType).toString();
            }
        }, 24);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IntersectionTypeConstructor)) {
            return false;
        }
        return Intrinsics.c(this.f74199c, ((IntersectionTypeConstructor) obj).f74199c);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final KotlinBuiltIns g() {
        KotlinBuiltIns kotlinBuiltInsG = ((KotlinType) this.f74199c.iterator().next()).H0().g();
        kotlinBuiltInsG.getClass();
        return kotlinBuiltInsG;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final List getParameters() {
        return EmptyList.f71768b;
    }

    public final int hashCode() {
        return this.d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final Collection i() {
        return this.f74199c;
    }

    public final String toString() {
        return b(new Function1() { // from class: kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor$$Lambda$1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                KotlinType kotlinType = (KotlinType) obj;
                kotlinType.getClass();
                return kotlinType.toString();
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final ClassifierDescriptor y() {
        return null;
    }
}
