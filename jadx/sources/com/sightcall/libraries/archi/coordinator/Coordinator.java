package com.sightcall.libraries.archi.coordinator;

import defpackage.md;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00028\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u000b\u001a\u00020\fH$J\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\b\u0010\u0017\u001a\u00020\fH$J\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000J\u0014\u0010\u0019\u001a\u00020\f2\n\u0010\u001a\u001a\u0006\u0012\u0002\b\u00030\u0000H\u0004J\u001c\u0010\u001b\u001a\u00020\f2\u0012\u0010\u001a\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u00000\u001cH\u0004J'\u0010\u001d\u001a\u0002H\u001e\"\f\b\u0001\u0010\u001e*\u0006\u0012\u0002\b\u00030\u00002\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u0002H\u001e0\u001c¢\u0006\u0002\u0010 J\"\u0010!\u001a\u00020\u000f\"\f\b\u0001\u0010\u001e*\u0006\u0012\u0002\b\u00030\u00002\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u0002H\u001e0\u001cJ+\u0010\"\u001a\u0004\u0018\u0001H\u001e\"\f\b\u0001\u0010\u001e*\u0006\u0012\u0002\b\u00030\u00002\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u0002H\u001e0\u001cH\u0002¢\u0006\u0002\u0010 J\u0012\u0010#\u001a\u00020\f2\n\u0010\u001a\u001a\u0006\u0012\u0002\b\u00030\u0000J\u0012\u0010$\u001a\u00020\f2\n\u0010\u001a\u001a\u0006\u0012\u0002\b\u00030\u0000R\u0016\u0010\u0003\u001a\u00028\u0000X\u0084\u0004¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007R\u0018\u0010\t\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00000\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcom/sightcall/libraries/archi/coordinator/Coordinator;", "C", "", "component", "<init>", "(Ljava/lang/Object;)V", "getComponent", "()Ljava/lang/Object;", "Ljava/lang/Object;", "childrenStack", "Ljava/util/Deque;", "onStart", "", "start", "backPressed", "", "requestPermissionsResult", "requestCode", "", "grantResults", "", "determinePermissionState", "Lcom/sightcall/libraries/archi/coordinator/PermissionState;", "onRelease", "release", "attachCoordinator", "coordinator", "detachCoordinator", "Lkotlin/reflect/KClass;", "findChildCoordinator", "T", "type", "(Lkotlin/reflect/KClass;)Lcom/sightcall/libraries/archi/coordinator/Coordinator;", "isCoordinatorAttached", "findFromKClass", "attachTo", "detachFrom", "archi_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class Coordinator<C> {
    private final Deque<Coordinator<?>> childrenStack = new ArrayDeque();
    private final C component;

    public Coordinator(C c2) {
        this.component = c2;
    }

    private final PermissionState determinePermissionState(int[] grantResults) {
        return ((grantResults.length == 0) || grantResults[0] != 0) ? PermissionState.DENIED : PermissionState.GRANTED;
    }

    private final <T extends Coordinator<?>> T findFromKClass(KClass<T> type) {
        Object next;
        Iterator<T> it = this.childrenStack.iterator();
        while (it.hasNext()) {
            next = it.next();
            if (Reflection.f71922a.b(((Coordinator) next).getClass()).equals(type)) {
                return (T) next;
            }
        }
        next = null;
        return (T) next;
    }

    public final void attachCoordinator(Coordinator<?> coordinator) {
        coordinator.getClass();
        this.childrenStack.push(coordinator);
    }

    public final void attachTo(Coordinator<?> coordinator) {
        coordinator.getClass();
        coordinator.attachCoordinator(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean backPressed() {
        Coordinator<?> coordinatorPeek = this.childrenStack.peek();
        boolean zBackPressed = coordinatorPeek != null ? coordinatorPeek.backPressed() : false;
        if (zBackPressed) {
            return zBackPressed;
        }
        return (this instanceof BackPressedListener) && ((BackPressedListener) this).onBackPressed();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void detachCoordinator(KClass<? extends Coordinator<?>> coordinator) {
        coordinator.getClass();
        Coordinator coordinatorFindFromKClass = findFromKClass(coordinator);
        if (coordinatorFindFromKClass != null) {
            coordinatorFindFromKClass.release();
            this.childrenStack.removeFirstOccurrence(coordinatorFindFromKClass);
        }
    }

    public final void detachFrom(Coordinator<?> coordinator) {
        coordinator.getClass();
        coordinator.detachCoordinator(Reflection.f71922a.b(getClass()));
    }

    public final <T extends Coordinator<?>> T findChildCoordinator(KClass<T> type) {
        type.getClass();
        T t = (T) findFromKClass(type);
        if (t != null) {
            return t;
        }
        md.k("Required coordinator is not a child of this coordinator");
        return null;
    }

    public final C getComponent() {
        return this.component;
    }

    public final <T extends Coordinator<?>> boolean isCoordinatorAttached(KClass<T> type) {
        type.getClass();
        return findFromKClass(type) != null;
    }

    public abstract void onRelease();

    public abstract void onStart();

    public final Coordinator<C> release() {
        Iterator<T> it = this.childrenStack.iterator();
        while (it.hasNext()) {
            ((Coordinator) it.next()).release();
        }
        this.childrenStack.clear();
        onRelease();
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean requestPermissionsResult(int requestCode, int[] grantResults) {
        boolean z;
        grantResults.getClass();
        Iterator<T> it = this.childrenStack.iterator();
        loop0: while (true) {
            z = false;
            while (true) {
                if (!it.hasNext()) {
                    break loop0;
                }
                Coordinator coordinator = (Coordinator) it.next();
                if (z || coordinator.requestPermissionsResult(requestCode, grantResults)) {
                    z = true;
                }
            }
        }
        if (z) {
            return z;
        }
        return (this instanceof PermissionListener) && ((PermissionListener) this).onRequestPermissionsResult(new Permission(requestCode, determinePermissionState(grantResults)));
    }

    public final Coordinator<C> start() {
        onStart();
        return this;
    }
}
