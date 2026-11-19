package androidx.camera.lifecycle;

import androidx.camera.core.LegacySessionConfig;
import androidx.camera.core.concurrent.CameraCoordinator;
import androidx.camera.core.internal.CameraUseCaseAdapter;
import androidx.core.util.Preconditions;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.OnLifecycleEvent;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
final class LifecycleCameraRepository {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Object f2697f = new Object();
    public static LifecycleCameraRepository g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f2698a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f2699b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f2700c = new HashMap();
    public final ArrayDeque d = new ArrayDeque();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CameraCoordinator f2701e;

    @Retention(RetentionPolicy.SOURCE)
    public @interface FromUseCaseAdapter {
    }

    public static abstract class Key {
    }

    public static class LifecycleCameraRepositoryObserver implements LifecycleObserver {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LifecycleCameraRepository f2702b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final LifecycleOwner f2703c;

        public LifecycleCameraRepositoryObserver(LifecycleOwner lifecycleOwner, LifecycleCameraRepository lifecycleCameraRepository) {
            this.f2703c = lifecycleOwner;
            this.f2702b = lifecycleCameraRepository;
        }

        @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
        public void onDestroy(LifecycleOwner lifecycleOwner) {
            this.f2702b.k(lifecycleOwner);
        }

        @OnLifecycleEvent(Lifecycle.Event.ON_START)
        public void onStart(LifecycleOwner lifecycleOwner) {
            this.f2702b.f(lifecycleOwner);
        }

        @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
        public void onStop(LifecycleOwner lifecycleOwner) {
            this.f2702b.g(lifecycleOwner);
        }
    }

