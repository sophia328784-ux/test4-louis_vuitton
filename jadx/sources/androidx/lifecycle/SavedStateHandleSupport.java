package androidx.lifecycle;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import defpackage.ct0;
import defpackage.d21;
import defpackage.md;
import java.util.Arrays;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Reflection;
import kotlin.text.CharsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"lifecycle-viewmodel-savedstate"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SavedStateHandleSupport {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SavedStateHandleSupport$special$$inlined$Key$1 f13505a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SavedStateHandleSupport$special$$inlined$Key$2 f13506b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final SavedStateHandleSupport$special$$inlined$Key$3 f13507c;

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.lifecycle.SavedStateHandleSupport$special$$inlined$Key$1] */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.lifecycle.SavedStateHandleSupport$special$$inlined$Key$2] */
    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.lifecycle.SavedStateHandleSupport$special$$inlined$Key$3] */
    static {
        int i2 = CreationExtras.f13576b;
        f13505a = new CreationExtras.Key<SavedStateRegistryOwner>() { // from class: androidx.lifecycle.SavedStateHandleSupport$special$$inlined$Key$1
            public final String toString() {
                String string = Integer.toString(hashCode(), CharsKt.checkRadix(16));
                string.getClass();
                return d21.l("CreationExtras.Key@", string, "<", Reflection.f71922a.b(SavedStateRegistryOwner.class).B(), ">");
            }
        };
        f13506b = new CreationExtras.Key<ViewModelStoreOwner>() { // from class: androidx.lifecycle.SavedStateHandleSupport$special$$inlined$Key$2
            public final String toString() {
                String string = Integer.toString(hashCode(), CharsKt.checkRadix(16));
                string.getClass();
                return d21.l("CreationExtras.Key@", string, "<", Reflection.f71922a.b(ViewModelStoreOwner.class).B(), ">");
            }
        };
        f13507c = new CreationExtras.Key<Bundle>() { // from class: androidx.lifecycle.SavedStateHandleSupport$special$$inlined$Key$3
            public final String toString() {
                String string = Integer.toString(hashCode(), CharsKt.checkRadix(16));
                string.getClass();
                return d21.l("CreationExtras.Key@", string, "<", Reflection.f71922a.b(Bundle.class).B(), ">");
            }
        };
    }

    public static final SavedStateHandle a(CreationExtras creationExtras) {
        creationExtras.getClass();
        SavedStateRegistryOwner savedStateRegistryOwner = (SavedStateRegistryOwner) creationExtras.a(f13505a);
        Bundle bundle = null;
        if (savedStateRegistryOwner == null) {
            md.n("CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`");
            return null;
        }
        ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) creationExtras.a(f13506b);
        if (viewModelStoreOwner == null) {
            md.n("CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`");
            return null;
        }
        Bundle bundle2 = (Bundle) creationExtras.a(f13507c);
        String str = (String) creationExtras.a(ViewModelProvider.f13529c);
        if (str == null) {
            md.n("CreationExtras must have a value by `VIEW_MODEL_KEY`");
            return null;
        }
        SavedStateRegistry.SavedStateProvider savedStateProviderB = savedStateRegistryOwner.getSavedStateRegistry().b("androidx.lifecycle.internal.SavedStateHandlesProvider");
        SavedStateHandlesProvider savedStateHandlesProvider = savedStateProviderB instanceof SavedStateHandlesProvider ? (SavedStateHandlesProvider) savedStateProviderB : null;
        if (savedStateHandlesProvider == null) {
            md.k("enableSavedStateHandles() wasn't called prior to createSavedStateHandle() call");
            return null;
        }
        LinkedHashMap linkedHashMap = c(viewModelStoreOwner).f13511a;
        SavedStateHandle savedStateHandle = (SavedStateHandle) linkedHashMap.get(str);
        if (savedStateHandle != null) {
            return savedStateHandle;
        }
        SavedStateHandle.Companion companion = SavedStateHandle.f13499c;
        savedStateHandlesProvider.a();
        Bundle bundle3 = savedStateHandlesProvider.f13510c;
        if (bundle3 != null && bundle3.containsKey(str)) {
            Bundle bundle4 = bundle3.getBundle(str);
            if (bundle4 == null) {
                MapsKt.c();
                bundle4 = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
            }
            bundle3.remove(str);
            if (bundle3.isEmpty()) {
                savedStateHandlesProvider.f13510c = null;
            }
            bundle = bundle4;
        }
        companion.getClass();
        SavedStateHandle savedStateHandleA = SavedStateHandle.Companion.a(bundle, bundle2);
        linkedHashMap.put(str, savedStateHandleA);
        return savedStateHandleA;
    }

    public static final void b(SavedStateRegistryOwner savedStateRegistryOwner) {
        savedStateRegistryOwner.getClass();
        Lifecycle.State f13454i = savedStateRegistryOwner.getF13561b().getF13454i();
        if (f13454i != Lifecycle.State.INITIALIZED && f13454i != Lifecycle.State.CREATED) {
            ct0.h(savedStateRegistryOwner, "`. The `Lifecycle.State` must be `INITIALIZED` or `CREATED`, but was `", f13454i, "`. You must call `enableSavedStateHandles()` before the `Lifecycle.State` moves to `STARTED`.", "Failed to enable `SavedStateHandle` for `");
        } else if (savedStateRegistryOwner.getSavedStateRegistry().b("androidx.lifecycle.internal.SavedStateHandlesProvider") == null) {
            SavedStateHandlesProvider savedStateHandlesProvider = new SavedStateHandlesProvider(savedStateRegistryOwner.getSavedStateRegistry(), (ViewModelStoreOwner) savedStateRegistryOwner);
            savedStateRegistryOwner.getSavedStateRegistry().c("androidx.lifecycle.internal.SavedStateHandlesProvider", savedStateHandlesProvider);
            savedStateRegistryOwner.getF13561b().a(new SavedStateHandleAttacher(savedStateHandlesProvider));
        }
    }

    public static final SavedStateHandlesVM c(ViewModelStoreOwner viewModelStoreOwner) {
        viewModelStoreOwner.getClass();
        ViewModelProvider.Companion companion = ViewModelProvider.f13528b;
        SavedStateHandleSupport$savedStateHandlesVM$1 savedStateHandleSupport$savedStateHandlesVM$1 = new SavedStateHandleSupport$savedStateHandlesVM$1();
        CreationExtras creationExtrasA = ViewModelStoreOwnerDefaults.a(viewModelStoreOwner);
        companion.getClass();
        creationExtrasA.getClass();
        ViewModelProvider viewModelProvider = new ViewModelProvider(viewModelStoreOwner.getViewModelStore(), savedStateHandleSupport$savedStateHandlesVM$1, creationExtrasA);
        return (SavedStateHandlesVM) viewModelProvider.f13530a.a("androidx.lifecycle.internal.SavedStateHandlesVM", Reflection.f71922a.b(SavedStateHandlesVM.class));
    }
}
