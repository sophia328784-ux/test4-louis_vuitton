package androidx.savedstate;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.lifecycle.Lifecycle;
import androidx.savedstate.internal.SavedStateRegistryImpl;
import defpackage.md;
import defpackage.tg0;
import defpackage.xn0;
import java.util.Arrays;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/savedstate/SavedStateRegistryController;", "", "Companion", "savedstate"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SavedStateRegistryController {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f19786c = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SavedStateRegistryImpl f19787a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SavedStateRegistry f19788b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/savedstate/SavedStateRegistryController$Companion;", "", "savedstate"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static SavedStateRegistryController a(SavedStateRegistryOwner savedStateRegistryOwner) {
            savedStateRegistryOwner.getClass();
            return new SavedStateRegistryController(new SavedStateRegistryImpl(savedStateRegistryOwner, new xn0(savedStateRegistryOwner, 23)), null);
        }
    }

    public SavedStateRegistryController(SavedStateRegistryImpl savedStateRegistryImpl, DefaultConstructorMarker defaultConstructorMarker) {
        this.f19787a = savedStateRegistryImpl;
        this.f19788b = new SavedStateRegistry(savedStateRegistryImpl);
    }

    public final void a(Bundle bundle) {
        SavedStateRegistryImpl savedStateRegistryImpl = this.f19787a;
        SavedStateRegistryOwner savedStateRegistryOwner = savedStateRegistryImpl.f19794a;
        if (!savedStateRegistryImpl.f19797e) {
            savedStateRegistryImpl.a();
        }
        if (savedStateRegistryOwner.getF13561b().getF13454i().a(Lifecycle.State.STARTED)) {
            tg0.d(savedStateRegistryOwner.getF13561b().getF13454i(), "performRestore cannot be called when owner is ");
            return;
        }
        if (savedStateRegistryImpl.g) {
            md.k("SavedStateRegistry was already restored.");
            return;
        }
        Bundle bundleJ = null;
        if (bundle != null && bundle.containsKey("androidx.lifecycle.BundlableSavedStateRegistry.key")) {
            bundleJ = SavedStateReader.j("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle);
        }
        savedStateRegistryImpl.f19798f = bundleJ;
        savedStateRegistryImpl.g = true;
    }

    public final void b(Bundle bundle) {
        bundle.getClass();
        SavedStateRegistryImpl savedStateRegistryImpl = this.f19787a;
        savedStateRegistryImpl.getClass();
        MapsKt.c();
        Bundle bundleA = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
        Bundle bundle2 = savedStateRegistryImpl.f19798f;
        if (bundle2 != null) {
            bundleA.putAll(bundle2);
        }
        synchronized (savedStateRegistryImpl.f19796c) {
            for (Map.Entry entry : savedStateRegistryImpl.d.entrySet()) {
                SavedStateWriter.c(bundleA, (String) entry.getKey(), ((SavedStateRegistry.SavedStateProvider) entry.getValue()).saveState());
            }
        }
        if (bundleA.isEmpty()) {
            return;
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundleA);
    }
}
