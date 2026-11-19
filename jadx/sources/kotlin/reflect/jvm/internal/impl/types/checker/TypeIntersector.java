package kotlin.reflect.jvm.internal.impl.types.checker;

import defpackage.mt;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.resolve.constants.IntegerLiteralTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.AbstractNullabilityChecker;
import kotlin.reflect.jvm.internal.impl.types.AnnotationsTypeAttribute;
import kotlin.reflect.jvm.internal.impl.types.DefinitelyNotNullType;
import kotlin.reflect.jvm.internal.impl.types.FlexibleTypesKt;
import kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.SpecialTypesKt;
import kotlin.reflect.jvm.internal.impl.types.StubTypeForBuilderInference;
import kotlin.reflect.jvm.internal.impl.types.TypeAttribute;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeCheckerState;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;

/* JADX INFO: loaded from: classes4.dex */
public final class TypeIntersector {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TypeIntersector f74294a = new TypeIntersector();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static abstract class ResultNullability {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ResultNullability[] $VALUES;
        public static final ResultNullability ACCEPT_NULL;
        public static final ResultNullability NOT_NULL;
        public static final ResultNullability START;
        public static final ResultNullability UNKNOWN;

        public static final class ACCEPT_NULL extends ResultNullability {
            @Override // kotlin.reflect.jvm.internal.impl.types.checker.TypeIntersector.ResultNullability
            public final ResultNullability a(UnwrappedType unwrappedType) {
                unwrappedType.getClass();
                return ResultNullability.b(unwrappedType);
            }
        }

        public static final class NOT_NULL extends ResultNullability {
            @Override // kotlin.reflect.jvm.internal.impl.types.checker.TypeIntersector.ResultNullability
            public final ResultNullability a(UnwrappedType unwrappedType) {
                unwrappedType.getClass();
                return this;
            }
        }

        public static final class START extends ResultNullability {
            @Override // kotlin.reflect.jvm.internal.impl.types.checker.TypeIntersector.ResultNullability
            public final ResultNullability a(UnwrappedType unwrappedType) {
                unwrappedType.getClass();
                return ResultNullability.b(unwrappedType);
            }
        }

        public static final class UNKNOWN extends ResultNullability {
            @Override // kotlin.reflect.jvm.internal.impl.types.checker.TypeIntersector.ResultNullability
            public final ResultNullability a(UnwrappedType unwrappedType) {
                unwrappedType.getClass();
                ResultNullability resultNullabilityB = ResultNullability.b(unwrappedType);
                return resultNullabilityB == ResultNullability.ACCEPT_NULL ? this : resultNullabilityB;
            }
        }

        static {
            START start = new START("START", 0, null);
            START = start;
            ACCEPT_NULL accept_null = new ACCEPT_NULL("ACCEPT_NULL", 1, null);
            ACCEPT_NULL = accept_null;
            UNKNOWN unknown = new UNKNOWN("UNKNOWN", 2, null);
            UNKNOWN = unknown;
            NOT_NULL not_null = new NOT_NULL("NOT_NULL", 3, null);
            NOT_NULL = not_null;
            ResultNullability[] resultNullabilityArr = {start, accept_null, unknown, not_null};
            $VALUES = resultNullabilityArr;
            $ENTRIES = EnumEntriesKt.a(resultNullabilityArr);
        }

        public ResultNullability(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            super(str, i2);
        }

        public static ResultNullability b(UnwrappedType unwrappedType) {
            unwrappedType.getClass();
            if (unwrappedType.I0()) {
                return ACCEPT_NULL;
            }
            if ((unwrappedType instanceof DefinitelyNotNullType) && (((DefinitelyNotNullType) unwrappedType).f74183c instanceof StubTypeForBuilderInference)) {
                return NOT_NULL;
            }
            if (!(unwrappedType instanceof StubTypeForBuilderInference) && AbstractNullabilityChecker.a(ClassicTypeCheckerStateKt.a(false, SimpleClassicTypeSystemContext.f74291a, null, null, 24), FlexibleTypesKt.a(unwrappedType), TypeCheckerState.SupertypesPolicy.LowerIfFlexible.f74241a)) {
                return NOT_NULL;
            }
            return UNKNOWN;
        }

        public static ResultNullability valueOf(String str) {
            return (ResultNullability) Enum.valueOf(ResultNullability.class, str);
        }

        public static ResultNullability[] values() {
            return (ResultNullability[]) $VALUES.clone();
        }

        public abstract ResultNullability a(UnwrappedType unwrappedType);
    }

