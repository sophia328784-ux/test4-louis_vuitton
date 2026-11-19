package com.otaliastudios.cameraview.overlay;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import com.otaliastudios.cameraview.CameraLogger;
import com.otaliastudios.cameraview.internal.GlTextureDrawer;
import com.otaliastudios.cameraview.internal.Issue514Workaround;
import com.otaliastudios.cameraview.size.Size;

/* JADX INFO: loaded from: classes3.dex */
public class OverlayDrawer {
    public static final CameraLogger g = CameraLogger.a("OverlayDrawer");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Overlay f39030a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public SurfaceTexture f39031b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Surface f39032c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Issue514Workaround f39033e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f39034f = new Object();
    public GlTextureDrawer d = new GlTextureDrawer();

    public OverlayDrawer(Overlay overlay, Size size) {
        this.f39030a = overlay;
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.d.f39001a.g);
        this.f39031b = surfaceTexture;
        surfaceTexture.setDefaultBufferSize(size.f39086b, size.f39087c);
        this.f39032c = new Surface(this.f39031b);
        this.f39033e = new Issue514Workaround(this.d.f39001a.g);
    }
}
