package androidx.camera.view;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Size;
import android.view.PixelCopy;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.widget.FrameLayout;
import androidx.camera.core.Logger;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.core.content.ContextCompat;
import androidx.core.util.Consumer;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.hn0;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
final class SurfaceViewImplementation extends PreviewViewImplementation {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public SurfaceView f3167e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SurfaceRequestCallback f3168f;

    public class SurfaceRequestCallback implements SurfaceHolder.Callback {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Size f3169b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public SurfaceRequest f3170c;
        public SurfaceRequest d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public d f3171e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Size f3172f;
        public boolean g = false;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f3173h = false;

        public SurfaceRequestCallback() {
        }

        public final void a() {
            d dVar;
            SurfaceRequest surfaceRequest = this.f3170c;
            if (surfaceRequest != null) {
                Objects.toString(surfaceRequest);
                Logger.c(3, "SurfaceViewImpl");
                if (!this.f3170c.c() || (dVar = this.f3171e) == null) {
                    return;
                }
                dVar.a();
            }
        }

        public final boolean b() {
            SurfaceViewImplementation surfaceViewImplementation = SurfaceViewImplementation.this;
            Surface surface = surfaceViewImplementation.f3167e.getHolder().getSurface();
            if (this.g || this.f3170c == null || !Objects.equals(this.f3169b, this.f3172f)) {
                return false;
            }
            Logger.c(3, "SurfaceViewImpl");
            final d dVar = this.f3171e;
            SurfaceRequest surfaceRequest = this.f3170c;
            Objects.requireNonNull(surfaceRequest);
            surfaceRequest.a(surface, ContextCompat.getMainExecutor(surfaceViewImplementation.f3167e.getContext()), new Consumer() { // from class: androidx.camera.view.f
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    Logger.c(3, "SurfaceViewImpl");
                    PreviewViewImplementation.OnSurfaceNotInUseListener onSurfaceNotInUseListener = dVar;
                    if (onSurfaceNotInUseListener != null) {
                        onSurfaceNotInUseListener.a();
                    }
                }
            });
            this.g = true;
            surfaceViewImplementation.d = true;
            surfaceViewImplementation.f();
            return true;
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i3, int i4) {
            Logger.c(3, "SurfaceViewImpl");
            this.f3172f = new Size(i3, i4);
            b();
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceCreated(SurfaceHolder surfaceHolder) {
            SurfaceRequest surfaceRequest;
            Logger.c(3, "SurfaceViewImpl");
            if (!this.f3173h || (surfaceRequest = this.d) == null) {
                return;
            }
            surfaceRequest.c();
            surfaceRequest.f1981k.b(null);
            this.d = null;
            this.f3173h = false;
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            Logger.c(3, "SurfaceViewImpl");
            if (this.g) {
                SurfaceRequest surfaceRequest = this.f3170c;
                if (surfaceRequest != null) {
                    Objects.toString(surfaceRequest);
                    Logger.c(3, "SurfaceViewImpl");
                    this.f3170c.m.a();
                }
            } else {
                a();
            }
            this.f3173h = true;
            SurfaceRequest surfaceRequest2 = this.f3170c;
            if (surfaceRequest2 != null) {
                this.d = surfaceRequest2;
            }
            this.g = false;
            this.f3170c = null;
            this.f3171e = null;
            this.f3172f = null;
            this.f3169b = null;
        }
    }

    public SurfaceViewImplementation(FrameLayout frameLayout, PreviewTransformation previewTransformation) {
        super(frameLayout, previewTransformation);
        this.f3168f = new SurfaceRequestCallback();
    }

    @Override // androidx.camera.view.PreviewViewImplementation
    public final View a() {
        return this.f3167e;
    }

    @Override // androidx.camera.view.PreviewViewImplementation
    public final Bitmap b() {
        SurfaceView surfaceView = this.f3167e;
        if (surfaceView == null || surfaceView.getHolder().getSurface() == null || !this.f3167e.getHolder().getSurface().isValid()) {
            return null;
        }
        final Semaphore semaphore = new Semaphore(0);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(this.f3167e.getWidth(), this.f3167e.getHeight(), Bitmap.Config.ARGB_8888);
        HandlerThread handlerThread = new HandlerThread("pixelCopyRequest Thread");
        handlerThread.start();
        PixelCopy.request(this.f3167e, bitmapCreateBitmap, new PixelCopy.OnPixelCopyFinishedListener() { // from class: i21
            @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
            public final void onPixelCopyFinished(int i2) {
                if (i2 == 0) {
                    Logger.c(3, "SurfaceViewImpl");
                } else {
                    Logger.a("SurfaceViewImpl");
                }
                semaphore.release();
            }
        }, new Handler(handlerThread.getLooper()));
        try {
            if (!semaphore.tryAcquire(1, 100L, TimeUnit.MILLISECONDS)) {
                Logger.a("SurfaceViewImpl");
            }
            return bitmapCreateBitmap;
        } catch (InterruptedException unused) {
            Logger.b("SurfaceViewImpl");
            return bitmapCreateBitmap;
        } finally {
            handlerThread.quitSafely();
        }
    }

    @Override // androidx.camera.view.PreviewViewImplementation
    public final void c() {
    }

    @Override // androidx.camera.view.PreviewViewImplementation
    public final void d() {
    }

    @Override // androidx.camera.view.PreviewViewImplementation
    public final void e(final SurfaceRequest surfaceRequest, final d dVar) {
        SurfaceView surfaceView = this.f3167e;
        boolean zEquals = Objects.equals(this.f3155a, surfaceRequest.f1974b);
        if (surfaceView == null || !zEquals) {
            Size size = surfaceRequest.f1974b;
            this.f3155a = size;
            size.getClass();
            FrameLayout frameLayout = this.f3156b;
            SurfaceView surfaceView2 = new SurfaceView(frameLayout.getContext());
            this.f3167e = surfaceView2;
            surfaceView2.setLayoutParams(new FrameLayout.LayoutParams(this.f3155a.getWidth(), this.f3155a.getHeight()));
            frameLayout.removeAllViews();
            frameLayout.addView(this.f3167e);
            this.f3167e.getHolder().addCallback(this.f3168f);
        }
        Executor mainExecutor = ContextCompat.getMainExecutor(this.f3167e.getContext());
        surfaceRequest.l.a(new hn0(dVar, 23), mainExecutor);
        this.f3167e.post(new Runnable() { // from class: androidx.camera.view.e
            @Override // java.lang.Runnable
            public final void run() {
                SurfaceViewImplementation.SurfaceRequestCallback surfaceRequestCallback = this.f3191b.f3168f;
                surfaceRequestCallback.a();
                boolean z = surfaceRequestCallback.f3173h;
                SurfaceRequest surfaceRequest2 = surfaceRequest;
                if (z) {
                    surfaceRequestCallback.f3173h = false;
                    surfaceRequest2.c();
                    surfaceRequest2.f1981k.b(null);
                    return;
                }
                surfaceRequestCallback.f3170c = surfaceRequest2;
                surfaceRequestCallback.f3171e = dVar;
                Size size2 = surfaceRequest2.f1974b;
                surfaceRequestCallback.f3169b = size2;
                surfaceRequestCallback.g = false;
                if (surfaceRequestCallback.b()) {
                    return;
                }
                Logger.c(3, "SurfaceViewImpl");
                SurfaceViewImplementation.this.f3167e.getHolder().setFixedSize(size2.getWidth(), size2.getHeight());
            }
        });
    }

    @Override // androidx.camera.view.PreviewViewImplementation
    public final ListenableFuture g() {
        return Futures.g(null);
    }
}
