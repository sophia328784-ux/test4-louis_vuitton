package androidx.camera.view;

import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.util.Size;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.widget.FrameLayout;
import androidx.camera.core.Logger;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.content.ContextCompat;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
final class TextureViewImplementation extends PreviewViewImplementation {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public TextureView f3175e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public SurfaceTexture f3176f;
    public ListenableFuture g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public SurfaceRequest f3177h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f3178i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public SurfaceTexture f3179j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public AtomicReference f3180k;
    public d l;

    @Override // androidx.camera.view.PreviewViewImplementation
    public final View a() {
        return this.f3175e;
    }

    @Override // androidx.camera.view.PreviewViewImplementation
    public final Bitmap b() {
        TextureView textureView = this.f3175e;
        if (textureView == null || !textureView.isAvailable()) {
            return null;
        }
        return this.f3175e.getBitmap();
    }

    @Override // androidx.camera.view.PreviewViewImplementation
    public final void c() {
        if (!this.f3178i || this.f3179j == null) {
            return;
        }
        SurfaceTexture surfaceTexture = this.f3175e.getSurfaceTexture();
        SurfaceTexture surfaceTexture2 = this.f3179j;
        if (surfaceTexture != surfaceTexture2) {
            this.f3175e.setSurfaceTexture(surfaceTexture2);
            this.f3179j = null;
            this.f3178i = false;
        }
    }

    @Override // androidx.camera.view.PreviewViewImplementation
    public final void d() {
        this.f3178i = true;
    }

    @Override // androidx.camera.view.PreviewViewImplementation
    public final void e(SurfaceRequest surfaceRequest, d dVar) {
        d dVar2;
        Size size = surfaceRequest.f1974b;
        this.f3155a = size;
        size.getClass();
        FrameLayout frameLayout = this.f3156b;
        TextureView textureView = new TextureView(frameLayout.getContext());
        this.f3175e = textureView;
        textureView.setLayoutParams(new FrameLayout.LayoutParams(this.f3155a.getWidth(), this.f3155a.getHeight()));
        this.f3175e.setSurfaceTextureListener(new TextureView.SurfaceTextureListener() { // from class: androidx.camera.view.TextureViewImplementation.1
            @Override // android.view.TextureView.SurfaceTextureListener
            public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
                Logger.c(3, "TextureViewImpl");
                TextureViewImplementation textureViewImplementation = TextureViewImplementation.this;
                textureViewImplementation.f3176f = surfaceTexture;
                if (textureViewImplementation.g == null) {
                    textureViewImplementation.h();
                    return;
                }
                textureViewImplementation.f3177h.getClass();
                Objects.toString(textureViewImplementation.f3177h);
                Logger.c(3, "TextureViewImpl");
                textureViewImplementation.f3177h.m.a();
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public final boolean onSurfaceTextureDestroyed(final SurfaceTexture surfaceTexture) {
                TextureViewImplementation textureViewImplementation = TextureViewImplementation.this;
                textureViewImplementation.f3176f = null;
                ListenableFuture listenableFuture = textureViewImplementation.g;
                if (listenableFuture == null) {
                    Logger.c(3, "TextureViewImpl");
                    return true;
                }
                Futures.a(listenableFuture, new FutureCallback<SurfaceRequest.Result>() { // from class: androidx.camera.view.TextureViewImplementation.1.1
                    @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                    public final void onFailure(Throwable th) {
                        throw new IllegalStateException("SurfaceReleaseFuture did not complete nicely.", th);
                    }

                    @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                    public final void onSuccess(Object obj) {
                        Preconditions.f("Unexpected result from SurfaceRequest. Surface was provided twice.", ((SurfaceRequest.Result) obj).a() != 3);
                        Logger.c(3, "TextureViewImpl");
                        surfaceTexture.release();
                        TextureViewImplementation textureViewImplementation2 = TextureViewImplementation.this;
                        if (textureViewImplementation2.f3179j != null) {
                            textureViewImplementation2.f3179j = null;
                        }
                    }
                }, ContextCompat.getMainExecutor(textureViewImplementation.f3175e.getContext()));
                textureViewImplementation.f3179j = surfaceTexture;
                return false;
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i3) {
                Logger.c(3, "TextureViewImpl");
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
                CallbackToFutureAdapter.Completer completer = (CallbackToFutureAdapter.Completer) TextureViewImplementation.this.f3180k.getAndSet(null);
                if (completer != null) {
                    completer.b(null);
                }
            }
        });
        frameLayout.removeAllViews();
        frameLayout.addView(this.f3175e);
        SurfaceRequest surfaceRequest2 = this.f3177h;
        if (surfaceRequest2 != null && surfaceRequest2.c() && (dVar2 = this.l) != null) {
            dVar2.a();
            this.l = null;
        }
        this.f3177h = surfaceRequest;
        this.l = dVar;
        surfaceRequest.l.a(new c(this, surfaceRequest, 1), ContextCompat.getMainExecutor(this.f3175e.getContext()));
        h();
    }

    @Override // androidx.camera.view.PreviewViewImplementation
    public final ListenableFuture g() {
        return CallbackToFutureAdapter.a(new a(this));
    }

    public final void h() {
        SurfaceTexture surfaceTexture;
        Size size = this.f3155a;
        if (size == null || (surfaceTexture = this.f3176f) == null || this.f3177h == null) {
            return;
        }
        surfaceTexture.setDefaultBufferSize(size.getWidth(), this.f3155a.getHeight());
        final Surface surface = new Surface(this.f3176f);
        final SurfaceRequest surfaceRequest = this.f3177h;
        final ListenableFuture listenableFutureA = CallbackToFutureAdapter.a(new b(this, surface));
        this.g = listenableFutureA;
        listenableFutureA.addListener(new Runnable() { // from class: androidx.camera.view.g
            @Override // java.lang.Runnable
            public final void run() {
                Logger.c(3, "TextureViewImpl");
                TextureViewImplementation textureViewImplementation = this.f3194b;
                d dVar = textureViewImplementation.l;
                if (dVar != null) {
                    dVar.a();
                    textureViewImplementation.l = null;
                }
                surface.release();
                if (textureViewImplementation.g == listenableFutureA) {
                    textureViewImplementation.g = null;
                }
                if (textureViewImplementation.f3177h == surfaceRequest) {
                    textureViewImplementation.f3177h = null;
                }
            }
        }, ContextCompat.getMainExecutor(this.f3175e.getContext()));
        this.d = true;
        f();
    }
}
