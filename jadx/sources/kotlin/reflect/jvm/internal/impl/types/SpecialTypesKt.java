package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.LinkedHashSet;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class SpecialTypesKt {
    public static final UnwrappedType a(UnwrappedType unwrappedType, boolean z) {
        unwrappedType.getClass();
        DefinitelyNotNullType definitelyNotNullTypeA = DefinitelyNotNullType.Companion.a(DefinitelyNotNullType.f74182e, unwrappedType, z);
        if (definitelyNotNullTypeA != null) {
            return definitelyNotNullTypeA;
        }
        SimpleType simpleTypeB = b(unwrappedType);
        return simpleTypeB != null ? simpleTypeB : unwrappedType.L0(false);
    }

    public static final SimpleType b(UnwrappedType unwrappedType) {
        IntersectionTypeConstructor intersectionTypeConstructor;
        TypeConstructor typeConstructorH0 = unwrappedType.H0();
        IntersectionTypeConstructor intersectionTypeConstructor2 = typeConstructorH0 instanceof IntersectionTypeConstructor ? (IntersectionTypeConstructor) typeConstructorH0 : null;
        if (intersectionTypeConstructor2 != null) {
            LinkedHashSet<KotlinType> linkedHashSet = intersectionTypeConstructor2.f74199c;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(linkedHashSet, 10));
            boolean z = false;
            for (KotlinType kotlinTypeA : linkedHashSet) {
                if (TypeUtils.g(kotlinTypeA)) {
                    kotlinTypeA = a(kotlinTypeA.K0(), false);
                    z = true;
                }
                arrayList.add(kotlinTypeA);
            }
            if (z) {
                KotlinType kotlinTypeA2 = intersectionTypeConstructor2.f74198b;
                if (kotlinTypeA2 == null) {
                    kotlinTypeA2 = null;
                } else if (TypeUtils.g(kotlinTypeA2)) {
                    kotlinTypeA2 = a(kotlinTypeA2.K0(), false);
                }
                intersectionTypeConstructor = new IntersectionTypeConstructor(new IntersectionTypeConstructor(arrayList).f74199c);
                intersectionTypeConstructor.f74198b = kotlinTypeA2;
            } else {
                intersectionTypeConstructor = null;
            }
            if (intersectionTypeConstructor != null) {
                return intersectionTypeConstructor.a();
            }
        }
        return null;
    }

    public static final SimpleType c(SimpleType simpleType, SimpleType simpleType2) {
        simpleType.getClass();
        simpleType2.getClass();
        return KotlinTypeKt.a(simpleType) ? simpleType : new AbbreviatedType(simpleType, simpleType2);
    }
}
