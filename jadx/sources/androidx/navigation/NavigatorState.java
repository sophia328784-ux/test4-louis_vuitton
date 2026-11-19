package androidx.navigation;

import android.os.Bundle;
import androidx.navigation.internal.SynchronizedObject;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/navigation/NavigatorState;", "", "<init>", "()V", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class NavigatorState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SynchronizedObject f18210a = new SynchronizedObject();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableStateFlow f18211b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableStateFlow f18212c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final StateFlow f18213e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final StateFlow f18214f;

    public NavigatorState() {
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(EmptyList.f71768b);
        this.f18211b = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(EmptySet.f71770b);
        this.f18212c = mutableStateFlowA2;
        this.f18213e = FlowKt.b(mutableStateFlowA);
        this.f18214f = FlowKt.b(mutableStateFlowA2);
    }

    public abstract NavBackStackEntry a(NavDestination navDestination, Bundle bundle);

    public void b(NavBackStackEntry navBackStackEntry) {
        navBackStackEntry.getClass();
        MutableStateFlow mutableStateFlow = this.f18212c;
        mutableStateFlow.setValue(SetsKt.c((Set) mutableStateFlow.getValue(), navBackStackEntry));
    }

    public final void c(NavBackStackEntry navBackStackEntry) {
        int iNextIndex;
        synchronized (this.f18210a) {
            try {
                ArrayList arrayListZ0 = CollectionsKt.z0((Collection) this.f18213e.getValue());
                ListIterator listIterator = arrayListZ0.listIterator(arrayListZ0.size());
                while (true) {
                    if (!listIterator.hasPrevious()) {
                        iNextIndex = -1;
                        break;
                    } else if (Intrinsics.c(((NavBackStackEntry) listIterator.previous()).g, navBackStackEntry.g)) {
                        iNextIndex = listIterator.nextIndex();
                        break;
                    }
                }
                arrayListZ0.set(iNextIndex, navBackStackEntry);
                this.f18211b.setValue(arrayListZ0);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void d(NavBackStackEntry navBackStackEntry, boolean z) {
        navBackStackEntry.getClass();
        synchronized (this.f18210a) {
            try {
                MutableStateFlow mutableStateFlow = this.f18211b;
                Iterable iterable = (Iterable) mutableStateFlow.getValue();
                ArrayList arrayList = new ArrayList();
                for (Object obj : iterable) {
                    if (Intrinsics.c((NavBackStackEntry) obj, navBackStackEntry)) {
                        break;
                    } else {
                        arrayList.add(obj);
                    }
                }
                mutableStateFlow.setValue(arrayList);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void e(NavBackStackEntry navBackStackEntry, boolean z) {
        Object objPrevious;
        navBackStackEntry.getClass();
        MutableStateFlow mutableStateFlow = this.f18212c;
        Iterable iterable = (Iterable) mutableStateFlow.getValue();
        boolean z2 = iterable instanceof Collection;
        StateFlow stateFlow = this.f18213e;
        if (!z2 || !((Collection) iterable).isEmpty()) {
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                if (((NavBackStackEntry) it.next()) == navBackStackEntry) {
                    Iterable iterable2 = (Iterable) stateFlow.getValue();
                    if ((iterable2 instanceof Collection) && ((Collection) iterable2).isEmpty()) {
                        return;
                    }
                    Iterator it2 = iterable2.iterator();
                    while (it2.hasNext()) {
                        if (((NavBackStackEntry) it2.next()) == navBackStackEntry) {
                            break;
                        }
                    }
                    return;
                }
            }
        }
        mutableStateFlow.setValue(SetsKt.g((Set) mutableStateFlow.getValue(), navBackStackEntry));
        List list = (List) stateFlow.getValue();
        ListIterator listIterator = list.listIterator(list.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                objPrevious = null;
                break;
            }
            objPrevious = listIterator.previous();
            NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) objPrevious;
            if (!Intrinsics.c(navBackStackEntry2, navBackStackEntry) && ((List) stateFlow.getValue()).lastIndexOf(navBackStackEntry2) < ((List) stateFlow.getValue()).lastIndexOf(navBackStackEntry)) {
                break;
            }
        }
        NavBackStackEntry navBackStackEntry3 = (NavBackStackEntry) objPrevious;
        if (navBackStackEntry3 != null) {
            mutableStateFlow.setValue(SetsKt.g((Set) mutableStateFlow.getValue(), navBackStackEntry3));
        }
        d(navBackStackEntry, z);
    }

    public void f(NavBackStackEntry navBackStackEntry) {
        navBackStackEntry.getClass();
        MutableStateFlow mutableStateFlow = this.f18212c;
        mutableStateFlow.setValue(SetsKt.g((Set) mutableStateFlow.getValue(), navBackStackEntry));
    }

    public void g(NavBackStackEntry navBackStackEntry) {
        navBackStackEntry.getClass();
        synchronized (this.f18210a) {
            MutableStateFlow mutableStateFlow = this.f18211b;
            mutableStateFlow.setValue(CollectionsKt.X(navBackStackEntry, (Collection) mutableStateFlow.getValue()));
        }
    }

    public final void h(NavBackStackEntry navBackStackEntry) {
        navBackStackEntry.getClass();
        MutableStateFlow mutableStateFlow = this.f18212c;
        Iterable iterable = (Iterable) mutableStateFlow.getValue();
        boolean z = iterable instanceof Collection;
        StateFlow stateFlow = this.f18213e;
        if (!z || !((Collection) iterable).isEmpty()) {
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                if (((NavBackStackEntry) it.next()) == navBackStackEntry) {
                    Iterable iterable2 = (Iterable) stateFlow.getValue();
                    if (!(iterable2 instanceof Collection) || !((Collection) iterable2).isEmpty()) {
                        Iterator it2 = iterable2.iterator();
                        while (it2.hasNext()) {
                            if (((NavBackStackEntry) it2.next()) == navBackStackEntry) {
                                return;
                            }
                        }
                        break;
                    }
                    break;
                }
            }
        }
        NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) CollectionsKt.N((List) stateFlow.getValue());
        if (navBackStackEntry2 != null) {
            mutableStateFlow.setValue(SetsKt.g((Set) mutableStateFlow.getValue(), navBackStackEntry2));
        }
        mutableStateFlow.setValue(SetsKt.g((Set) mutableStateFlow.getValue(), navBackStackEntry));
        g(navBackStackEntry);
    }
}
