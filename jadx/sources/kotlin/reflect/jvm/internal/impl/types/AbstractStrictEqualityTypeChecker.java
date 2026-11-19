package kotlin.reflect.jvm.internal.impl.types;

import kotlin.reflect.jvm.internal.impl.types.model.FlexibleTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.RigidTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeArgumentMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractStrictEqualityTypeChecker {
    public static boolean a(TypeSystemContext typeSystemContext, RigidTypeMarker rigidTypeMarker, RigidTypeMarker rigidTypeMarker2) {
        if (typeSystemContext.d(rigidTypeMarker) == typeSystemContext.d(rigidTypeMarker2) && typeSystemContext.o0(rigidTypeMarker) == typeSystemContext.o0(rigidTypeMarker2) && typeSystemContext.j(rigidTypeMarker) == typeSystemContext.j(rigidTypeMarker2) && typeSystemContext.s0(typeSystemContext.c0(rigidTypeMarker), typeSystemContext.c0(rigidTypeMarker2))) {
            if (typeSystemContext.I(rigidTypeMarker, rigidTypeMarker2)) {
                return true;
            }
            int iD = typeSystemContext.d(rigidTypeMarker);
            for (int i2 = 0; i2 < iD; i2++) {
                TypeArgumentMarker typeArgumentMarkerE = typeSystemContext.E(rigidTypeMarker, i2);
                TypeArgumentMarker typeArgumentMarkerE2 = typeSystemContext.E(rigidTypeMarker2, i2);
                if (typeSystemContext.s(typeArgumentMarkerE) == typeSystemContext.s(typeArgumentMarkerE2)) {
                    if (!typeSystemContext.s(typeArgumentMarkerE)) {
                        if (typeSystemContext.m0(typeArgumentMarkerE) == typeSystemContext.m0(typeArgumentMarkerE2)) {
                            KotlinTypeMarker kotlinTypeMarkerQ0 = typeSystemContext.q0(typeArgumentMarkerE);
                            kotlinTypeMarkerQ0.getClass();
                            KotlinTypeMarker kotlinTypeMarkerQ1 = typeSystemContext.q0(typeArgumentMarkerE2);
                            kotlinTypeMarkerQ1.getClass();
                            if (!b(typeSystemContext, kotlinTypeMarkerQ0, kotlinTypeMarkerQ1)) {
                            }
                        }
                    }
                }
            }
            return true;
        }
        return false;
    }

    public static boolean b(TypeSystemContext typeSystemContext, KotlinTypeMarker kotlinTypeMarker, KotlinTypeMarker kotlinTypeMarker2) {
        if (kotlinTypeMarker == kotlinTypeMarker2) {
            return true;
        }
        RigidTypeMarker rigidTypeMarkerK = typeSystemContext.k(kotlinTypeMarker);
        RigidTypeMarker rigidTypeMarkerK2 = typeSystemContext.k(kotlinTypeMarker2);
        if (rigidTypeMarkerK != null && rigidTypeMarkerK2 != null) {
            return a(typeSystemContext, rigidTypeMarkerK, rigidTypeMarkerK2);
        }
        FlexibleTypeMarker flexibleTypeMarkerB0 = typeSystemContext.b0(kotlinTypeMarker);
        FlexibleTypeMarker flexibleTypeMarkerB1 = typeSystemContext.b0(kotlinTypeMarker2);
        return flexibleTypeMarkerB0 != null && flexibleTypeMarkerB1 != null && a(typeSystemContext, typeSystemContext.a(flexibleTypeMarkerB0), typeSystemContext.a(flexibleTypeMarkerB1)) && a(typeSystemContext, typeSystemContext.c(flexibleTypeMarkerB0), typeSystemContext.c(flexibleTypeMarkerB1));
    }
}
