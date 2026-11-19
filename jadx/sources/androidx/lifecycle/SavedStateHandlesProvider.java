package androidx.lifecycle;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateWriter;
import defpackage.xn0;
import java.util.Arrays;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.MapsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/lifecycle/SavedStateHandlesProvider;", "Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;", "Landroidx/savedstate/SavedStateRegistry;", "savedStateRegistry", "Landroidx/lifecycle/ViewModelStoreOwner;", "viewModelStoreOwner", "<init>", "(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/ViewModelStoreOwner;)V", "lifecycle-viewmodel-savedstate"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SavedStateHandlesProvider implements SavedStateRegistry.SavedStateProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SavedStateRegistry f13508a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f13509b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Bundle f13510c;
    public final Lazy d;

    public SavedStateHandlesProvider(SavedStateRegistry savedStateRegistry, ViewModelStoreOwner viewModelStoreOwner) {
        savedStateRegistry.getClass();
        viewModelStoreOwner.getClass();
        this.f13508a = savedStateRegistry;
        this.d = LazyKt.b(new xn0(viewModelStoreOwner, 22));
    }

    public final void a() {
        if (this.f13509b) {
            return;
        }
        Bundle bundleA = this.f13508a.a("androidx.lifecycle.internal.SavedStateHandlesProvider");
        MapsKt.c();
        Bundle bundleA2 = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
        Bundle bundle = this.f13510c;
        if (bundle != null) {
            bundleA2.putAll(bundle);
        }
        if (bundleA != null) {
            bundleA2.putAll(bundleA);
        }
        this.f13510c = bundleA2;
        this.f13509b = true;
    }

    @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
    public final Bundle saveState() {
        MapsKt.c();
        Bundle bundleA = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
        Bundle bundle = this.f13510c;
        if (bundle != null) {
            bundleA.putAll(bundle);
        }
        for (Map.Entry entry : ((SavedStateHandlesVM) this.d.getF71699b()).f13511a.entrySet()) {
            String str = (String) entry.getKey();
            Bundle bundleSaveState = ((SavedStateHandle) entry.getValue()).f13501b.f13574e.saveState();
            if (!bundleSaveState.isEmpty()) {
                SavedStateWriter.c(bundleA, str, bundleSaveState);
            }
        }
        this.f13509b = false;
        return bundleA;
    }
}
