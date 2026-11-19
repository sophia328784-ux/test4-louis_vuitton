package androidx.navigation;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.SavedStateHandleSupport;
import androidx.lifecycle.SavedStateHandleSupport$special$$inlined$Key$1;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.navigation.internal.NavBackStackEntryImpl;
import androidx.navigation.internal.NavContext;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import defpackage.md;
import defpackage.x60;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001\u000bB#\b\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0000\u0012\u0010\b\u0002\u0010\b\u001a\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Landroidx/navigation/NavBackStackEntry;", "Landroidx/lifecycle/LifecycleOwner;", "Landroidx/lifecycle/ViewModelStoreOwner;", "Landroidx/lifecycle/HasDefaultViewModelProviderFactory;", "Landroidx/savedstate/SavedStateRegistryOwner;", "entry", "Landroid/os/Bundle;", "Landroidx/savedstate/SavedState;", "arguments", "<init>", "(Landroidx/navigation/NavBackStackEntry;Landroid/os/Bundle;)V", "Companion", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class NavBackStackEntry implements LifecycleOwner, ViewModelStoreOwner, HasDefaultViewModelProviderFactory, SavedStateRegistryOwner {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Companion f18111k = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final NavContext f18112b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public NavDestination f18113c;
    public final Bundle d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Lifecycle.State f18114e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final NavViewModelStoreProvider f18115f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Bundle f18116h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final NavBackStackEntryImpl f18117i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Lazy f18118j;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/navigation/NavBackStackEntry$Companion;", "", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static NavBackStackEntry a(Companion companion, NavContext navContext, NavDestination navDestination, Bundle bundle, Lifecycle.State state, NavViewModelStoreProvider navViewModelStoreProvider) {
            companion.getClass();
            String string = UUID.randomUUID().toString();
            string.getClass();
            companion.getClass();
            navDestination.getClass();
            state.getClass();
            return new NavBackStackEntry(navContext, navDestination, bundle, state, navViewModelStoreProvider, string, null, null);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavBackStackEntry(NavBackStackEntry navBackStackEntry, Bundle bundle) {
        this(navBackStackEntry.f18112b, navBackStackEntry.f18113c, bundle, navBackStackEntry.f18114e, navBackStackEntry.f18115f, navBackStackEntry.g, navBackStackEntry.f18116h);
        navBackStackEntry.getClass();
        NavBackStackEntryImpl navBackStackEntryImpl = this.f18117i;
        Lifecycle.State state = navBackStackEntry.f18114e;
        navBackStackEntryImpl.getClass();
        state.getClass();
        navBackStackEntryImpl.d = state;
        NavBackStackEntryImpl navBackStackEntryImpl2 = this.f18117i;
        Lifecycle.State state2 = navBackStackEntry.f18117i.l;
        navBackStackEntryImpl2.getClass();
        state2.getClass();
        navBackStackEntryImpl2.l = state2;
        navBackStackEntryImpl2.c();
    }

    public final SavedStateHandle a() {
        return (SavedStateHandle) this.f18118j.getF71699b();
    }

    public final void b(Lifecycle.State state) {
        state.getClass();
        NavBackStackEntryImpl navBackStackEntryImpl = this.f18117i;
        navBackStackEntryImpl.getClass();
        navBackStackEntryImpl.l = state;
        navBackStackEntryImpl.c();
    }

    public final boolean equals(Object obj) {
        Set<String> setKeySet;
        if (obj != null && (obj instanceof NavBackStackEntry)) {
            NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
            Bundle bundle = navBackStackEntry.d;
            if (Intrinsics.c(this.g, navBackStackEntry.g) && Intrinsics.c(this.f18113c, navBackStackEntry.f18113c) && Intrinsics.c(this.f18117i.f18326k, navBackStackEntry.f18117i.f18326k) && Intrinsics.c(getSavedStateRegistry(), navBackStackEntry.getSavedStateRegistry())) {
                Bundle bundle2 = this.d;
                if (Intrinsics.c(bundle2, bundle)) {
                    return true;
                }
                if (bundle2 != null && (setKeySet = bundle2.keySet()) != null) {
                    Set<String> set = setKeySet;
                    if ((set instanceof Collection) && set.isEmpty()) {
                        return true;
                    }
                    for (String str : set) {
                        if (!Intrinsics.c(bundle2.get(str), bundle != null ? bundle.get(str) : null)) {
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0038  */
    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    public final CreationExtras getDefaultViewModelCreationExtras() {
        Application application;
        NavBackStackEntryImpl navBackStackEntryImpl = this.f18117i;
        navBackStackEntryImpl.getClass();
        MutableCreationExtras mutableCreationExtras = new MutableCreationExtras(null, 1, null);
        SavedStateHandleSupport$special$$inlined$Key$1 savedStateHandleSupport$special$$inlined$Key$1 = SavedStateHandleSupport.f13505a;
        NavBackStackEntry navBackStackEntry = navBackStackEntryImpl.f18318a;
        mutableCreationExtras.b(savedStateHandleSupport$special$$inlined$Key$1, navBackStackEntry);
        mutableCreationExtras.b(SavedStateHandleSupport.f13506b, navBackStackEntry);
        Bundle bundleA = navBackStackEntryImpl.a();
        if (bundleA != null) {
            mutableCreationExtras.b(SavedStateHandleSupport.f13507c, bundleA);
        }
        NavContext navContext = this.f18112b;
        if (navContext == null) {
            application = null;
        } else {
            Context context = navContext.f18331a;
            Context applicationContext = context != null ? context.getApplicationContext() : null;
            if (applicationContext instanceof Application) {
                application = (Application) applicationContext;
            } else {
                application = null;
            }
        }
        Application application2 = application != null ? application : null;
        if (application2 != null) {
            mutableCreationExtras.b(ViewModelProvider.AndroidViewModelFactory.f13532f, application2);
        }
        return mutableCreationExtras;
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    public final ViewModelProvider.Factory getDefaultViewModelProviderFactory() {
        return this.f18117i.m;
    }

    @Override // androidx.lifecycle.LifecycleOwner
    /* JADX INFO: renamed from: getLifecycle */
    public final Lifecycle getF13561b() {
        return this.f18117i.f18326k;
    }

    @Override // androidx.savedstate.SavedStateRegistryOwner
    public final SavedStateRegistry getSavedStateRegistry() {
        return this.f18117i.f18323h.f19788b;
    }

    @Override // androidx.lifecycle.ViewModelStoreOwner
    public final ViewModelStore getViewModelStore() {
        NavBackStackEntryImpl navBackStackEntryImpl = this.f18117i;
        if (!navBackStackEntryImpl.f18324i) {
            md.k("You cannot access the NavBackStackEntry's ViewModels until it is added to the NavController's back stack (i.e., the Lifecycle of the NavBackStackEntry reaches the CREATED state).");
            return null;
        }
        if (navBackStackEntryImpl.f18326k.f13454i == Lifecycle.State.DESTROYED) {
            md.k("You cannot access the NavBackStackEntry's ViewModels after the NavBackStackEntry is destroyed.");
            return null;
        }
        NavViewModelStoreProvider navViewModelStoreProvider = navBackStackEntryImpl.f18321e;
        if (navViewModelStoreProvider != null) {
            return navViewModelStoreProvider.V1(navBackStackEntryImpl.f18322f);
        }
        md.k("You must call setViewModelStore() on your NavHostController before accessing the ViewModelStore of a navigation graph.");
        return null;
    }

    public final int hashCode() {
        Set<String> setKeySet;
        int iHashCode = this.f18113c.hashCode() + (this.g.hashCode() * 31);
        Bundle bundle = this.d;
        if (bundle != null && (setKeySet = bundle.keySet()) != null) {
            Iterator<T> it = setKeySet.iterator();
            while (it.hasNext()) {
                int i2 = iHashCode * 31;
                Object obj = bundle.get((String) it.next());
                iHashCode = i2 + (obj != null ? obj.hashCode() : 0);
            }
        }
        return getSavedStateRegistry().hashCode() + ((this.f18117i.f18326k.hashCode() + (iHashCode * 31)) * 31);
    }

    public final String toString() {
        return this.f18117i.toString();
    }

    public NavBackStackEntry(NavContext navContext, NavDestination navDestination, Bundle bundle, Lifecycle.State state, NavViewModelStoreProvider navViewModelStoreProvider, String str, Bundle bundle2) {
        this.f18112b = navContext;
        this.f18113c = navDestination;
        this.d = bundle;
        this.f18114e = state;
        this.f18115f = navViewModelStoreProvider;
        this.g = str;
        this.f18116h = bundle2;
        this.f18117i = new NavBackStackEntryImpl(this);
        this.f18118j = LazyKt.b(new x60(this, 13));
    }

    public /* synthetic */ NavBackStackEntry(NavContext navContext, NavDestination navDestination, Bundle bundle, Lifecycle.State state, NavViewModelStoreProvider navViewModelStoreProvider, String str, Bundle bundle2, DefaultConstructorMarker defaultConstructorMarker) {
        this(navContext, navDestination, bundle, state, navViewModelStoreProvider, str, bundle2);
    }

    public NavBackStackEntry(NavBackStackEntry navBackStackEntry, Bundle bundle, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(navBackStackEntry, (i2 & 2) != 0 ? navBackStackEntry.f18117i.a() : bundle);
    }
}