    public final void a(LifecycleCamera lifecycleCamera, LegacySessionConfig legacySessionConfig, CameraCoordinator cameraCoordinator) {
        boolean z;
        synchronized (this.f2698a) {
            try {
                Preconditions.a(!legacySessionConfig.f1966f.isEmpty());
                this.f2701e = cameraCoordinator;
                LifecycleOwner lifecycleOwnerE = lifecycleCamera.e();
                LifecycleCameraRepositoryObserver lifecycleCameraRepositoryObserverC = c(lifecycleOwnerE);
                if (lifecycleCameraRepositoryObserverC == null) {
                    return;
                }
                Set set = (Set) this.f2700c.get(lifecycleCameraRepositoryObserverC);
                CameraCoordinator cameraCoordinator2 = this.f2701e;
                if (cameraCoordinator2 == null || cameraCoordinator2.c() != 2) {
                    Iterator it = set.iterator();
                    while (it.hasNext()) {
                        LifecycleCamera lifecycleCamera2 = (LifecycleCamera) this.f2699b.get((Key) it.next());
                        lifecycleCamera2.getClass();
                        if (!lifecycleCamera2.equals(lifecycleCamera) && !lifecycleCamera2.m().isEmpty()) {
                            synchronized (lifecycleCamera2.f2684b) {
                                LegacySessionConfig legacySessionConfig2 = lifecycleCamera2.f2687f;
                                z = legacySessionConfig2 == null ? false : legacySessionConfig2.f1935i;
                            }
                            if (z || legacySessionConfig.f1935i) {
                                throw new IllegalArgumentException("Multiple LifecycleCameras with use cases are registered to the same LifecycleOwner. Please unbind first.");
                            }
                            lifecycleCamera2.s();
                        }
                    }
                }
                try {
                    lifecycleCamera.d(legacySessionConfig);
                    if (lifecycleOwnerE.getF13561b().getF13454i().a(Lifecycle.State.STARTED)) {
                        f(lifecycleOwnerE);
                    }
                } catch (CameraUseCaseAdapter.CameraException e2) {
                    throw new IllegalArgumentException(e2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final LifecycleCamera b(LifecycleOwner lifecycleOwner, CameraUseCaseAdapter cameraUseCaseAdapter) {
        synchronized (this.f2698a) {
            try {
                Preconditions.b(this.f2699b.get(new AutoValue_LifecycleCameraRepository_Key(System.identityHashCode(lifecycleOwner), cameraUseCaseAdapter.f2474e)) == null, "LifecycleCamera already exists for the given LifecycleOwner and set of cameras");
                LifecycleCamera lifecycleCamera = new LifecycleCamera(lifecycleOwner, cameraUseCaseAdapter);
                if (((ArrayList) cameraUseCaseAdapter.y()).isEmpty()) {
                    lifecycleCamera.r();
                }
                if (lifecycleOwner.getF13561b().getF13454i() == Lifecycle.State.DESTROYED) {
                    return lifecycleCamera;
                }
                e(lifecycleCamera);
                return lifecycleCamera;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final LifecycleCameraRepositoryObserver c(LifecycleOwner lifecycleOwner) {
        synchronized (this.f2698a) {
            try {
                for (LifecycleCameraRepositoryObserver lifecycleCameraRepositoryObserver : this.f2700c.keySet()) {
                    if (lifecycleOwner.equals(lifecycleCameraRepositoryObserver.f2703c)) {
                        return lifecycleCameraRepositoryObserver;
                    }
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean d(LifecycleOwner lifecycleOwner) {
        synchronized (this.f2698a) {
            try {
                LifecycleCameraRepositoryObserver lifecycleCameraRepositoryObserverC = c(lifecycleOwner);
                if (lifecycleCameraRepositoryObserverC == null) {
                    return false;
                }
                Iterator it = ((Set) this.f2700c.get(lifecycleCameraRepositoryObserverC)).iterator();
                while (it.hasNext()) {
                    LifecycleCamera lifecycleCamera = (LifecycleCamera) this.f2699b.get((Key) it.next());
                    lifecycleCamera.getClass();
                    if (!lifecycleCamera.m().isEmpty()) {
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void e(LifecycleCamera lifecycleCamera) {
        synchronized (this.f2698a) {
            try {
                LifecycleOwner lifecycleOwnerE = lifecycleCamera.e();
                AutoValue_LifecycleCameraRepository_Key autoValue_LifecycleCameraRepository_Key = new AutoValue_LifecycleCameraRepository_Key(System.identityHashCode(lifecycleOwnerE), lifecycleCamera.d.f2474e);
                LifecycleCameraRepositoryObserver lifecycleCameraRepositoryObserverC = c(lifecycleOwnerE);
                Set hashSet = lifecycleCameraRepositoryObserverC != null ? (Set) this.f2700c.get(lifecycleCameraRepositoryObserverC) : new HashSet();
                hashSet.add(autoValue_LifecycleCameraRepository_Key);
                this.f2699b.put(autoValue_LifecycleCameraRepository_Key, lifecycleCamera);
                if (lifecycleCameraRepositoryObserverC == null) {
                    LifecycleCameraRepositoryObserver lifecycleCameraRepositoryObserver = new LifecycleCameraRepositoryObserver(lifecycleOwnerE, this);
                    this.f2700c.put(lifecycleCameraRepositoryObserver, hashSet);
                    lifecycleOwnerE.getF13561b().a(lifecycleCameraRepositoryObserver);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void f(LifecycleOwner lifecycleOwner) {
        synchronized (this.f2698a) {
            try {
                if (d(lifecycleOwner)) {
                    if (this.d.isEmpty()) {
                        this.d.push(lifecycleOwner);
                    } else {
                        CameraCoordinator cameraCoordinator = this.f2701e;
                        if (cameraCoordinator == null || cameraCoordinator.c() != 2) {
                            LifecycleOwner lifecycleOwner2 = (LifecycleOwner) this.d.peek();
                            if (!lifecycleOwner.equals(lifecycleOwner2)) {
                                h(lifecycleOwner2);
                                this.d.remove(lifecycleOwner);
                                this.d.push(lifecycleOwner);
                            }
                        }
                    }
                    l(lifecycleOwner);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void g(LifecycleOwner lifecycleOwner) {
        synchronized (this.f2698a) {
            try {
                this.d.remove(lifecycleOwner);
                h(lifecycleOwner);
                if (!this.d.isEmpty()) {
                    l((LifecycleOwner) this.d.peek());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void h(LifecycleOwner lifecycleOwner) {
        synchronized (this.f2698a) {
            try {
                LifecycleCameraRepositoryObserver lifecycleCameraRepositoryObserverC = c(lifecycleOwner);
                if (lifecycleCameraRepositoryObserverC == null) {
                    return;
                }
                Iterator it = ((Set) this.f2700c.get(lifecycleCameraRepositoryObserverC)).iterator();
                while (it.hasNext()) {
                    LifecycleCamera lifecycleCamera = (LifecycleCamera) this.f2699b.get((Key) it.next());
                    lifecycleCamera.getClass();
                    lifecycleCamera.r();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void i(HashSet hashSet) {
        Set setKeySet = hashSet;
        synchronized (this.f2698a) {
            if (hashSet == null) {
                try {
                    setKeySet = this.f2699b.keySet();
                } catch (Throwable th) {
                    throw th;
                }
            }
            Iterator it = setKeySet.iterator();
            while (it.hasNext()) {
                LifecycleCamera lifecycleCamera = (LifecycleCamera) this.f2699b.get((Key) it.next());
                if (lifecycleCamera != null) {
                    lifecycleCamera.s();
                    g(lifecycleCamera.e());
                }
            }
        }
    }

    public final void j(LifecycleCamera lifecycleCamera) {
        synchronized (this.f2698a) {
            try {
                LifecycleOwner lifecycleOwnerE = lifecycleCamera.e();
                AutoValue_LifecycleCameraRepository_Key autoValue_LifecycleCameraRepository_Key = new AutoValue_LifecycleCameraRepository_Key(System.identityHashCode(lifecycleOwnerE), lifecycleCamera.d.f2474e);
                this.f2699b.remove(autoValue_LifecycleCameraRepository_Key);
                HashSet hashSet = new HashSet();
                for (LifecycleCameraRepositoryObserver lifecycleCameraRepositoryObserver : this.f2700c.keySet()) {
                    if (lifecycleOwnerE.equals(lifecycleCameraRepositoryObserver.f2703c)) {
                        Set set = (Set) this.f2700c.get(lifecycleCameraRepositoryObserver);
                        set.remove(autoValue_LifecycleCameraRepository_Key);
                        if (set.isEmpty()) {
                            hashSet.add(lifecycleCameraRepositoryObserver.f2703c);
                        }
                    }
                }
                Iterator it = hashSet.iterator();
                while (it.hasNext()) {
                    k((LifecycleOwner) it.next());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void k(LifecycleOwner lifecycleOwner) {
        synchronized (this.f2698a) {
            try {
                LifecycleCameraRepositoryObserver lifecycleCameraRepositoryObserverC = c(lifecycleOwner);
                if (lifecycleCameraRepositoryObserverC == null) {
                    return;
                }
                g(lifecycleOwner);
                Iterator it = ((Set) this.f2700c.get(lifecycleCameraRepositoryObserverC)).iterator();
                while (it.hasNext()) {
                    this.f2699b.remove((Key) it.next());
                }
                this.f2700c.remove(lifecycleCameraRepositoryObserverC);
                lifecycleCameraRepositoryObserverC.f2703c.getF13561b().d(lifecycleCameraRepositoryObserverC);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void l(LifecycleOwner lifecycleOwner) {
        synchronized (this.f2698a) {
            try {
                Iterator it = ((Set) this.f2700c.get(c(lifecycleOwner))).iterator();
                while (it.hasNext()) {
                    LifecycleCamera lifecycleCamera = (LifecycleCamera) this.f2699b.get((Key) it.next());
                    lifecycleCamera.getClass();
                    if (!lifecycleCamera.m().isEmpty()) {
                        lifecycleCamera.t();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
