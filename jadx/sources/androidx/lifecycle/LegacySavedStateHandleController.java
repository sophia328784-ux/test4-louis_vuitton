package androidx.lifecycle;

import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import defpackage.tg0;
import java.util.Iterator;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bÀ\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/lifecycle/LegacySavedStateHandleController;", "", "OnRecreation", "lifecycle-viewmodel-savedstate"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class LegacySavedStateHandleController {

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/lifecycle/LegacySavedStateHandleController$OnRecreation;", "Landroidx/savedstate/SavedStateRegistry$AutoRecreated;", "<init>", "()V", "lifecycle-viewmodel-savedstate"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class OnRecreation implements SavedStateRegistry.AutoRecreated {
        @Override // androidx.savedstate.SavedStateRegistry.AutoRecreated
        public final void a(SavedStateRegistryOwner savedStateRegistryOwner) {
            savedStateRegistryOwner.getClass();
            if (!(savedStateRegistryOwner instanceof ViewModelStoreOwner)) {
                tg0.d(savedStateRegistryOwner, "Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner. Received owner: ");
                return;
            }
            ViewModelStore viewModelStore = ((ViewModelStoreOwner) savedStateRegistryOwner).getF13583b();
            SavedStateRegistry savedStateRegistry = savedStateRegistryOwner.getSavedStateRegistry();
            LinkedHashMap linkedHashMap = viewModelStore.f13536a;
            LinkedHashMap linkedHashMap2 = viewModelStore.f13536a;
            Iterator it = CollectionsKt.B0(linkedHashMap.keySet()).iterator();
            while (it.hasNext()) {
                ViewModel viewModel = (ViewModel) linkedHashMap2.get(it.next());
                if (viewModel != null) {
                    LegacySavedStateHandleController.a(viewModel, savedStateRegistry, savedStateRegistryOwner.getF13561b());
                }
            }
            if (CollectionsKt.B0(linkedHashMap2.keySet()).isEmpty()) {
                return;
            }
            savedStateRegistry.d();
        }
    }

    public static final void a(ViewModel viewModel, SavedStateRegistry savedStateRegistry, Lifecycle lifecycle) {
        viewModel.getClass();
        savedStateRegistry.getClass();
        lifecycle.getClass();
        SavedStateHandleController savedStateHandleController = (SavedStateHandleController) viewModel.getCloseable("androidx.lifecycle.savedstate.vm.tag");
        if (savedStateHandleController == null || savedStateHandleController.d) {
            return;
        }
        savedStateHandleController.c(lifecycle, savedStateRegistry);
        b(lifecycle, savedStateRegistry);
    }

    public static void b(final Lifecycle lifecycle, final SavedStateRegistry savedStateRegistry) {
        Lifecycle.State f13454i = lifecycle.getF13454i();
        if (f13454i == Lifecycle.State.INITIALIZED || f13454i.a(Lifecycle.State.STARTED)) {
            savedStateRegistry.d();
        } else {
            lifecycle.a(new LifecycleEventObserver() { // from class: androidx.lifecycle.LegacySavedStateHandleController$tryToAddRecreator$1
                @Override // androidx.lifecycle.LifecycleEventObserver
                public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                    if (event == Lifecycle.Event.ON_START) {
                        lifecycle.d(this);
                        savedStateRegistry.d();
                    }
                }
            });
        }
    }
}
