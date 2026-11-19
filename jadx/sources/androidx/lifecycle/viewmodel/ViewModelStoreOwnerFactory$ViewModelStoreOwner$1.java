package androidx.lifecycle.viewmodel;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.SavedStateHandleSupport;
import androidx.lifecycle.SavedStateHandleSupport$special$$inlined$Key$3;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.MapsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u00012\u00020\u0002¨\u0006\u0003"}, d2 = {"androidx/lifecycle/viewmodel/ViewModelStoreOwnerFactory$ViewModelStoreOwner$1", "Landroidx/lifecycle/ViewModelStoreOwner;", "Landroidx/lifecycle/HasDefaultViewModelProviderFactory;", "lifecycle-viewmodel-savedstate"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ViewModelStoreOwnerFactory$ViewModelStoreOwner$1 implements ViewModelStoreOwner, HasDefaultViewModelProviderFactory {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewModelStore f13583b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ViewModelProvider.Factory f13584c;
    public final /* synthetic */ CreationExtras d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Bundle f13585e;

    public ViewModelStoreOwnerFactory$ViewModelStoreOwner$1(ViewModelStore viewModelStore, ViewModelProvider.Factory factory, CreationExtras creationExtras, Bundle bundle) {
        this.f13583b = viewModelStore;
        this.f13584c = factory;
        this.d = creationExtras;
        this.f13585e = bundle;
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    public final CreationExtras getDefaultViewModelCreationExtras() {
        MutableCreationExtras mutableCreationExtras = new MutableCreationExtras(this.d);
        SavedStateHandleSupport$special$$inlined$Key$3 savedStateHandleSupport$special$$inlined$Key$3 = SavedStateHandleSupport.f13507c;
        MapsKt.c();
        Bundle bundleA = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
        Bundle bundle = (Bundle) mutableCreationExtras.a(savedStateHandleSupport$special$$inlined$Key$3);
        if (bundle != null) {
            bundleA.putAll(bundle);
        }
        bundleA.putAll(this.f13585e);
        mutableCreationExtras.f13577a.put(savedStateHandleSupport$special$$inlined$Key$3, bundleA);
        mutableCreationExtras.b(SavedStateHandleSupport.f13506b, this);
        return mutableCreationExtras;
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    /* JADX INFO: renamed from: getDefaultViewModelProviderFactory, reason: from getter */
    public final ViewModelProvider.Factory getF13584c() {
        return this.f13584c;
    }

    @Override // androidx.lifecycle.ViewModelStoreOwner
    /* JADX INFO: renamed from: getViewModelStore, reason: from getter */
    public final ViewModelStore getF13583b() {
        return this.f13583b;
    }
}
