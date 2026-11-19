package com.otaliastudios.cameraview.engine;

import android.content.Context;
import android.graphics.PointF;
import android.location.Location;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.otaliastudios.cameraview.CameraException;
import com.otaliastudios.cameraview.CameraLogger;
import com.otaliastudios.cameraview.CameraOptions;
import com.otaliastudios.cameraview.PictureResult;
import com.otaliastudios.cameraview.controls.Facing;
import com.otaliastudios.cameraview.controls.Flash;
import com.otaliastudios.cameraview.controls.Hdr;
import com.otaliastudios.cameraview.controls.PictureFormat;
import com.otaliastudios.cameraview.controls.WhiteBalance;
import com.otaliastudios.cameraview.engine.offset.Reference;
import com.otaliastudios.cameraview.engine.orchestrator.CameraOrchestrator;
import com.otaliastudios.cameraview.engine.orchestrator.CameraState;
import com.otaliastudios.cameraview.engine.orchestrator.CameraStateOrchestrator;
import com.otaliastudios.cameraview.frame.Frame;
import com.otaliastudios.cameraview.gesture.Gesture;
import com.otaliastudios.cameraview.internal.WorkerHandler;
import com.otaliastudios.cameraview.metering.MeteringRegions;
import com.otaliastudios.cameraview.picture.PictureRecorder;
import com.otaliastudios.cameraview.preview.CameraPreview;
import com.otaliastudios.cameraview.size.Size;
import com.otaliastudios.cameraview.video.VideoRecorder$VideoResultListener;
import defpackage.v7;
import defpackage.x1;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraEngine implements CameraPreview.SurfaceCallback, PictureRecorder.PictureResultListener, VideoRecorder$VideoResultListener {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final CameraLogger f38883f = CameraLogger.a("CameraEngine");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public WorkerHandler f38884b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Handler f38885c = new Handler(Looper.getMainLooper());
    public final Callback d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CameraStateOrchestrator f38886e;

    /* JADX INFO: renamed from: com.otaliastudios.cameraview.engine.CameraEngine$8, reason: invalid class name */
    class AnonymousClass8 implements Callable<Task<Void>> {
        public AnonymousClass8() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Task<Void> call() {
            CameraPreview cameraPreview = ((CameraBaseEngine) CameraEngine.this).g;
            return (cameraPreview == null || !cameraPreview.k()) ? Tasks.d() : CameraEngine.this.s();
        }
    }

    public interface Callback {
        void a(Frame frame);

        void b(CameraOptions cameraOptions);

        void c();

        void d(Gesture gesture, boolean z, PointF pointF);

        void e(PictureResult.Stub stub);

        void f(boolean z);

        void g(Gesture gesture, PointF pointF);

        Context getContext();

        void h(float f2, float[] fArr, PointF[] pointFArr);

        void i(CameraException cameraException);

        void k();

        void m(float f2, PointF[] pointFArr);
    }

    public class CrashExceptionHandler implements Thread.UncaughtExceptionHandler {
        public CrashExceptionHandler() {
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public final void uncaughtException(Thread thread, Throwable th) {
            CameraEngine.n(CameraEngine.this, th, true);
        }
    }

    public static class NoOpExceptionHandler implements Thread.UncaughtExceptionHandler {
        @Override // java.lang.Thread.UncaughtExceptionHandler
        public final void uncaughtException(Thread thread, Throwable th) {
            CameraEngine.f38883f.b(2, "EXCEPTION:", "In the NoOpExceptionHandler, probably while destroying.", "Thread:", thread, "Error:", th);
        }
    }

    public CameraEngine(Callback callback) {
        final CameraBaseEngine cameraBaseEngine = (CameraBaseEngine) this;
        this.f38886e = new CameraStateOrchestrator(new CameraOrchestrator.Callback() { // from class: com.otaliastudios.cameraview.engine.CameraEngine.1
            @Override // com.otaliastudios.cameraview.engine.orchestrator.CameraOrchestrator.Callback
            public final WorkerHandler a() {
                return cameraBaseEngine.f38884b;
            }

            @Override // com.otaliastudios.cameraview.engine.orchestrator.CameraOrchestrator.Callback
            public final void b(Exception exc) {
                CameraEngine.n(cameraBaseEngine, exc, false);
            }
        });
        this.d = callback;
        y(false);
    }

    public static void n(CameraEngine cameraEngine, final Throwable th, boolean z) {
        CameraLogger cameraLogger = f38883f;
        if (z) {
            cameraLogger.b(3, "EXCEPTION:", "Handler thread is gone. Replacing.");
            cameraEngine.y(false);
        }
        cameraLogger.b(3, "EXCEPTION:", "Scheduling on the crash handler...");
        cameraEngine.f38885c.post(new Runnable() { // from class: com.otaliastudios.cameraview.engine.CameraEngine.2
            @Override // java.lang.Runnable
            public void run() {
                Throwable th2 = th;
                if (!(th2 instanceof CameraException)) {
                    CameraLogger cameraLogger2 = CameraEngine.f38883f;
                    cameraLogger2.b(3, "EXCEPTION:", "Unexpected error! Executing destroy(true).");
                    CameraEngine.this.p(0, true);
                    cameraLogger2.b(3, "EXCEPTION:", "Unexpected error! Throwing.");
                    Throwable th3 = th;
                    if (th3 instanceof RuntimeException) {
                        throw ((RuntimeException) th3);
                    }
                    x1.m(th3);
                    return;
                }
                CameraException cameraException = (CameraException) th2;
                int i2 = cameraException.f38818b;
                if (i2 == 1 || i2 == 2 || i2 == 3) {
                    CameraEngine.f38883f.b(3, "EXCEPTION:", "Got CameraException. Since it is unrecoverable, executing destroy(false).");
                    CameraEngine.this.p(0, false);
                }
                CameraEngine.f38883f.b(3, "EXCEPTION:", "Got CameraException. Dispatching to callback.");
                CameraEngine.this.d.i(cameraException);
            }
        });
    }

    public final void A() {
        CameraStateOrchestrator cameraStateOrchestrator = this.f38886e;
        f38883f.b(1, "RESTART BIND:", "scheduled. State:", cameraStateOrchestrator.f38958f);
        R(false);
        Q(false);
        cameraStateOrchestrator.e(CameraState.ENGINE, CameraState.BIND, true, new AnonymousClass8());
        O();
    }

    public abstract void B(float f2, float[] fArr, PointF[] pointFArr, boolean z);

    public abstract void C(Flash flash);

    public abstract void D(int i2);

    public abstract void E(boolean z);

    public abstract void F(Hdr hdr);

    public abstract void G(Location location);

    public abstract void H(PictureFormat pictureFormat);

    public abstract void I(boolean z);

    public abstract void J(float f2);

    public abstract void K(WhiteBalance whiteBalance);

    public abstract void L(float f2, PointF[] pointFArr, boolean z);

    public final void M() {
        CameraStateOrchestrator cameraStateOrchestrator = this.f38886e;
        f38883f.b(1, "START:", "scheduled. State:", cameraStateOrchestrator.f38958f);
        CameraState cameraState = CameraState.OFF;
        CameraState cameraState2 = CameraState.ENGINE;
        cameraStateOrchestrator.e(cameraState, cameraState2, true, new Callable<Task<CameraOptions>>() { // from class: com.otaliastudios.cameraview.engine.CameraEngine.5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Task<CameraOptions> call() {
                CameraEngine cameraEngine = CameraEngine.this;
                if (cameraEngine.o(((CameraBaseEngine) cameraEngine).H)) {
                    return CameraEngine.this.t();
                }
                CameraEngine.f38883f.b(3, "onStartEngine:", "No camera available for facing", ((CameraBaseEngine) CameraEngine.this).H);
                throw new CameraException(6);
            }
        }).l(new SuccessContinuation<CameraOptions, Void>() { // from class: com.otaliastudios.cameraview.engine.CameraEngine.4
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task a(Object obj) {
                CameraOptions cameraOptions = (CameraOptions) obj;
                if (cameraOptions != null) {
                    CameraEngine.this.d.b(cameraOptions);
                    return Tasks.f(null);
                }
                v7.h("Null options!");
                return null;
            }
        });
        cameraStateOrchestrator.e(cameraState2, CameraState.BIND, true, new AnonymousClass8());
        O();
    }

    public abstract void N(Gesture gesture, MeteringRegions meteringRegions, PointF pointF);

    public final Task O() {
        return this.f38886e.e(CameraState.BIND, CameraState.PREVIEW, true, new Callable<Task<Void>>() { // from class: com.otaliastudios.cameraview.engine.CameraEngine.10
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Task<Void> call() {
                return CameraEngine.this.u();
            }
        });
    }

    public final Task P(boolean z) {
        CameraStateOrchestrator cameraStateOrchestrator = this.f38886e;
        f38883f.b(1, "STOP:", "scheduled. State:", cameraStateOrchestrator.f38958f);
        R(z);
        Q(z);
        Task taskE = cameraStateOrchestrator.e(CameraState.ENGINE, CameraState.OFF, !z, new Callable<Task<Void>>() { // from class: com.otaliastudios.cameraview.engine.CameraEngine.7
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Task<Void> call() {
                return CameraEngine.this.w();
            }
        });
        taskE.e(new OnSuccessListener<Void>() { // from class: com.otaliastudios.cameraview.engine.CameraEngine.6
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                CameraEngine.this.d.c();
            }
        });
        return taskE;
    }

    public final void Q(boolean z) {
        this.f38886e.e(CameraState.BIND, CameraState.ENGINE, !z, new Callable<Task<Void>>() { // from class: com.otaliastudios.cameraview.engine.CameraEngine.9
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Task<Void> call() {
                return CameraEngine.this.v();
            }
        });
    }

    public final void R(boolean z) {
        this.f38886e.e(CameraState.PREVIEW, CameraState.BIND, !z, new Callable<Task<Void>>() { // from class: com.otaliastudios.cameraview.engine.CameraEngine.11
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Task<Void> call() {
                return CameraEngine.this.x();
            }
        });
    }

    @Override // com.otaliastudios.cameraview.preview.CameraPreview.SurfaceCallback
    public final void f() {
        CameraPreview cameraPreview = ((CameraBaseEngine) this).g;
        f38883f.b(1, "onSurfaceAvailable:", "Size is", new Size(cameraPreview.d, cameraPreview.f39070e));
        this.f38886e.e(CameraState.ENGINE, CameraState.BIND, true, new AnonymousClass8());
        O();
    }

    @Override // com.otaliastudios.cameraview.preview.CameraPreview.SurfaceCallback
    public final void g() {
        f38883f.b(1, "onSurfaceDestroyed");
        R(false);
        Q(false);
    }

    public abstract boolean o(Facing facing);

    public final void p(int i2, boolean z) {
        Object[] objArr = {"DESTROY:", "state:", this.f38886e.f38958f, "thread:", Thread.currentThread(), "depth:", Integer.valueOf(i2), "unrecoverably:", Boolean.valueOf(z)};
        CameraLogger cameraLogger = f38883f;
        cameraLogger.b(1, objArr);
        if (z) {
            this.f38884b.f39022b.setUncaughtExceptionHandler(new NoOpExceptionHandler());
        }
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        P(true).b(this.f38884b.d, new OnCompleteListener<Void>() { // from class: com.otaliastudios.cameraview.engine.CameraEngine.3
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task<Void> task) {
                countDownLatch.countDown();
            }
        });
        try {
            if (countDownLatch.await(6L, TimeUnit.SECONDS)) {
                return;
            }
            cameraLogger.b(3, "DESTROY: Could not destroy synchronously after 6 seconds.", "Current thread:", Thread.currentThread(), "Handler thread:", this.f38884b.f39022b);
            int i3 = i2 + 1;
            if (i3 >= 2) {
                cameraLogger.b(2, "DESTROY: Giving up because DESTROY_RETRIES was reached.");
                return;
            }
            y(true);
            cameraLogger.b(3, "DESTROY: Trying again on thread:", this.f38884b.f39022b);
            p(i3, z);
        } catch (InterruptedException unused) {
        }
    }

    public abstract Size q(Reference reference);

    public final boolean r() {
        CameraStateOrchestrator cameraStateOrchestrator = this.f38886e;
        synchronized (cameraStateOrchestrator.d) {
            try {
                for (CameraOrchestrator.Job job : cameraStateOrchestrator.f38951b) {
                    if (job.f38954a.contains(" >> ") || job.f38954a.contains(" << ")) {
                        if (!job.f38955b.f32085a.k()) {
                            return true;
                        }
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract Task s();

    public abstract Task t();

    public abstract Task u();

    public abstract Task v();

    public abstract Task w();

    public abstract Task x();

    public final void y(boolean z) {
        WorkerHandler workerHandler = this.f38884b;
        if (workerHandler != null) {
            HandlerThread handlerThread = workerHandler.f39022b;
            if (handlerThread.isAlive()) {
                handlerThread.interrupt();
                handlerThread.quit();
            }
            WorkerHandler.f39020f.remove(workerHandler.f39021a);
        }
        WorkerHandler workerHandlerA = WorkerHandler.a("CameraViewEngine");
        this.f38884b = workerHandlerA;
        workerHandlerA.f39022b.setUncaughtExceptionHandler(new CrashExceptionHandler());
        if (z) {
            CameraStateOrchestrator cameraStateOrchestrator = this.f38886e;
            synchronized (cameraStateOrchestrator.d) {
                try {
                    HashSet hashSet = new HashSet();
                    Iterator it = cameraStateOrchestrator.f38951b.iterator();
                    while (it.hasNext()) {
                        hashSet.add(((CameraOrchestrator.Job) it.next()).f38954a);
                    }
                    Iterator it2 = hashSet.iterator();
                    while (it2.hasNext()) {
                        cameraStateOrchestrator.d(0, (String) it2.next());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void z() {
        f38883f.b(1, "RESTART:", "scheduled. State:", this.f38886e.f38958f);
        P(false);
        M();
    }
}
