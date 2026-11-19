package androidx.camera.lifecycle;

import android.util.Range;
import androidx.camera.core.Camera;
import androidx.camera.core.CameraControl;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.LegacySessionConfig;
import androidx.camera.core.ViewPort;
import androidx.camera.core.featuregroup.impl.ResolvedFeatureGroup;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.internal.CameraUseCaseAdapter;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.OnLifecycleEvent;
import defpackage.jr;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class LifecycleCamera implements LifecycleObserver, Camera {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LifecycleOwner f2685c;
    public final CameraUseCaseAdapter d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f2684b = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2686e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public LegacySessionConfig f2687f = null;

    public LifecycleCamera(LifecycleOwner lifecycleOwner, CameraUseCaseAdapter cameraUseCaseAdapter) {
        this.f2685c = lifecycleOwner;
        this.d = cameraUseCaseAdapter;
        if (lifecycleOwner.getF13561b().getF13454i().a(Lifecycle.State.STARTED)) {
            cameraUseCaseAdapter.r();
        } else {
            cameraUseCaseAdapter.u();
        }
        lifecycleOwner.getF13561b().a(this);
    }

    @Override // androidx.camera.core.Camera
    public final CameraControl a() {
        return this.d.f2472b.d;
    }

    @Override // androidx.camera.core.Camera
    public final CameraInfo b() {
        return this.d.f2472b.f2160c;
    }

    public final void d(LegacySessionConfig legacySessionConfig) {
        synchronized (this.f2684b) {
            try {
                LegacySessionConfig legacySessionConfig2 = this.f2687f;
                if (legacySessionConfig2 == null) {
                    this.f2687f = legacySessionConfig;
                } else if (legacySessionConfig.f1935i) {
                    if (!legacySessionConfig2.f1935i) {
                        throw new IllegalStateException("Cannot bind use cases when a SessionConfig is already bound to this LifecycleOwner. Please unbind first");
                    }
                    ArrayList arrayList = new ArrayList(this.f2687f.f1966f);
                    arrayList.addAll(legacySessionConfig.f1966f);
                    this.f2687f = new LegacySessionConfig(arrayList, legacySessionConfig.f1962a, legacySessionConfig.f1963b);
                } else {
                    if (legacySessionConfig2.f1935i) {
                        throw new IllegalStateException("Cannot bind the SessionConfig when use cases are bound to this LifecycleOwner already. Please unbind first");
                    }
                    this.f2687f = legacySessionConfig;
                    CameraUseCaseAdapter cameraUseCaseAdapter = this.d;
                    cameraUseCaseAdapter.D((ArrayList) cameraUseCaseAdapter.y());
                }
                CameraUseCaseAdapter cameraUseCaseAdapter2 = this.d;
                ViewPort viewPort = legacySessionConfig.f1962a;
                synchronized (cameraUseCaseAdapter2.m) {
                    cameraUseCaseAdapter2.f2477i = viewPort;
                }
                CameraUseCaseAdapter cameraUseCaseAdapter3 = this.d;
                List list = legacySessionConfig.f1963b;
                synchronized (cameraUseCaseAdapter3.m) {
                    cameraUseCaseAdapter3.f2478j = list;
                }
                synchronized (this.d.m) {
                }
                CameraUseCaseAdapter cameraUseCaseAdapter4 = this.d;
                Range range = legacySessionConfig.f1964c;
                synchronized (cameraUseCaseAdapter4.m) {
                    cameraUseCaseAdapter4.f2479k = range;
                }
                CameraInfoInternal cameraInfoInternal = (CameraInfoInternal) b();
                ResolvedFeatureGroup.Companion companion = ResolvedFeatureGroup.f2023b;
                companion.getClass();
                cameraInfoInternal.getClass();
                ResolvedFeatureGroup resolvedFeatureGroupA = ResolvedFeatureGroup.Companion.a(companion, legacySessionConfig, cameraInfoInternal);
                legacySessionConfig.f1967h.execute(new jr(resolvedFeatureGroupA, legacySessionConfig, 25));
                this.d.d(legacySessionConfig.f1966f, resolvedFeatureGroupA);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final LifecycleOwner e() {
        LifecycleOwner lifecycleOwner;
        synchronized (this.f2684b) {
            lifecycleOwner = this.f2685c;
        }
        return lifecycleOwner;
    }

    public final List m() {
        List listUnmodifiableList;
        synchronized (this.f2684b) {
            listUnmodifiableList = Collections.unmodifiableList(this.d.y());
        }
        return listUnmodifiableList;
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public void onDestroy(LifecycleOwner lifecycleOwner) {
        synchronized (this.f2684b) {
            CameraUseCaseAdapter cameraUseCaseAdapter = this.d;
            cameraUseCaseAdapter.D((ArrayList) cameraUseCaseAdapter.y());
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_PAUSE)
    public void onPause(LifecycleOwner lifecycleOwner) {
        this.d.f2472b.h(false);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_RESUME)
    public void onResume(LifecycleOwner lifecycleOwner) {
        this.d.f2472b.h(true);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_START)
    public void onStart(LifecycleOwner lifecycleOwner) {
        synchronized (this.f2684b) {
            try {
                if (!this.f2686e) {
                    this.d.r();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
    public void onStop(LifecycleOwner lifecycleOwner) {
        synchronized (this.f2684b) {
            try {
                if (!this.f2686e) {
                    this.d.u();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void r() {
        synchronized (this.f2684b) {
            try {
                if (this.f2686e) {
                    return;
                }
                onStop(this.f2685c);
                this.f2686e = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void s() {
        synchronized (this.f2684b) {
            CameraUseCaseAdapter cameraUseCaseAdapter = this.d;
            cameraUseCaseAdapter.D((ArrayList) cameraUseCaseAdapter.y());
            this.f2687f = null;
        }
    }

    public final void t() {
        synchronized (this.f2684b) {
            try {
                if (this.f2686e) {
                    this.f2686e = false;
                    if (this.f2685c.getF13561b().getF13454i().a(Lifecycle.State.STARTED)) {
                        onStart(this.f2685c);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
