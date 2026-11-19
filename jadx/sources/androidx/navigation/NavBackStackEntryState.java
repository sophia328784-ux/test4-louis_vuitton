package androidx.navigation;

import android.content.Context;
import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.lifecycle.Lifecycle;
import androidx.navigation.internal.NavBackStackEntryStateImpl;
import androidx.navigation.internal.NavContext;
import androidx.savedstate.SavedStateWriter;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.MapsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0015\b\u0016\u0012\n\u0010\b\u001a\u00060\u0006j\u0002`\u0007¢\u0006\u0004\b\u0004\u0010\t¨\u0006\n"}, d2 = {"Landroidx/navigation/NavBackStackEntryState;", "", "Landroidx/navigation/NavBackStackEntry;", "entry", "<init>", "(Landroidx/navigation/NavBackStackEntry;)V", "Landroid/os/Bundle;", "Landroidx/savedstate/SavedState;", "state", "(Landroid/os/Bundle;)V", "navigation-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class NavBackStackEntryState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final NavBackStackEntryStateImpl f18119a;

    public NavBackStackEntryState(Bundle bundle) {
        bundle.getClass();
        bundle.setClassLoader(NavBackStackEntryState.class.getClassLoader());
        this.f18119a = new NavBackStackEntryStateImpl(bundle);
    }

    public final NavBackStackEntry a(NavContext navContext, NavDestination navDestination, Lifecycle.State state, NavControllerViewModel navControllerViewModel) {
        Bundle bundle;
        navContext.getClass();
        state.getClass();
        NavBackStackEntryStateImpl navBackStackEntryStateImpl = this.f18119a;
        Bundle bundle2 = navBackStackEntryStateImpl.f18330c;
        if (bundle2 != null) {
            Context context = navContext.f18331a;
            bundle2.setClassLoader(context != null ? context.getClassLoader() : null);
            bundle = bundle2;
        } else {
            bundle = null;
        }
        NavBackStackEntry.Companion companion = NavBackStackEntry.f18111k;
        String str = navBackStackEntryStateImpl.f18328a;
        Bundle bundle3 = navBackStackEntryStateImpl.d;
        companion.getClass();
        str.getClass();
        return new NavBackStackEntry(navContext, navDestination, bundle, state, navControllerViewModel, str, bundle3, null);
    }

    public final Bundle b() {
        NavBackStackEntryStateImpl navBackStackEntryStateImpl = this.f18119a;
        navBackStackEntryStateImpl.getClass();
        MapsKt.c();
        Bundle bundleA = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
        SavedStateWriter.d("nav-entry-state:id", navBackStackEntryStateImpl.f18328a, bundleA);
        bundleA.putInt("nav-entry-state:destination-id", navBackStackEntryStateImpl.f18329b);
        Bundle bundleA2 = navBackStackEntryStateImpl.f18330c;
        if (bundleA2 == null) {
            MapsKt.c();
            bundleA2 = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
        }
        bundleA.putBundle("nav-entry-state:args", bundleA2);
        SavedStateWriter.c(bundleA, "nav-entry-state:saved-state", navBackStackEntryStateImpl.d);
        return bundleA;
    }

    public NavBackStackEntryState(NavBackStackEntry navBackStackEntry) {
        navBackStackEntry.getClass();
        this.f18119a = new NavBackStackEntryStateImpl(navBackStackEntry, navBackStackEntry.f18113c.f18152c.f18344e);
    }
}
