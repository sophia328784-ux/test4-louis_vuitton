package androidx.navigation.internal;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.SavedStateHandleSupport;
import androidx.lifecycle.SavedStateViewModelFactory;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwnerDefaults;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.NavViewModelStoreProvider;
import androidx.savedstate.SavedStateRegistryController;
import defpackage.dd0;
import defpackage.md;
import java.util.Arrays;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/navigation/internal/NavBackStackEntryImpl;", "", "Landroidx/navigation/NavBackStackEntry;", "entry", "<init>", "(Landroidx/navigation/NavBackStackEntry;)V", "SavedStateViewModel", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class NavBackStackEntryImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final NavBackStackEntry f18318a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final NavDestination f18319b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Bundle f18320c;
    public Lifecycle.State d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final NavViewModelStoreProvider f18321e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f18322f;
    public final Bundle g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final SavedStateRegistryController f18323h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f18324i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Lazy f18325j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final LifecycleRegistry f18326k;
    public Lifecycle.State l;
    public final SavedStateViewModelFactory m;
    public final Lazy n;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/navigation/internal/NavBackStackEntryImpl$SavedStateViewModel;", "Landroidx/lifecycle/ViewModel;", "Landroidx/lifecycle/SavedStateHandle;", "handle", "<init>", "(Landroidx/lifecycle/SavedStateHandle;)V", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class SavedStateViewModel extends ViewModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SavedStateHandle f18327a;

        public SavedStateViewModel(SavedStateHandle savedStateHandle) {
            savedStateHandle.getClass();
            this.f18327a = savedStateHandle;
        }
    }

    public NavBackStackEntryImpl(NavBackStackEntry navBackStackEntry) {
        navBackStackEntry.getClass();
        this.f18318a = navBackStackEntry;
        this.f18319b = navBackStackEntry.f18113c;
        this.f18320c = navBackStackEntry.d;
        this.d = navBackStackEntry.f18114e;
        this.f18321e = navBackStackEntry.f18115f;
        this.f18322f = navBackStackEntry.g;
        this.g = navBackStackEntry.f18116h;
        SavedStateRegistryController.f19786c.getClass();
        this.f18323h = SavedStateRegistryController.Companion.a(navBackStackEntry);
        Lazy lazyB = LazyKt.b(new dd0(21));
        this.f18325j = lazyB;
        this.f18326k = new LifecycleRegistry(navBackStackEntry);
        this.l = Lifecycle.State.INITIALIZED;
        this.m = (SavedStateViewModelFactory) lazyB.getF71699b();
        this.n = LazyKt.b(new a());
    }

    public final Bundle a() {
        Bundle bundle = this.f18320c;
        if (bundle == null) {
            return null;
        }
        MapsKt.c();
        Bundle bundleA = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
        bundleA.putAll(bundle);
        return bundleA;
    }

    public final SavedStateHandle b() {
        if (!this.f18324i) {
            md.k("You cannot access the NavBackStackEntry's SavedStateHandle until it is added to the NavController's back stack (i.e., the Lifecycle of the NavBackStackEntry reaches the CREATED state).");
            return null;
        }
        if (this.f18326k.f13454i == Lifecycle.State.DESTROYED) {
            md.k("You cannot access the NavBackStackEntry's SavedStateHandle after the NavBackStackEntry is destroyed.");
            return null;
        }
        ViewModelProvider.Companion companion = ViewModelProvider.f13528b;
        ViewModelProvider.Factory factory = (ViewModelProvider.Factory) this.n.getF71699b();
        NavBackStackEntry navBackStackEntry = this.f18318a;
        CreationExtras creationExtrasA = ViewModelStoreOwnerDefaults.a(navBackStackEntry);
        companion.getClass();
        navBackStackEntry.getClass();
        factory.getClass();
        creationExtrasA.getClass();
        return ((SavedStateViewModel) new ViewModelProvider(navBackStackEntry.getViewModelStore(), factory, creationExtrasA).a(Reflection.f71922a.b(SavedStateViewModel.class))).f18327a;
    }

    public final void c() {
        if (!this.f18324i) {
            SavedStateRegistryController savedStateRegistryController = this.f18323h;
            savedStateRegistryController.f19787a.a();
            this.f18324i = true;
            if (this.f18321e != null) {
                SavedStateHandleSupport.b(this.f18318a);
            }
            savedStateRegistryController.a(this.g);
        }
        int iOrdinal = this.d.ordinal();
        int iOrdinal2 = this.l.ordinal();
        LifecycleRegistry lifecycleRegistry = this.f18326k;
        if (iOrdinal < iOrdinal2) {
            lifecycleRegistry.i(this.d);
        } else {
            lifecycleRegistry.i(this.l);
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(Reflection.f71922a.b(this.f18318a.getClass()).B());
        sb.append("(" + this.f18322f + ')');
        sb.append(" destination=");
        sb.append(this.f18319b);
        return sb.toString();
    }
}
