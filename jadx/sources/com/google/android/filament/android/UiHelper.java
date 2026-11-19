package com.google.android.filament.android;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;

/* JADX INFO: loaded from: classes2.dex */
public class UiHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f28618a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public RendererCallback f28619b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f28620c;
    public RenderSurface d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f28621e;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class ContextErrorPolicy {
        private static final /* synthetic */ ContextErrorPolicy[] $VALUES;
        public static final ContextErrorPolicy CHECK;
        public static final ContextErrorPolicy DONT_CHECK;

        static {
            ContextErrorPolicy contextErrorPolicy = new ContextErrorPolicy("CHECK", 0);
            CHECK = contextErrorPolicy;
            ContextErrorPolicy contextErrorPolicy2 = new ContextErrorPolicy("DONT_CHECK", 1);
            DONT_CHECK = contextErrorPolicy2;
            $VALUES = new ContextErrorPolicy[]{contextErrorPolicy, contextErrorPolicy2};
        }

        public static ContextErrorPolicy valueOf(String str) {
            return (ContextErrorPolicy) Enum.valueOf(ContextErrorPolicy.class, str);
        }

        public static ContextErrorPolicy[] values() {
            return (ContextErrorPolicy[]) $VALUES.clone();
        }
    }

    public interface RenderSurface {
        void a();
    }

    public interface RendererCallback {
        void a(Surface surface);

        void b(int i2, int i3);

        void c();
    }

    public class SurfaceViewHandler implements RenderSurface, SurfaceHolder.Callback {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SurfaceView f28622b;

        public SurfaceViewHandler(SurfaceView surfaceView) {
            this.f28622b = surfaceView;
            SurfaceHolder holder = surfaceView.getHolder();
            holder.addCallback(this);
            Surface surface = holder.getSurface();
            if (surface == null || !surface.isValid()) {
                return;
            }
            Surface surface2 = holder.getSurface();
            RendererCallback rendererCallback = UiHelper.this.f28619b;
            if (rendererCallback != null) {
                rendererCallback.a(surface2);
            }
            UiHelper.this.f28620c = true;
            surfaceChanged(holder, 1, holder.getSurfaceFrame().width(), holder.getSurfaceFrame().height());
        }

        @Override // com.google.android.filament.android.UiHelper.RenderSurface
        public final void a() {
            this.f28622b.getHolder().removeCallback(this);
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i3, int i4) {
            RendererCallback rendererCallback = UiHelper.this.f28619b;
            if (rendererCallback != null) {
                rendererCallback.b(i3, i4);
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceCreated(SurfaceHolder surfaceHolder) {
            Surface surface = surfaceHolder.getSurface();
            UiHelper uiHelper = UiHelper.this;
            RendererCallback rendererCallback = uiHelper.f28619b;
            if (rendererCallback != null) {
                rendererCallback.a(surface);
            }
            uiHelper.f28620c = true;
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            UiHelper.this.c();
        }
    }

    public class TextureViewHandler implements RenderSurface, TextureView.SurfaceTextureListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TextureView f28624b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Surface f28625c;

        public TextureViewHandler(TextureView textureView) {
            SurfaceTexture surfaceTexture;
            this.f28624b = textureView;
            textureView.setSurfaceTextureListener(this);
            if (!textureView.isAvailable() || (surfaceTexture = textureView.getSurfaceTexture()) == null) {
                return;
            }
            onSurfaceTextureAvailable(surfaceTexture, 0, 0);
        }

        @Override // com.google.android.filament.android.UiHelper.RenderSurface
        public final void a() {
            this.f28624b.setSurfaceTextureListener(null);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
            Surface surface = new Surface(surfaceTexture);
            this.f28625c = surface;
            UiHelper uiHelper = UiHelper.this;
            RendererCallback rendererCallback = uiHelper.f28619b;
            if (rendererCallback != null) {
                rendererCallback.a(surface);
            }
            uiHelper.f28620c = true;
            RendererCallback rendererCallback2 = uiHelper.f28619b;
            if (rendererCallback2 != null) {
                rendererCallback2.b(i2, i3);
            }
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            Surface surface = this.f28625c;
            if (surface != null) {
                surface.release();
            }
            this.f28625c = null;
            UiHelper.this.c();
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i3) {
            UiHelper uiHelper = UiHelper.this;
            RendererCallback rendererCallback = uiHelper.f28619b;
            if (rendererCallback != null) {
                rendererCallback.b(i2, i3);
                Surface surface = this.f28625c;
                if (surface != null) {
                    uiHelper.f28619b.a(surface);
                }
            }
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }
    }

    public UiHelper(ContextErrorPolicy contextErrorPolicy) {
        this.f28621e = true;
    }

    public final void a(SurfaceView surfaceView) {
        Object obj = this.f28618a;
        if (obj != null) {
            if (obj == surfaceView) {
                return;
            }
            RenderSurface renderSurface = this.d;
            if (renderSurface != null) {
                renderSurface.a();
                this.d = null;
            }
            c();
        }
        this.f28618a = surfaceView;
        boolean z = this.f28621e;
        surfaceView.setZOrderOnTop(!z);
        surfaceView.getHolder().setFormat(z ? -1 : -3);
        this.d = new SurfaceViewHandler(surfaceView);
    }

    public final void b(TextureView textureView) {
        Object obj = this.f28618a;
        if (obj != null) {
            if (obj == textureView) {
                return;
            }
            RenderSurface renderSurface = this.d;
            if (renderSurface != null) {
                renderSurface.a();
                this.d = null;
            }
            c();
        }
        this.f28618a = textureView;
        textureView.setOpaque(this.f28621e);
        this.d = new TextureViewHandler(textureView);
    }

    public final void c() {
        RendererCallback rendererCallback = this.f28619b;
        if (rendererCallback != null) {
            rendererCallback.c();
        }
        this.f28620c = false;
    }

    public final void d() {
        RenderSurface renderSurface = this.d;
        if (renderSurface != null) {
            renderSurface.a();
        }
        c();
        this.f28618a = null;
        this.d = null;
    }

    public UiHelper() {
        this(ContextErrorPolicy.CHECK);
    }
}
