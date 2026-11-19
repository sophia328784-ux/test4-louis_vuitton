package androidx.core.view;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import defpackage.bn;
import defpackage.n90;
import java.util.HashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public class MenuHostHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Runnable f12170a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CopyOnWriteArrayList f12171b = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f12172c = new HashMap();

    public static class LifecycleContainer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Lifecycle f12173a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public LifecycleEventObserver f12174b;

        public LifecycleContainer(Lifecycle lifecycle, LifecycleEventObserver lifecycleEventObserver) {
            this.f12173a = lifecycle;
            this.f12174b = lifecycleEventObserver;
            lifecycle.a(lifecycleEventObserver);
        }
    }

    public MenuHostHelper(Runnable runnable) {
        this.f12170a = runnable;
    }

    public final void a(MenuProvider menuProvider, LifecycleOwner lifecycleOwner) {
        this.f12171b.add(menuProvider);
        this.f12170a.run();
        Lifecycle f13561b = lifecycleOwner.getF13561b();
        HashMap map = this.f12172c;
        LifecycleContainer lifecycleContainer = (LifecycleContainer) map.remove(menuProvider);
        if (lifecycleContainer != null) {
            lifecycleContainer.f12173a.d(lifecycleContainer.f12174b);
            lifecycleContainer.f12174b = null;
        }
        map.put(menuProvider, new LifecycleContainer(f13561b, new bn(this, menuProvider, 4)));
    }

    public final void b(MenuProvider menuProvider, LifecycleOwner lifecycleOwner, Lifecycle.State state) {
        Lifecycle f13561b = lifecycleOwner.getF13561b();
        HashMap map = this.f12172c;
        LifecycleContainer lifecycleContainer = (LifecycleContainer) map.remove(menuProvider);
        if (lifecycleContainer != null) {
            lifecycleContainer.f12173a.d(lifecycleContainer.f12174b);
            lifecycleContainer.f12174b = null;
        }
        map.put(menuProvider, new LifecycleContainer(f13561b, new n90(this, state, menuProvider, 2)));
    }

    public final void c(MenuProvider menuProvider) {
        this.f12171b.remove(menuProvider);
        LifecycleContainer lifecycleContainer = (LifecycleContainer) this.f12172c.remove(menuProvider);
        if (lifecycleContainer != null) {
            lifecycleContainer.f12173a.d(lifecycleContainer.f12174b);
            lifecycleContainer.f12174b = null;
        }
        this.f12170a.run();
    }
}
