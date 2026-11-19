package androidx.lifecycle;

import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"lifecycle-common"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LifecycleOwnerKt {
    public static final LifecycleCoroutineScopeImpl a(LifecycleOwner lifecycleOwner) {
        lifecycleOwner.getClass();
        Lifecycle f13561b = lifecycleOwner.getF13561b();
        f13561b.getClass();
        AtomicReference atomicReference = f13561b.f13440a;
        while (true) {
            LifecycleCoroutineScopeImpl lifecycleCoroutineScopeImpl = (LifecycleCoroutineScopeImpl) atomicReference.f13406a.get();
            if (lifecycleCoroutineScopeImpl != null) {
                return lifecycleCoroutineScopeImpl;
            }
            CompletableJob completableJobB = SupervisorKt.b();
            DefaultScheduler defaultScheduler = Dispatchers.f74659a;
            LifecycleCoroutineScopeImpl lifecycleCoroutineScopeImpl2 = new LifecycleCoroutineScopeImpl(f13561b, completableJobB.plus(MainDispatcherLoader.f75131a.r()));
            java.util.concurrent.atomic.AtomicReference atomicReference2 = atomicReference.f13406a;
            do {
                if (atomicReference2.compareAndSet(null, lifecycleCoroutineScopeImpl2)) {
                    DefaultScheduler defaultScheduler2 = Dispatchers.f74659a;
                    BuildersKt.c(lifecycleCoroutineScopeImpl2, MainDispatcherLoader.f75131a.r(), null, new LifecycleCoroutineScopeImpl$register$1(lifecycleCoroutineScopeImpl2, null), 2);
                    return lifecycleCoroutineScopeImpl2;
                }
            } while (atomicReference2.get() == null);
        }
    }
}
