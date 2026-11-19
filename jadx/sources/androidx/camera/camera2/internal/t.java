package androidx.camera.camera2.internal;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class t implements CallbackToFutureAdapter.Resolver, CameraBurstCaptureCallback.CaptureSequenceCallback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CaptureSession f1836b;

    public void a() {
        CaptureSession captureSession = this.f1836b;
        synchronized (captureSession.f1543a) {
            try {
                if (captureSession.f1550j == CaptureSession.State.OPENED) {
                    captureSession.p(captureSession.f1547f);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object i(CallbackToFutureAdapter.Completer completer) {
        String str;
        CaptureSession captureSession = this.f1836b;
        synchronized (captureSession.f1543a) {
            Preconditions.f("Release completer expected to be null", captureSession.l == null);
            captureSession.l = completer;
            str = "Release[session=" + captureSession + "]";
        }
        return str;
    }
}
