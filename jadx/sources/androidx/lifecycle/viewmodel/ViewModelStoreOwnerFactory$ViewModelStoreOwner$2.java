package androidx.lifecycle.viewmodel;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.SavedStateHandleSupport;
import androidx.lifecycle.SavedStateHandleSupport$special$$inlined$Key$3;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.MapsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003¨\u0006\u0004"}, d2 = {"androidx/lifecycle/viewmodel/ViewModelStoreOwnerFactory$ViewModelStoreOwner$2", "Landroidx/lifecycle/ViewModelStoreOwner;", "Landroidx/lifecycle/HasDefaultViewModelProviderFactory;", "Landroidx/savedstate/SavedStateRegistryOwner;", "lifecycle-viewmodel-savedstate"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ViewModelStoreOwnerFactory$ViewModelStoreOwner$2 implements ViewModelStoreOwner, HasDefaultViewModelProviderFactory, SavedStateRegistryOwner {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SavedStateRegistry f13586b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ViewModelStore f13587c;
    public final /* synthetic */ Lifecycle d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ViewModelProvider.Factory f13588e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ CreationExtras f13589f;
    public final /* synthetic */ Bundle g;

    public ViewModelStoreOwnerFactory$ViewModelStoreOwner$2(SavedStateRegistry savedStateRegistry, ViewModelStore viewModelStore, Lifecycle lifecycle, ViewModelProvider.Factory factory, CreationExtras creationExtras, Bundle bundle) {
        this.f13586b = savedStateRegistry;
        this.f13587c = viewModelStore;
        this.d = lifecycle;
        this.f13588e = factory;
        this.f13589f = creationExtras;
        this.g = bundle;
        if (savedStateRegistry.b("androidx.lifecycle.internal.SavedStateHandlesProvider") == null) {
            SavedStateHandleSupport.b(this);
        }
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    public final CreationExtras getDefaultViewModelCreationExtras() {
        MutableCreationExtras mutableCreationExtras = new MutableCreationExtras(this.f13589f);
        SavedStateHandleSupport$special$$inlined$Key$3 savedStateHandleSupport$special$$inlined$Key$3 = SavedStateHandleSupport.f13507c;
        MapsKt.c();
        Bundle bundleA = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
        Bundle bundle = (Bundle) mutableCreationExtras.a(savedStateHandleSupport$special$$inlined$Key$3);
        if (bundle != null) {
            bundleA.putAll(bundle);
        }
        bundleA.putAll(this.g);
        mutableCreationExtras.f13577a.put(savedStateHandleSupport$special$$inlined$Key$3, bundleA);
        mutableCreationExtras.b(SavedStateHandleSupport.f13505a, this);
        mutableCreationExtras.b(SavedStateHandleSupport.f13506b, this);
        return mutableCreationExtras;
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    /* JADX INFO: renamed from: getDefaultViewModelProviderFactory, reason: from getter */
    public final ViewModelProvider.Factory getF13588e() {
        return this.f13588e;
    }

    @Override // androidx.lifecycle.LifecycleOwner
    /* JADX INFO: renamed from: getLifecycle, reason: from getter */
    public final Lifecycle getD() {
        return this.d;
    }

    @Override // androidx.savedstate.SavedStateRegistryOwner
    /* JADX INFO: renamed from: getSavedStateRegistry, reason: from getter */
    public final SavedStateRegistry getF13586b() {
        return this.f13586b;
    }

    @Override // androidx.lifecycle.ViewModelStoreOwner
    /* JADX INFO: renamed from: getViewModelStore, reason: from getter */
    public final ViewModelStore getF13587c() {
        return this.f13587c;
    }
}