    public static ArrayList a(AbstractCollection abstractCollection, Function2 function2) {
        ArrayList<SimpleType> arrayList = new ArrayList(abstractCollection);
        Iterator it = arrayList.iterator();
        it.getClass();
        while (it.hasNext()) {
            SimpleType simpleType = (SimpleType) it.next();
            if (!arrayList.isEmpty()) {
                for (SimpleType simpleType2 : arrayList) {
                    if (simpleType2 != simpleType) {
                        simpleType2.getClass();
                        simpleType.getClass();
                        if (((Boolean) function2.invoke(simpleType2, simpleType)).booleanValue()) {
                            it.remove();
                            break;
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.lang.Object, kotlin.reflect.jvm.internal.impl.types.TypeAttributes, kotlin.reflect.jvm.internal.impl.util.AbstractArrayMapOwner, kotlin.reflect.jvm.internal.impl.util.AttributeArrayOwner] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9, types: [kotlin.reflect.jvm.internal.impl.types.TypeAttributes] */
    public final SimpleType b(ArrayList arrayList) {
        SimpleType simpleTypeA;
        arrayList.size();
        ArrayList<SimpleType> arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            SimpleType simpleType = (SimpleType) it.next();
            if (simpleType.H0() instanceof IntersectionTypeConstructor) {
                Collection collectionI = simpleType.H0().i();
                collectionI.getClass();
                Collection<KotlinType> collection = collectionI;
                ArrayList arrayList3 = new ArrayList(CollectionsKt.t(collection, 10));
                for (KotlinType kotlinType : collection) {
                    kotlinType.getClass();
                    SimpleType simpleTypeB = FlexibleTypesKt.b(kotlinType);
                    if (simpleType.I0()) {
                        simpleTypeB = simpleTypeB.L0(true);
                    }
                    arrayList3.add(simpleTypeB);
                }
                arrayList2.addAll(arrayList3);
            } else {
                arrayList2.add(simpleType);
            }
        }
        ResultNullability resultNullabilityA = ResultNullability.START;
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            resultNullabilityA = resultNullabilityA.a((UnwrappedType) it2.next());
        }
        final LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (SimpleType simpleTypeL0 : arrayList2) {
            if (resultNullabilityA == ResultNullability.NOT_NULL) {
                if (simpleTypeL0 instanceof NewCapturedType) {
                    NewCapturedType newCapturedType = (NewCapturedType) simpleTypeL0;
                    simpleTypeL0 = new NewCapturedType(newCapturedType.f74273c, newCapturedType.d, newCapturedType.f74274e, newCapturedType.f74275f, newCapturedType.g, true);
                }
                simpleTypeL0.getClass();
                SimpleType simpleTypeA2 = DefinitelyNotNullType.Companion.a(DefinitelyNotNullType.f74182e, simpleTypeL0, false);
                simpleTypeL0 = (simpleTypeA2 == null && (simpleTypeA2 = SpecialTypesKt.b(simpleTypeL0)) == null) ? simpleTypeL0.L0(false) : simpleTypeA2;
            }
            linkedHashSet.add(simpleTypeL0);
        }
        ArrayList arrayList4 = new ArrayList(CollectionsKt.t(arrayList, 10));
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            arrayList4.add(((SimpleType) it3.next()).G0());
        }
        Iterator it4 = arrayList4.iterator();
        if (!it4.hasNext()) {
            mt.i("Empty collection can't be reduced.");
            return null;
        }
        ?? next = it4.next();
        while (it4.hasNext()) {
            TypeAttributes typeAttributes = (TypeAttributes) it4.next();
            next = (TypeAttributes) next;
            next.getClass();
            TypeAttributes.Companion companion = TypeAttributes.f74232c;
            typeAttributes.getClass();
            if (!next.isEmpty() || !typeAttributes.isEmpty()) {
                ArrayList arrayList5 = new ArrayList();
                Collection collectionValues = companion.f74374a.values();
                collectionValues.getClass();
                Iterator it5 = collectionValues.iterator();
                while (it5.hasNext()) {
                    int iIntValue = ((Number) it5.next()).intValue();
                    TypeAttribute typeAttribute = (TypeAttribute) next.f74330b.get(iIntValue);
                    TypeAttribute typeAttribute2 = (TypeAttribute) typeAttributes.f74330b.get(iIntValue);
                    AnnotationsTypeAttribute annotationsTypeAttributeC = typeAttribute == null ? typeAttribute2 != null ? typeAttribute2.c(typeAttribute) : null : typeAttribute.c(typeAttribute2);
                    if (annotationsTypeAttributeC != null) {
                        arrayList5.add(annotationsTypeAttributeC);
                    }
                }
                next = TypeAttributes.Companion.c(arrayList5);
            }
        }
        TypeAttributes typeAttributes2 = (TypeAttributes) next;
        if (linkedHashSet.size() == 1) {
            simpleTypeA = (SimpleType) CollectionsKt.g0(linkedHashSet);
        } else {
            new Function0(linkedHashSet) { // from class: kotlin.reflect.jvm.internal.impl.types.checker.TypeIntersector$$Lambda$0

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final Set f74295b;

                {
                    this.f74295b = linkedHashSet;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    return "This collections cannot be empty! input types: ".concat(CollectionsKt.K(this.f74295b, null, null, null, null, 63));
                }
            };
            ArrayList arrayListA = a(linkedHashSet, new TypeIntersector$intersectTypesWithoutIntersectionType$filteredEqualTypes$1(2, this, TypeIntersector.class, "isStrictSupertype", "isStrictSupertype(Lorg/jetbrains/kotlin/types/KotlinType;Lorg/jetbrains/kotlin/types/KotlinType;)Z", 0));
            arrayListA.isEmpty();
            IntegerLiteralTypeConstructor.g.getClass();
            SimpleType simpleTypeA3 = IntegerLiteralTypeConstructor.Companion.a(arrayListA);
            if (simpleTypeA3 != null) {
                simpleTypeA = simpleTypeA3;
            } else {
                NewKotlinTypeChecker.f74286b.getClass();
                ArrayList arrayListA2 = a(arrayListA, new TypeIntersector$intersectTypesWithoutIntersectionType$filteredSuperAndEqualTypes$1(2, NewKotlinTypeChecker.Companion.f74288b, NewKotlinTypeCheckerImpl.class, "equalTypes", "equalTypes(Lorg/jetbrains/kotlin/types/KotlinType;Lorg/jetbrains/kotlin/types/KotlinType;)Z", 0));
                arrayListA2.isEmpty();
                simpleTypeA = arrayListA2.size() < 2 ? (SimpleType) CollectionsKt.g0(arrayListA2) : new IntersectionTypeConstructor(linkedHashSet).a();
            }
        }
        return simpleTypeA.N0(typeAttributes2);
    }
}
