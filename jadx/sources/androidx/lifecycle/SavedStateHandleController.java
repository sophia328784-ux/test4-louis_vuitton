package androidx.lifecycle;

import androidx.savedstate.SavedStateRegistry;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.md;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u0003B\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/lifecycle/SavedStateHandleController;", "Landroidx/lifecycle/LifecycleEventObserver;", "Ljava/lang/AutoCloseable;", "Lkotlin/AutoCloseable;", "", ConfigurationName.KEY, "Landroidx/lifecycle/SavedStateHandle;", "handle", "<init>", "(Ljava/lang/String;Landroidx/lifecycle/SavedStateHandle;)V", "lifecycle-viewmodel-savedstate"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SavedStateHandleController implements LifecycleEventObserver, AutoCloseable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f13503b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SavedStateHandle f13504c;
    public boolean d;

    public SavedStateHandleController(String str, SavedStateHandle savedStateHandle) {
        str.getClass();
        savedStateHandle.getClass();
        this.f13503b = str;
        this.f13504c = savedStateHandle;
    }

    public final void c(Lifecycle lifecycle, SavedStateRegistry savedStateRegistry) {
        savedStateRegistry.getClass();
        lifecycle.getClass();
        if (this.d) {
            md.k("Already attached to lifecycleOwner");
            return;
        }
        this.d = true;
        lifecycle.a(this);
        savedStateRegistry.c(this.f13503b, this.f13504c.f13501b.f13574e);
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_DESTROY) {
            this.d = false;
            lifecycleOwner.getF13561b().d(this);
        }
    }
}
