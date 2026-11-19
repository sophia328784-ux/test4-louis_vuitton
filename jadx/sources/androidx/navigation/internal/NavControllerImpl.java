package androidx.navigation.internal;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.collection.SparseArrayCompat;
import androidx.collection.SparseArrayCompatKt;
import androidx.collection.internal.ContainerHelpersKt;
import androidx.core.app.TaskStackBuilder;
import androidx.core.os.BundleKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStore;
import androidx.navigation.FloatingWindow;
import androidx.navigation.NavArgument;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavBackStackEntryState;
import androidx.navigation.NavController;
import androidx.navigation.NavControllerViewModel;
import androidx.navigation.NavDeepLinkRequest;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraph;
import androidx.navigation.NavOptions;
import androidx.navigation.NavOptionsBuilderKt;
import androidx.navigation.NavType;
import androidx.navigation.Navigator;
import androidx.navigation.NavigatorProvider;
import androidx.navigation.SupportingPane;
import androidx.navigation.internal.NavControllerImpl;
import androidx.navigation.serialization.RouteSerializerKt;
import androidx.savedstate.SavedStateReader;
import defpackage.ag0;
import defpackage.az;
import defpackage.bm;
import defpackage.d1;
import defpackage.fc;
import defpackage.k2;
import defpackage.k3;
import defpackage.k60;
import defpackage.lc0;
import defpackage.lt;
import defpackage.md;
import defpackage.mt;
import defpackage.n00;
import defpackage.pq0;
import defpackage.tg0;
import defpackage.wc0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.reflect.KClass;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.TakeWhileSequence;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.serialization.SerializersKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\tB\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Landroidx/navigation/internal/NavControllerImpl;", "", "Landroidx/navigation/NavController;", "navController", "Lkotlin/Function0;", "", "updateOnBackPressedCallbackEnabledCallback", "<init>", "(Landroidx/navigation/NavController;Lkotlin/jvm/functions/Function0;)V", "Companion", "navigation-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class NavControllerImpl {
    public static final /* synthetic */ int B = 0;
    public final SharedFlowImpl A;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final NavController f18332a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function0 f18333b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public NavGraph f18334c;
    public Bundle d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Bundle[] f18335e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayDeque f18336f;
    public final MutableStateFlow g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final StateFlow f18337h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MutableStateFlow f18338i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final StateFlow f18339j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final LinkedHashMap f18340k;
    public final LinkedHashMap l;
    public final LinkedHashMap m;
    public final LinkedHashMap n;
    public LifecycleOwner o;
    public NavControllerViewModel p;
    public final ArrayList q;
    public Lifecycle.State r;
    public final k2 s;
    public final NavigatorProvider t;
    public final LinkedHashMap u;
    public Function1 v;
    public wc0 w;
    public final LinkedHashMap x;
    public int y;
    public final ArrayList z;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b\u0080\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004¨\u0006\f"}, d2 = {"Landroidx/navigation/internal/NavControllerImpl$Companion;", "", "", "TAG", "Ljava/lang/String;", "KEY_NAVIGATOR_STATE", "KEY_NAVIGATOR_STATE_NAMES", "KEY_BACK_STACK", "KEY_BACK_STACK_DEST_IDS", "KEY_BACK_STACK_IDS", "KEY_BACK_STACK_STATES_IDS", "KEY_BACK_STACK_STATES_PREFIX", "navigation-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public NavControllerImpl(NavController navController, Function0<Unit> function0) {
        navController.getClass();
        function0.getClass();
        this.f18332a = navController;
        this.f18333b = function0;
        this.f18336f = new ArrayDeque();
        EmptyList emptyList = EmptyList.f71768b;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(emptyList);
        this.g = mutableStateFlowA;
        this.f18337h = FlowKt.b(mutableStateFlowA);
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(emptyList);
        this.f18338i = mutableStateFlowA2;
        this.f18339j = FlowKt.b(mutableStateFlowA2);
        this.f18340k = new LinkedHashMap();
        this.l = new LinkedHashMap();
        this.m = new LinkedHashMap();
        this.n = new LinkedHashMap();
        this.q = new ArrayList();
        this.r = Lifecycle.State.INITIALIZED;
        this.s = new k2(this, 3);
        this.t = new NavigatorProvider();
        this.u = new LinkedHashMap();
        this.x = new LinkedHashMap();
        this.z = new ArrayList();
        this.A = SharedFlowKt.b(1, 0, BufferOverflow.DROP_OLDEST, 2);
    }

    public static NavDestination e(int i2, NavDestination navDestination, NavDestination navDestination2, boolean z) {
        navDestination.getClass();
        if (navDestination.f18152c.f18344e == i2 && (navDestination2 == null || (navDestination.equals(navDestination2) && Intrinsics.c(navDestination.d, navDestination2.d)))) {
            return navDestination;
        }
        NavGraph navGraph = navDestination instanceof NavGraph ? (NavGraph) navDestination : null;
        if (navGraph == null) {
            navGraph = navDestination.d;
            navGraph.getClass();
        }
        return navGraph.f18165h.d(i2, navGraph, navDestination2, z);
    }

    public static /* synthetic */ void s(NavControllerImpl navControllerImpl, NavBackStackEntry navBackStackEntry) {
        navControllerImpl.r(navBackStackEntry, false, new ArrayDeque());
    }

    public final void a(NavDestination navDestination, Bundle bundle, NavBackStackEntry navBackStackEntry, List list) {
        Bundle bundle2;
        NavGraph navGraph;
        Object objPrevious;
        Object objPrevious2;
        NavDestination navDestination2 = navBackStackEntry.f18113c;
        boolean z = navDestination2 instanceof FloatingWindow;
        ArrayDeque arrayDeque = this.f18336f;
        if (!z) {
            while (!arrayDeque.isEmpty() && (((NavBackStackEntry) arrayDeque.last()).f18113c instanceof FloatingWindow) && p(((NavBackStackEntry) arrayDeque.last()).f18113c.f18152c.f18344e, true, false)) {
            }
        }
        ArrayDeque<NavBackStackEntry> arrayDeque2 = new ArrayDeque();
        boolean z2 = navDestination instanceof NavGraph;
        NavController navController = this.f18332a;
        Object obj = null;
        if (z2) {
            NavDestination navDestination3 = navDestination2;
            while (true) {
                navDestination3.getClass();
                NavGraph navGraph2 = navDestination3.d;
                if (navGraph2 != null) {
                    ListIterator listIterator = list.listIterator(list.size());
                    do {
                        if (!listIterator.hasPrevious()) {
                            objPrevious2 = null;
                            break;
                        }
                        objPrevious2 = listIterator.previous();
                    } while (!Intrinsics.c(((NavBackStackEntry) objPrevious2).f18113c, navGraph2));
                    NavBackStackEntry navBackStackEntryA = (NavBackStackEntry) objPrevious2;
                    if (navBackStackEntryA == null) {
                        bundle2 = bundle;
                        navBackStackEntryA = NavBackStackEntry.Companion.a(NavBackStackEntry.f18111k, navController.f18123c, navGraph2, bundle2, k(), this.p);
                    } else {
                        bundle2 = bundle;
                    }
                    arrayDeque2.addFirst(navBackStackEntryA);
                    if (!arrayDeque.isEmpty() && ((NavBackStackEntry) arrayDeque.last()).f18113c == navGraph2) {
                        s(this, (NavBackStackEntry) arrayDeque.last());
                    }
                } else {
                    bundle2 = bundle;
                }
                if (navGraph2 == null || navGraph2 == navDestination) {
                    break;
                } else {
                    navDestination3 = navGraph2;
                }
            }
        } else {
            bundle2 = bundle;
        }
        NavDestination navDestination4 = arrayDeque2.isEmpty() ? navDestination2 : ((NavBackStackEntry) arrayDeque2.first()).f18113c;
        while (navDestination4 != null && d(navDestination4.f18152c.f18344e, navDestination4) != navDestination4) {
            NavGraph navGraph3 = navDestination4.d;
            if (navGraph3 != null) {
                Bundle bundle3 = (bundle2 == null || !bundle2.isEmpty()) ? bundle2 : null;
                ListIterator listIterator2 = list.listIterator(list.size());
                do {
                    if (!listIterator2.hasPrevious()) {
                        objPrevious = null;
                        break;
                    }
                    objPrevious = listIterator2.previous();
                } while (!Intrinsics.c(((NavBackStackEntry) objPrevious).f18113c, navGraph3));
                NavBackStackEntry navBackStackEntryA2 = (NavBackStackEntry) objPrevious;
                if (navBackStackEntryA2 == null) {
                    navGraph = navGraph3;
                    navBackStackEntryA2 = NavBackStackEntry.Companion.a(NavBackStackEntry.f18111k, navController.f18123c, navGraph, navGraph3.f(bundle3), k(), this.p);
                } else {
                    navGraph = navGraph3;
                }
                arrayDeque2.addFirst(navBackStackEntryA2);
            } else {
                navGraph = navGraph3;
            }
            navDestination4 = navGraph;
        }
        if (!arrayDeque2.isEmpty()) {
            navDestination2 = ((NavBackStackEntry) arrayDeque2.first()).f18113c;
        }
        while (!arrayDeque.isEmpty() && (((NavBackStackEntry) arrayDeque.last()).f18113c instanceof NavGraph)) {
            NavDestination navDestination5 = ((NavBackStackEntry) arrayDeque.last()).f18113c;
            navDestination5.getClass();
            if (((NavGraph) navDestination5).f18165h.f18347b.b(navDestination2.f18152c.f18344e) != null) {
                break;
            } else {
                s(this, (NavBackStackEntry) arrayDeque.last());
            }
        }
        NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) arrayDeque.n();
        if (navBackStackEntry2 == null) {
            navBackStackEntry2 = (NavBackStackEntry) arrayDeque2.n();
        }
        if (!Intrinsics.c(navBackStackEntry2 != null ? navBackStackEntry2.f18113c : null, this.f18334c)) {
            ListIterator listIterator3 = list.listIterator(list.size());
            while (listIterator3.hasPrevious()) {
                Object objPrevious3 = listIterator3.previous();
                NavDestination navDestination6 = ((NavBackStackEntry) objPrevious3).f18113c;
                NavGraph navGraph4 = this.f18334c;
                navGraph4.getClass();
                if (Intrinsics.c(navDestination6, navGraph4)) {
                    obj = objPrevious3;
                    break;
                }
            }
            NavBackStackEntry navBackStackEntryA3 = (NavBackStackEntry) obj;
            if (navBackStackEntryA3 == null) {
                NavBackStackEntry.Companion companion = NavBackStackEntry.f18111k;
                NavContext navContext = navController.f18123c;
                NavGraph navGraph5 = this.f18334c;
                navGraph5.getClass();
                NavGraph navGraph6 = this.f18334c;
                navGraph6.getClass();
                navBackStackEntryA3 = NavBackStackEntry.Companion.a(companion, navContext, navGraph5, navGraph6.f(bundle2), k(), this.p);
            }
            arrayDeque2.addFirst(navBackStackEntryA3);
        }
        for (NavBackStackEntry navBackStackEntry3 : arrayDeque2) {
            Object obj2 = this.u.get(this.t.c(navBackStackEntry3.f18113c.f18151b));
            if (obj2 == null) {
                tg0.c(n00.r(navDestination.f18151b, " should already be created", new StringBuilder("NavigatorBackStack for ")));
                return;
            }
            ((NavController.NavControllerNavigatorState) obj2).i(navBackStackEntry3);
        }
        arrayDeque.addAll(arrayDeque2);
        arrayDeque.addLast(navBackStackEntry);
        for (NavBackStackEntry navBackStackEntry4 : CollectionsKt.X(navBackStackEntry, arrayDeque2)) {
            NavGraph navGraph7 = navBackStackEntry4.f18113c.d;
            if (navGraph7 != null) {
                m(navBackStackEntry4, g(navGraph7.f18152c.f18344e));
            }
        }
    }

    public final boolean b() {
        ArrayDeque arrayDeque;
        while (true) {
            arrayDeque = this.f18336f;
            if (arrayDeque.isEmpty() || !(((NavBackStackEntry) arrayDeque.last()).f18113c instanceof NavGraph)) {
                break;
            }
            s(this, (NavBackStackEntry) arrayDeque.last());
        }
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) arrayDeque.p();
        ArrayList arrayList = this.z;
        if (navBackStackEntry != null) {
            arrayList.add(navBackStackEntry);
        }
        this.y++;
        x();
        int i2 = this.y - 1;
        this.y = i2;
        if (i2 == 0) {
            ArrayList<NavBackStackEntry> arrayListZ0 = CollectionsKt.z0(arrayList);
            arrayList.clear();
            for (NavBackStackEntry navBackStackEntry2 : arrayListZ0) {
                for (NavController.OnDestinationChangedListener onDestinationChangedListener : CollectionsKt.y0(this.q)) {
                    NavDestination navDestination = navBackStackEntry2.f18113c;
                    navBackStackEntry2.f18117i.a();
                    onDestinationChangedListener.f(this.f18332a, navDestination);
                }
                this.A.a(navBackStackEntry2);
            }
            this.g.a(new ArrayList(arrayDeque));
            this.f18338i.a(t());
        }
        return navBackStackEntry != null;
    }

    public final boolean c(ArrayList arrayList, NavDestination navDestination, boolean z, boolean z2) {
        final NavControllerImpl navControllerImpl;
        boolean z3;
        Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        ArrayDeque arrayDeque = new ArrayDeque();
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                navControllerImpl = this;
                z3 = z2;
                break;
            }
            Navigator navigator = (Navigator) it.next();
            Ref$BooleanRef ref$BooleanRef2 = new Ref$BooleanRef();
            NavBackStackEntry navBackStackEntry = (NavBackStackEntry) this.f18336f.last();
            navControllerImpl = this;
            z3 = z2;
            wc0 wc0Var = new wc0(ref$BooleanRef2, ref$BooleanRef, navControllerImpl, z3, arrayDeque);
            navigator.getClass();
            navBackStackEntry.getClass();
            navControllerImpl.w = wc0Var;
            navigator.i(navBackStackEntry, z3);
            navControllerImpl.w = null;
            if (!ref$BooleanRef2.f71917b) {
                break;
            }
            this = navControllerImpl;
            z2 = z3;
        }
        if (z3) {
            LinkedHashMap linkedHashMap = navControllerImpl.m;
            if (!z) {
                Sequence sequenceN = SequencesKt.n(navDestination, new ag0(3));
                final int i2 = 0;
                Function1 function1 = new Function1(navControllerImpl) { // from class: cg0

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ NavControllerImpl f21152c;

                    {
                        this.f21152c = navControllerImpl;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        boolean zContainsKey;
                        int i3 = i2;
                        NavControllerImpl navControllerImpl2 = this.f21152c;
                        NavDestination navDestination2 = (NavDestination) obj;
                        switch (i3) {
                            case 0:
                                int i4 = NavControllerImpl.B;
                                navDestination2.getClass();
                                zContainsKey = navControllerImpl2.m.containsKey(Integer.valueOf(navDestination2.f18152c.f18344e));
                                break;
                            default:
                                int i5 = NavControllerImpl.B;
                                navDestination2.getClass();
                                zContainsKey = navControllerImpl2.m.containsKey(Integer.valueOf(navDestination2.f18152c.f18344e));
                                break;
                        }
                        return Boolean.valueOf(!zContainsKey);
                    }
                };
                sequenceN.getClass();
                TakeWhileSequence.AnonymousClass1 anonymousClass1 = new TakeWhileSequence.AnonymousClass1();
                while (anonymousClass1.hasNext()) {
                    Integer numValueOf = Integer.valueOf(((NavDestination) anonymousClass1.next()).f18152c.f18344e);
                    NavBackStackEntryState navBackStackEntryState = (NavBackStackEntryState) arrayDeque.n();
                    linkedHashMap.put(numValueOf, navBackStackEntryState != null ? navBackStackEntryState.f18119a.f18328a : null);
                }
            }
            if (!arrayDeque.isEmpty()) {
                NavBackStackEntryStateImpl navBackStackEntryStateImpl = ((NavBackStackEntryState) arrayDeque.first()).f18119a;
                Sequence sequenceN2 = SequencesKt.n(navControllerImpl.d(navBackStackEntryStateImpl.f18329b, null), new ag0(4));
                final int i3 = 1;
                Function1 function2 = new Function1(navControllerImpl) { // from class: cg0

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ NavControllerImpl f21152c;

                    {
                        this.f21152c = navControllerImpl;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        boolean zContainsKey;
                        int i4 = i3;
                        NavControllerImpl navControllerImpl2 = this.f21152c;
                        NavDestination navDestination2 = (NavDestination) obj;
                        switch (i4) {
                            case 0:
                                int i5 = NavControllerImpl.B;
                                navDestination2.getClass();
                                zContainsKey = navControllerImpl2.m.containsKey(Integer.valueOf(navDestination2.f18152c.f18344e));
                                break;
                            default:
                                int i6 = NavControllerImpl.B;
                                navDestination2.getClass();
                                zContainsKey = navControllerImpl2.m.containsKey(Integer.valueOf(navDestination2.f18152c.f18344e));
                                break;
                        }
                        return Boolean.valueOf(!zContainsKey);
                    }
                };
                sequenceN2.getClass();
                TakeWhileSequence.AnonymousClass1 anonymousClass2 = new TakeWhileSequence.AnonymousClass1();
                while (anonymousClass2.hasNext()) {
                    linkedHashMap.put(Integer.valueOf(((NavDestination) anonymousClass2.next()).f18152c.f18344e), navBackStackEntryStateImpl.f18328a);
                }
                if (linkedHashMap.values().contains(navBackStackEntryStateImpl.f18328a)) {
                    navControllerImpl.n.put(navBackStackEntryStateImpl.f18328a, arrayDeque);
                }
            }
        }
        navControllerImpl.f18333b.mo47invoke();
        return ref$BooleanRef.f71917b;
    }

    public final NavDestination d(int i2, NavDestination navDestination) {
        NavDestination navDestination2;
        NavGraph navGraph = this.f18334c;
        if (navGraph == null) {
            return null;
        }
        if (navGraph.f18152c.f18344e == i2) {
            if (navDestination == null) {
                return navGraph;
            }
            if (Intrinsics.c(navGraph, navDestination) && navDestination.d == null) {
                return this.f18334c;
            }
        }
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) this.f18336f.p();
        if (navBackStackEntry == null || (navDestination2 = navBackStackEntry.f18113c) == null) {
            navDestination2 = this.f18334c;
            navDestination2.getClass();
        }
        return e(i2, navDestination2, navDestination, false);
    }

    public final String f(Object obj) {
        obj.getClass();
        Class<?> cls = obj.getClass();
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        NavDestination navDestinationE = e(RouteSerializerKt.b(SerializersKt.b(reflectionFactory.b(cls))), j(), null, true);
        if (navDestinationE == null) {
            tg0.h("Destination with route ", reflectionFactory.b(obj.getClass()).B(), " cannot be found in navigation graph ", this.f18334c);
            return null;
        }
        Map mapH = navDestinationE.h();
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.g(mapH.size()));
        for (Map.Entry entry : mapH.entrySet()) {
            linkedHashMap.put(entry.getKey(), ((NavArgument) entry.getValue()).f18102a);
        }
        return RouteSerializerKt.d(obj, linkedHashMap);
    }

    public final NavBackStackEntry g(int i2) {
        Object objPrevious;
        ArrayDeque arrayDeque = this.f18336f;
        ListIterator<E> listIterator = arrayDeque.listIterator(arrayDeque.size());
        do {
            if (!listIterator.hasPrevious()) {
                objPrevious = null;
                break;
            }
            objPrevious = listIterator.previous();
        } while (((NavBackStackEntry) objPrevious).f18113c.f18152c.f18344e != i2);
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) objPrevious;
        if (navBackStackEntry != null) {
            return navBackStackEntry;
        }
        StringBuilder sbQ = fc.q(i2, "No destination with ID ", " is on the NavController's back stack. The current destination is ");
        sbQ.append(i());
        throw new IllegalArgumentException(sbQ.toString().toString());
    }

    public final NavBackStackEntry h() {
        return (NavBackStackEntry) this.f18336f.p();
    }

    public final NavDestination i() {
        NavBackStackEntry navBackStackEntryH = h();
        if (navBackStackEntryH != null) {
            return navBackStackEntryH.f18113c;
        }
        return null;
    }

    public final NavGraph j() {
        NavGraph navGraph = this.f18334c;
        if (navGraph != null) {
            navGraph.getClass();
            return navGraph;
        }
        md.k("You must call setGraph() before calling getGraph()");
        return null;
    }

    public final Lifecycle.State k() {
        return this.o == null ? Lifecycle.State.CREATED : this.r;
    }

    public final NavGraph l() {
        NavDestination navDestination;
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) this.f18336f.p();
        if (navBackStackEntry == null || (navDestination = navBackStackEntry.f18113c) == null) {
            navDestination = this.f18334c;
            navDestination.getClass();
        }
        NavGraph navGraph = navDestination instanceof NavGraph ? (NavGraph) navDestination : null;
        if (navGraph != null) {
            return navGraph;
        }
        NavGraph navGraph2 = navDestination.d;
        navGraph2.getClass();
        return navGraph2;
    }

    public final void m(NavBackStackEntry navBackStackEntry, NavBackStackEntry navBackStackEntry2) {
        this.f18340k.put(navBackStackEntry, navBackStackEntry2);
        LinkedHashMap linkedHashMap = this.l;
        if (linkedHashMap.get(navBackStackEntry2) == null) {
            linkedHashMap.put(navBackStackEntry2, new AtomicInt(0));
        }
        Object obj = linkedHashMap.get(navBackStackEntry2);
        obj.getClass();
        ((AtomicInt) obj).f18316a.incrementAndGet();
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0179 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:21:0x0063  */
    /* JADX WARN: Code duplicated, block: B:29:0x008a  */
    /* JADX WARN: Code duplicated, block: B:59:0x0131  */
    /* JADX WARN: Code duplicated, block: B:62:0x013d A[LOOP:4: B:60:0x0136->B:62:0x013d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:66:0x0162  */
    /* JADX WARN: Code duplicated, block: B:68:0x016e  */
    /* JADX WARN: Code duplicated, block: B:73:0x0187 A[LOOP:6: B:71:0x0181->B:73:0x0187, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:75:0x019c  */
    /* JADX WARN: Code duplicated, block: B:77:0x01a0  */
    public final void n(NavDestination navDestination, Bundle bundle, NavOptions navOptions) {
        int i2;
        boolean z;
        NavigatorProvider navigatorProvider;
        boolean z2;
        int iNextIndex;
        NavDestination navDestination2;
        ArrayDeque<NavBackStackEntry> arrayDeque;
        NavGraph navGraph;
        boolean zP;
        navDestination.getClass();
        LinkedHashMap linkedHashMap = this.u;
        Iterator it = linkedHashMap.values().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else {
                ((NavController.NavControllerNavigatorState) it.next()).d = true;
            }
        }
        Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        if (navOptions != null) {
            boolean z3 = navOptions.f18177e;
            boolean z4 = navOptions.d;
            String str = navOptions.f18181j;
            if (str != null) {
                zP = q(str, z4, z3);
            } else {
                KClass kClass = navOptions.f18182k;
                if (kClass != null) {
                    zP = p(RouteSerializerKt.b(SerializersKt.b(kClass)), z4, z3);
                } else {
                    Object obj = navOptions.l;
                    if (obj != null) {
                        zP = q(f(obj), z4, z3);
                    } else {
                        int i3 = navOptions.f18176c;
                        if (i3 != -1) {
                            zP = p(i3, z4, z3);
                        } else {
                            z = false;
                        }
                    }
                }
            }
            z = zP;
        } else {
            z = false;
        }
        Bundle bundleF = navDestination.f(bundle);
        NavDestinationImpl navDestinationImpl = navDestination.f18152c;
        if (navOptions == null || !navOptions.f18175b) {
            navigatorProvider = this.t;
            if (navOptions == null && navOptions.f18174a) {
                NavBackStackEntry navBackStackEntryH = h();
                ArrayDeque arrayDeque2 = this.f18336f;
                ListIterator<E> listIterator = arrayDeque2.listIterator(arrayDeque2.getF74615i());
                while (true) {
                    if (listIterator.hasPrevious()) {
                        if (((NavBackStackEntry) listIterator.previous()).f18113c == navDestination) {
                            iNextIndex = listIterator.nextIndex();
                            break;
                        }
                    } else {
                        iNextIndex = -1;
                        break;
                    }
                }
                if (iNextIndex == -1) {
                    z2 = false;
                } else if (navDestination instanceof NavGraph) {
                    NavGraph.f18164i.getClass();
                    List listX = SequencesKt.x(SequencesKt.r(SequencesKt.n((NavGraph) navDestination, new ag0(11)), new ag0(6)));
                    if (arrayDeque2.d - iNextIndex == listX.size()) {
                        Iterable iterableSubList = arrayDeque2.subList(iNextIndex, arrayDeque2.d);
                        ArrayList arrayList = new ArrayList(CollectionsKt.t(iterableSubList, 10));
                        Iterator it2 = iterableSubList.iterator();
                        while (it2.hasNext()) {
                            arrayList.add(Integer.valueOf(((NavBackStackEntry) it2.next()).f18113c.f18152c.f18344e));
                        }
                        if (arrayList.equals(listX)) {
                            arrayDeque = new ArrayDeque();
                            for (i2 = 1; arrayDeque2.size() - i2 >= iNextIndex; i2 = 1) {
                                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) CollectionsKt.c0(arrayDeque2);
                                w(navBackStackEntry);
                                arrayDeque.addFirst(new NavBackStackEntry(navBackStackEntry, navBackStackEntry.f18113c.f(bundle)));
                            }
                            for (NavBackStackEntry navBackStackEntry2 : arrayDeque) {
                                navGraph = navBackStackEntry2.f18113c.d;
                                if (navGraph != null) {
                                    m(navBackStackEntry2, g(navGraph.f18152c.f18344e));
                                }
                                arrayDeque2.addLast(navBackStackEntry2);
                            }
                            for (NavBackStackEntry navBackStackEntry3 : arrayDeque) {
                                navigatorProvider.c(navBackStackEntry3.f18113c.f18151b).f(navBackStackEntry3);
                            }
                            z2 = true;
                        }
                    }
                    z2 = false;
                } else if (navBackStackEntryH == null || (navDestination2 = navBackStackEntryH.f18113c) == null || navDestinationImpl.f18344e != navDestination2.f18152c.f18344e) {
                    z2 = false;
                } else {
                    arrayDeque = new ArrayDeque();
                    while (arrayDeque2.size() - i2 >= iNextIndex) {
                        NavBackStackEntry navBackStackEntry4 = (NavBackStackEntry) CollectionsKt.c0(arrayDeque2);
                        w(navBackStackEntry4);
                        arrayDeque.addFirst(new NavBackStackEntry(navBackStackEntry4, navBackStackEntry4.f18113c.f(bundle)));
                    }
                    while (r4.hasNext()) {
                        navGraph = navBackStackEntry2.f18113c.d;
                        if (navGraph != null) {
                            m(navBackStackEntry2, g(navGraph.f18152c.f18344e));
                        }
                        arrayDeque2.addLast(navBackStackEntry2);
                    }
                    while (r0.hasNext()) {
                        navigatorProvider.c(navBackStackEntry3.f18113c.f18151b).f(navBackStackEntry3);
                    }
                    z2 = true;
                }
            } else {
                z2 = false;
            }
            if (!z2) {
                NavBackStackEntry navBackStackEntryA = NavBackStackEntry.Companion.a(NavBackStackEntry.f18111k, this.f18332a.f18123c, navDestination, bundleF, k(), this.p);
                Navigator navigatorC = navigatorProvider.c(navDestination.f18151b);
                List listO = CollectionsKt.O(navBackStackEntryA);
                this.v = new k3(ref$BooleanRef, this, navDestination, bundleF, 21);
                navigatorC.d(listO, navOptions);
                this.v = null;
            }
        } else if (this.m.containsKey(Integer.valueOf(navDestinationImpl.f18344e))) {
            ref$BooleanRef.f71917b = u(navDestinationImpl.f18344e, navOptions, bundleF);
            z2 = false;
        } else {
            navigatorProvider = this.t;
            if (navOptions == null) {
                z2 = false;
            } else {
                z2 = false;
            }
            if (!z2) {
                NavBackStackEntry navBackStackEntryA2 = NavBackStackEntry.Companion.a(NavBackStackEntry.f18111k, this.f18332a.f18123c, navDestination, bundleF, k(), this.p);
                Navigator navigatorC2 = navigatorProvider.c(navDestination.f18151b);
                List listO2 = CollectionsKt.O(navBackStackEntryA2);
                this.v = new k3(ref$BooleanRef, this, navDestination, bundleF, 21);
                navigatorC2.d(listO2, navOptions);
                this.v = null;
            }
        }
        this.f18333b.mo47invoke();
        Iterator it3 = linkedHashMap.values().iterator();
        while (it3.hasNext()) {
            ((NavController.NavControllerNavigatorState) it3.next()).d = false;
        }
        if (z || ref$BooleanRef.f71917b || z2) {
            b();
        } else {
            x();
        }
    }

    public final void o(String str, NavOptions navOptions) {
        if (this.f18334c == null) {
            lc0.p("Cannot navigate to ", str, ". Navigation graph has not been set for NavController ", this, 46);
            return;
        }
        NavGraph navGraphL = l();
        NavDestination.DeepLinkMatch deepLinkMatchQ = navGraphL.q(str, true, navGraphL);
        if (deepLinkMatchQ == null) {
            bm.e(this.f18334c, pq0.r("Navigation destination that matches route ", str, " cannot be found in the navigation graph "));
            return;
        }
        NavDestination navDestination = deepLinkMatchQ.f18155b;
        Bundle bundleF = navDestination.f(deepLinkMatchQ.f18156c);
        if (bundleF == null) {
            MapsKt.c();
            bundleF = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
        }
        NavDeepLinkRequest.Builder.Companion companion = NavDeepLinkRequest.Builder.f18150a;
        NavDestination.Companion companion2 = NavDestination.g;
        String str2 = navDestination.f18152c.f18345f;
        companion2.getClass();
        Uri uri = Uri.parse(str2 != null ? "android-app://androidx.navigation/".concat(str2) : "");
        uri.getClass();
        companion.getClass();
        new NavDeepLinkRequest.Builder(null);
        NavDeepLinkRequest navDeepLinkRequest = new NavDeepLinkRequest(uri, null, null);
        this.f18332a.getClass();
        Intent intent = new Intent();
        intent.setDataAndType(navDeepLinkRequest.f18147a, navDeepLinkRequest.f18149c);
        intent.setAction(navDeepLinkRequest.f18148b);
        bundleF.putParcelable("android-support-nav:controller:deepLinkIntent", intent);
        n(navDestination, bundleF, navOptions);
    }

    public final boolean p(int i2, boolean z, boolean z2) {
        NavDestination navDestination;
        NavDestinationImpl navDestinationImpl;
        ArrayDeque arrayDeque = this.f18336f;
        if (arrayDeque.isEmpty()) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = CollectionsKt.f0(arrayDeque).iterator();
        do {
            if (!it.hasNext()) {
                navDestination = null;
                break;
            }
            navDestination = ((NavBackStackEntry) it.next()).f18113c;
            String str = navDestination.f18151b;
            navDestinationImpl = navDestination.f18152c;
            Navigator navigatorC = this.t.c(str);
            if (z || navDestinationImpl.f18344e != i2) {
                arrayList.add(navigatorC);
            }
        } while (navDestinationImpl.f18344e != i2);
        if (navDestination != null) {
            return c(arrayList, navDestination, z, z2);
        }
        NavDestination.Companion companion = NavDestination.g;
        NavContext navContext = this.f18332a.f18123c;
        companion.getClass();
        NavDestination.Companion.a(navContext, i2);
        Log.f18317a.getClass();
        return false;
    }

    public final boolean q(String str, boolean z, boolean z2) {
        Object objPrevious;
        boolean z3;
        str.getClass();
        ArrayDeque arrayDeque = this.f18336f;
        if (arrayDeque.isEmpty()) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        ListIterator<E> listIterator = arrayDeque.listIterator(arrayDeque.getF74615i());
        do {
            if (!listIterator.hasPrevious()) {
                objPrevious = null;
                break;
            }
            objPrevious = listIterator.previous();
            NavBackStackEntry navBackStackEntry = (NavBackStackEntry) objPrevious;
            NavDestination navDestination = navBackStackEntry.f18113c;
            Bundle bundleA = navBackStackEntry.f18117i.a();
            navDestination.getClass();
            NavDestinationImpl navDestinationImpl = navDestination.f18152c;
            navDestinationImpl.getClass();
            if (Intrinsics.c(navDestinationImpl.f18345f, str)) {
                z3 = true;
            } else {
                NavDestination.DeepLinkMatch deepLinkMatchA = navDestinationImpl.a(str);
                if (Intrinsics.c(navDestinationImpl.f18341a, deepLinkMatchA != null ? deepLinkMatchA.f18155b : null)) {
                    Bundle bundle = deepLinkMatchA.f18156c;
                    if (bundleA != null && bundle != null) {
                        Set<String> setKeySet = bundle.keySet();
                        setKeySet.getClass();
                        Iterator<T> it = setKeySet.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                String str2 = (String) it.next();
                                str2.getClass();
                                if (bundleA.containsKey(str2)) {
                                    NavArgument navArgument = (NavArgument) deepLinkMatchA.f18155b.h().get(str2);
                                    NavType navType = navArgument != null ? navArgument.f18102a : null;
                                    Object objA = navType != null ? navType.a(str2, bundle) : null;
                                    Object objA2 = navType != null ? navType.a(str2, bundleA) : null;
                                    if (navType == null || navType.g(objA, objA2)) {
                                    }
                                }
                            } else {
                                z3 = true;
                            }
                        }
                    }
                }
                z3 = false;
            }
            if (z || !z3) {
                arrayList.add(this.t.c(navBackStackEntry.f18113c.f18151b));
            }
        } while (!z3);
        NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) objPrevious;
        NavDestination navDestination2 = navBackStackEntry2 != null ? navBackStackEntry2.f18113c : null;
        if (navDestination2 != null) {
            return c(arrayList, navDestination2, z, z2);
        }
        Log.f18317a.getClass();
        return false;
    }

    public final void r(NavBackStackEntry navBackStackEntry, boolean z, ArrayDeque arrayDeque) {
        NavControllerViewModel navControllerViewModel;
        StateFlow stateFlow;
        Set set;
        navBackStackEntry.getClass();
        ArrayDeque arrayDeque2 = this.f18336f;
        NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) arrayDeque2.last();
        if (!Intrinsics.c(navBackStackEntry2, navBackStackEntry)) {
            StringBuilder sb = new StringBuilder("Attempted to pop ");
            sb.append(navBackStackEntry.f18113c);
            NavDestination navDestination = navBackStackEntry2.f18113c;
            sb.append(", which is not the top of the back stack (");
            sb.append(navDestination);
            sb.append(')');
            throw new IllegalStateException(sb.toString().toString());
        }
        CollectionsKt.c0(arrayDeque2);
        NavController.NavControllerNavigatorState navControllerNavigatorState = (NavController.NavControllerNavigatorState) this.u.get(this.t.c(navBackStackEntry2.f18113c.f18151b));
        boolean z2 = true;
        if ((navControllerNavigatorState == null || (stateFlow = navControllerNavigatorState.f18214f) == null || (set = (Set) stateFlow.getValue()) == null || !set.contains(navBackStackEntry2)) && !this.l.containsKey(navBackStackEntry2)) {
            z2 = false;
        }
        Lifecycle.State state = navBackStackEntry2.f18117i.f18326k.f13454i;
        Lifecycle.State state2 = Lifecycle.State.CREATED;
        if (state.a(state2)) {
            if (z) {
                navBackStackEntry2.b(state2);
                arrayDeque.addFirst(new NavBackStackEntryState(navBackStackEntry2));
            }
            if (z2) {
                navBackStackEntry2.b(state2);
            } else {
                navBackStackEntry2.b(Lifecycle.State.DESTROYED);
                w(navBackStackEntry2);
            }
        }
        if (z || z2 || (navControllerViewModel = this.p) == null) {
            return;
        }
        String str = navBackStackEntry2.g;
        str.getClass();
        ViewModelStore viewModelStore = (ViewModelStore) navControllerViewModel.f18129a.remove(str);
        if (viewModelStore != null) {
            viewModelStore.a();
        }
    }

    public final ArrayList t() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.u.values().iterator();
        while (it.hasNext()) {
            Iterable iterable = (Iterable) ((NavController.NavControllerNavigatorState) it.next()).f18214f.getValue();
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : iterable) {
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
                if (!arrayList.contains(navBackStackEntry) && !navBackStackEntry.f18117i.l.a(Lifecycle.State.STARTED)) {
                    arrayList2.add(obj);
                }
            }
            CollectionsKt.j(arrayList, arrayList2);
        }
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : this.f18336f) {
            NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) obj2;
            if (!arrayList.contains(navBackStackEntry2) && navBackStackEntry2.f18117i.l.a(Lifecycle.State.STARTED)) {
                arrayList3.add(obj2);
            }
        }
        CollectionsKt.j(arrayList, arrayList3);
        ArrayList arrayList4 = new ArrayList();
        for (Object obj3 : arrayList) {
            if (!(((NavBackStackEntry) obj3).f18113c instanceof NavGraph)) {
                arrayList4.add(obj3);
            }
        }
        return arrayList4;
    }

    public final boolean u(int i2, NavOptions navOptions, Bundle bundle) {
        NavDestination navDestinationJ;
        NavBackStackEntry navBackStackEntry;
        NavDestination navDestination;
        Integer numValueOf = Integer.valueOf(i2);
        LinkedHashMap linkedHashMap = this.m;
        if (!linkedHashMap.containsKey(numValueOf)) {
            return false;
        }
        String str = (String) linkedHashMap.get(Integer.valueOf(i2));
        CollectionsKt.Z(linkedHashMap.values(), new lt(str, 25));
        ArrayDeque<NavBackStackEntryState> arrayDeque = (ArrayDeque) TypeIntrinsics.c(this.n).remove(str);
        ArrayList arrayList = new ArrayList();
        NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) this.f18336f.p();
        if (navBackStackEntry2 == null || (navDestinationJ = navBackStackEntry2.f18113c) == null) {
            navDestinationJ = j();
        }
        if (arrayDeque != null) {
            for (NavBackStackEntryState navBackStackEntryState : arrayDeque) {
                NavDestination navDestinationE = e(navBackStackEntryState.f18119a.f18329b, navDestinationJ, null, true);
                NavController navController = this.f18332a;
                if (navDestinationE == null) {
                    NavDestination.Companion companion = NavDestination.g;
                    NavContext navContext = navController.f18123c;
                    int i3 = navBackStackEntryState.f18119a.f18329b;
                    companion.getClass();
                    lc0.o("Restore State failed: destination ", NavDestination.Companion.a(navContext, i3), " cannot be found from the current destination ", navDestinationJ);
                    return false;
                }
                arrayList.add(navBackStackEntryState.a(navController.f18123c, navDestinationE, k(), this.p));
                navDestinationJ = navDestinationE;
            }
        }
        ArrayList<List> arrayList2 = new ArrayList();
        ArrayList<NavBackStackEntry> arrayList3 = new ArrayList();
        for (Object obj : arrayList) {
            if (!(((NavBackStackEntry) obj).f18113c instanceof NavGraph)) {
                arrayList3.add(obj);
            }
        }
        for (NavBackStackEntry navBackStackEntry3 : arrayList3) {
            List list = (List) CollectionsKt.N(arrayList2);
            if (Intrinsics.c((list == null || (navBackStackEntry = (NavBackStackEntry) CollectionsKt.M(list)) == null || (navDestination = navBackStackEntry.f18113c) == null) ? null : navDestination.f18151b, navBackStackEntry3.f18113c.f18151b)) {
                list.add(navBackStackEntry3);
            } else {
                arrayList2.add(CollectionsKt.U(navBackStackEntry3));
            }
        }
        Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        for (List list2 : arrayList2) {
            Navigator navigatorC = this.t.c(((NavBackStackEntry) CollectionsKt.B(list2)).f18113c.f18151b);
            this.v = new d1(ref$BooleanRef, arrayList, new Ref$IntRef(), this, bundle, 10);
            navigatorC.d(list2, navOptions);
            this.v = null;
        }
        return ref$BooleanRef.f71917b;
    }

    public final void v(NavGraph navGraph, Bundle bundle) {
        boolean z;
        int[] intArray;
        NavGraph navGraphL;
        NavDestination.DeepLinkMatch deepLinkMatchP;
        String strA;
        NavDestination navDestinationB;
        NavGraph navGraph2;
        Bundle bundle2;
        NavDestination navDestinationB2;
        NavGraph navGraph3;
        navGraph.getClass();
        NavGraphImpl navGraphImpl = navGraph.f18165h;
        ArrayDeque<NavBackStackEntry> arrayDeque = this.f18336f;
        if (!arrayDeque.isEmpty() && k() == Lifecycle.State.DESTROYED) {
            md.k("You cannot set a new graph on a NavController with entries on the back stack after the NavController has been destroyed. Please ensure that your NavHost has the same lifetime as your NavController.");
            return;
        }
        int i2 = 0;
        if (Intrinsics.c(this.f18334c, navGraph)) {
            int iE = navGraphImpl.f18347b.e();
            while (i2 < iE) {
                NavDestination navDestination = (NavDestination) navGraphImpl.f18347b.f(i2);
                NavGraph navGraph4 = this.f18334c;
                navGraph4.getClass();
                int iC = navGraph4.f18165h.f18347b.c(i2);
                NavGraph navGraph5 = this.f18334c;
                navGraph5.getClass();
                SparseArrayCompat sparseArrayCompat = navGraph5.f18165h.f18347b;
                if (sparseArrayCompat.f3383b) {
                    SparseArrayCompatKt.a(sparseArrayCompat);
                }
                int iA = ContainerHelpersKt.a(sparseArrayCompat.f3385e, iC, sparseArrayCompat.f3384c);
                if (iA >= 0) {
                    Object[] objArr = sparseArrayCompat.d;
                    Object obj = objArr[iA];
                    objArr[iA] = navDestination;
                }
                i2++;
            }
            for (NavBackStackEntry navBackStackEntry : arrayDeque) {
                NavDestination.Companion companion = NavDestination.g;
                NavDestination navDestination2 = navBackStackEntry.f18113c;
                companion.getClass();
                List<NavDestination> listM = CollectionsKt.m(SequencesKt.x(NavDestination.Companion.b(navDestination2)));
                NavDestination navDestinationB3 = this.f18334c;
                navDestinationB3.getClass();
                for (NavDestination navDestination3 : listM) {
                    if (!Intrinsics.c(navDestination3, this.f18334c) || !Intrinsics.c(navDestinationB3, navGraph)) {
                        if (navDestinationB3 instanceof NavGraph) {
                            navDestinationB3 = ((NavGraph) navDestinationB3).f18165h.b(navDestination3.f18152c.f18344e);
                            navDestinationB3.getClass();
                        }
                    }
                }
                navBackStackEntry.f18113c = navDestinationB3;
            }
            return;
        }
        NavGraph navGraph6 = this.f18334c;
        LinkedHashMap linkedHashMap = this.u;
        boolean z2 = true;
        if (navGraph6 != null) {
            for (Integer num : new ArrayList(this.m.keySet())) {
                num.getClass();
                int iIntValue = num.intValue();
                Iterator it = linkedHashMap.values().iterator();
                while (it.hasNext()) {
                    ((NavController.NavControllerNavigatorState) it.next()).d = true;
                }
                boolean zU = u(iIntValue, NavOptionsBuilderKt.a(new ag0(5)), null);
                Iterator it2 = linkedHashMap.values().iterator();
                while (it2.hasNext()) {
                    ((NavController.NavControllerNavigatorState) it2.next()).d = false;
                }
                if (zU) {
                    p(iIntValue, true, false);
                }
            }
            p(navGraph6.f18152c.f18344e, true, false);
        }
        this.f18334c = navGraph;
        Bundle bundle3 = this.d;
        NavigatorProvider navigatorProvider = this.t;
        if (bundle3 != null && bundle3.containsKey("android-support-nav:controller:navigatorState:names")) {
            for (String str : SavedStateReader.m("android-support-nav:controller:navigatorState:names", bundle3)) {
                Navigator navigatorC = navigatorProvider.c(str);
                if (bundle3.containsKey(str)) {
                    navigatorC.g(SavedStateReader.j(str, bundle3));
                }
            }
        }
        Bundle[] bundleArr = this.f18335e;
        NavController navController = this.f18332a;
        if (bundleArr != null) {
            int length = bundleArr.length;
            int i3 = 0;
            while (i3 < length) {
                NavBackStackEntryState navBackStackEntryState = new NavBackStackEntryState(bundleArr[i3]);
                NavBackStackEntryStateImpl navBackStackEntryStateImpl = navBackStackEntryState.f18119a;
                NavDestination navDestinationD = d(navBackStackEntryStateImpl.f18329b, null);
                if (navDestinationD == null) {
                    NavDestination.Companion companion2 = NavDestination.g;
                    NavContext navContext = navController.f18123c;
                    int i4 = navBackStackEntryStateImpl.f18329b;
                    companion2.getClass();
                    az.n(i(), pq0.r("Restoring the Navigation back stack failed: destination ", NavDestination.Companion.a(navContext, i4), " cannot be found from the current destination "));
                    return;
                }
                boolean z3 = z2;
                NavBackStackEntry navBackStackEntryA = navBackStackEntryState.a(navController.f18123c, navDestinationD, k(), this.p);
                Navigator navigatorC2 = navigatorProvider.c(navDestinationD.f18151b);
                Object navControllerNavigatorState = linkedHashMap.get(navigatorC2);
                if (navControllerNavigatorState == null) {
                    navControllerNavigatorState = new NavController.NavControllerNavigatorState(navController, navigatorC2);
                    linkedHashMap.put(navigatorC2, navControllerNavigatorState);
                }
                arrayDeque.addLast(navBackStackEntryA);
                ((NavController.NavControllerNavigatorState) navControllerNavigatorState).i(navBackStackEntryA);
                NavGraph navGraph7 = navBackStackEntryA.f18113c.d;
                if (navGraph7 != null) {
                    m(navBackStackEntryA, g(navGraph7.f18152c.f18344e));
                }
                i3++;
                z2 = z3;
            }
            z = z2;
            this.f18333b.mo47invoke();
            this.f18335e = null;
        } else {
            z = true;
        }
        Collection collectionValues = MapsKt.o(navigatorProvider.f18209a).values();
        ArrayList<Navigator> arrayList = new ArrayList();
        for (Object obj2 : collectionValues) {
            if (!((Navigator) obj2).f18206b) {
                arrayList.add(obj2);
            }
        }
        for (Navigator navigator : arrayList) {
            Object navControllerNavigatorState2 = linkedHashMap.get(navigator);
            if (navControllerNavigatorState2 == null) {
                navController.getClass();
                navigator.getClass();
                navControllerNavigatorState2 = new NavController.NavControllerNavigatorState(navController, navigator);
                linkedHashMap.put(navigator, navControllerNavigatorState2);
            }
            navigator.e((NavController.NavControllerNavigatorState) navControllerNavigatorState2);
        }
        if (this.f18334c == null || !arrayDeque.isEmpty()) {
            b();
            return;
        }
        Activity activity = navController.d;
        if (!navController.f18124e && activity != null) {
            Intent intent = activity.getIntent();
            NavControllerImpl navControllerImpl = navController.f18122b;
            if (intent != null) {
                Bundle extras = intent.getExtras();
                if (extras != null) {
                    try {
                        intArray = extras.getIntArray("android-support-nav:controller:deepLinkIds");
                    } catch (Exception unused) {
                        intent.toString();
                        intArray = null;
                    }
                } else {
                    intArray = null;
                }
                ArrayList parcelableArrayList = extras != null ? extras.getParcelableArrayList("android-support-nav:controller:deepLinkArgs") : null;
                MapsKt.c();
                Bundle bundleA = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
                Bundle bundle4 = extras != null ? extras.getBundle("android-support-nav:controller:deepLinkExtras") : null;
                if (bundle4 != null) {
                    bundleA.putAll(bundle4);
                }
                if ((intArray == null || intArray.length == 0) && (deepLinkMatchP = (navGraphL = navControllerImpl.l()).p(new NavDeepLinkRequest(intent.getData(), intent.getAction(), intent.getType()), navGraphL)) != null) {
                    NavDestination navDestination4 = deepLinkMatchP.f18155b;
                    navDestination4.getClass();
                    ArrayDeque arrayDeque2 = new ArrayDeque();
                    NavDestination navDestination5 = navDestination4;
                    while (true) {
                        NavDestinationImpl navDestinationImpl = navDestination5.f18152c;
                        NavGraph navGraph8 = navDestination5.d;
                        if (navGraph8 == null || navGraph8.f18165h.f18348c != navDestinationImpl.f18344e) {
                            arrayDeque2.addFirst(navDestination5);
                        }
                        if (Intrinsics.c(navGraph8, null) || navGraph8 == null) {
                            break;
                        } else {
                            navDestination5 = navGraph8;
                        }
                    }
                    List listY0 = CollectionsKt.y0(arrayDeque2);
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.t(listY0, 10));
                    Iterator it3 = listY0.iterator();
                    while (it3.hasNext()) {
                        arrayList2.add(Integer.valueOf(((NavDestination) it3.next()).f18152c.f18344e));
                    }
                    intArray = CollectionsKt.x0(arrayList2);
                    Bundle bundleF = navDestination4.f(deepLinkMatchP.f18156c);
                    if (bundleF != null) {
                        bundleA.putAll(bundleF);
                    }
                    parcelableArrayList = null;
                }
                if (intArray != null && intArray.length != 0) {
                    navControllerImpl.getClass();
                    NavGraph navGraph9 = navControllerImpl.f18334c;
                    int length2 = intArray.length;
                    int i5 = 0;
                    while (true) {
                        if (i5 >= length2) {
                            strA = null;
                            break;
                        }
                        int i6 = intArray[i5];
                        if (i5 == 0) {
                            NavGraph navGraph10 = navControllerImpl.f18334c;
                            navGraph10.getClass();
                            navDestinationB2 = navGraph10.f18152c.f18344e == i6 ? navControllerImpl.f18334c : null;
                        } else {
                            navGraph9.getClass();
                            navDestinationB2 = navGraph9.f18165h.b(i6);
                        }
                        if (navDestinationB2 == null) {
                            NavDestination.Companion companion3 = NavDestination.g;
                            NavContext navContext2 = navControllerImpl.f18332a.f18123c;
                            companion3.getClass();
                            strA = NavDestination.Companion.a(navContext2, i6);
                            break;
                        }
                        if (i5 != intArray.length - 1 && (navDestinationB2 instanceof NavGraph)) {
                            while (true) {
                                navGraph3 = (NavGraph) navDestinationB2;
                                navGraph3.getClass();
                                NavGraphImpl navGraphImpl2 = navGraph3.f18165h;
                                if (!(navGraphImpl2.b(navGraphImpl2.f18348c) instanceof NavGraph)) {
                                    break;
                                } else {
                                    navDestinationB2 = navGraphImpl2.b(navGraphImpl2.f18348c);
                                }
                            }
                            navGraph9 = navGraph3;
                        }
                        i5++;
                    }
                    if (strA == null) {
                        bundleA.putParcelable("android-support-nav:controller:deepLinkIntent", intent);
                        int length3 = intArray.length;
                        Bundle[] bundleArr2 = new Bundle[length3];
                        for (int i7 = 0; i7 < length3; i7++) {
                            MapsKt.c();
                            Bundle bundleA2 = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
                            bundleA2.putAll(bundleA);
                            if (parcelableArrayList != null && (bundle2 = (Bundle) parcelableArrayList.get(i7)) != null) {
                                bundleA2.putAll(bundle2);
                            }
                            bundleArr2[i7] = bundleA2;
                        }
                        int flags = intent.getFlags();
                        int i8 = 268435456 & flags;
                        if (i8 != 0 && (flags & 32768) == 0) {
                            intent.addFlags(32768);
                            TaskStackBuilder taskStackBuilder = new TaskStackBuilder(navController.f18121a);
                            ComponentName component = intent.getComponent();
                            if (component == null) {
                                component = intent.resolveActivity(taskStackBuilder.f12007c.getPackageManager());
                            }
                            if (component != null) {
                                taskStackBuilder.a(component);
                            }
                            taskStackBuilder.f12006b.add(intent);
                            taskStackBuilder.f();
                            activity.finish();
                            activity.overridePendingTransition(0, 0);
                            return;
                        }
                        boolean z4 = i8 != 0 ? z : false;
                        NavContext navContext3 = navController.f18123c;
                        if (z4) {
                            if (!navControllerImpl.f18336f.isEmpty()) {
                                NavGraph navGraph11 = navControllerImpl.f18334c;
                                navGraph11.getClass();
                                navControllerImpl.p(navGraph11.f18152c.f18344e, z, false);
                            }
                            while (i2 < intArray.length) {
                                int i9 = intArray[i2];
                                int i10 = i2 + 1;
                                Bundle bundle5 = bundleArr2[i2];
                                NavDestination navDestinationD2 = navControllerImpl.d(i9, null);
                                if (navDestinationD2 == null) {
                                    NavDestination.g.getClass();
                                    az.n(navControllerImpl.i(), pq0.r("Deep Linking failed: destination ", NavDestination.Companion.a(navContext3, i9), " cannot be found from the current destination "));
                                    return;
                                } else {
                                    navControllerImpl.n(navDestinationD2, bundle5, NavOptionsBuilderKt.a(new k60(navDestinationD2, navController, 25)));
                                    i2 = i10;
                                }
                            }
                            navController.f18124e = true;
                            return;
                        }
                        NavGraph navGraph12 = navControllerImpl.f18334c;
                        int length4 = intArray.length;
                        for (int i11 = 0; i11 < length4; i11++) {
                            int i12 = intArray[i11];
                            Bundle bundle6 = bundleArr2[i11];
                            if (i11 == 0) {
                                navDestinationB = navControllerImpl.f18334c;
                            } else {
                                navGraph12.getClass();
                                navDestinationB = navGraph12.f18165h.b(i12);
                            }
                            if (navDestinationB == null) {
                                NavDestination.g.getClass();
                                mt.k("Deep Linking failed: destination ", NavDestination.Companion.a(navContext3, i12), " cannot be found in graph ", navGraph12);
                                return;
                            }
                            if (i11 == intArray.length - 1) {
                                NavOptions.Builder builder = new NavOptions.Builder();
                                NavGraph navGraph13 = navControllerImpl.f18334c;
                                navGraph13.getClass();
                                builder.f18185c = navGraph13.f18152c.f18344e;
                                builder.f18186e = true;
                                builder.f18187f = false;
                                builder.g = 0;
                                builder.f18188h = 0;
                                navControllerImpl.n(navDestinationB, bundle6, builder.a());
                            } else if (navDestinationB instanceof NavGraph) {
                                while (true) {
                                    navGraph2 = (NavGraph) navDestinationB;
                                    navGraph2.getClass();
                                    NavGraphImpl navGraphImpl3 = navGraph2.f18165h;
                                    if (!(navGraphImpl3.b(navGraphImpl3.f18348c) instanceof NavGraph)) {
                                        break;
                                    } else {
                                        navDestinationB = navGraphImpl3.b(navGraphImpl3.f18348c);
                                    }
                                }
                                navGraph12 = navGraph2;
                            }
                        }
                        navController.f18124e = true;
                        return;
                    }
                    Log.Companion companion4 = Log.f18317a;
                    intent.toString();
                    companion4.getClass();
                }
            }
        }
        NavGraph navGraph14 = this.f18334c;
        navGraph14.getClass();
        n(navGraph14, bundle, null);
    }

    public final void w(NavBackStackEntry navBackStackEntry) {
        navBackStackEntry.getClass();
        NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) this.f18340k.remove(navBackStackEntry);
        if (navBackStackEntry2 == null) {
            return;
        }
        LinkedHashMap linkedHashMap = this.l;
        AtomicInt atomicInt = (AtomicInt) linkedHashMap.get(navBackStackEntry2);
        Integer numValueOf = atomicInt != null ? Integer.valueOf(atomicInt.f18316a.decrementAndGet()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            NavController.NavControllerNavigatorState navControllerNavigatorState = (NavController.NavControllerNavigatorState) this.u.get(this.t.c(navBackStackEntry2.f18113c.f18151b));
            if (navControllerNavigatorState != null) {
                navControllerNavigatorState.b(navBackStackEntry2);
            }
            linkedHashMap.remove(navBackStackEntry2);
        }
    }

    public final void x() {
        AtomicInt atomicInt;
        StateFlow stateFlow;
        Set set;
        ArrayList<NavBackStackEntry> arrayListZ0 = CollectionsKt.z0(this.f18336f);
        if (arrayListZ0.isEmpty()) {
            return;
        }
        NavDestination navDestination = ((NavBackStackEntry) CollectionsKt.M(arrayListZ0)).f18113c;
        ArrayList arrayListU = CollectionsKt.U(navDestination);
        if (navDestination instanceof SupportingPane) {
            boolean z = navDestination instanceof FloatingWindow;
            Iterator it = CollectionsKt.w(CollectionsKt.f0(arrayListZ0), 1).iterator();
            while (it.hasNext()) {
                NavDestination navDestination2 = ((NavBackStackEntry) it.next()).f18113c;
                if (z && !(navDestination2 instanceof FloatingWindow) && !(navDestination2 instanceof NavGraph)) {
                    break;
                }
                arrayListU.add(navDestination2);
                if (!(navDestination2 instanceof SupportingPane) && !(navDestination2 instanceof NavGraph)) {
                    break;
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        if (CollectionsKt.M(arrayListU) instanceof FloatingWindow) {
            Iterator it2 = CollectionsKt.f0(arrayListZ0).iterator();
            while (it2.hasNext()) {
                NavDestination navDestination3 = ((NavBackStackEntry) it2.next()).f18113c;
                arrayList.add(navDestination3);
                if (!(navDestination3 instanceof FloatingWindow) && !(navDestination3 instanceof SupportingPane) && !(navDestination3 instanceof NavGraph)) {
                    break;
                }
            }
        }
        HashMap map = new HashMap();
        for (NavBackStackEntry navBackStackEntry : CollectionsKt.f0(arrayListZ0)) {
            Lifecycle.State state = navBackStackEntry.f18117i.l;
            NavDestination navDestination4 = navBackStackEntry.f18113c;
            NavDestination navDestination5 = (NavDestination) CollectionsKt.firstOrNull(arrayListU);
            if (navDestination5 != null && navDestination5.f18152c.f18344e == navDestination4.f18152c.f18344e) {
                Lifecycle.State state2 = Lifecycle.State.RESUMED;
                if (state != state2) {
                    NavController.NavControllerNavigatorState navControllerNavigatorState = (NavController.NavControllerNavigatorState) this.u.get(this.t.c(navBackStackEntry.f18113c.f18151b));
                    if (Intrinsics.c((navControllerNavigatorState == null || (stateFlow = navControllerNavigatorState.f18214f) == null || (set = (Set) stateFlow.getValue()) == null) ? null : Boolean.valueOf(set.contains(navBackStackEntry)), Boolean.TRUE) || ((atomicInt = (AtomicInt) this.l.get(navBackStackEntry)) != null && atomicInt.f18316a.get() == 0)) {
                        map.put(navBackStackEntry, Lifecycle.State.STARTED);
                    } else {
                        map.put(navBackStackEntry, state2);
                    }
                }
                NavDestination navDestination6 = (NavDestination) CollectionsKt.firstOrNull(arrayList);
                if (navDestination6 != null && navDestination6.f18152c.f18344e == navDestination4.f18152c.f18344e) {
                    CollectionsKt.b0(arrayList);
                }
                CollectionsKt.b0(arrayListU);
                NavGraph navGraph = navDestination4.d;
                if (navGraph != null) {
                    arrayListU.add(navGraph);
                }
            } else if (arrayList.isEmpty() || navDestination4.f18152c.f18344e != ((NavDestination) CollectionsKt.B(arrayList)).f18152c.f18344e) {
                navBackStackEntry.b(Lifecycle.State.CREATED);
            } else {
                NavDestination navDestination7 = (NavDestination) CollectionsKt.b0(arrayList);
                if (state == Lifecycle.State.RESUMED) {
                    navBackStackEntry.b(Lifecycle.State.STARTED);
                } else {
                    Lifecycle.State state3 = Lifecycle.State.STARTED;
                    if (state != state3) {
                        map.put(navBackStackEntry, state3);
                    }
                }
                NavGraph navGraph2 = navDestination7.d;
                if (navGraph2 != null && !arrayList.contains(navGraph2)) {
                    arrayList.add(navGraph2);
                }
            }
        }
        for (NavBackStackEntry navBackStackEntry2 : arrayListZ0) {
            Lifecycle.State state4 = (Lifecycle.State) map.get(navBackStackEntry2);
            if (state4 != null) {
                navBackStackEntry2.getClass();
                NavBackStackEntryImpl navBackStackEntryImpl = navBackStackEntry2.f18117i;
                navBackStackEntryImpl.getClass();
                navBackStackEntryImpl.l = state4;
                navBackStackEntryImpl.c();
            } else {
                navBackStackEntry2.f18117i.c();
            }
        }
    }
}
