package com.otaliastudios.cameraview.preview;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import com.otaliastudios.cameraview.CameraLogger;
import com.vuitton.android.R;

/* JADX INFO: loaded from: classes3.dex */
public class SurfaceCameraPreview extends CameraPreview<SurfaceView, SurfaceHolder> {
    public static final CameraLogger l = CameraLogger.a("SurfaceCameraPreview");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f39079j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public View f39080k;

    public SurfaceCameraPreview(Context context, ViewGroup viewGroup) {
        super(context, viewGroup);
    }

    @Override // com.otaliastudios.cameraview.preview.CameraPreview
    public final Object h() {
        return ((SurfaceView) this.f39068b).getHolder();
    }

    @Override // com.otaliastudios.cameraview.preview.CameraPreview
    public final Class i() {
        return SurfaceHolder.class;
    }

    @Override // com.otaliastudios.cameraview.preview.CameraPreview
    public final View j() {
        return this.f39080k;
    }

    @Override // com.otaliastudios.cameraview.preview.CameraPreview
    public final View l(Context context, ViewGroup viewGroup) {
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.cameraview_surface_view, viewGroup, false);
        viewGroup.addView(viewInflate, 0);
        SurfaceView surfaceView = (SurfaceView) viewInflate.findViewById(R.id.surface_view);
        SurfaceHolder holder = surfaceView.getHolder();
        holder.setType(3);
        holder.addCallback(new SurfaceHolder.Callback() { // from class: com.otaliastudios.cameraview.preview.SurfaceCameraPreview.1
            @Override // android.view.SurfaceHolder.Callback
            public final void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i3, int i4) {
                CameraLogger cameraLogger = SurfaceCameraPreview.l;
                Integer numValueOf = Integer.valueOf(i3);
                Integer numValueOf2 = Integer.valueOf(i4);
                SurfaceCameraPreview surfaceCameraPreview = SurfaceCameraPreview.this;
                cameraLogger.b(1, "callback:", "surfaceChanged", "w:", numValueOf, "h:", numValueOf2, "dispatched:", Boolean.valueOf(surfaceCameraPreview.f39079j));
                if (surfaceCameraPreview.f39079j) {
                    surfaceCameraPreview.g(i3, i4);
                } else {
                    surfaceCameraPreview.f(i3, i4);
                    surfaceCameraPreview.f39079j = true;
                }
            }

            @Override // android.view.SurfaceHolder.Callback
            public final void surfaceCreated(SurfaceHolder surfaceHolder) {
                SurfaceCameraPreview.l.b(1, "callback: surfaceCreated.");
            }

            @Override // android.view.SurfaceHolder.Callback
            public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                SurfaceCameraPreview.l.b(1, "callback: surfaceDestroyed");
                SurfaceCameraPreview surfaceCameraPreview = SurfaceCameraPreview.this;
                surfaceCameraPreview.d = 0;
                surfaceCameraPreview.f39070e = 0;
                CameraPreview.SurfaceCallback surfaceCallback = surfaceCameraPreview.f39067a;
                if (surfaceCallback != null) {
                    surfaceCallback.g();
                }
                surfaceCameraPreview.f39079j = false;
            }
        });
        this.f39080k = viewInflate;
        return surfaceView;
    }
}
