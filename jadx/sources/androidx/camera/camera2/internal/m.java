package androidx.camera.camera2.internal;

import androidx.camera.core.Logger;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class m implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1823b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1824c;

    public /* synthetic */ m(Object obj, int i2) {
        this.f1823b = i2;
        this.f1824c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f1823b;
        Object obj = this.f1824c;
        switch (i2) {
            case 0:
                ((Camera2CameraImpl.StateCallback.ScheduledReopen) obj).lambda$run$0();
                return;
            case 1:
                ((Camera2CapturePipeline.Pipeline) obj).f1501i.c();
                return;
            case 2:
                CaptureSession captureSession = (CaptureSession) obj;
                synchronized (captureSession.f1543a) {
                    if (captureSession.f1544b.isEmpty()) {
                        return;
                    }
                    try {
                        captureSession.o(captureSession.f1544b);
                        captureSession.f1544b.clear();
                        return;
                    } catch (Throwable th) {
                        captureSession.f1544b.clear();
                        throw th;
                    }
                }
            case 3:
                int i3 = CaptureSessionRepository.AnonymousClass1.f1560b;
                for (SynchronizedCaptureSession synchronizedCaptureSession : (LinkedHashSet) obj) {
                    synchronizedCaptureSession.j().n(synchronizedCaptureSession);
                }
                return;
            case 4:
                ArrayList arrayList = ProcessingCaptureSession.m;
                Logger.c(3, "ProcessingCaptureSession");
                ((ProcessingCaptureSession) obj).f1605a.d();
                return;
            case 5:
                ProcessingCaptureSession.m.remove((DeferrableSurface) obj);
                return;
            case 6:
                SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl = (SynchronizedCaptureSessionBaseImpl) obj;
                synchronizedCaptureSessionBaseImpl.r(synchronizedCaptureSessionBaseImpl);
                return;
            default:
                SynchronizedCaptureSessionImpl synchronizedCaptureSessionImpl = (SynchronizedCaptureSessionImpl) obj;
                synchronizedCaptureSessionImpl.w();
                Preconditions.e(synchronizedCaptureSessionImpl.f1638f, "Need to call openCaptureSession before using this API.");
                CaptureSessionRepository captureSessionRepository = synchronizedCaptureSessionImpl.f1635b;
                synchronized (captureSessionRepository.f1556b) {
                    captureSessionRepository.d.add(synchronizedCaptureSessionImpl);
                    break;
                }
                synchronizedCaptureSessionImpl.f1638f.d().close();
                synchronizedCaptureSessionImpl.f1636c.execute(new m(synchronizedCaptureSessionImpl, 6));
                return;
        }
    }
}
