package androidx.camera.core.impl;

import androidx.camera.core.Camera;
import androidx.camera.core.Logger;
import androidx.camera.core.concurrent.CameraCoordinator;
import androidx.core.util.Preconditions;
import androidx.tracing.Trace;
import defpackage.fc;
import defpackage.z1;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes.dex */
public final class CameraStateRegistry implements CameraCoordinator.ConcurrentCameraModeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StringBuilder f2255a = new StringBuilder();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f2256b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2257c;
    public final CameraCoordinator d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashMap f2258e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2259f;

    public static class CameraRegistration {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public CameraInternal.State f2260a = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Executor f2261b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final OnConfigureAvailableListener f2262c;
        public final OnOpenAvailableListener d;

        public CameraRegistration(Executor executor, OnConfigureAvailableListener onConfigureAvailableListener, OnOpenAvailableListener onOpenAvailableListener) {
            this.f2261b = executor;
            this.f2262c = onConfigureAvailableListener;
            this.d = onOpenAvailableListener;
        }
    }

    public interface OnConfigureAvailableListener {
        void a();
    }

    public interface OnOpenAvailableListener {
        void a();
    }

    public CameraStateRegistry(CameraCoordinator cameraCoordinator, int i2) {
        Object obj = new Object();
        this.f2256b = obj;
        this.f2258e = new HashMap();
        this.f2257c = i2;
        synchronized (obj) {
            this.d = cameraCoordinator;
            this.f2259f = this.f2257c;
        }
    }

    public static void g(Camera camera, CameraInternal.State state) {
        if (Trace.a()) {
            android.os.Trace.setCounter(Trace.b("CX:State[" + camera + "]"), state.ordinal());
        }
    }

    @Override // androidx.camera.core.concurrent.CameraCoordinator.ConcurrentCameraModeListener
    public final void a(int i2, int i3) {
        synchronized (this.f2256b) {
            boolean z = true;
            this.f2257c = i3 == 2 ? 2 : 1;
            boolean z2 = i2 != 2 && i3 == 2;
            if (i2 != 2 || i3 == 2) {
                z = false;
            }
            if (z2 || z) {
                e();
            }
        }
    }

    public final CameraRegistration b(String str) {
        HashMap map = this.f2258e;
        for (Camera camera : map.keySet()) {
            if (str.equals(((CameraInfoInternal) camera.b()).b())) {
                return (CameraRegistration) map.get(camera);
            }
        }
        return null;
    }

    public final boolean c() {
        synchronized (this.f2256b) {
            try {
                Iterator it = this.f2258e.entrySet().iterator();
                while (it.hasNext()) {
                    if (((CameraRegistration) ((Map.Entry) it.next()).getValue()).f2260a == CameraInternal.State.CLOSING) {
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:38:0x007b  */
    public final void d(Camera camera, CameraInternal.State state, boolean z) {
        CameraInternal.State state2;
        CameraRegistration cameraRegistrationB;
        synchronized (this.f2256b) {
            try {
                int i2 = this.f2259f;
                CameraInternal.State state3 = CameraInternal.State.RELEASED;
                HashMap map = this.f2258e;
                HashMap map2 = null;
                if (state == state3) {
                    CameraRegistration cameraRegistration = (CameraRegistration) map.remove(camera);
                    if (cameraRegistration != null) {
                        e();
                        state2 = cameraRegistration.f2260a;
                    } else {
                        state2 = null;
                    }
                } else {
                    CameraRegistration cameraRegistration2 = (CameraRegistration) map.get(camera);
                    Preconditions.e(cameraRegistration2, "Cannot update state of camera which has not yet been registered. Register with CameraStateRegistry.registerCamera()");
                    CameraInternal.State state4 = cameraRegistration2.f2260a;
                    cameraRegistration2.f2260a = state;
                    CameraInternal.State state5 = CameraInternal.State.OPENING;
                    if (state == state5) {
                        Preconditions.f("Cannot mark camera as opening until camera was successful at calling CameraStateRegistry.tryOpenCamera()", (state != null && state.a()) || state4 == state5);
                    }
                    if (state4 != state) {
                        g(camera, state);
                        e();
                    }
                    state2 = state4;
                }
                if (state2 == state) {
                    return;
                }
                if (this.d.c() == 2 && state == CameraInternal.State.CONFIGURED) {
                    String strB = this.d.b(((CameraInternal) camera).k().b());
                    if (strB != null) {
                        cameraRegistrationB = b(strB);
                    } else {
                        cameraRegistrationB = null;
                    }
                } else {
                    cameraRegistrationB = null;
                }
                if (i2 < 1 && this.f2259f > 0) {
                    map2 = new HashMap();
                    for (Map.Entry entry : this.f2258e.entrySet()) {
                        if (((CameraRegistration) entry.getValue()).f2260a == CameraInternal.State.PENDING_OPEN) {
                            map2.put((Camera) entry.getKey(), (CameraRegistration) entry.getValue());
                        }
                    }
                } else if (state == CameraInternal.State.PENDING_OPEN && this.f2259f > 0) {
                    map2 = new HashMap();
                    map2.put(camera, (CameraRegistration) this.f2258e.get(camera));
                }
                if (map2 != null && !z) {
                    map2.remove(camera);
                }
                if (map2 != null) {
                    for (CameraRegistration cameraRegistration3 : map2.values()) {
                        cameraRegistration3.getClass();
                        try {
                            cameraRegistration3.f2261b.execute(new z1(cameraRegistration3.d, 17));
                        } catch (RejectedExecutionException unused) {
                            Logger.b("CameraStateRegistry");
                        }
                    }
                }
                if (cameraRegistrationB != null) {
                    try {
                        cameraRegistrationB.f2261b.execute(new z1(cameraRegistrationB.f2262c, 18));
                    } catch (RejectedExecutionException unused2) {
                        Logger.b("CameraStateRegistry");
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void e() {
        boolean zC = Logger.c(3, "CameraStateRegistry");
        StringBuilder sb = this.f2255a;
        if (zC) {
            sb.setLength(0);
            sb.append("Recalculating open cameras:\n");
            sb.append(String.format(Locale.US, "%-45s%-22s\n", "Camera", "State"));
            sb.append("-------------------------------------------------------------------\n");
        }
        int i2 = 0;
        for (Map.Entry entry : this.f2258e.entrySet()) {
            if (Logger.c(3, "CameraStateRegistry")) {
                sb.append(String.format(Locale.US, "%-45s%-22s\n", ((Camera) entry.getKey()).toString(), ((CameraRegistration) entry.getValue()).f2260a != null ? ((CameraRegistration) entry.getValue()).f2260a.toString() : "UNKNOWN"));
            }
            CameraInternal.State state = ((CameraRegistration) entry.getValue()).f2260a;
            if (state != null && state.a()) {
                i2++;
            }
        }
        if (Logger.c(3, "CameraStateRegistry")) {
            sb.append("-------------------------------------------------------------------\n");
            Locale locale = Locale.US;
            sb.append(fc.f(i2, this.f2257c, "Open count: ", " (Max allowed: ", ")"));
            Logger.c(3, "CameraStateRegistry");
        }
        this.f2259f = Math.max(this.f2257c - i2, 0);
    }

    public final void f(Camera camera, Executor executor, OnConfigureAvailableListener onConfigureAvailableListener, OnOpenAvailableListener onOpenAvailableListener) {
        synchronized (this.f2256b) {
            Preconditions.f("Camera is already registered: " + camera, !this.f2258e.containsKey(camera));
            this.f2258e.put(camera, new CameraRegistration(executor, onConfigureAvailableListener, onOpenAvailableListener));
        }
    }

    public final boolean h(Camera camera) {
        boolean z;
        synchronized (this.f2256b) {
            try {
                CameraRegistration cameraRegistration = (CameraRegistration) this.f2258e.get(camera);
                Preconditions.e(cameraRegistration, "Camera must first be registered with registerCamera()");
                z = true;
                if (Logger.c(3, "CameraStateRegistry")) {
                    this.f2255a.setLength(0);
                    StringBuilder sb = this.f2255a;
                    Locale locale = Locale.US;
                    Integer numValueOf = Integer.valueOf(this.f2259f);
                    CameraInternal.State state = cameraRegistration.f2260a;
                    sb.append(String.format(locale, "tryOpenCamera(%s) [Available Cameras: %d, Already Open: %b (Previous state: %s)]", camera, numValueOf, Boolean.valueOf(state != null && state.a()), cameraRegistration.f2260a));
                }
                if (this.f2259f > 0) {
                    CameraInternal.State state2 = CameraInternal.State.OPENING;
                    cameraRegistration.f2260a = state2;
                    g(camera, state2);
                } else {
                    CameraInternal.State state3 = cameraRegistration.f2260a;
                    if (state3 != null && state3.a()) {
                        CameraInternal.State state4 = CameraInternal.State.OPENING;
                        cameraRegistration.f2260a = state4;
                        g(camera, state4);
                    } else {
                        z = false;
                    }
                }
                if (Logger.c(3, "CameraStateRegistry")) {
                    StringBuilder sb2 = this.f2255a;
                    Locale locale2 = Locale.US;
                    sb2.append(" --> ".concat(z ? "SUCCESS" : "FAIL"));
                    Logger.c(3, "CameraStateRegistry");
                }
                if (z) {
                    e();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    public final boolean i(String str, String str2) {
        synchronized (this.f2256b) {
            try {
                boolean z = true;
                if (this.d.c() != 2) {
                    return true;
                }
                CameraRegistration cameraRegistrationB = b(str);
                CameraInternal.State state = cameraRegistrationB != null ? cameraRegistrationB.f2260a : null;
                CameraRegistration cameraRegistrationB2 = str2 != null ? b(str2) : null;
                CameraInternal.State state2 = cameraRegistrationB2 != null ? cameraRegistrationB2.f2260a : null;
                CameraInternal.State state3 = CameraInternal.State.OPEN;
                boolean z2 = state3.equals(state) || CameraInternal.State.CONFIGURED.equals(state);
                boolean z3 = state3.equals(state2) || CameraInternal.State.CONFIGURED.equals(state2);
                if (!z2 || !z3) {
                    z = false;
                }
                return z;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
