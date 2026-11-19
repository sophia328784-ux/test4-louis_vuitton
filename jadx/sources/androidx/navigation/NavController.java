package androidx.navigation;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.activity.OnBackPressedCallback;
import androidx.core.os.BundleCompat;
import androidx.core.os.BundleKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ViewModelStore;
import androidx.navigation.internal.Log;
import androidx.navigation.internal.NavBackStackEntryImpl;
import androidx.navigation.internal.NavContext;
import androidx.navigation.internal.NavControllerImpl;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateReaderKt;
import androidx.savedstate.SavedStateWriter;
import com.vuitton.android.presentation.screen.certificates.CertificateRoute;
import defpackage.ag0;
import defpackage.bg0;
import defpackage.md;
import defpackage.n00;
import defpackage.tg0;
import defpackage.tr;
import defpackage.wc0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.sequences.SequencesKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0016\u0018\u00002\u00020\u0001:\u0003\u0006\u0007\bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\t"}, d2 = {"Landroidx/navigation/NavController;", "", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Landroid/content/Context;)V", "OnDestinationChangedListener", "NavControllerNavigatorState", "Companion", "navigation-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class NavController {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final boolean f18120i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f18121a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final NavControllerImpl f18122b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final NavContext f18123c;
    public final Activity d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f18124e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final NavController$onBackPressedCallback$1 f18125f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Lazy f18126h;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0087T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0087T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0016\u0010\t\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/navigation/NavController$Companion;", "", "", "KEY_DEEP_LINK_IDS", "Ljava/lang/String;", "KEY_DEEP_LINK_ARGS", "KEY_DEEP_LINK_HANDLED", "KEY_DEEP_LINK_INTENT", "", "deepLinkSaveState", "Z", "navigation-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0090\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/navigation/NavController$NavControllerNavigatorState;", "Landroidx/navigation/NavigatorState;", "Landroidx/navigation/Navigator;", "Landroidx/navigation/NavDestination;", "navigator", "<init>", "(Landroidx/navigation/NavController;Landroidx/navigation/Navigator;)V", "navigation-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public class NavControllerNavigatorState extends NavigatorState {
        public final Navigator g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ NavController f18127h;

        public NavControllerNavigatorState(NavController navController, Navigator<? extends NavDestination> navigator) {
            navigator.getClass();
            this.f18127h = navController;
            this.g = navigator;
        }

        @Override // androidx.navigation.NavigatorState
        public final NavBackStackEntry a(NavDestination navDestination, Bundle bundle) {
            NavControllerImpl navControllerImpl = this.f18127h.f18122b;
            navControllerImpl.getClass();
            return NavBackStackEntry.Companion.a(NavBackStackEntry.f18111k, navControllerImpl.f18332a.f18123c, navDestination, bundle, navControllerImpl.k(), navControllerImpl.p);
        }

        /* JADX WARN: Code duplicated, block: B:21:0x006e  */
        @Override // androidx.navigation.NavigatorState
        public final void b(NavBackStackEntry navBackStackEntry) {
            NavControllerViewModel navControllerViewModel;
            ViewModelStore viewModelStore;
            navBackStackEntry.getClass();
            NavControllerImpl navControllerImpl = this.f18127h.f18122b;
            MutableStateFlow mutableStateFlow = navControllerImpl.f18338i;
            LinkedHashMap linkedHashMap = navControllerImpl.x;
            boolean zC = Intrinsics.c(linkedHashMap.get(navBackStackEntry), Boolean.TRUE);
            super.b(navBackStackEntry);
            linkedHashMap.remove(navBackStackEntry);
            ArrayDeque arrayDeque = navControllerImpl.f18336f;
            if (arrayDeque.contains(navBackStackEntry)) {
                if (this.d) {
                    return;
                }
                navControllerImpl.x();
                navControllerImpl.g.a(new ArrayList(arrayDeque));
                mutableStateFlow.a(navControllerImpl.t());
                return;
            }
            navControllerImpl.w(navBackStackEntry);
            NavBackStackEntryImpl navBackStackEntryImpl = navBackStackEntry.f18117i;
            String str = navBackStackEntry.g;
            if (navBackStackEntryImpl.f18326k.f13454i.a(Lifecycle.State.CREATED)) {
                navBackStackEntry.b(Lifecycle.State.DESTROYED);
            }
            if (!arrayDeque.isEmpty()) {
                Iterator<E> it = arrayDeque.iterator();
                while (it.hasNext()) {
                    if (Intrinsics.c(((NavBackStackEntry) it.next()).g, str)) {
                    }
                }
                if (!zC) {
                    str.getClass();
                    viewModelStore = (ViewModelStore) navControllerViewModel.f18129a.remove(str);
                    if (viewModelStore != null) {
                        viewModelStore.a();
                    }
                }
            } else if (!zC && (navControllerViewModel = navControllerImpl.p) != null) {
                str.getClass();
                viewModelStore = (ViewModelStore) navControllerViewModel.f18129a.remove(str);
                if (viewModelStore != null) {
                    viewModelStore.a();
                }
            }
            navControllerImpl.x();
            mutableStateFlow.a(navControllerImpl.t());
        }

        @Override // androidx.navigation.NavigatorState
        public final void d(NavBackStackEntry navBackStackEntry, boolean z) {
            navBackStackEntry.getClass();
            NavControllerImpl navControllerImpl = this.f18127h.f18122b;
            navControllerImpl.getClass();
            Navigator navigatorC = navControllerImpl.t.c(navBackStackEntry.f18113c.f18151b);
            navControllerImpl.x.put(navBackStackEntry, Boolean.valueOf(z));
            if (!navigatorC.equals(this.g)) {
                Object obj = navControllerImpl.u.get(navigatorC);
                obj.getClass();
                ((NavControllerNavigatorState) obj).d(navBackStackEntry, z);
                return;
            }
            wc0 wc0Var = navControllerImpl.w;
            if (wc0Var != null) {
                wc0Var.invoke(navBackStackEntry);
                super.d(navBackStackEntry, z);
                return;
            }
            ArrayDeque arrayDeque = navControllerImpl.f18336f;
            int iIndexOf = arrayDeque.indexOf(navBackStackEntry);
            if (iIndexOf < 0) {
                Log.Companion companion = Log.f18317a;
                Objects.toString(navBackStackEntry);
                companion.getClass();
                return;
            }
            int i2 = iIndexOf + 1;
            if (i2 != arrayDeque.d) {
                navControllerImpl.p(((NavBackStackEntry) arrayDeque.get(i2)).f18113c.f18152c.f18344e, true, false);
            }
            NavControllerImpl.s(navControllerImpl, navBackStackEntry);
            super.d(navBackStackEntry, z);
            navControllerImpl.f18333b.mo47invoke();
            navControllerImpl.b();
        }

        @Override // androidx.navigation.NavigatorState
        public final void e(NavBackStackEntry navBackStackEntry, boolean z) {
            navBackStackEntry.getClass();
            super.e(navBackStackEntry, z);
        }

        @Override // androidx.navigation.NavigatorState
        public final void f(NavBackStackEntry navBackStackEntry) {
            navBackStackEntry.getClass();
            super.f(navBackStackEntry);
            NavControllerImpl navControllerImpl = this.f18127h.f18122b;
            navControllerImpl.getClass();
            if (navControllerImpl.f18336f.contains(navBackStackEntry)) {
                navBackStackEntry.b(Lifecycle.State.STARTED);
            } else {
                md.k("Cannot transition entry that is not in the back stack");
            }
        }

        @Override // androidx.navigation.NavigatorState
        public final void g(NavBackStackEntry navBackStackEntry) {
            navBackStackEntry.getClass();
            NavControllerImpl navControllerImpl = this.f18127h.f18122b;
            navControllerImpl.getClass();
            Navigator navigatorC = navControllerImpl.t.c(navBackStackEntry.f18113c.f18151b);
            if (!navigatorC.equals(this.g)) {
                Object obj = navControllerImpl.u.get(navigatorC);
                if (obj != null) {
                    ((NavControllerNavigatorState) obj).g(navBackStackEntry);
                    return;
                } else {
                    tg0.c(n00.r(navBackStackEntry.f18113c.f18151b, " should already be created", new StringBuilder("NavigatorBackStack for ")));
                    return;
                }
            }
            Function1 function1 = navControllerImpl.v;
            if (function1 != null) {
                function1.invoke(navBackStackEntry);
                super.g(navBackStackEntry);
            } else {
                Log.Companion companion = Log.f18317a;
                Objects.toString(navBackStackEntry.f18113c);
                companion.getClass();
            }
        }

        public final void i(NavBackStackEntry navBackStackEntry) {
            navBackStackEntry.getClass();
            super.g(navBackStackEntry);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/navigation/NavController$OnDestinationChangedListener;", "", "navigation-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface OnDestinationChangedListener {
        void f(NavController navController, NavDestination navDestination);
    }

    static {
        new Companion(null);
        f18120i = true;
    }

    /* JADX WARN: Type inference failed for: r4v3, types: [androidx.navigation.NavController$onBackPressedCallback$1] */
    public NavController(Context context) {
        context.getClass();
        this.f18121a = context;
        this.f18122b = new NavControllerImpl(this, new bg0(this, 0));
        this.f18123c = new NavContext(context);
        for (Object obj : SequencesKt.n(context, new ag0(2))) {
            if (((Context) obj) instanceof Activity) {
                this.d = (Activity) obj;
                this.f18125f = new OnBackPressedCallback() { // from class: androidx.navigation.NavController$onBackPressedCallback$1
                    {
                        super(false);
                    }

                    @Override // androidx.activity.OnBackPressedCallback
                    public final void b() {
                        this.d.e();
                    }
                };
                this.g = true;
                this.f18122b.t.a(new NavGraphNavigator(this.f18122b.t));
                this.f18122b.t.a(new ActivityNavigator(this.f18121a));
                this.f18126h = LazyKt.b(new bg0(this, 1));
            }
        }
        obj = null;
        this.d = (Activity) obj;
        this.f18125f = new OnBackPressedCallback() { // from class: androidx.navigation.NavController$onBackPressedCallback$1
            {
                super(false);
            }

            @Override // androidx.activity.OnBackPressedCallback
            public final void b() {
                this.d.e();
            }
        };
        this.g = true;
        this.f18122b.t.a(new NavGraphNavigator(this.f18122b.t));
        this.f18122b.t.a(new ActivityNavigator(this.f18121a));
        this.f18126h = LazyKt.b(new bg0(this, 1));
    }

    public static void c(NavController navController) {
        navController.getClass();
        navController.f18122b.o("detail", null);
    }

    public static void d(NavController navController, Object obj, NavOptions navOptions, int i2) {
        if ((i2 & 2) != 0) {
            navOptions = null;
        }
        navController.getClass();
        obj.getClass();
        NavControllerImpl navControllerImpl = navController.f18122b;
        navControllerImpl.getClass();
        navControllerImpl.o(navControllerImpl.f(obj), navOptions);
    }

    public static void f(NavController navController, CertificateRoute.List list) {
        navController.getClass();
        list.getClass();
        NavControllerImpl navControllerImpl = navController.f18122b;
        navControllerImpl.getClass();
        if (navControllerImpl.q(navControllerImpl.f(list), false, false)) {
            navControllerImpl.b();
        }
    }

    public final void a(OnDestinationChangedListener onDestinationChangedListener) {
        onDestinationChangedListener.getClass();
        NavControllerImpl navControllerImpl = this.f18122b;
        navControllerImpl.getClass();
        navControllerImpl.q.add(onDestinationChangedListener);
        ArrayDeque arrayDeque = navControllerImpl.f18336f;
        if (arrayDeque.isEmpty()) {
            return;
        }
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) arrayDeque.last();
        NavController navController = navControllerImpl.f18332a;
        NavDestination navDestination = navBackStackEntry.f18113c;
        navBackStackEntry.f18117i.a();
        onDestinationChangedListener.f(navController, navDestination);
    }

    public final NavBackStackEntry b() {
        Object next;
        Iterator it = CollectionsKt.f0(this.f18122b.f18336f).iterator();
        if (it.hasNext()) {
            it.next();
        }
        Iterator it2 = SequencesKt.b(it).getF74480a();
        while (it2.hasNext()) {
            next = it2.next();
            if (!(((NavBackStackEntry) next).f18113c instanceof NavGraph)) {
                return (NavBackStackEntry) next;
            }
        }
        next = null;
        return (NavBackStackEntry) next;
    }

    public final boolean e() {
        NavControllerImpl navControllerImpl = this.f18122b;
        if (!navControllerImpl.f18336f.isEmpty()) {
            NavDestination navDestinationI = navControllerImpl.i();
            navDestinationI.getClass();
            if (navControllerImpl.p(navDestinationI.f18152c.f18344e, true, false) && navControllerImpl.b()) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void g(Bundle bundle) throws Throwable {
        Bundle[] bundleArr;
        Throwable th;
        if (bundle != null) {
            bundle.setClassLoader(this.f18121a.getClassLoader());
        }
        NavControllerImpl navControllerImpl = this.f18122b;
        LinkedHashMap linkedHashMap = navControllerImpl.n;
        Throwable th2 = null;
        if (bundle == null) {
            th = null;
        } else {
            navControllerImpl.d = bundle.containsKey("android-support-nav:controller:navigatorState") ? SavedStateReader.j("android-support-nav:controller:navigatorState", bundle) : null;
            if (bundle.containsKey("android-support-nav:controller:backStack")) {
                ArrayList arrayListC = BundleCompat.c(bundle, "android-support-nav:controller:backStack", JvmClassMappingKt.b(Reflection.f71922a.b(Bundle.class)));
                if (arrayListC == null) {
                    SavedStateReaderKt.a("android-support-nav:controller:backStack");
                    throw null;
                }
                bundleArr = (Bundle[]) arrayListC.toArray(new Bundle[0]);
            } else {
                bundleArr = null;
            }
            navControllerImpl.f18335e = bundleArr;
            linkedHashMap.clear();
            if (bundle.containsKey("android-support-nav:controller:backStackDestIds") && bundle.containsKey("android-support-nav:controller:backStackIds")) {
                int[] iArrH = SavedStateReader.h("android-support-nav:controller:backStackDestIds", bundle);
                ArrayList arrayListM = SavedStateReader.m("android-support-nav:controller:backStackIds", bundle);
                int length = iArrH.length;
                int i2 = 0;
                int i3 = 0;
                while (i2 < length) {
                    int i4 = i3 + 1;
                    Throwable th3 = th2;
                    navControllerImpl.m.put(Integer.valueOf(iArrH[i2]), !Intrinsics.c(arrayListM.get(i3), "") ? (String) arrayListM.get(i3) : th3);
                    i2++;
                    i3 = i4;
                    th2 = th3;
                }
            }
            th = th2;
            if (bundle.containsKey("android-support-nav:controller:backStackStates")) {
                for (String str : SavedStateReader.m("android-support-nav:controller:backStackStates", bundle)) {
                    if (bundle.containsKey("android-support-nav:controller:backStackStates:" + str)) {
                        String strG = tr.g("android-support-nav:controller:backStackStates:", str);
                        ArrayList arrayListC2 = BundleCompat.c(bundle, strG, JvmClassMappingKt.b(Reflection.f71922a.b(Bundle.class)));
                        if (arrayListC2 == null) {
                            SavedStateReaderKt.a(strG);
                            throw th;
                        }
                        ArrayDeque arrayDeque = new ArrayDeque(arrayListC2.size());
                        Iterator it = arrayListC2.iterator();
                        while (it.hasNext()) {
                            arrayDeque.addLast(new NavBackStackEntryState((Bundle) it.next()));
                        }
                        linkedHashMap.put(str, arrayDeque);
                    }
                }
            }
        }
        if (bundle != null) {
            boolean z = bundle.getBoolean("android-support-nav:controller:deepLinkHandled", false);
            Boolean boolValueOf = (z || !bundle.getBoolean("android-support-nav:controller:deepLinkHandled", true)) ? Boolean.valueOf(z) : th;
            this.f18124e = boolValueOf != 0 ? boolValueOf.booleanValue() : false;
        }
    }

    public final Bundle h() {
        Bundle bundleA;
        NavControllerImpl navControllerImpl = this.f18122b;
        LinkedHashMap linkedHashMap = navControllerImpl.n;
        ArrayDeque arrayDeque = navControllerImpl.f18336f;
        LinkedHashMap linkedHashMap2 = navControllerImpl.m;
        ArrayList arrayList = new ArrayList();
        MapsKt.c();
        Bundle bundleA2 = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
        for (Map.Entry entry : MapsKt.o(navControllerImpl.t.f18209a).entrySet()) {
            String str = (String) entry.getKey();
            Bundle bundleH = ((Navigator) entry.getValue()).h();
            if (bundleH != null) {
                arrayList.add(str);
                SavedStateWriter.c(bundleA2, str, bundleH);
            }
        }
        if (arrayList.isEmpty()) {
            bundleA = null;
        } else {
            MapsKt.c();
            bundleA = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
            SavedStateWriter.e("android-support-nav:controller:navigatorState:names", arrayList, bundleA2);
            bundleA.putBundle("android-support-nav:controller:navigatorState", bundleA2);
        }
        if (!arrayDeque.isEmpty()) {
            if (bundleA == null) {
                MapsKt.c();
                bundleA = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
            }
            ArrayList arrayList2 = new ArrayList();
            Iterator<E> it = arrayDeque.iterator();
            while (it.hasNext()) {
                arrayList2.add(new NavBackStackEntryState((NavBackStackEntry) it.next()).b());
            }
            SavedStateWriter.b("android-support-nav:controller:backStack", arrayList2, bundleA);
        }
        if (!linkedHashMap2.isEmpty()) {
            if (bundleA == null) {
                MapsKt.c();
                bundleA = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
            }
            int[] iArr = new int[linkedHashMap2.size()];
            ArrayList arrayList3 = new ArrayList();
            int i2 = 0;
            for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
                int iIntValue = ((Number) entry2.getKey()).intValue();
                String str2 = (String) entry2.getValue();
                int i3 = i2 + 1;
                iArr[i2] = iIntValue;
                if (str2 == null) {
                    str2 = "";
                }
                arrayList3.add(str2);
                i2 = i3;
            }
            bundleA.putIntArray("android-support-nav:controller:backStackDestIds", iArr);
            SavedStateWriter.e("android-support-nav:controller:backStackIds", arrayList3, bundleA);
        }
        if (!linkedHashMap.isEmpty()) {
            if (bundleA == null) {
                MapsKt.c();
                bundleA = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
            }
            ArrayList arrayList4 = new ArrayList();
            for (Map.Entry entry3 : linkedHashMap.entrySet()) {
                String str3 = (String) entry3.getKey();
                ArrayDeque arrayDeque2 = (ArrayDeque) entry3.getValue();
                arrayList4.add(str3);
                ArrayList arrayList5 = new ArrayList();
                Iterator<E> it2 = arrayDeque2.iterator();
                while (it2.hasNext()) {
                    arrayList5.add(((NavBackStackEntryState) it2.next()).b());
                }
                SavedStateWriter.b("android-support-nav:controller:backStackStates:" + str3, arrayList5, bundleA);
            }
            SavedStateWriter.e("android-support-nav:controller:backStackStates", arrayList4, bundleA);
        }
        if (this.f18124e) {
            if (bundleA == null) {
                MapsKt.c();
                bundleA = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
            }
            bundleA.putBoolean("android-support-nav:controller:deepLinkHandled", this.f18124e);
        }
        return bundleA;
    }
}
