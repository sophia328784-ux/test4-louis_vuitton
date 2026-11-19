package androidx.lifecycle.compose;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/lifecycle/compose/ComposeLifecycleOwner;", "Landroidx/lifecycle/LifecycleOwner;", "<init>", "()V", "lifecycle-runtime-compose"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class ComposeLifecycleOwner implements LifecycleOwner {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LifecycleRegistry f13538b = new LifecycleRegistry(this);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Lifecycle.State f13539c;
    public Lifecycle.State d;

    public ComposeLifecycleOwner() {
        Lifecycle.State state = Lifecycle.State.INITIALIZED;
        this.f13539c = state;
        this.d = state;
    }

    public final void a() {
        Lifecycle.State state = this.f13539c.ordinal() < this.d.ordinal() ? this.f13539c : this.d;
        LifecycleRegistry lifecycleRegistry = this.f13538b;
        if (lifecycleRegistry.f13454i == Lifecycle.State.INITIALIZED && state == Lifecycle.State.DESTROYED) {
            return;
        }
        lifecycleRegistry.i(state);
    }

    @Override // androidx.lifecycle.LifecycleOwner
    /* JADX INFO: renamed from: getLifecycle */
    public final Lifecycle getF13561b() {
        return this.f13538b;
    }
}
