package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureRequest;
import android.os.Handler;
import androidx.camera.camera2.internal.compat.params.SessionConfigurationCompat;
import androidx.camera.camera2.internal.compat.quirk.CaptureSessionStuckQuirk;
import androidx.camera.camera2.internal.compat.quirk.IncorrectCaptureStateQuirk;
import androidx.camera.camera2.internal.compat.workaround.ForceCloseCaptureSession;
import androidx.camera.camera2.internal.compat.workaround.ForceCloseDeferrableSurface;
import androidx.camera.camera2.internal.compat.workaround.RequestMonitor;
import androidx.camera.camera2.internal.compat.workaround.SessionResetPolicy;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.DeferrableSurfaces;
import androidx.camera.core.impl.Quirks;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureChain;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.r00;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
class SynchronizedCaptureSessionImpl extends SynchronizedCaptureSessionBaseImpl {
    public final ScheduledExecutorService n;
    public final Object o;
    public ArrayList p;
    public ListenableFuture q;
    public final ForceCloseDeferrableSurface r;
    public final ForceCloseCaptureSession s;
    public final RequestMonitor t;
    public final SessionResetPolicy u;
    public final AtomicBoolean v;

    public SynchronizedCaptureSessionImpl(Handler handler, CaptureSessionRepository captureSessionRepository, Quirks quirks, Quirks quirks2, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        super(captureSessionRepository, executor, scheduledExecutorService, handler);
        this.o = new Object();
        this.v = new AtomicBoolean(false);
        this.r = new ForceCloseDeferrableSurface(quirks, quirks2);
        this.t = new RequestMonitor(quirks.a(CaptureSessionStuckQuirk.class) || quirks.a(IncorrectCaptureStateQuirk.class));
        this.s = new ForceCloseCaptureSession(quirks2);
        this.u = new SessionResetPolicy(quirks2);
        this.n = scheduledExecutorService;
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSessionBaseImpl, androidx.camera.camera2.internal.SynchronizedCaptureSession
    public final void b() {
        synchronized (this.f1634a) {
            try {
                List list = this.f1641j;
                if (list != null) {
                    DeferrableSurfaces.a(list);
                    this.f1641j = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.t.c();
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession
    public final void c(int i2) {
        if (i2 == 5) {
            synchronized (this.o) {
                try {
                    if (u() && this.p != null) {
                        w();
                        Iterator it = this.p.iterator();
                        while (it.hasNext()) {
                            ((DeferrableSurface) it.next()).a();
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession
    public final void close() {
        if (!this.v.compareAndSet(false, true)) {
            w();
            return;
        }
        if (this.u.f1781a) {
            try {
                w();
                Preconditions.e(this.f1638f, "Need to call openCaptureSession before using this API.");
                this.f1638f.d().abortCaptures();
            } catch (Exception e2) {
                e2.toString();
                w();
            }
        }
        w();
        this.t.b().addListener(new m(this, 7), this.f1636c);
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession
    public final int e(CaptureRequest captureRequest, CameraCaptureSession.CaptureCallback captureCallback) {
        CameraCaptureSession.CaptureCallback captureCallbackA = this.t.a(captureCallback);
        Preconditions.e(this.f1638f, "Need to call openCaptureSession before using this API.");
        return this.f1638f.c(captureRequest, this.f1636c, captureCallbackA);
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession
    public final int h(List list, CameraCaptureSession.CaptureCallback captureCallback) {
        CameraCaptureSession.CaptureCallback captureCallbackA = this.t.a(captureCallback);
        Preconditions.e(this.f1638f, "Need to call openCaptureSession before using this API.");
        return this.f1638f.a(list, this.f1636c, captureCallbackA);
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession
    public final ListenableFuture k() {
        return CallbackToFutureAdapter.a(new r00(this.t.b(), this.n, 1500L, 0));
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSessionBaseImpl, androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
    public final void n(SynchronizedCaptureSession synchronizedCaptureSession) {
        ListenableFuture listenableFuture;
        synchronized (this.o) {
            this.r.a(this.p);
        }
        w();
        synchronized (this.f1634a) {
            try {
                if (this.f1642k) {
                    listenableFuture = null;
                } else {
                    this.f1642k = true;
                    Preconditions.e(this.g, "Need to call openCaptureSession before using this API.");
                    listenableFuture = this.g;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        b();
        if (listenableFuture != null) {
            listenableFuture.addListener(new d(this, synchronizedCaptureSession, 6), CameraXExecutors.a());
        }
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSessionBaseImpl, androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
    public final void p(SynchronizedCaptureSession synchronizedCaptureSession) {
        ArrayList arrayList;
        SynchronizedCaptureSession synchronizedCaptureSession2;
        SynchronizedCaptureSession synchronizedCaptureSession3;
        w();
        ForceCloseCaptureSession forceCloseCaptureSession = this.s;
        CaptureSessionRepository captureSessionRepository = this.f1635b;
        synchronized (captureSessionRepository.f1556b) {
            arrayList = new ArrayList(captureSessionRepository.f1558e);
        }
        ArrayList arrayListB = this.f1635b.b();
        if (forceCloseCaptureSession.f1766a != null) {
            LinkedHashSet<SynchronizedCaptureSession> linkedHashSet = new LinkedHashSet();
            Iterator it = arrayList.iterator();
            while (it.hasNext() && (synchronizedCaptureSession3 = (SynchronizedCaptureSession) it.next()) != synchronizedCaptureSession) {
                linkedHashSet.add(synchronizedCaptureSession3);
            }
            for (SynchronizedCaptureSession synchronizedCaptureSession4 : linkedHashSet) {
                synchronizedCaptureSession4.j().o(synchronizedCaptureSession4);
            }
        }
        Objects.requireNonNull(this.f1637e);
        CaptureSessionRepository captureSessionRepository2 = this.f1635b;
        synchronized (captureSessionRepository2.f1556b) {
            captureSessionRepository2.f1557c.add(this);
            captureSessionRepository2.f1558e.remove(this);
        }
        captureSessionRepository2.a(this);
        this.f1637e.p(synchronizedCaptureSession);
        if (forceCloseCaptureSession.f1766a != null) {
            LinkedHashSet<SynchronizedCaptureSession> linkedHashSet2 = new LinkedHashSet();
            Iterator it2 = arrayListB.iterator();
            while (it2.hasNext() && (synchronizedCaptureSession2 = (SynchronizedCaptureSession) it2.next()) != synchronizedCaptureSession) {
                linkedHashSet2.add(synchronizedCaptureSession2);
            }
            for (SynchronizedCaptureSession synchronizedCaptureSession5 : linkedHashSet2) {
                synchronizedCaptureSession5.j().n(synchronizedCaptureSession5);
            }
        }
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSessionBaseImpl
    public final ListenableFuture v(ArrayList arrayList) {
        ListenableFuture listenableFutureV;
        synchronized (this.o) {
            this.p = arrayList;
            listenableFutureV = super.v(arrayList);
        }
        return listenableFutureV;
    }

    public final void w() {
        toString();
        Logger.c(3, "SyncCaptureSessionImpl");
    }

    public final ListenableFuture x(CameraDevice cameraDevice, SessionConfigurationCompat sessionConfigurationCompat, List list) {
        ListenableFuture listenableFutureH;
        synchronized (this.o) {
            try {
                ArrayList arrayListB = this.f1635b.b();
                ArrayList arrayList = new ArrayList();
                Iterator it = arrayListB.iterator();
                while (it.hasNext()) {
                    arrayList.add(((SynchronizedCaptureSession) it.next()).k());
                }
                ListenableFuture listenableFutureK = Futures.k(arrayList);
                this.q = listenableFutureK;
                listenableFutureH = Futures.h(FutureChain.from(listenableFutureK).transformAsync(new b0(this, cameraDevice, sessionConfigurationCompat, list), this.f1636c));
            } catch (Throwable th) {
                throw th;
            }
        }
        return listenableFutureH;
    }

    public final boolean y() {
        boolean z;
        synchronized (this.o) {
            try {
                if (u()) {
                    this.r.a(this.p);
                } else {
                    ListenableFuture listenableFuture = this.q;
                    if (listenableFuture != null) {
                        listenableFuture.cancel(true);
                    }
                }
                FutureChain futureChain = null;
                try {
                    synchronized (this.f1634a) {
                        try {
                            if (!this.l) {
                                FutureChain futureChain2 = this.f1640i;
                                futureChain = futureChain2 != null ? futureChain2 : null;
                                this.l = true;
                            }
                            z = !u();
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    if (futureChain != null) {
                        futureChain.cancel(true);
                    }
                } catch (Throwable th2) {
                    if (futureChain != null) {
                        futureChain.cancel(true);
                    }
                    throw th2;
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        return z;
    }
}
