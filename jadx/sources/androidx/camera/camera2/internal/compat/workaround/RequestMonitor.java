package androidx.camera.camera2.internal.compat.workaround;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureFailure;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import androidx.camera.camera2.internal.Camera2CaptureCallbacks;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.ct0;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class RequestMonitor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f1776a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f1777b = pq0.v();

    public static class RequestCompleteListener extends CameraCaptureSession.CaptureCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ListenableFuture f1778a = CallbackToFutureAdapter.a(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.camera2.internal.compat.workaround.b
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object i(CallbackToFutureAdapter.Completer completer) {
                RequestMonitor.RequestCompleteListener requestCompleteListener = this.f1793b;
                requestCompleteListener.f1779b = completer;
                return "RequestCompleteListener[" + requestCompleteListener + "]";
            }
        });

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public CallbackToFutureAdapter.Completer f1779b;

        public final void a() {
            CallbackToFutureAdapter.Completer completer = this.f1779b;
            if (completer != null) {
                completer.b(null);
                this.f1779b = null;
            }
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public final void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
            a();
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public final void onCaptureFailed(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureFailure captureFailure) {
            a();
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public final void onCaptureSequenceAborted(CameraCaptureSession cameraCaptureSession, int i2) {
            a();
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public final void onCaptureSequenceCompleted(CameraCaptureSession cameraCaptureSession, int i2, long j2) {
            a();
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public final void onCaptureStarted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, long j2, long j3) {
            a();
        }
    }

    public RequestMonitor(boolean z) {
        this.f1776a = z;
    }

    public final CameraCaptureSession.CaptureCallback a(CameraCaptureSession.CaptureCallback captureCallback) {
        if (!this.f1776a) {
            return captureCallback;
        }
        final RequestCompleteListener requestCompleteListener = new RequestCompleteListener();
        List list = this.f1777b;
        final ListenableFuture listenableFuture = requestCompleteListener.f1778a;
        list.add(listenableFuture);
        toString();
        listenableFuture.addListener(new Runnable() { // from class: androidx.camera.camera2.internal.compat.workaround.a
            @Override // java.lang.Runnable
            public final void run() {
                Objects.toString(requestCompleteListener);
                RequestMonitor requestMonitor = this.f1791b;
                requestMonitor.toString();
                requestMonitor.f1777b.remove(listenableFuture);
            }
        }, CameraXExecutors.a());
        return Camera2CaptureCallbacks.a(requestCompleteListener, captureCallback);
    }

    public final ListenableFuture b() {
        List list = this.f1777b;
        return list.isEmpty() ? Futures.g(null) : Futures.h(Futures.l(Futures.k(new ArrayList(list)), new ct0(0), CameraXExecutors.a()));
    }

    public final void c() {
        LinkedList linkedList = new LinkedList(this.f1777b);
        while (!linkedList.isEmpty()) {
            ListenableFuture listenableFuture = (ListenableFuture) linkedList.poll();
            Objects.requireNonNull(listenableFuture);
            listenableFuture.cancel(true);
        }
    }
}
