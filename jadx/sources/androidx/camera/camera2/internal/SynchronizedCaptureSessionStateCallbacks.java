package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraCaptureSession;
import android.view.Surface;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class SynchronizedCaptureSessionStateCallbacks extends SynchronizedCaptureSession.StateCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f1645a;

    public static class Adapter extends SynchronizedCaptureSession.StateCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final CameraCaptureSession.StateCallback f1646a;

        public Adapter(final List list) {
            this.f1646a = list.isEmpty() ? new CameraCaptureSessionStateCallbacks$NoOpSessionStateCallback() : list.size() == 1 ? (CameraCaptureSession.StateCallback) list.get(0) : new CameraCaptureSession.StateCallback(list) { // from class: androidx.camera.camera2.internal.CameraCaptureSessionStateCallbacks$ComboSessionStateCallback

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public final ArrayList f1536a = new ArrayList();

                {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        CameraCaptureSession.StateCallback stateCallback = (CameraCaptureSession.StateCallback) it.next();
                        if (!(stateCallback instanceof CameraCaptureSessionStateCallbacks$NoOpSessionStateCallback)) {
                            this.f1536a.add(stateCallback);
                        }
                    }
                }

                @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                public final void onActive(CameraCaptureSession cameraCaptureSession) {
                    Iterator it = this.f1536a.iterator();
                    while (it.hasNext()) {
                        ((CameraCaptureSession.StateCallback) it.next()).onActive(cameraCaptureSession);
                    }
                }

                @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                public final void onCaptureQueueEmpty(CameraCaptureSession cameraCaptureSession) {
                    Iterator it = this.f1536a.iterator();
                    while (it.hasNext()) {
                        ((CameraCaptureSession.StateCallback) it.next()).onCaptureQueueEmpty(cameraCaptureSession);
                    }
                }

                @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                public final void onClosed(CameraCaptureSession cameraCaptureSession) {
                    Iterator it = this.f1536a.iterator();
                    while (it.hasNext()) {
                        ((CameraCaptureSession.StateCallback) it.next()).onClosed(cameraCaptureSession);
                    }
                }

                @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                public final void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
                    Iterator it = this.f1536a.iterator();
                    while (it.hasNext()) {
                        ((CameraCaptureSession.StateCallback) it.next()).onConfigureFailed(cameraCaptureSession);
                    }
                }

                @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                public final void onConfigured(CameraCaptureSession cameraCaptureSession) {
                    Iterator it = this.f1536a.iterator();
                    while (it.hasNext()) {
                        ((CameraCaptureSession.StateCallback) it.next()).onConfigured(cameraCaptureSession);
                    }
                }

                @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                public final void onReady(CameraCaptureSession cameraCaptureSession) {
                    Iterator it = this.f1536a.iterator();
                    while (it.hasNext()) {
                        ((CameraCaptureSession.StateCallback) it.next()).onReady(cameraCaptureSession);
                    }
                }

                @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                public final void onSurfacePrepared(CameraCaptureSession cameraCaptureSession, Surface surface) {
                    Iterator it = this.f1536a.iterator();
                    while (it.hasNext()) {
                        ((CameraCaptureSession.StateCallback) it.next()).onSurfacePrepared(cameraCaptureSession, surface);
                    }
                }
            };
        }

        @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
        public final void l(SynchronizedCaptureSession synchronizedCaptureSession) {
            this.f1646a.onActive(synchronizedCaptureSession.i().d());
        }

        @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
        public final void m(SynchronizedCaptureSession synchronizedCaptureSession) {
            this.f1646a.onCaptureQueueEmpty(synchronizedCaptureSession.i().d());
        }

        @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
        public final void n(SynchronizedCaptureSession synchronizedCaptureSession) {
            this.f1646a.onClosed(synchronizedCaptureSession.i().d());
        }

        @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
        public final void o(SynchronizedCaptureSession synchronizedCaptureSession) {
            this.f1646a.onConfigureFailed(synchronizedCaptureSession.i().d());
        }

        @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
        public final void p(SynchronizedCaptureSession synchronizedCaptureSession) {
            this.f1646a.onConfigured(synchronizedCaptureSession.i().d());
        }

        @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
        public final void q(SynchronizedCaptureSession synchronizedCaptureSession) {
            this.f1646a.onReady(synchronizedCaptureSession.i().d());
        }

        @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
        public final void r(SynchronizedCaptureSession synchronizedCaptureSession) {
        }

        @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
        public final void s(SynchronizedCaptureSession synchronizedCaptureSession, Surface surface) {
            this.f1646a.onSurfacePrepared(synchronizedCaptureSession.i().d(), surface);
        }
    }

    public SynchronizedCaptureSessionStateCallbacks(List list) {
        ArrayList arrayList = new ArrayList();
        this.f1645a = arrayList;
        arrayList.addAll(list);
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
    public final void l(SynchronizedCaptureSession synchronizedCaptureSession) {
        Iterator it = this.f1645a.iterator();
        while (it.hasNext()) {
            ((SynchronizedCaptureSession.StateCallback) it.next()).l(synchronizedCaptureSession);
        }
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
    public final void m(SynchronizedCaptureSession synchronizedCaptureSession) {
        Iterator it = this.f1645a.iterator();
        while (it.hasNext()) {
            ((SynchronizedCaptureSession.StateCallback) it.next()).m(synchronizedCaptureSession);
        }
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
    public final void n(SynchronizedCaptureSession synchronizedCaptureSession) {
        Iterator it = this.f1645a.iterator();
        while (it.hasNext()) {
            ((SynchronizedCaptureSession.StateCallback) it.next()).n(synchronizedCaptureSession);
        }
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
    public final void o(SynchronizedCaptureSession synchronizedCaptureSession) {
        Iterator it = this.f1645a.iterator();
        while (it.hasNext()) {
            ((SynchronizedCaptureSession.StateCallback) it.next()).o(synchronizedCaptureSession);
        }
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
    public final void p(SynchronizedCaptureSession synchronizedCaptureSession) {
        Iterator it = this.f1645a.iterator();
        while (it.hasNext()) {
            ((SynchronizedCaptureSession.StateCallback) it.next()).p(synchronizedCaptureSession);
        }
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
    public final void q(SynchronizedCaptureSession synchronizedCaptureSession) {
        Iterator it = this.f1645a.iterator();
        while (it.hasNext()) {
            ((SynchronizedCaptureSession.StateCallback) it.next()).q(synchronizedCaptureSession);
        }
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
    public final void r(SynchronizedCaptureSession synchronizedCaptureSession) {
        Iterator it = this.f1645a.iterator();
        while (it.hasNext()) {
            ((SynchronizedCaptureSession.StateCallback) it.next()).r(synchronizedCaptureSession);
        }
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
    public final void s(SynchronizedCaptureSession synchronizedCaptureSession, Surface surface) {
        Iterator it = this.f1645a.iterator();
        while (it.hasNext()) {
            ((SynchronizedCaptureSession.StateCallback) it.next()).s(synchronizedCaptureSession, surface);
        }
    }
}
