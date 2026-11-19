package kotlin.reflect.jvm.internal.impl.types;

import defpackage.mt;
import defpackage.v40;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.types.model.ArgumentList;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.model.CapturedTypeConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.model.CapturedTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.FlexibleTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.IntersectionTypeConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.RigidTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeArgumentListMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeArgumentMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeParameterMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext;
import kotlin.reflect.jvm.internal.impl.types.model.TypeVariableTypeConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeVariance;
import kotlin.reflect.jvm.internal.impl.utils.SmartList;
import kotlin.reflect.jvm.internal.impl.utils.SmartSet;

/* JADX INFO: loaded from: classes4.dex */
public final class AbstractTypeChecker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AbstractTypeChecker f74158a = new AbstractTypeChecker();

    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f74165a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f74166b;

        static {
            int[] iArr = new int[TypeVariance.values().length];
            try {
                iArr[TypeVariance.INV.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TypeVariance.OUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TypeVariance.IN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f74165a = iArr;
            int[] iArr2 = new int[TypeCheckerState.LowerCapturedTypePolicy.values().length];
            try {
                iArr2[TypeCheckerState.LowerCapturedTypePolicy.CHECK_ONLY_LOWER.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[TypeCheckerState.LowerCapturedTypePolicy.CHECK_SUBTYPE_AND_LOWER.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[TypeCheckerState.LowerCapturedTypePolicy.SKIP_LOWER.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            f74166b = iArr2;
        }
    }

    public static final boolean a(TypeSystemContext typeSystemContext, RigidTypeMarker rigidTypeMarker) {
        typeSystemContext.getClass();
        if (!typeSystemContext.a0(rigidTypeMarker)) {
            if (!(rigidTypeMarker instanceof CapturedTypeMarker)) {
                return false;
            }
            CapturedTypeConstructorMarker capturedTypeConstructorMarkerC = typeSystemContext.C((CapturedTypeMarker) rigidTypeMarker);
            capturedTypeConstructorMarkerC.getClass();
            TypeArgumentMarker typeArgumentMarkerE0 = typeSystemContext.e0(capturedTypeConstructorMarkerC);
            typeArgumentMarkerE0.getClass();
            KotlinTypeMarker kotlinTypeMarkerQ0 = typeSystemContext.q0(typeArgumentMarkerE0);
            if (kotlinTypeMarkerQ0 == null || !typeSystemContext.a0(typeSystemContext.w(kotlinTypeMarkerQ0))) {
                return false;
            }
        }
        return true;
    }

    public static final boolean b(TypeSystemContext typeSystemContext, TypeCheckerState typeCheckerState, RigidTypeMarker rigidTypeMarker, RigidTypeMarker rigidTypeMarker2, boolean z) {
        typeSystemContext.getClass();
        Collection<KotlinTypeMarker> collectionR = typeSystemContext.R(rigidTypeMarker);
        if ((collectionR instanceof Collection) && collectionR.isEmpty()) {
            return false;
        }
        for (KotlinTypeMarker kotlinTypeMarker : collectionR) {
            kotlinTypeMarker.getClass();
            if (Intrinsics.c(typeSystemContext.V(kotlinTypeMarker), typeSystemContext.c0(rigidTypeMarker2))) {
                return true;
            }
            if (z && j(f74158a, typeCheckerState, rigidTypeMarker2, kotlinTypeMarker)) {
                return true;
            }
        }
        return false;
    }

    public static List c(TypeCheckerState typeCheckerState, TypeSystemContext typeSystemContext, RigidTypeMarker rigidTypeMarker, TypeConstructorMarker typeConstructorMarker) {
        TypeCheckerState.SupertypesPolicy supertypesPolicyY;
        typeSystemContext.getClass();
        rigidTypeMarker.getClass();
        typeSystemContext.f0(rigidTypeMarker, typeConstructorMarker);
        if (!typeSystemContext.h0(typeConstructorMarker) && typeSystemContext.J(rigidTypeMarker)) {
            return EmptyList.f71768b;
        }
        if (typeSystemContext.p0(typeConstructorMarker)) {
            if (!typeSystemContext.s0(typeSystemContext.c0(rigidTypeMarker), typeConstructorMarker)) {
                return EmptyList.f71768b;
            }
            RigidTypeMarker rigidTypeMarkerH = typeSystemContext.h(rigidTypeMarker, CaptureStatus.FOR_SUBTYPING);
            if (rigidTypeMarkerH != null) {
                rigidTypeMarker = rigidTypeMarkerH;
            }
            return CollectionsKt.O(rigidTypeMarker);
        }
        SmartList smartList = new SmartList();
        typeCheckerState.c();
        TypeSystemContext typeSystemContext2 = typeCheckerState.d;
        ArrayDeque arrayDeque = typeCheckerState.f74238h;
        arrayDeque.getClass();
        SmartSet smartSet = typeCheckerState.f74239i;
        smartSet.getClass();
        arrayDeque.push(rigidTypeMarker);
        while (!arrayDeque.isEmpty()) {
            RigidTypeMarker rigidTypeMarker2 = (RigidTypeMarker) arrayDeque.pop();
            rigidTypeMarker2.getClass();
            if (smartSet.add(rigidTypeMarker2)) {
                RigidTypeMarker rigidTypeMarkerH2 = typeSystemContext.h(rigidTypeMarker2, CaptureStatus.FOR_SUBTYPING);
                if (rigidTypeMarkerH2 == null) {
                    rigidTypeMarkerH2 = rigidTypeMarker2;
                }
                if (typeSystemContext.s0(typeSystemContext.c0(rigidTypeMarkerH2), typeConstructorMarker)) {
                    smartList.add(rigidTypeMarkerH2);
                    supertypesPolicyY = TypeCheckerState.SupertypesPolicy.None.f74242a;
                } else {
                    supertypesPolicyY = typeSystemContext.d(rigidTypeMarkerH2) == 0 ? TypeCheckerState.SupertypesPolicy.LowerIfFlexible.f74241a : typeSystemContext2.Y(rigidTypeMarkerH2);
                }
                if (Intrinsics.c(supertypesPolicyY, TypeCheckerState.SupertypesPolicy.None.f74242a)) {
                    supertypesPolicyY = null;
                }
                if (supertypesPolicyY != null) {
                    Iterator it = typeSystemContext2.U(typeSystemContext2.c0(rigidTypeMarker2)).iterator();
                    while (it.hasNext()) {
                        arrayDeque.add(supertypesPolicyY.a(typeCheckerState, (KotlinTypeMarker) it.next()));
                    }
                }
            }
        }
        typeCheckerState.a();
        return smartList;
    }

    public static List d(TypeCheckerState typeCheckerState, TypeSystemContext typeSystemContext, RigidTypeMarker rigidTypeMarker, TypeConstructorMarker typeConstructorMarker) {
        List listC = c(typeCheckerState, typeSystemContext, rigidTypeMarker, typeConstructorMarker);
        if (listC.size() >= 2) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : listC) {
                RigidTypeMarker rigidTypeMarker2 = (RigidTypeMarker) obj;
                rigidTypeMarker2.getClass();
                TypeArgumentListMarker typeArgumentListMarkerN = typeSystemContext.n(rigidTypeMarker2);
                int iV = typeSystemContext.v(typeArgumentListMarkerN);
                int i2 = 0;
                while (true) {
                    if (i2 >= iV) {
                        arrayList.add(obj);
                        break;
                    }
                    TypeArgumentMarker typeArgumentMarkerO = typeSystemContext.o(typeArgumentListMarkerN, i2);
                    typeArgumentMarkerO.getClass();
                    KotlinTypeMarker kotlinTypeMarkerQ0 = typeSystemContext.q0(typeArgumentMarkerO);
                    if ((kotlinTypeMarkerQ0 != null ? typeSystemContext.b0(kotlinTypeMarkerQ0) : null) != null) {
                        break;
                    }
                    i2++;
                }
            }
            if (!arrayList.isEmpty()) {
                return arrayList;
            }
        }
        return listC;
    }

    public static boolean f(TypeCheckerState typeCheckerState, KotlinTypeMarker kotlinTypeMarker, KotlinTypeMarker kotlinTypeMarker2) {
        typeCheckerState.getClass();
        AbstractTypePreparator abstractTypePreparator = typeCheckerState.f74236e;
        kotlinTypeMarker.getClass();
        kotlinTypeMarker2.getClass();
        TypeSystemContext typeSystemContext = typeCheckerState.d;
        AbstractTypeRefiner abstractTypeRefiner = typeCheckerState.f74237f;
        if (kotlinTypeMarker == kotlinTypeMarker2) {
            return true;
        }
        if (h(typeSystemContext, kotlinTypeMarker) && h(typeSystemContext, kotlinTypeMarker2)) {
            UnwrappedType unwrappedTypeA = abstractTypePreparator.a(abstractTypeRefiner.a(kotlinTypeMarker));
            UnwrappedType unwrappedTypeA2 = abstractTypePreparator.a(abstractTypeRefiner.a(kotlinTypeMarker2));
            RigidTypeMarker rigidTypeMarkerL0 = typeSystemContext.l0(unwrappedTypeA);
            if (!typeSystemContext.s0(typeSystemContext.V(unwrappedTypeA), typeSystemContext.V(unwrappedTypeA2))) {
                return false;
            }
            if (typeSystemContext.d(rigidTypeMarkerL0) == 0) {
                return typeSystemContext.X(unwrappedTypeA) || typeSystemContext.X(unwrappedTypeA2) || typeSystemContext.o0(rigidTypeMarkerL0) == typeSystemContext.o0(typeSystemContext.l0(unwrappedTypeA2));
            }
        }
        AbstractTypeChecker abstractTypeChecker = f74158a;
        return j(abstractTypeChecker, typeCheckerState, kotlinTypeMarker, kotlinTypeMarker2) && j(abstractTypeChecker, typeCheckerState, kotlinTypeMarker2, kotlinTypeMarker);
    }

    public static TypeParameterMarker g(TypeSystemContext typeSystemContext, KotlinTypeMarker kotlinTypeMarker, RigidTypeMarker rigidTypeMarker) {
        KotlinTypeMarker kotlinTypeMarkerQ0;
        typeSystemContext.getClass();
        int iD = typeSystemContext.d(kotlinTypeMarker);
        int i2 = 0;
        while (true) {
            if (i2 >= iD) {
                return null;
            }
            TypeArgumentMarker typeArgumentMarkerE = typeSystemContext.E(kotlinTypeMarker, i2);
            typeArgumentMarkerE.getClass();
            TypeArgumentMarker typeArgumentMarker = typeSystemContext.s(typeArgumentMarkerE) ? null : typeArgumentMarkerE;
            if (typeArgumentMarker != null && (kotlinTypeMarkerQ0 = typeSystemContext.q0(typeArgumentMarker)) != null) {
                boolean z = typeSystemContext.r0(typeSystemContext.l0(kotlinTypeMarkerQ0)) && typeSystemContext.r0(typeSystemContext.l0(rigidTypeMarker));
                if (kotlinTypeMarkerQ0.equals(rigidTypeMarker) || (z && Intrinsics.c(typeSystemContext.V(kotlinTypeMarkerQ0), typeSystemContext.V(rigidTypeMarker)))) {
                    TypeConstructorMarker typeConstructorMarkerV = typeSystemContext.V(kotlinTypeMarker);
                    typeConstructorMarkerV.getClass();
                    return typeSystemContext.p(typeConstructorMarkerV, i2);
                }
                TypeParameterMarker typeParameterMarkerG = g(typeSystemContext, kotlinTypeMarkerQ0, rigidTypeMarker);
                if (typeParameterMarkerG != null) {
                    return typeParameterMarkerG;
                }
            }
            i2++;
        }
    }

    public static boolean h(TypeSystemContext typeSystemContext, KotlinTypeMarker kotlinTypeMarker) {
        typeSystemContext.getClass();
        kotlinTypeMarker.getClass();
        TypeConstructorMarker typeConstructorMarkerV = typeSystemContext.V(kotlinTypeMarker);
        typeConstructorMarkerV.getClass();
        return (!typeSystemContext.W(typeConstructorMarkerV) || typeSystemContext.T(kotlinTypeMarker) || typeSystemContext.Z(kotlinTypeMarker) || typeSystemContext.r(kotlinTypeMarker) || typeSystemContext.i(kotlinTypeMarker)) ? false : true;
    }

    public static boolean i(TypeCheckerState typeCheckerState, TypeSystemContext typeSystemContext, TypeArgumentListMarker typeArgumentListMarker, RigidTypeMarker rigidTypeMarker) {
        boolean zF;
        typeCheckerState.getClass();
        typeSystemContext.getClass();
        typeArgumentListMarker.getClass();
        rigidTypeMarker.getClass();
        TypeConstructorMarker typeConstructorMarkerC0 = typeSystemContext.c0(rigidTypeMarker);
        int iV = typeSystemContext.v(typeArgumentListMarker);
        typeConstructorMarkerC0.getClass();
        int iM = typeSystemContext.M(typeConstructorMarkerC0);
        if (iV == iM && iV == typeSystemContext.d(rigidTypeMarker)) {
            for (int i2 = 0; i2 < iM; i2++) {
                TypeArgumentMarker typeArgumentMarkerE = typeSystemContext.E(rigidTypeMarker, i2);
                typeArgumentMarkerE.getClass();
                KotlinTypeMarker kotlinTypeMarkerQ0 = typeSystemContext.q0(typeArgumentMarkerE);
                if (kotlinTypeMarkerQ0 != null) {
                    TypeArgumentMarker typeArgumentMarkerO = typeSystemContext.o(typeArgumentListMarker, i2);
                    typeArgumentMarkerO.getClass();
                    typeSystemContext.m0(typeArgumentMarkerO);
                    TypeVariance typeVariance = TypeVariance.INV;
                    KotlinTypeMarker kotlinTypeMarkerQ1 = typeSystemContext.q0(typeArgumentMarkerO);
                    kotlinTypeMarkerQ1.getClass();
                    TypeParameterMarker typeParameterMarkerP = typeSystemContext.p(typeConstructorMarkerC0, i2);
                    typeParameterMarkerP.getClass();
                    TypeVariance typeVarianceT = typeSystemContext.t(typeParameterMarkerP);
                    TypeVariance typeVarianceM0 = typeSystemContext.m0(typeArgumentMarkerE);
                    typeVarianceT.getClass();
                    typeVarianceM0.getClass();
                    if (typeVarianceT == typeVariance) {
                        typeVarianceT = typeVarianceM0;
                    } else if (typeVarianceM0 != typeVariance && typeVarianceT != typeVarianceM0) {
                        typeVarianceT = null;
                    }
                    if (typeVarianceT == null) {
                        return typeCheckerState.f74233a;
                    }
                    if (typeVarianceT != typeVariance || (!k(typeSystemContext, kotlinTypeMarkerQ1, kotlinTypeMarkerQ0, typeConstructorMarkerC0) && !k(typeSystemContext, kotlinTypeMarkerQ0, kotlinTypeMarkerQ1, typeConstructorMarkerC0))) {
                        int i3 = typeCheckerState.g;
                        if (i3 > 100) {
                            mt.f(kotlinTypeMarkerQ1, "Arguments depth is too high. Some related argument: ");
                            return false;
                        }
                        typeCheckerState.g = i3 + 1;
                        int i4 = WhenMappings.f74165a[typeVarianceT.ordinal()];
                        if (i4 != 1) {
                            AbstractTypeChecker abstractTypeChecker = f74158a;
                            if (i4 == 2) {
                                zF = j(abstractTypeChecker, typeCheckerState, kotlinTypeMarkerQ1, kotlinTypeMarkerQ0);
                            } else {
                                if (i4 != 3) {
                                    v40.g();
                                    return false;
                                }
                                zF = j(abstractTypeChecker, typeCheckerState, kotlinTypeMarkerQ0, kotlinTypeMarkerQ1);
                            }
                        } else {
                            zF = f(typeCheckerState, kotlinTypeMarkerQ1, kotlinTypeMarkerQ0);
                        }
                        typeCheckerState.g--;
                        if (!zF) {
                        }
                    }
                }
            }
            return true;
        }
        return false;
    }

    public static boolean j(AbstractTypeChecker abstractTypeChecker, TypeCheckerState typeCheckerState, KotlinTypeMarker kotlinTypeMarker, KotlinTypeMarker kotlinTypeMarker2) {
        typeCheckerState.getClass();
        kotlinTypeMarker.getClass();
        kotlinTypeMarker2.getClass();
        if (kotlinTypeMarker == kotlinTypeMarker2) {
            return true;
        }
        if (!typeCheckerState.b(kotlinTypeMarker, kotlinTypeMarker2)) {
            return false;
        }
        return f74158a.e(typeCheckerState, typeCheckerState.d, kotlinTypeMarker, kotlinTypeMarker2);
    }

    public static boolean k(TypeSystemContext typeSystemContext, KotlinTypeMarker kotlinTypeMarker, KotlinTypeMarker kotlinTypeMarker2, TypeConstructorMarker typeConstructorMarker) {
        TypeParameterMarker typeParameterMarkerN0;
        typeSystemContext.getClass();
        kotlinTypeMarker.getClass();
        RigidTypeMarker rigidTypeMarkerK = typeSystemContext.k(kotlinTypeMarker);
        if (!(rigidTypeMarkerK instanceof CapturedTypeMarker)) {
            return false;
        }
        CapturedTypeMarker capturedTypeMarker = (CapturedTypeMarker) rigidTypeMarkerK;
        if (typeSystemContext.S(capturedTypeMarker)) {
            return false;
        }
        CapturedTypeConstructorMarker capturedTypeConstructorMarkerC = typeSystemContext.C(capturedTypeMarker);
        capturedTypeConstructorMarkerC.getClass();
        TypeArgumentMarker typeArgumentMarkerE0 = typeSystemContext.e0(capturedTypeConstructorMarkerC);
        typeArgumentMarkerE0.getClass();
        if (!typeSystemContext.s(typeArgumentMarkerE0) || typeSystemContext.d0(capturedTypeMarker) != CaptureStatus.FOR_SUBTYPING) {
            return false;
        }
        kotlinTypeMarker2.getClass();
        TypeConstructorMarker typeConstructorMarkerV = typeSystemContext.V(kotlinTypeMarker2);
        TypeVariableTypeConstructorMarker typeVariableTypeConstructorMarker = typeConstructorMarkerV instanceof TypeVariableTypeConstructorMarker ? (TypeVariableTypeConstructorMarker) typeConstructorMarkerV : null;
        return (typeVariableTypeConstructorMarker == null || (typeParameterMarkerN0 = typeSystemContext.n0(typeVariableTypeConstructorMarker)) == null || !typeSystemContext.l(typeParameterMarkerN0, typeConstructorMarker)) ? false : true;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:168:0x02b4  */
    /* JADX WARN: Code duplicated, block: B:196:0x0316  */
    /* JADX WARN: Code duplicated, block: B:207:0x0340  */
    /* JADX WARN: Code duplicated, block: B:210:0x034e  */
    /* JADX WARN: Code duplicated, block: B:212:0x0357  */
    /* JADX WARN: Code duplicated, block: B:213:0x035d  */
    /* JADX WARN: Code duplicated, block: B:218:0x036f  */
    /* JADX WARN: Code duplicated, block: B:221:0x038a  */
    /* JADX WARN: Code duplicated, block: B:225:0x039f  */
    /* JADX WARN: Code duplicated, block: B:226:0x03a5  */
    /* JADX WARN: Code duplicated, block: B:230:0x03b0  */
    /* JADX WARN: Code duplicated, block: B:236:0x03c6 A[LOOP:8: B:234:0x03c0->B:236:0x03c6, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:240:0x03e6 A[LOOP:9: B:238:0x03e0->B:240:0x03e6, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:245:0x0414  */
    /* JADX WARN: Code duplicated, block: B:248:0x042d  */
    /* JADX WARN: Code duplicated, block: B:252:0x0438 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:253:0x043a  */
    /* JADX WARN: Code duplicated, block: B:255:0x044b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:256:0x044d  */
    /* JADX WARN: Code duplicated, block: B:259:0x045d  */
    /* JADX WARN: Code duplicated, block: B:260:0x045f  */
    /* JADX WARN: Code duplicated, block: B:262:0x0462  */
    /* JADX WARN: Code duplicated, block: B:265:0x0475  */
    /* JADX WARN: Code duplicated, block: B:267:0x0488  */
    /* JADX WARN: Code duplicated, block: B:270:0x0493  */
    /* JADX WARN: Code duplicated, block: B:278:0x04e1  */
    /* JADX WARN: Code duplicated, block: B:287:0x050a  */
    /* JADX WARN: Code duplicated, block: B:289:0x051c  */
    /* JADX WARN: Code duplicated, block: B:291:0x052d  */
    /* JADX WARN: Code duplicated, block: B:293:0x0532  */
    /* JADX WARN: Code duplicated, block: B:296:0x0540  */
    /* JADX WARN: Code duplicated, block: B:299:0x0556  */
    /* JADX WARN: Code duplicated, block: B:303:0x056b  */
    /* JADX WARN: Code duplicated, block: B:304:0x056e  */
    /* JADX WARN: Code duplicated, block: B:308:0x0579  */
    /* JADX WARN: Code duplicated, block: B:314:0x058f  */
    /* JADX WARN: Code duplicated, block: B:318:0x05ad A[LOOP:6: B:312:0x0589->B:318:0x05ad, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:334:0x042e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:335:0x04a6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:343:0x0565 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:344:0x057d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:345:0x05a9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:347:0x0550 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:348:0x0550 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:351:0x0399 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:352:0x03b4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:354:0x0384 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:355:0x0384 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:364:0x013b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:365:0x0155 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:366:? A[LOOP:11: B:74:0x0141->B:366:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:367:0x0196 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:368:0x01a9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:369:? A[LOOP:12: B:90:0x0185->B:369:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:370:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:0x0125  */
    /* JADX WARN: Code duplicated, block: B:73:0x013d  */
    /* JADX WARN: Code duplicated, block: B:76:0x0147  */
    /* JADX WARN: Code duplicated, block: B:80:0x015c  */
    /* JADX WARN: Code duplicated, block: B:82:0x0164  */
    /* JADX WARN: Code duplicated, block: B:84:0x016d  */
    /* JADX WARN: Code duplicated, block: B:89:0x0181  */
    /* JADX WARN: Code duplicated, block: B:92:0x018b  */
    /* JADX WARN: Code duplicated, block: B:95:0x0196  */
    /* JADX WARN: Code duplicated, block: B:97:0x019c  */
    public final boolean e(final TypeCheckerState typeCheckerState, final TypeSystemContext typeSystemContext, KotlinTypeMarker kotlinTypeMarker, KotlinTypeMarker kotlinTypeMarker2) {
        Boolean boolValueOf;
        Boolean bool;
        TypeConstructorMarker typeConstructorMarkerC0;
        SmartList<RigidTypeMarker> smartList;
        ArrayDeque arrayDeque;
        SmartSet smartSet;
        ArrayList arrayList;
        List listC;
        RigidTypeMarker rigidTypeMarker;
        TypeCheckerState.SupertypesPolicy supertypesPolicy;
        Iterator it;
        final ArrayList<RigidTypeMarker> arrayList2;
        int i2;
        int size;
        TypeConstructorMarker typeConstructorMarkerC1;
        TypeConstructorMarker typeConstructorMarkerC2;
        ArrayDeque arrayDeque2;
        SmartSet smartSet2;
        RigidTypeMarker rigidTypeMarker2;
        TypeCheckerState.SupertypesPolicy supertypesPolicy2;
        Iterator it2;
        RigidTypeMarker rigidTypeMarkerA;
        TypeConstructorMarker typeConstructorMarkerC3;
        ArgumentList argumentList;
        int iM;
        int i3;
        boolean z;
        boolean z2;
        boolean z3;
        TypeArgumentMarker typeArgumentMarkerM;
        KotlinTypeMarker kotlinTypeMarkerQ0;
        TypeParameterMarker typeParameterMarkerP;
        RigidTypeMarker rigidTypeMarkerK;
        TypeConstructorMarker typeConstructorMarkerC4;
        TypeConstructorMarker typeConstructorMarkerC5;
        TypeParameterMarker typeParameterMarkerG;
        Collection collectionU;
        Iterator it3;
        Collection collectionU2;
        Iterator it4;
        boolean z4;
        typeCheckerState.getClass();
        kotlinTypeMarker.getClass();
        AbstractTypeRefiner abstractTypeRefiner = typeCheckerState.f74237f;
        KotlinType kotlinTypeA = abstractTypeRefiner.a(kotlinTypeMarker);
        boolean z5 = typeCheckerState.f74234b;
        AbstractTypePreparator abstractTypePreparator = typeCheckerState.f74236e;
        UnwrappedType unwrappedTypeA = abstractTypePreparator.a(kotlinTypeA);
        kotlinTypeMarker2.getClass();
        UnwrappedType unwrappedTypeA2 = abstractTypePreparator.a(abstractTypeRefiner.a(kotlinTypeMarker2));
        if (typeCheckerState.f74235c) {
            typeSystemContext.getClass();
            unwrappedTypeA.getClass();
            if (typeSystemContext.K(unwrappedTypeA)) {
                unwrappedTypeA2.getClass();
                if (typeSystemContext.Z(unwrappedTypeA2)) {
                    FlexibleTypeMarker flexibleTypeMarkerB0 = typeSystemContext.b0(unwrappedTypeA);
                    flexibleTypeMarkerB0.getClass();
                    RigidTypeMarker rigidTypeMarkerA2 = typeSystemContext.a(flexibleTypeMarkerB0);
                    RigidTypeMarker rigidTypeMarkerK2 = typeSystemContext.k(unwrappedTypeA2);
                    rigidTypeMarkerK2.getClass();
                    return e(typeCheckerState, typeSystemContext, rigidTypeMarkerA2, typeSystemContext.N(rigidTypeMarkerK2));
                }
            }
        }
        typeSystemContext.getClass();
        unwrappedTypeA.getClass();
        RigidTypeMarker rigidTypeMarkerL0 = typeSystemContext.l0(unwrappedTypeA);
        unwrappedTypeA2.getClass();
        RigidTypeMarker rigidTypeMarkerW = typeSystemContext.w(unwrappedTypeA2);
        boolean z6 = true;
        boolean z7 = false;
        if (typeSystemContext.z(rigidTypeMarkerL0) || typeSystemContext.z(rigidTypeMarkerW)) {
            if (typeCheckerState.f74233a) {
                boolValueOf = Boolean.TRUE;
            } else if (!typeSystemContext.o0(rigidTypeMarkerL0) || typeSystemContext.o0(rigidTypeMarkerW)) {
                RigidTypeMarker rigidTypeMarkerB = typeSystemContext.b(rigidTypeMarkerL0);
                RigidTypeMarker rigidTypeMarkerB2 = typeSystemContext.b(rigidTypeMarkerW);
                typeSystemContext.getClass();
                rigidTypeMarkerB.getClass();
                rigidTypeMarkerB2.getClass();
                boolValueOf = Boolean.valueOf(AbstractStrictEqualityTypeChecker.b(typeSystemContext, rigidTypeMarkerB, rigidTypeMarkerB2));
            } else {
                boolValueOf = Boolean.FALSE;
            }
        } else if (typeSystemContext.F(rigidTypeMarkerL0) && typeSystemContext.F(rigidTypeMarkerW)) {
            boolValueOf = Boolean.valueOf((typeSystemContext.c0(rigidTypeMarkerL0) == typeSystemContext.c0(rigidTypeMarkerW) && ((typeSystemContext.j(rigidTypeMarkerL0) || !typeSystemContext.j(rigidTypeMarkerW)) && (!typeSystemContext.o0(rigidTypeMarkerL0) || typeSystemContext.o0(rigidTypeMarkerW)))) || z5);
        } else if (typeSystemContext.D(rigidTypeMarkerL0) || typeSystemContext.D(rigidTypeMarkerW)) {
            boolValueOf = Boolean.valueOf(z5);
        } else {
            CapturedTypeMarker capturedTypeMarkerO = typeSystemContext.O(rigidTypeMarkerW);
            KotlinTypeMarker kotlinTypeMarkerG0 = capturedTypeMarkerO != null ? typeSystemContext.g0(capturedTypeMarkerO) : null;
            if (capturedTypeMarkerO == null || kotlinTypeMarkerG0 == null) {
                typeConstructorMarkerC4 = typeSystemContext.c0(rigidTypeMarkerW);
                typeConstructorMarkerC4.getClass();
                if (typeSystemContext.i0(typeConstructorMarkerC4)) {
                    typeSystemContext.o0(rigidTypeMarkerW);
                    collectionU2 = typeSystemContext.U(typeConstructorMarkerC4);
                    if (!(collectionU2 instanceof Collection) && collectionU2.isEmpty()) {
                        z4 = true;
                        break;
                    }
                    it4 = collectionU2.iterator();
                    while (true) {
                        if (!it4.hasNext()) {
                            z4 = true;
                            break;
                        }
                        if (!j(f74158a, typeCheckerState, rigidTypeMarkerL0, (KotlinTypeMarker) it4.next())) {
                            z4 = false;
                            break;
                        }
                    }
                    boolValueOf = Boolean.valueOf(z4);
                } else {
                    typeConstructorMarkerC5 = typeSystemContext.c0(rigidTypeMarkerL0);
                    if (rigidTypeMarkerL0 instanceof CapturedTypeMarker) {
                        typeParameterMarkerG = g(typeSystemContext, rigidTypeMarkerW, rigidTypeMarkerL0);
                        if (typeParameterMarkerG == null) {
                            boolValueOf = null;
                        } else {
                            boolValueOf = null;
                        }
                    } else {
                        typeConstructorMarkerC5.getClass();
                        if (typeSystemContext.i0(typeConstructorMarkerC5)) {
                            collectionU = typeSystemContext.U(typeConstructorMarkerC5);
                            if ((collectionU instanceof Collection) || !collectionU.isEmpty()) {
                                it3 = collectionU.iterator();
                                while (true) {
                                    if (!it3.hasNext()) {
                                        typeParameterMarkerG = g(typeSystemContext, rigidTypeMarkerW, rigidTypeMarkerL0);
                                        if (typeParameterMarkerG == null && typeSystemContext.l(typeParameterMarkerG, typeSystemContext.c0(rigidTypeMarkerW))) {
                                            boolValueOf = Boolean.TRUE;
                                        }
                                    } else if (!(((KotlinTypeMarker) it3.next()) instanceof CapturedTypeMarker)) {
                                    }
                                }
                            } else {
                                typeParameterMarkerG = g(typeSystemContext, rigidTypeMarkerW, rigidTypeMarkerL0);
                                if (typeParameterMarkerG == null) {
                                }
                            }
                        }
                        boolValueOf = null;
                    }
                }
            } else {
                if (typeSystemContext.o0(rigidTypeMarkerW)) {
                    kotlinTypeMarkerG0 = typeSystemContext.P(kotlinTypeMarkerG0);
                } else if (typeSystemContext.j(rigidTypeMarkerW)) {
                    kotlinTypeMarkerG0 = typeSystemContext.f(kotlinTypeMarkerG0);
                }
                int i4 = WhenMappings.f74166b[TypeCheckerState.LowerCapturedTypePolicy.CHECK_SUBTYPE_AND_LOWER.ordinal()];
                if (i4 != 1) {
                    if (i4 != 2) {
                        if (i4 != 3) {
                            v40.g();
                            return false;
                        }
                    } else if (j(this, typeCheckerState, rigidTypeMarkerL0, kotlinTypeMarkerG0)) {
                        boolValueOf = Boolean.TRUE;
                    }
                    typeConstructorMarkerC4 = typeSystemContext.c0(rigidTypeMarkerW);
                    typeConstructorMarkerC4.getClass();
                    if (typeSystemContext.i0(typeConstructorMarkerC4)) {
                        typeSystemContext.o0(rigidTypeMarkerW);
                        collectionU2 = typeSystemContext.U(typeConstructorMarkerC4);
                        if (!(collectionU2 instanceof Collection)) {
                            it4 = collectionU2.iterator();
                            while (true) {
                                if (!it4.hasNext()) {
                                    z4 = true;
                                    break;
                                }
                                if (!j(f74158a, typeCheckerState, rigidTypeMarkerL0, (KotlinTypeMarker) it4.next())) {
                                    z4 = false;
                                    break;
                                }
                            }
                        } else {
                            it4 = collectionU2.iterator();
                            while (true) {
                                if (!it4.hasNext()) {
                                    z4 = true;
                                    break;
                                }
                                if (!j(f74158a, typeCheckerState, rigidTypeMarkerL0, (KotlinTypeMarker) it4.next())) {
                                    z4 = false;
                                    break;
                                }
                            }
                        }
                        boolValueOf = Boolean.valueOf(z4);
                    } else {
                        typeConstructorMarkerC5 = typeSystemContext.c0(rigidTypeMarkerL0);
                        if (rigidTypeMarkerL0 instanceof CapturedTypeMarker) {
                            typeConstructorMarkerC5.getClass();
                            if (typeSystemContext.i0(typeConstructorMarkerC5)) {
                                collectionU = typeSystemContext.U(typeConstructorMarkerC5);
                                if (collectionU instanceof Collection) {
                                    it3 = collectionU.iterator();
                                    while (true) {
                                        if (!it3.hasNext()) {
                                            typeParameterMarkerG = g(typeSystemContext, rigidTypeMarkerW, rigidTypeMarkerL0);
                                            if (typeParameterMarkerG == null) {
                                            }
                                        } else if (!(((KotlinTypeMarker) it3.next()) instanceof CapturedTypeMarker)) {
                                        }
                                    }
                                } else {
                                    it3 = collectionU.iterator();
                                    while (true) {
                                        if (!it3.hasNext()) {
                                            typeParameterMarkerG = g(typeSystemContext, rigidTypeMarkerW, rigidTypeMarkerL0);
                                            if (typeParameterMarkerG == null) {
                                            }
                                        } else if (!(((KotlinTypeMarker) it3.next()) instanceof CapturedTypeMarker)) {
                                        }
                                    }
                                }
                            }
                            boolValueOf = null;
                        } else {
                            typeParameterMarkerG = g(typeSystemContext, rigidTypeMarkerW, rigidTypeMarkerL0);
                            if (typeParameterMarkerG == null) {
                                boolValueOf = null;
                            } else {
                                boolValueOf = null;
                            }
                        }
                    }
                } else {
                    boolValueOf = Boolean.valueOf(j(this, typeCheckerState, rigidTypeMarkerL0, kotlinTypeMarkerG0));
                }
            }
        }
        if (boolValueOf != null) {
            return boolValueOf.booleanValue();
        }
        RigidTypeMarker rigidTypeMarkerL1 = typeSystemContext.l0(unwrappedTypeA);
        final RigidTypeMarker rigidTypeMarkerW2 = typeSystemContext.w(unwrappedTypeA2);
        TypeSystemContext typeSystemContext2 = typeCheckerState.d;
        if (!typeSystemContext2.o0(rigidTypeMarkerW2) && !typeSystemContext2.r(rigidTypeMarkerL1) && !typeSystemContext2.j(rigidTypeMarkerL1) && ((!(rigidTypeMarkerL1 instanceof CapturedTypeMarker) || !typeSystemContext2.e((CapturedTypeMarker) rigidTypeMarkerL1)) && !AbstractNullabilityChecker.a(typeCheckerState, rigidTypeMarkerL1, TypeCheckerState.SupertypesPolicy.LowerIfFlexible.f74241a))) {
            if (typeSystemContext2.j(rigidTypeMarkerW2) || AbstractNullabilityChecker.a(typeCheckerState, rigidTypeMarkerW2, TypeCheckerState.SupertypesPolicy.UpperIfFlexible.f74243a) || typeSystemContext2.J(rigidTypeMarkerL1)) {
                return false;
            }
            TypeConstructorMarker typeConstructorMarkerC6 = typeSystemContext2.c0(rigidTypeMarkerW2);
            typeConstructorMarkerC6.getClass();
            if (!AbstractNullabilityChecker.b(typeCheckerState, rigidTypeMarkerL1, typeConstructorMarkerC6)) {
                typeCheckerState.c();
                ArrayDeque arrayDeque3 = typeCheckerState.f74238h;
                arrayDeque3.getClass();
                SmartSet smartSet3 = typeCheckerState.f74239i;
                smartSet3.getClass();
                arrayDeque3.push(rigidTypeMarkerL1);
                loop0: while (true) {
                    if (arrayDeque3.isEmpty()) {
                        typeCheckerState.a();
                        return false;
                    }
                    RigidTypeMarker rigidTypeMarker3 = (RigidTypeMarker) arrayDeque3.pop();
                    rigidTypeMarker3.getClass();
                    if (smartSet3.add(rigidTypeMarker3)) {
                        TypeCheckerState.SupertypesPolicy supertypesPolicy3 = typeSystemContext2.o0(rigidTypeMarker3) ? TypeCheckerState.SupertypesPolicy.None.f74242a : TypeCheckerState.SupertypesPolicy.LowerIfFlexible.f74241a;
                        if (Intrinsics.c(supertypesPolicy3, TypeCheckerState.SupertypesPolicy.None.f74242a)) {
                            supertypesPolicy3 = null;
                        }
                        if (supertypesPolicy3 == null) {
                            continue;
                        } else {
                            Iterator it5 = typeSystemContext2.U(typeSystemContext2.c0(rigidTypeMarker3)).iterator();
                            while (it5.hasNext()) {
                                RigidTypeMarker rigidTypeMarkerA3 = supertypesPolicy3.a(typeCheckerState, (KotlinTypeMarker) it5.next());
                                if (AbstractNullabilityChecker.b(typeCheckerState, rigidTypeMarkerA3, typeConstructorMarkerC6)) {
                                    typeCheckerState.a();
                                    break loop0;
                                }
                                arrayDeque3.add(rigidTypeMarkerA3);
                            }
                        }
                    }
                }
            }
        }
        if (!typeSystemContext.a0(rigidTypeMarkerL1) && !typeSystemContext.a0(rigidTypeMarkerW2)) {
            bool = null;
        } else if (a(typeSystemContext, rigidTypeMarkerL1) && a(typeSystemContext, rigidTypeMarkerW2)) {
            bool = Boolean.TRUE;
        } else if (typeSystemContext.a0(rigidTypeMarkerL1)) {
            if (b(typeSystemContext, typeCheckerState, rigidTypeMarkerL1, rigidTypeMarkerW2, false)) {
                bool = Boolean.TRUE;
            } else {
                bool = null;
            }
        } else if (typeSystemContext.a0(rigidTypeMarkerW2)) {
            TypeConstructorMarker typeConstructorMarkerC7 = typeSystemContext.c0(rigidTypeMarkerL1);
            if (typeConstructorMarkerC7 instanceof IntersectionTypeConstructorMarker) {
                Collection collectionU3 = typeSystemContext.U(typeConstructorMarkerC7);
                if (!(collectionU3 instanceof Collection) || !collectionU3.isEmpty()) {
                    Iterator it6 = collectionU3.iterator();
                    while (true) {
                        if (it6.hasNext()) {
                            KotlinTypeMarker kotlinTypeMarker3 = (KotlinTypeMarker) it6.next();
                            kotlinTypeMarker3.getClass();
                            RigidTypeMarker rigidTypeMarkerK3 = typeSystemContext.k(kotlinTypeMarker3);
                            if (rigidTypeMarkerK3 == null || !typeSystemContext.a0(rigidTypeMarkerK3)) {
                            }
                        } else if (!b(typeSystemContext, typeCheckerState, rigidTypeMarkerW2, rigidTypeMarkerL1, true)) {
                            bool = null;
                        }
                    }
                } else if (!b(typeSystemContext, typeCheckerState, rigidTypeMarkerW2, rigidTypeMarkerL1, true)) {
                    bool = null;
                }
            } else if (!b(typeSystemContext, typeCheckerState, rigidTypeMarkerW2, rigidTypeMarkerL1, true)) {
                bool = null;
            }
            bool = Boolean.TRUE;
        } else {
            bool = null;
        }
        if (bool != null) {
            return bool.booleanValue();
        }
        TypeConstructorMarker typeConstructorMarkerC8 = typeSystemContext.c0(rigidTypeMarkerW2);
        if (typeSystemContext.s0(typeSystemContext.c0(rigidTypeMarkerL1), typeConstructorMarkerC8)) {
            typeConstructorMarkerC8.getClass();
            if (typeSystemContext.M(typeConstructorMarkerC8) != 0) {
                typeConstructorMarkerC0 = typeSystemContext.c0(rigidTypeMarkerW2);
                typeConstructorMarkerC0.getClass();
                if (!typeSystemContext.G(typeConstructorMarkerC0)) {
                    typeConstructorMarkerC8.getClass();
                    if (typeSystemContext2.J(rigidTypeMarkerL1)) {
                        listC = d(typeCheckerState, typeSystemContext2, rigidTypeMarkerL1, typeConstructorMarkerC8);
                    } else if (!typeSystemContext2.h0(typeConstructorMarkerC8) || typeSystemContext2.H(typeConstructorMarkerC8)) {
                        smartList = new SmartList();
                        typeCheckerState.c();
                        arrayDeque = typeCheckerState.f74238h;
                        arrayDeque.getClass();
                        smartSet = typeCheckerState.f74239i;
                        smartSet.getClass();
                        arrayDeque.push(rigidTypeMarkerL1);
                        while (!arrayDeque.isEmpty()) {
                            rigidTypeMarker = (RigidTypeMarker) arrayDeque.pop();
                            rigidTypeMarker.getClass();
                            if (smartSet.add(rigidTypeMarker)) {
                                if (typeSystemContext2.J(rigidTypeMarker)) {
                                    smartList.add(rigidTypeMarker);
                                    supertypesPolicy = TypeCheckerState.SupertypesPolicy.None.f74242a;
                                } else {
                                    supertypesPolicy = TypeCheckerState.SupertypesPolicy.LowerIfFlexible.f74241a;
                                }
                                if (Intrinsics.c(supertypesPolicy, TypeCheckerState.SupertypesPolicy.None.f74242a)) {
                                    supertypesPolicy = null;
                                }
                                if (supertypesPolicy != null) {
                                    it = typeSystemContext2.U(typeSystemContext2.c0(rigidTypeMarker)).iterator();
                                    while (it.hasNext()) {
                                        arrayDeque.add(supertypesPolicy.a(typeCheckerState, (KotlinTypeMarker) it.next()));
                                    }
                                }
                            }
                        }
                        typeCheckerState.a();
                        arrayList = new ArrayList();
                        for (RigidTypeMarker rigidTypeMarker4 : smartList) {
                            rigidTypeMarker4.getClass();
                            CollectionsKt.j(arrayList, d(typeCheckerState, typeSystemContext2, rigidTypeMarker4, typeConstructorMarkerC8));
                        }
                        listC = arrayList;
                    } else {
                        listC = c(typeCheckerState, typeSystemContext2, rigidTypeMarkerL1, typeConstructorMarkerC8);
                    }
                    listC.size();
                    List<RigidTypeMarker> list = listC;
                    i2 = 10;
                    arrayList2 = new ArrayList(CollectionsKt.t(list, 10));
                    for (RigidTypeMarker rigidTypeMarker5 : list) {
                        rigidTypeMarker5.getClass();
                        UnwrappedType unwrappedTypeA3 = typeCheckerState.f74236e.a(rigidTypeMarker5);
                        unwrappedTypeA3.getClass();
                        rigidTypeMarkerK = typeSystemContext.k(unwrappedTypeA3);
                        if (rigidTypeMarkerK == null) {
                            rigidTypeMarker5 = rigidTypeMarkerK;
                        }
                        arrayList2.add(rigidTypeMarker5);
                    }
                    size = arrayList2.size();
                    if (size != 0) {
                        typeConstructorMarkerC1 = typeSystemContext.c0(rigidTypeMarkerL1);
                        typeConstructorMarkerC1.getClass();
                        if (typeSystemContext.h0(typeConstructorMarkerC1)) {
                            return typeSystemContext.Q(typeConstructorMarkerC1);
                        }
                        typeConstructorMarkerC2 = typeSystemContext.c0(rigidTypeMarkerL1);
                        typeConstructorMarkerC2.getClass();
                        if (typeSystemContext.Q(typeConstructorMarkerC2)) {
                            return true;
                        }
                        typeCheckerState.c();
                        arrayDeque2 = typeCheckerState.f74238h;
                        arrayDeque2.getClass();
                        smartSet2 = typeCheckerState.f74239i;
                        smartSet2.getClass();
                        arrayDeque2.push(rigidTypeMarkerL1);
                        while (!arrayDeque2.isEmpty()) {
                            rigidTypeMarker2 = (RigidTypeMarker) arrayDeque2.pop();
                            rigidTypeMarker2.getClass();
                            if (!smartSet2.add(rigidTypeMarker2)) {
                                if (typeSystemContext.J(rigidTypeMarker2)) {
                                    supertypesPolicy2 = TypeCheckerState.SupertypesPolicy.None.f74242a;
                                } else {
                                    supertypesPolicy2 = TypeCheckerState.SupertypesPolicy.LowerIfFlexible.f74241a;
                                }
                                if (Intrinsics.c(supertypesPolicy2, TypeCheckerState.SupertypesPolicy.None.f74242a)) {
                                    supertypesPolicy2 = null;
                                }
                                if (supertypesPolicy2 == null) {
                                    continue;
                                } else {
                                    it2 = typeSystemContext2.U(typeSystemContext2.c0(rigidTypeMarker2)).iterator();
                                    while (it2.hasNext()) {
                                        rigidTypeMarkerA = supertypesPolicy2.a(typeCheckerState, (KotlinTypeMarker) it2.next());
                                        rigidTypeMarkerA.getClass();
                                        typeConstructorMarkerC3 = typeSystemContext.c0(rigidTypeMarkerA);
                                        typeConstructorMarkerC3.getClass();
                                        if (typeSystemContext.Q(typeConstructorMarkerC3)) {
                                            typeCheckerState.a();
                                            return true;
                                        }
                                        arrayDeque2.add(rigidTypeMarkerA);
                                    }
                                }
                            }
                        }
                        typeCheckerState.a();
                        return false;
                    }
                    if (size != 1) {
                        RigidTypeMarker rigidTypeMarker6 = (RigidTypeMarker) CollectionsKt.A(arrayList2);
                        rigidTypeMarker6.getClass();
                        return i(typeCheckerState, typeSystemContext, typeSystemContext.n(rigidTypeMarker6), rigidTypeMarkerW2);
                    }
                    argumentList = new ArgumentList(typeSystemContext.M(typeConstructorMarkerC8));
                    iM = typeSystemContext.M(typeConstructorMarkerC8);
                    i3 = 0;
                    z = false;
                    while (i3 < iM) {
                        if (z) {
                            z = z6;
                        } else {
                            typeParameterMarkerP = typeSystemContext.p(typeConstructorMarkerC8, i3);
                            typeParameterMarkerP.getClass();
                            if (typeSystemContext.t(typeParameterMarkerP) != TypeVariance.OUT) {
                                z = z6;
                            } else {
                                z = z7;
                            }
                        }
                        if (z) {
                            z2 = z6;
                            z3 = z7;
                        } else {
                            ArrayList arrayList3 = new ArrayList(CollectionsKt.t(arrayList2, i2));
                            for (RigidTypeMarker rigidTypeMarker7 : arrayList2) {
                                rigidTypeMarker7.getClass();
                                boolean z8 = z6;
                                typeArgumentMarkerM = typeSystemContext.m(rigidTypeMarker7, i3);
                                if (typeArgumentMarkerM != null) {
                                    boolean z9 = z7;
                                    if (typeSystemContext.m0(typeArgumentMarkerM) != TypeVariance.INV) {
                                        typeArgumentMarkerM = null;
                                    }
                                    if (typeArgumentMarkerM == null && (kotlinTypeMarkerQ0 = typeSystemContext.q0(typeArgumentMarkerM)) != null) {
                                        arrayList3.add(kotlinTypeMarkerQ0);
                                        z6 = z8;
                                        z7 = z9;
                                    }
                                }
                                throw new IllegalStateException(("Incorrect type: " + rigidTypeMarker7 + ", subType: " + rigidTypeMarkerL1 + ", superType: " + rigidTypeMarkerW2).toString());
                            }
                            z2 = z6;
                            z3 = z7;
                            KotlinTypeMarker kotlinTypeMarkerA = typeSystemContext.A(arrayList3);
                            kotlinTypeMarkerA.getClass();
                            argumentList.add(typeSystemContext.B(kotlinTypeMarkerA));
                        }
                        i3++;
                        z6 = z2;
                        z7 = z3;
                        i2 = 10;
                    }
                    boolean z10 = z6;
                    if (z && i(typeCheckerState, typeSystemContext, argumentList, rigidTypeMarkerW2)) {
                        return z10;
                    }
                    Function1 function1 = new Function1(arrayList2, typeCheckerState, typeSystemContext, rigidTypeMarkerW2) { // from class: kotlin.reflect.jvm.internal.impl.types.AbstractTypeChecker$$Lambda$0

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public final Collection f74159b;

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public final TypeCheckerState f74160c;
                        public final TypeSystemContext d;

                        /* JADX INFO: renamed from: e, reason: collision with root package name */
                        public final RigidTypeMarker f74161e;

                        {
                            this.f74159b = arrayList2;
                            this.f74160c = typeCheckerState;
                            this.d = typeSystemContext;
                            this.f74161e = rigidTypeMarkerW2;
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            TypeCheckerState.ForkPointContext forkPointContext = (TypeCheckerState.ForkPointContext) obj;
                            forkPointContext.getClass();
                            Iterator it7 = this.f74159b.iterator();
                            while (it7.hasNext()) {
                                forkPointContext.a(new AbstractTypeChecker$$Lambda$1(this.f74160c, this.d, (RigidTypeMarker) it7.next(), this.f74161e));
                            }
                            return Unit.f71739a;
                        }
                    };
                    TypeCheckerState.ForkPointContext.Default r1 = new TypeCheckerState.ForkPointContext.Default();
                    function1.invoke(r1);
                    return r1.f74240a;
                }
            }
        } else {
            typeConstructorMarkerC0 = typeSystemContext.c0(rigidTypeMarkerW2);
            typeConstructorMarkerC0.getClass();
            if (!typeSystemContext.G(typeConstructorMarkerC0)) {
                typeConstructorMarkerC8.getClass();
                if (typeSystemContext2.J(rigidTypeMarkerL1)) {
                    listC = d(typeCheckerState, typeSystemContext2, rigidTypeMarkerL1, typeConstructorMarkerC8);
                } else if (typeSystemContext2.h0(typeConstructorMarkerC8)) {
                    smartList = new SmartList();
                    typeCheckerState.c();
                    arrayDeque = typeCheckerState.f74238h;
                    arrayDeque.getClass();
                    smartSet = typeCheckerState.f74239i;
                    smartSet.getClass();
                    arrayDeque.push(rigidTypeMarkerL1);
                    while (!arrayDeque.isEmpty()) {
                        rigidTypeMarker = (RigidTypeMarker) arrayDeque.pop();
                        rigidTypeMarker.getClass();
                        if (smartSet.add(rigidTypeMarker)) {
                            if (typeSystemContext2.J(rigidTypeMarker)) {
                                smartList.add(rigidTypeMarker);
                                supertypesPolicy = TypeCheckerState.SupertypesPolicy.None.f74242a;
                            } else {
                                supertypesPolicy = TypeCheckerState.SupertypesPolicy.LowerIfFlexible.f74241a;
                            }
                            if (Intrinsics.c(supertypesPolicy, TypeCheckerState.SupertypesPolicy.None.f74242a)) {
                                supertypesPolicy = null;
                            }
                            if (supertypesPolicy != null) {
                                it = typeSystemContext2.U(typeSystemContext2.c0(rigidTypeMarker)).iterator();
                                while (it.hasNext()) {
                                    arrayDeque.add(supertypesPolicy.a(typeCheckerState, (KotlinTypeMarker) it.next()));
                                }
                            }
                        }
                    }
                    typeCheckerState.a();
                    arrayList = new ArrayList();
                    while (r6.hasNext()) {
                        rigidTypeMarker4.getClass();
                        CollectionsKt.j(arrayList, d(typeCheckerState, typeSystemContext2, rigidTypeMarker4, typeConstructorMarkerC8));
                    }
                    listC = arrayList;
                } else {
                    smartList = new SmartList();
                    typeCheckerState.c();
                    arrayDeque = typeCheckerState.f74238h;
                    arrayDeque.getClass();
                    smartSet = typeCheckerState.f74239i;
                    smartSet.getClass();
                    arrayDeque.push(rigidTypeMarkerL1);
                    while (!arrayDeque.isEmpty()) {
                        rigidTypeMarker = (RigidTypeMarker) arrayDeque.pop();
                        rigidTypeMarker.getClass();
                        if (smartSet.add(rigidTypeMarker)) {
                            if (typeSystemContext2.J(rigidTypeMarker)) {
                                smartList.add(rigidTypeMarker);
                                supertypesPolicy = TypeCheckerState.SupertypesPolicy.None.f74242a;
                            } else {
                                supertypesPolicy = TypeCheckerState.SupertypesPolicy.LowerIfFlexible.f74241a;
                            }
                            if (Intrinsics.c(supertypesPolicy, TypeCheckerState.SupertypesPolicy.None.f74242a)) {
                                supertypesPolicy = null;
                            }
                            if (supertypesPolicy != null) {
                                it = typeSystemContext2.U(typeSystemContext2.c0(rigidTypeMarker)).iterator();
                                while (it.hasNext()) {
                                    arrayDeque.add(supertypesPolicy.a(typeCheckerState, (KotlinTypeMarker) it.next()));
                                }
                            }
                        }
                    }
                    typeCheckerState.a();
                    arrayList = new ArrayList();
                    while (r6.hasNext()) {
                        rigidTypeMarker4.getClass();
                        CollectionsKt.j(arrayList, d(typeCheckerState, typeSystemContext2, rigidTypeMarker4, typeConstructorMarkerC8));
                    }
                    listC = arrayList;
                }
                listC.size();
                List<RigidTypeMarker> list2 = listC;
                i2 = 10;
                arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
                while (r6.hasNext()) {
                    rigidTypeMarker5.getClass();
                    UnwrappedType unwrappedTypeA4 = typeCheckerState.f74236e.a(rigidTypeMarker5);
                    unwrappedTypeA4.getClass();
                    rigidTypeMarkerK = typeSystemContext.k(unwrappedTypeA4);
                    if (rigidTypeMarkerK == null) {
                        rigidTypeMarker5 = rigidTypeMarkerK;
                    }
                    arrayList2.add(rigidTypeMarker5);
                }
                size = arrayList2.size();
                if (size != 0) {
                    typeConstructorMarkerC1 = typeSystemContext.c0(rigidTypeMarkerL1);
                    typeConstructorMarkerC1.getClass();
                    if (typeSystemContext.h0(typeConstructorMarkerC1)) {
                        return typeSystemContext.Q(typeConstructorMarkerC1);
                    }
                    typeConstructorMarkerC2 = typeSystemContext.c0(rigidTypeMarkerL1);
                    typeConstructorMarkerC2.getClass();
                    if (typeSystemContext.Q(typeConstructorMarkerC2)) {
                        return true;
                    }
                    typeCheckerState.c();
                    arrayDeque2 = typeCheckerState.f74238h;
                    arrayDeque2.getClass();
                    smartSet2 = typeCheckerState.f74239i;
                    smartSet2.getClass();
                    arrayDeque2.push(rigidTypeMarkerL1);
                    while (!arrayDeque2.isEmpty()) {
                        rigidTypeMarker2 = (RigidTypeMarker) arrayDeque2.pop();
                        rigidTypeMarker2.getClass();
                        if (!smartSet2.add(rigidTypeMarker2)) {
                            if (typeSystemContext.J(rigidTypeMarker2)) {
                                supertypesPolicy2 = TypeCheckerState.SupertypesPolicy.None.f74242a;
                            } else {
                                supertypesPolicy2 = TypeCheckerState.SupertypesPolicy.LowerIfFlexible.f74241a;
                            }
                            if (Intrinsics.c(supertypesPolicy2, TypeCheckerState.SupertypesPolicy.None.f74242a)) {
                                supertypesPolicy2 = null;
                            }
                            if (supertypesPolicy2 == null) {
                                continue;
                            } else {
                                it2 = typeSystemContext2.U(typeSystemContext2.c0(rigidTypeMarker2)).iterator();
                                while (it2.hasNext()) {
                                    rigidTypeMarkerA = supertypesPolicy2.a(typeCheckerState, (KotlinTypeMarker) it2.next());
                                    rigidTypeMarkerA.getClass();
                                    typeConstructorMarkerC3 = typeSystemContext.c0(rigidTypeMarkerA);
                                    typeConstructorMarkerC3.getClass();
                                    if (typeSystemContext.Q(typeConstructorMarkerC3)) {
                                        typeCheckerState.a();
                                        return true;
                                    }
                                    arrayDeque2.add(rigidTypeMarkerA);
                                }
                            }
                        }
                    }
                    typeCheckerState.a();
                    return false;
                }
                if (size != 1) {
                    RigidTypeMarker rigidTypeMarker8 = (RigidTypeMarker) CollectionsKt.A(arrayList2);
                    rigidTypeMarker8.getClass();
                    return i(typeCheckerState, typeSystemContext, typeSystemContext.n(rigidTypeMarker8), rigidTypeMarkerW2);
                }
                argumentList = new ArgumentList(typeSystemContext.M(typeConstructorMarkerC8));
                iM = typeSystemContext.M(typeConstructorMarkerC8);
                i3 = 0;
                z = false;
                while (i3 < iM) {
                    if (z) {
                        typeParameterMarkerP = typeSystemContext.p(typeConstructorMarkerC8, i3);
                        typeParameterMarkerP.getClass();
                        if (typeSystemContext.t(typeParameterMarkerP) != TypeVariance.OUT) {
                            z = z6;
                        } else {
                            z = z7;
                        }
                    } else {
                        z = z6;
                    }
                    if (z) {
                        ArrayList arrayList4 = new ArrayList(CollectionsKt.t(arrayList2, i2));
                        while (r15.hasNext()) {
                            rigidTypeMarker7.getClass();
                            boolean z11 = z6;
                            typeArgumentMarkerM = typeSystemContext.m(rigidTypeMarker7, i3);
                            if (typeArgumentMarkerM != null) {
                                boolean z12 = z7;
                                if (typeSystemContext.m0(typeArgumentMarkerM) != TypeVariance.INV) {
                                    typeArgumentMarkerM = null;
                                }
                                if (typeArgumentMarkerM == null) {
                                }
                            }
                            throw new IllegalStateException(("Incorrect type: " + rigidTypeMarker7 + ", subType: " + rigidTypeMarkerL1 + ", superType: " + rigidTypeMarkerW2).toString());
                        }
                        z2 = z6;
                        z3 = z7;
                        KotlinTypeMarker kotlinTypeMarkerA2 = typeSystemContext.A(arrayList4);
                        kotlinTypeMarkerA2.getClass();
                        argumentList.add(typeSystemContext.B(kotlinTypeMarkerA2));
                    } else {
                        z2 = z6;
                        z3 = z7;
                    }
                    i3++;
                    z6 = z2;
                    z7 = z3;
                    i2 = 10;
                }
                boolean z13 = z6;
                if (z) {
                }
                Function1 function2 = new Function1(arrayList2, typeCheckerState, typeSystemContext, rigidTypeMarkerW2) { // from class: kotlin.reflect.jvm.internal.impl.types.AbstractTypeChecker$$Lambda$0

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final Collection f74159b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final TypeCheckerState f74160c;
                    public final TypeSystemContext d;

                    /* JADX INFO: renamed from: e, reason: collision with root package name */
                    public final RigidTypeMarker f74161e;

                    {
                        this.f74159b = arrayList2;
                        this.f74160c = typeCheckerState;
                        this.d = typeSystemContext;
                        this.f74161e = rigidTypeMarkerW2;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        TypeCheckerState.ForkPointContext forkPointContext = (TypeCheckerState.ForkPointContext) obj;
                        forkPointContext.getClass();
                        Iterator it7 = this.f74159b.iterator();
                        while (it7.hasNext()) {
                            forkPointContext.a(new AbstractTypeChecker$$Lambda$1(this.f74160c, this.d, (RigidTypeMarker) it7.next(), this.f74161e));
                        }
                        return Unit.f71739a;
                    }
                };
                TypeCheckerState.ForkPointContext.Default r2 = new TypeCheckerState.ForkPointContext.Default();
                function2.invoke(r2);
                return r2.f74240a;
            }
        }
        return true;
    }
}
