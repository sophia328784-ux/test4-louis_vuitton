package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayDeque;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.RigidTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext;
import kotlin.reflect.jvm.internal.impl.utils.SmartSet;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractNullabilityChecker {
    public static boolean a(TypeCheckerState typeCheckerState, RigidTypeMarker rigidTypeMarker, TypeCheckerState.SupertypesPolicy supertypesPolicy) {
        typeCheckerState.getClass();
        rigidTypeMarker.getClass();
        supertypesPolicy.getClass();
        TypeSystemContext typeSystemContext = typeCheckerState.d;
        if ((typeSystemContext.J(rigidTypeMarker) && !typeSystemContext.o0(rigidTypeMarker)) || typeSystemContext.j(rigidTypeMarker)) {
            return true;
        }
        typeCheckerState.c();
        ArrayDeque arrayDeque = typeCheckerState.f74238h;
        arrayDeque.getClass();
        SmartSet smartSet = typeCheckerState.f74239i;
        smartSet.getClass();
        arrayDeque.push(rigidTypeMarker);
        while (!arrayDeque.isEmpty()) {
            RigidTypeMarker rigidTypeMarker2 = (RigidTypeMarker) arrayDeque.pop();
            rigidTypeMarker2.getClass();
            if (smartSet.add(rigidTypeMarker2)) {
                TypeCheckerState.SupertypesPolicy supertypesPolicy2 = typeSystemContext.o0(rigidTypeMarker2) ? TypeCheckerState.SupertypesPolicy.None.f74242a : supertypesPolicy;
                if (Intrinsics.c(supertypesPolicy2, TypeCheckerState.SupertypesPolicy.None.f74242a)) {
                    supertypesPolicy2 = null;
                }
                if (supertypesPolicy2 == null) {
                    continue;
                } else {
                    Iterator it = typeSystemContext.U(typeSystemContext.c0(rigidTypeMarker2)).iterator();
                    while (it.hasNext()) {
                        RigidTypeMarker rigidTypeMarkerA = supertypesPolicy2.a(typeCheckerState, (KotlinTypeMarker) it.next());
                        if ((typeSystemContext.J(rigidTypeMarkerA) && !typeSystemContext.o0(rigidTypeMarkerA)) || typeSystemContext.j(rigidTypeMarkerA)) {
                            typeCheckerState.a();
                            return true;
                        }
                        arrayDeque.add(rigidTypeMarkerA);
                    }
                }
            }
        }
        typeCheckerState.a();
        return false;
    }

    public static boolean b(TypeCheckerState typeCheckerState, RigidTypeMarker rigidTypeMarker, TypeConstructorMarker typeConstructorMarker) {
        TypeSystemContext typeSystemContext = typeCheckerState.d;
        if (typeSystemContext.L(rigidTypeMarker)) {
            return true;
        }
        if (typeSystemContext.o0(rigidTypeMarker)) {
            return false;
        }
        if (typeCheckerState.f74234b && typeSystemContext.D(rigidTypeMarker)) {
            return true;
        }
        return typeSystemContext.s0(typeSystemContext.c0(rigidTypeMarker), typeConstructorMarker);
    }
}
