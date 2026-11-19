package kotlin.reflect.jvm.internal.impl.types;

import defpackage.b21;
import defpackage.cj;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext;
import kotlin.reflect.jvm.internal.impl.types.checker.SimpleClassicTypeSystemContext;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeArgumentMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeParameterMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeVariance;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ExpandedTypeUtilsKt {

    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f74192a;

        static {
            int[] iArr = new int[TypeVariance.values().length];
            try {
                iArr[TypeVariance.IN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f74192a = iArr;
        }
    }

    public static final TypeParameterMarker a(KotlinTypeMarker kotlinTypeMarker) {
        boolean z;
        UnwrappedType unwrappedTypeR;
        SimpleClassicTypeSystemContext simpleClassicTypeSystemContext = SimpleClassicTypeSystemContext.f74291a;
        TypeParameterDescriptor typeParameterDescriptorT = ClassicTypeSystemContext.DefaultImpls.t(simpleClassicTypeSystemContext.V(kotlinTypeMarker));
        if (typeParameterDescriptorT != null) {
            return typeParameterDescriptorT;
        }
        if (kotlinTypeMarker instanceof KotlinType) {
            z = KotlinBuiltIns.z((KotlinType) kotlinTypeMarker);
        } else {
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(kotlinTypeMarker);
            sb.append(", ");
            b21.n(cj.l(Reflection.f71922a, kotlinTypeMarker.getClass(), sb));
            z = false;
        }
        if (z && (unwrappedTypeR = ClassicTypeSystemContext.DefaultImpls.r(simpleClassicTypeSystemContext, (TypeArgumentMarker) CollectionsKt.h0(ClassicTypeSystemContext.DefaultImpls.n(kotlinTypeMarker)))) != null) {
            return a(unwrappedTypeR);
        }
        return null;
    }

    public static final KotlinTypeMarker b(KotlinTypeMarker kotlinTypeMarker, HashSet hashSet) {
        SimpleType simpleTypeG;
        KotlinTypeMarker kotlinTypeMarkerW;
        KotlinTypeMarker kotlinTypeMarkerB;
        TypeConstructor typeConstructorJ;
        SimpleClassicTypeSystemContext simpleClassicTypeSystemContext = SimpleClassicTypeSystemContext.f74291a;
        TypeConstructorMarker typeConstructorMarkerV = simpleClassicTypeSystemContext.V(kotlinTypeMarker);
        if (hashSet.add(typeConstructorMarkerV)) {
            TypeParameterDescriptor typeParameterDescriptorT = ClassicTypeSystemContext.DefaultImpls.t(typeConstructorMarkerV);
            int i2 = 0;
            if (typeParameterDescriptorT != null) {
                KotlinTypeMarker kotlinTypeMarkerQ = ClassicTypeSystemContext.DefaultImpls.q(typeParameterDescriptorT);
                KotlinTypeMarker kotlinTypeMarkerB2 = b(kotlinTypeMarkerQ, hashSet);
                if (kotlinTypeMarkerB2 != null) {
                    if (ClassicTypeSystemContext.DefaultImpls.E(simpleClassicTypeSystemContext.V(kotlinTypeMarkerQ)) || ((kotlinTypeMarkerQ instanceof SimpleTypeMarker) && ClassicTypeSystemContext.DefaultImpls.K((SimpleTypeMarker) kotlinTypeMarkerQ))) {
                        i2 = 1;
                    }
                    if ((kotlinTypeMarkerB2 instanceof SimpleTypeMarker) && ClassicTypeSystemContext.DefaultImpls.K((SimpleTypeMarker) kotlinTypeMarkerB2) && ClassicTypeSystemContext.DefaultImpls.J(kotlinTypeMarker) && i2 != 0) {
                        return simpleClassicTypeSystemContext.t0(kotlinTypeMarkerQ);
                    }
                    return (ClassicTypeSystemContext.DefaultImpls.J(kotlinTypeMarkerB2) || !ClassicTypeSystemContext.DefaultImpls.H(kotlinTypeMarker)) ? kotlinTypeMarkerB2 : simpleClassicTypeSystemContext.t0(kotlinTypeMarkerB2);
                }
            } else {
                if (!ClassicTypeSystemContext.DefaultImpls.E(typeConstructorMarkerV)) {
                    return kotlinTypeMarker;
                }
                List listP = ClassicTypeSystemContext.DefaultImpls.p(simpleClassicTypeSystemContext.V(kotlinTypeMarker));
                List listN = ClassicTypeSystemContext.DefaultImpls.n(kotlinTypeMarker);
                ArrayList arrayList = new ArrayList(CollectionsKt.t(listN, 10));
                for (Object obj : listN) {
                    int i3 = i2 + 1;
                    if (i2 < 0) {
                        CollectionsKt.t0();
                        throw null;
                    }
                    KotlinType kotlinTypeR = ClassicTypeSystemContext.DefaultImpls.r(simpleClassicTypeSystemContext, (TypeArgumentMarker) obj);
                    if (kotlinTypeR == null) {
                        kotlinTypeR = ClassicTypeSystemContext.DefaultImpls.q((TypeParameterMarker) listP.get(i2));
                    }
                    arrayList.add(kotlinTypeR);
                    i2 = i3;
                }
                List<TypeParameterMarker> list = listP;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list, 10));
                for (TypeParameterMarker typeParameterMarker : list) {
                    typeParameterMarker.getClass();
                    if (typeParameterMarker instanceof TypeParameterDescriptor) {
                        typeConstructorJ = ((TypeParameterDescriptor) typeParameterMarker).j();
                        typeConstructorJ.getClass();
                    } else {
                        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
                        sb.append(typeParameterMarker);
                        sb.append(", ");
                        b21.n(cj.l(Reflection.f71922a, typeParameterMarker.getClass(), sb));
                        typeConstructorJ = null;
                    }
                    arrayList2.add(typeConstructorJ);
                }
                Map mapN = MapsKt.n(CollectionsKt.E0(arrayList2, arrayList));
                mapN.getClass();
                ArrayList arrayList3 = new ArrayList(mapN.size());
                for (Map.Entry entry : mapN.entrySet()) {
                    TypeConstructorMarker typeConstructorMarker = (TypeConstructorMarker) entry.getKey();
                    KotlinTypeMarker kotlinTypeMarker2 = (KotlinTypeMarker) entry.getValue();
                    typeConstructorMarker.getClass();
                    kotlinTypeMarker2.getClass();
                    arrayList3.add(new Pair((TypeConstructor) typeConstructorMarker, new TypeProjectionImpl((KotlinType) kotlinTypeMarker2)));
                }
                Map mapN2 = MapsKt.n(arrayList3);
                TypeSubstitutor typeSubstitutor = TypeSubstitutor.f74260b;
                TypeConstructorSubstitution.Companion companion = TypeConstructorSubstitution.f74244b;
                companion.getClass();
                TypeSubstitutor typeSubstitutorE = TypeSubstitutor.e(TypeConstructorSubstitution.Companion.b(companion, mapN2));
                kotlinTypeMarker.getClass();
                if (kotlinTypeMarker instanceof KotlinType) {
                    simpleTypeG = InlineClassesUtilsKt.g((KotlinType) kotlinTypeMarker);
                } else {
                    StringBuilder sb2 = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
                    sb2.append(kotlinTypeMarker);
                    sb2.append(", ");
                    b21.n(cj.l(Reflection.f71922a, kotlinTypeMarker.getClass(), sb2));
                    simpleTypeG = null;
                }
                if (simpleTypeG == null) {
                    kotlinTypeMarkerW = null;
                } else {
                    TypeParameterMarker typeParameterMarkerA = a(simpleTypeG);
                    kotlinTypeMarkerW = typeParameterMarkerA == null ? ClassicTypeSystemContext.DefaultImpls.W(typeSubstitutorE, simpleTypeG) : c(simpleTypeG, ClassicTypeSystemContext.DefaultImpls.W(typeSubstitutorE, ClassicTypeSystemContext.DefaultImpls.q(typeParameterMarkerA)));
                }
                if (kotlinTypeMarkerW != null && (kotlinTypeMarkerB = b(kotlinTypeMarkerW, hashSet)) != null) {
                    if (!ClassicTypeSystemContext.DefaultImpls.J(kotlinTypeMarker)) {
                        return kotlinTypeMarkerB;
                    }
                    if (ClassicTypeSystemContext.DefaultImpls.J(kotlinTypeMarkerB)) {
                        return kotlinTypeMarker;
                    }
                    return ((kotlinTypeMarkerB instanceof SimpleTypeMarker) && ClassicTypeSystemContext.DefaultImpls.K((SimpleTypeMarker) kotlinTypeMarkerB)) ? kotlinTypeMarker : simpleClassicTypeSystemContext.t0(kotlinTypeMarkerB);
                }
            }
        }
        return null;
    }

    public static final KotlinTypeMarker c(KotlinTypeMarker kotlinTypeMarker, KotlinTypeMarker kotlinTypeMarker2) {
        SimpleClassicTypeSystemContext simpleClassicTypeSystemContext = SimpleClassicTypeSystemContext.f74291a;
        if (ClassicTypeSystemContext.DefaultImpls.t(simpleClassicTypeSystemContext.V(kotlinTypeMarker)) != null) {
            return ClassicTypeSystemContext.DefaultImpls.J(kotlinTypeMarker) ? simpleClassicTypeSystemContext.t0(kotlinTypeMarker2) : kotlinTypeMarker2;
        }
        TypeArgumentMarker typeArgumentMarker = (TypeArgumentMarker) CollectionsKt.h0(ClassicTypeSystemContext.DefaultImpls.n(kotlinTypeMarker));
        if (WhenMappings.f74192a[ClassicTypeSystemContext.DefaultImpls.u(typeArgumentMarker).ordinal()] == 1) {
            simpleClassicTypeSystemContext.g();
            throw null;
        }
        UnwrappedType unwrappedTypeR = ClassicTypeSystemContext.DefaultImpls.r(simpleClassicTypeSystemContext, typeArgumentMarker);
        unwrappedTypeR.getClass();
        KotlinTypeMarker kotlinTypeMarkerC = c(unwrappedTypeR, kotlinTypeMarker2);
        kotlinTypeMarkerC.getClass();
        if (kotlinTypeMarkerC instanceof KotlinType) {
            simpleClassicTypeSystemContext.g();
            throw null;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(simpleClassicTypeSystemContext);
        sb.append(", ");
        throw new IllegalArgumentException(cj.l(Reflection.f71922a, simpleClassicTypeSystemContext.getClass(), sb).toString());
    }
}
