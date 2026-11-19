package androidx.lifecycle.compose;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;", "Landroidx/lifecycle/LifecycleOwner;", "Landroidx/lifecycle/Lifecycle;", "lifecycle", "<init>", "(Landroidx/lifecycle/Lifecycle;)V", "lifecycle-runtime-compose"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LifecycleResumePauseEffectScope implements LifecycleOwner {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Lifecycle f13560b;

    public LifecycleResumePauseEffectScope(Lifecycle lifecycle) {
        this.f13560b = lifecycle;
    }

    @Override // androidx.lifecycle.LifecycleOwner
    /* JADX INFO: renamed from: getLifecycle, reason: from getter */
    public final Lifecycle getF13560b() {
        return this.f13560b;
    }
}
