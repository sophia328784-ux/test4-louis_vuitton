package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructorKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.typesApproximation.CapturedTypeApproximationKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class TypeCheckingProcedure {
    public static /* synthetic */ void a(int i2) {
        String str = (i2 == 7 || i2 == 10) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i2 == 7 || i2 == 10) ? 2 : 3];
        switch (i2) {
            case 1:
            case 3:
            case 18:
            case 20:
                objArr[0] = "supertype";
                break;
            case 2:
            case 17:
            case 19:
            default:
                objArr[0] = "subtype";
                break;
            case 4:
                objArr[0] = "typeCheckingProcedureCallbacks";
                break;
            case 5:
            case 8:
            case 23:
                objArr[0] = "parameter";
                break;
            case 6:
            case 9:
                objArr[0] = "argument";
                break;
            case 7:
            case 10:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure";
                break;
            case 11:
                objArr[0] = "type1";
                break;
            case 12:
                objArr[0] = "type2";
                break;
            case 13:
                objArr[0] = "typeParameter";
                break;
            case 14:
                objArr[0] = "typeArgument";
                break;
            case 15:
                objArr[0] = "typeParameterVariance";
                break;
            case 16:
                objArr[0] = "typeArgumentVariance";
                break;
            case 21:
                objArr[0] = "subtypeArgumentProjection";
                break;
            case 22:
                objArr[0] = "supertypeArgumentProjection";
                break;
        }
        if (i2 == 7) {
            objArr[1] = "getOutType";
        } else if (i2 != 10) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure";
        } else {
            objArr[1] = "getInType";
        }
        switch (i2) {
            case 5:
            case 6:
                objArr[2] = "getOutType";
                break;
            case 7:
            case 10:
                break;
            case 8:
            case 9:
                objArr[2] = "getInType";
                break;
            case 11:
            case 12:
                objArr[2] = "equalTypes";
                break;
            case 13:
            case 14:
            case 15:
            case 16:
                objArr[2] = "getEffectiveProjectionKind";
                break;
            case 17:
            case 18:
                objArr[2] = "isSubtypeOf";
                break;
            case 19:
            case 20:
                objArr[2] = "checkSubtypeForTheSameConstructor";
                break;
            case 21:
            case 22:
            case 23:
                objArr[2] = "capture";
                break;
            default:
                objArr[2] = "findCorrespondingSupertype";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i2 != 7 && i2 != 10) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static UnwrappedType b(SimpleType simpleType, SimpleType simpleType2) {
        if (simpleType == null) {
            a(0);
            throw null;
        }
        if (simpleType2 == null) {
            a(1);
            throw null;
        }
        TypeCheckerProcedureCallbacksImpl typeCheckerProcedureCallbacksImpl = new TypeCheckerProcedureCallbacksImpl();
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.add(new SubtypePathNode(simpleType, null));
        TypeConstructor typeConstructorH0 = simpleType2.H0();
        while (!arrayDeque.isEmpty()) {
            SubtypePathNode subtypePathNode = (SubtypePathNode) arrayDeque.poll();
            KotlinType kotlinTypeH = subtypePathNode.f74292a;
            TypeConstructor typeConstructorH1 = kotlinTypeH.H0();
            if (typeCheckerProcedureCallbacksImpl.b(typeConstructorH1, typeConstructorH0)) {
                boolean zI0 = kotlinTypeH.I0();
                for (SubtypePathNode subtypePathNode2 = subtypePathNode.f74293b; subtypePathNode2 != null; subtypePathNode2 = subtypePathNode2.f74293b) {
                    KotlinType kotlinType = subtypePathNode2.f74292a;
                    List listF0 = kotlinType.F0();
                    if (!(listF0 instanceof Collection) || !listF0.isEmpty()) {
                        Iterator it = listF0.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                TypeConstructorSubstitution.Companion companion = TypeConstructorSubstitution.f74244b;
                                companion.getClass();
                                kotlinTypeH = TypeSubstitutor.e(companion.a(kotlinType.H0(), kotlinType.F0())).h(Variance.INVARIANT, kotlinTypeH);
                                break;
                            }
                            Variance varianceB = ((TypeProjection) it.next()).b();
                            Variance variance = Variance.INVARIANT;
                            if (varianceB != variance) {
                                TypeConstructorSubstitution.Companion companion2 = TypeConstructorSubstitution.f74244b;
                                companion2.getClass();
                                kotlinTypeH = (KotlinType) CapturedTypeApproximationKt.a(TypeSubstitutor.e(CapturedTypeConstructorKt.b(companion2.a(kotlinType.H0(), kotlinType.F0()))).h(variance, kotlinTypeH)).f74320b;
                                break;
                            }
                        }
                    } else {
                        TypeConstructorSubstitution.Companion companion3 = TypeConstructorSubstitution.f74244b;
                        companion3.getClass();
                        kotlinTypeH = TypeSubstitutor.e(companion3.a(kotlinType.H0(), kotlinType.F0())).h(Variance.INVARIANT, kotlinTypeH);
                        break;
                    }
                    zI0 = zI0 || kotlinType.I0();
                }
                TypeConstructor typeConstructorH2 = kotlinTypeH.H0();
                if (typeCheckerProcedureCallbacksImpl.b(typeConstructorH2, typeConstructorH0)) {
                    return TypeUtils.i(kotlinTypeH, zI0);
                }
                throw new AssertionError("Type constructors should be equals!\nsubstitutedSuperType: " + UtilsKt.a(typeConstructorH2) + ", \n\nsupertype: " + UtilsKt.a(typeConstructorH0) + " \n" + typeConstructorH2.equals(typeConstructorH0));
            }
            for (KotlinType kotlinType2 : typeConstructorH1.i()) {
                kotlinType2.getClass();
                arrayDeque.add(new SubtypePathNode(kotlinType2, subtypePathNode));
            }
        }
        return null;
    }
}
