package com.otaliastudios.cameraview.preview;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.otaliastudios.cameraview.CameraLogger;
import com.otaliastudios.cameraview.engine.CameraBaseEngine;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraPreview<T extends View, Output> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final CameraLogger f39066i = CameraLogger.a("CameraPreview");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public SurfaceCallback f39067a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f39068b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f39069c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f39070e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f39071f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f39072h;

    public interface CropCallback {
        void a();
    }

    public interface SurfaceCallback {
        void f();

        void g();

        void m();
    }

    public CameraPreview(Context context, ViewGroup viewGroup) {
        this.f39068b = l(context, viewGroup);
    }

    public void e() {
    }

    public final void f(int i2, int i3) {
        f39066i.b(1, "dispatchOnSurfaceAvailable:", "w=", Integer.valueOf(i2), "h=", Integer.valueOf(i3));
        this.d = i2;
        this.f39070e = i3;
        if (i2 > 0 && i3 > 0) {
            e();
        }
        SurfaceCallback surfaceCallback = this.f39067a;
        if (surfaceCallback != null) {
            surfaceCallback.f();
        }
    }

    public final void g(int i2, int i3) {
        f39066i.b(1, "dispatchOnSurfaceSizeChanged:", "w=", Integer.valueOf(i2), "h=", Integer.valueOf(i3));
        if (i2 == this.d && i3 == this.f39070e) {
            return;
        }
        this.d = i2;
        this.f39070e = i3;
        if (i2 > 0 && i3 > 0) {
            e();
        }
        SurfaceCallback surfaceCallback = this.f39067a;
        if (surfaceCallback != null) {
            surfaceCallback.m();
        }
    }

    public abstract Object h();

    public abstract Class i();

    public abstract View j();

    public final boolean k() {
        return this.d > 0 && this.f39070e > 0;
    }

    public abstract View l(Context context, ViewGroup viewGroup);

    public void m() {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            View viewJ = j();
            ViewParent parent = viewJ.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(viewJ);
                return;
            }
            return;
        }
        Handler handler = new Handler(Looper.getMainLooper());
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        handler.post(new Runnable() { // from class: com.otaliastudios.cameraview.preview.CameraPreview.1
            @Override // java.lang.Runnable
            public void run() {
                View viewJ2 = CameraPreview.this.j();
                ViewParent parent2 = viewJ2.getParent();
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(viewJ2);
                }
                taskCompletionSource.b(null);
            }
        });
        try {
            Tasks.a(taskCompletionSource.f32085a);
        } catch (Exception unused) {
        }
    }

    public void n() {
    }

    public void o() {
    }

    public void p(int i2) {
        this.f39072h = i2;
    }

    public final void q(int i2, int i3) {
        f39066i.b(1, "setStreamSize:", "desiredW=", Integer.valueOf(i2), "desiredH=", Integer.valueOf(i3));
        this.f39071f = i2;
        this.g = i3;
        if (i2 <= 0 || i3 <= 0) {
            return;
        }
        e();
    }

    public final void r(CameraBaseEngine cameraBaseEngine) {
        SurfaceCallback surfaceCallback;
        SurfaceCallback surfaceCallback2;
        if (k() && (surfaceCallback2 = this.f39067a) != null) {
            surfaceCallback2.g();
        }
        this.f39067a = cameraBaseEngine;
        if (!k() || (surfaceCallback = this.f39067a) == null) {
            return;
        }
        surfaceCallback.f();
    }

    public boolean s() {
        return this instanceof GlCameraPreview;
    }
}
