package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraDevice;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
class CaptureSessionRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Executor f1555a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f1556b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinkedHashSet f1557c = new LinkedHashSet();
    public final LinkedHashSet d = new LinkedHashSet();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinkedHashSet f1558e = new LinkedHashSet();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CameraDevice.StateCallback f1559f = new AnonymousClass1();

    /* JADX INFO: renamed from: androidx.camera.camera2.internal.CaptureSessionRepository$1, reason: invalid class name */
    public class AnonymousClass1 extends CameraDevice.StateCallback {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int f1560b = 0;

        public AnonymousClass1() {
        }

        public final void a() {
            ArrayList arrayListC;
            synchronized (CaptureSessionRepository.this.f1556b) {
                arrayListC = CaptureSessionRepository.this.c();
                CaptureSessionRepository.this.f1558e.clear();
                CaptureSessionRepository.this.f1557c.clear();
                CaptureSessionRepository.this.d.clear();
            }
            Iterator it = arrayListC.iterator();
            while (it.hasNext()) {
                ((SynchronizedCaptureSession) it.next()).b();
            }
        }

        public final void b() {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            synchronized (CaptureSessionRepository.this.f1556b) {
                linkedHashSet.addAll(CaptureSessionRepository.this.f1558e);
                linkedHashSet.addAll(CaptureSessionRepository.this.f1557c);
            }
            CaptureSessionRepository.this.f1555a.execute(new m(linkedHashSet, 3));
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public final void onClosed(CameraDevice cameraDevice) {
            b();
            a();
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public final void onDisconnected(CameraDevice cameraDevice) {
            b();
            a();
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public final void onError(CameraDevice cameraDevice, final int i2) {
            b();
            final LinkedHashSet linkedHashSet = new LinkedHashSet();
            synchronized (CaptureSessionRepository.this.f1556b) {
                linkedHashSet.addAll(CaptureSessionRepository.this.f1558e);
                linkedHashSet.addAll(CaptureSessionRepository.this.f1557c);
            }
            CaptureSessionRepository.this.f1555a.execute(new Runnable() { // from class: androidx.camera.camera2.internal.v
                @Override // java.lang.Runnable
                public final void run() {
                    int i3 = CaptureSessionRepository.AnonymousClass1.f1560b;
                    Iterator it = linkedHashSet.iterator();
                    while (it.hasNext()) {
                        ((SynchronizedCaptureSession) it.next()).c(i2);
                    }
                }
            });
            a();
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public final void onOpened(CameraDevice cameraDevice) {
        }
    }

    public CaptureSessionRepository(Executor executor) {
        this.f1555a = executor;
    }

    public final void a(SynchronizedCaptureSession synchronizedCaptureSession) {
        SynchronizedCaptureSession synchronizedCaptureSession2;
        Iterator it = c().iterator();
        while (it.hasNext() && (synchronizedCaptureSession2 = (SynchronizedCaptureSession) it.next()) != synchronizedCaptureSession) {
            synchronizedCaptureSession2.b();
        }
    }

    public final ArrayList b() {
        ArrayList arrayList;
        synchronized (this.f1556b) {
            arrayList = new ArrayList(this.f1557c);
        }
        return arrayList;
    }

    public final ArrayList c() {
        ArrayList arrayList;
        ArrayList arrayList2;
        synchronized (this.f1556b) {
            arrayList = new ArrayList();
            arrayList.addAll(b());
            synchronized (this.f1556b) {
                arrayList2 = new ArrayList(this.f1558e);
            }
            arrayList.addAll(arrayList2);
        }
        return arrayList;
    }
}
