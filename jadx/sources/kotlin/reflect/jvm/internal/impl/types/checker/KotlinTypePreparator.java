package kotlin.reflect.jvm.internal.impl.types.checker;

import defpackage.md;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import kotlin.collections.CollectionsKt;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructorImpl;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypePreparator;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.TypeWithEnhancementKt;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;

/* JADX INFO: loaded from: classes4.dex */
public abstract class KotlinTypePreparator extends AbstractTypePreparator {

    public static final class Default extends KotlinTypePreparator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Default f74270a = new Default();
    }

    public static SimpleType c(SimpleType simpleType) {
        KotlinType type;
        TypeConstructor typeConstructorH0 = simpleType.H0();
        IntersectionTypeConstructor intersectionTypeConstructor = null;
        unwrappedTypeK0 = null;
        UnwrappedType unwrappedTypeK0 = null;
        if (typeConstructorH0 instanceof CapturedTypeConstructorImpl) {
            CapturedTypeConstructorImpl capturedTypeConstructorImpl = (CapturedTypeConstructorImpl) typeConstructorH0;
            TypeProjection typeProjection = capturedTypeConstructorImpl.f73863b;
            if (typeProjection.b() != Variance.IN_VARIANCE) {
                typeProjection = null;
            }
            if (typeProjection != null && (type = typeProjection.getType()) != null) {
                unwrappedTypeK0 = type.K0();
            }
            UnwrappedType unwrappedType = unwrappedTypeK0;
            if (capturedTypeConstructorImpl.f73864c == null) {
                TypeProjection typeProjection2 = capturedTypeConstructorImpl.f73863b;
                Collection collectionI = capturedTypeConstructorImpl.i();
                ArrayList arrayList = new ArrayList(CollectionsKt.t(collectionI, 10));
                Iterator it = collectionI.iterator();
                while (it.hasNext()) {
                    arrayList.add(((KotlinType) it.next()).K0());
                }
                capturedTypeConstructorImpl.f73864c = new NewCapturedTypeConstructor(typeProjection2, arrayList, null, 4, null);
            }
            CaptureStatus captureStatus = CaptureStatus.FOR_SUBTYPING;
            NewCapturedTypeConstructor newCapturedTypeConstructor = capturedTypeConstructorImpl.f73864c;
            newCapturedTypeConstructor.getClass();
            return new NewCapturedType(captureStatus, newCapturedTypeConstructor, unwrappedType, simpleType.G0(), simpleType.I0(), false, 32, null);
        }
        if (!(typeConstructorH0 instanceof IntersectionTypeConstructor) || !simpleType.I0()) {
            return simpleType;
        }
        IntersectionTypeConstructor intersectionTypeConstructor2 = (IntersectionTypeConstructor) typeConstructorH0;
        LinkedHashSet<KotlinType> linkedHashSet = intersectionTypeConstructor2.f74199c;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(linkedHashSet, 10));
        boolean z = false;
        for (KotlinType kotlinType : linkedHashSet) {
            kotlinType.getClass();
            arrayList2.add(TypeUtils.i(kotlinType, true));
            z = true;
        }
        if (z) {
            KotlinType kotlinType2 = intersectionTypeConstructor2.f74198b;
            UnwrappedType unwrappedTypeI = kotlinType2 != null ? TypeUtils.i(kotlinType2, true) : null;
            IntersectionTypeConstructor intersectionTypeConstructor3 = new IntersectionTypeConstructor(new IntersectionTypeConstructor(arrayList2).f74199c);
            intersectionTypeConstructor3.f74198b = unwrappedTypeI;
            intersectionTypeConstructor = intersectionTypeConstructor3;
        }
        if (intersectionTypeConstructor != null) {
            intersectionTypeConstructor2 = intersectionTypeConstructor;
        }
        return intersectionTypeConstructor2.a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypePreparator
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final UnwrappedType a(KotlinTypeMarker kotlinTypeMarker) {
        UnwrappedType unwrappedTypeA;
        kotlinTypeMarker.getClass();
        if (!(kotlinTypeMarker instanceof KotlinType)) {
            md.n("Failed requirement.");
            return null;
        }
        UnwrappedType unwrappedTypeK0 = ((KotlinType) kotlinTypeMarker).K0();
        if (unwrappedTypeK0 instanceof SimpleType) {
            unwrappedTypeA = c((SimpleType) unwrappedTypeK0);
        } else {
            if (!(unwrappedTypeK0 instanceof FlexibleType)) {
                v40.g();
                return null;
            }
            FlexibleType flexibleType = (FlexibleType) unwrappedTypeK0;
            SimpleType simpleType = flexibleType.d;
            SimpleType simpleType2 = flexibleType.f74193c;
            SimpleType simpleTypeC = c(simpleType2);
            SimpleType simpleTypeC2 = c(simpleType);
            unwrappedTypeA = (simpleTypeC == simpleType2 && simpleTypeC2 == simpleType) ? unwrappedTypeK0 : KotlinTypeFactory.a(simpleTypeC, simpleTypeC2);
        }
        KotlinTypePreparator$prepareType$1 kotlinTypePreparator$prepareType$1 = new KotlinTypePreparator$prepareType$1(1, this, KotlinTypePreparator.class, "prepareType", "prepareType(Lorg/jetbrains/kotlin/types/model/KotlinTypeMarker;)Lorg/jetbrains/kotlin/types/UnwrappedType;", 0);
        unwrappedTypeA.getClass();
        KotlinType kotlinTypeA = TypeWithEnhancementKt.a(unwrappedTypeK0);
        return TypeWithEnhancementKt.c(unwrappedTypeA, kotlinTypeA != null ? (KotlinType) kotlinTypePreparator$prepareType$1.invoke(kotlinTypeA) : null);
    }
}
