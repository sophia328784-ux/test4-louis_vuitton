package com.otaliastudios.cameraview.preview;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.view.LayoutInflater;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.otaliastudios.cameraview.CameraLogger;
import com.otaliastudios.cameraview.size.AspectRatio;
import com.vuitton.android.R;
import java.util.concurrent.ExecutionException;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes3.dex */
public class TextureCameraPreview extends CameraPreview<TextureView, SurfaceTexture> {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public View f39082j;

    public TextureCameraPreview(Context context, ViewGroup viewGroup) {
        super(context, viewGroup);
    }

    @Override // com.otaliastudios.cameraview.preview.CameraPreview
    public final void e() {
        final CameraPreview.CropCallback cropCallback = null;
        ((TextureView) this.f39068b).post(new Runnable() { // from class: com.otaliastudios.cameraview.preview.TextureCameraPreview.2
            @Override // java.lang.Runnable
            public void run() {
                int i2;
                int i3;
                float fC;
                TextureCameraPreview textureCameraPreview = TextureCameraPreview.this;
                if (textureCameraPreview.g == 0 || textureCameraPreview.f39071f == 0 || (i2 = textureCameraPreview.f39070e) == 0 || (i3 = textureCameraPreview.d) == 0) {
                    CameraPreview.CropCallback cropCallback2 = cropCallback;
                    if (cropCallback2 != null) {
                        cropCallback2.a();
                        return;
                    }
                    return;
                }
                AspectRatio aspectRatioA = AspectRatio.a(i3, i2);
                TextureCameraPreview textureCameraPreview2 = TextureCameraPreview.this;
                AspectRatio aspectRatioA2 = AspectRatio.a(textureCameraPreview2.f39071f, textureCameraPreview2.g);
                float f2 = 1.0f;
                if (aspectRatioA.c() >= aspectRatioA2.c()) {
                    fC = aspectRatioA.c() / aspectRatioA2.c();
                } else {
                    float fC2 = aspectRatioA2.c() / aspectRatioA.c();
                    fC = 1.0f;
                    f2 = fC2;
                }
                ((TextureView) TextureCameraPreview.this.f39068b).setScaleX(f2);
                ((TextureView) TextureCameraPreview.this.f39068b).setScaleY(fC);
                TextureCameraPreview.this.f39069c = f2 > 1.02f || fC > 1.02f;
                CameraLogger cameraLogger = CameraPreview.f39066i;
                cameraLogger.b(1, "crop:", "applied scaleX=", Float.valueOf(f2));
                cameraLogger.b(1, "crop:", "applied scaleY=", Float.valueOf(fC));
                CameraPreview.CropCallback cropCallback3 = cropCallback;
                if (cropCallback3 != null) {
                    cropCallback3.a();
                }
            }
        });
    }

    @Override // com.otaliastudios.cameraview.preview.CameraPreview
    public final Object h() {
        return ((TextureView) this.f39068b).getSurfaceTexture();
    }

    @Override // com.otaliastudios.cameraview.preview.CameraPreview
    public final Class i() {
        return SurfaceTexture.class;
    }

    @Override // com.otaliastudios.cameraview.preview.CameraPreview
    public final View j() {
        return this.f39082j;
    }

    @Override // com.otaliastudios.cameraview.preview.CameraPreview
    public final View l(Context context, ViewGroup viewGroup) {
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.cameraview_texture_view, viewGroup, false);
        viewGroup.addView(viewInflate, 0);
        TextureView textureView = (TextureView) viewInflate.findViewById(R.id.texture_view);
        textureView.setSurfaceTextureListener(new TextureView.SurfaceTextureListener() { // from class: com.otaliastudios.cameraview.preview.TextureCameraPreview.1
            @Override // android.view.TextureView.SurfaceTextureListener
            public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
                TextureCameraPreview.this.f(i2, i3);
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
                TextureCameraPreview textureCameraPreview = TextureCameraPreview.this;
                textureCameraPreview.d = 0;
                textureCameraPreview.f39070e = 0;
                CameraPreview.SurfaceCallback surfaceCallback = textureCameraPreview.f39067a;
                if (surfaceCallback == null) {
                    return true;
                }
                surfaceCallback.g();
                return true;
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i3) {
                TextureCameraPreview.this.g(i2, i3);
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            }
        });
        this.f39082j = viewInflate;
        return textureView;
    }

    @Override // com.otaliastudios.cameraview.preview.CameraPreview
    public final void p(final int i2) {
        this.f39072h = i2;
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        ((TextureView) this.f39068b).post(new Runnable() { // from class: com.otaliastudios.cameraview.preview.TextureCameraPreview.3
            @Override // java.lang.Runnable
            public void run() {
                Matrix matrix = new Matrix();
                TextureCameraPreview textureCameraPreview = TextureCameraPreview.this;
                int i3 = textureCameraPreview.d;
                float f2 = i3 / 2.0f;
                int i4 = textureCameraPreview.f39070e;
                float f3 = i4 / 2.0f;
                if (i2 % Sink.ORIENTATION_180 != 0) {
                    float f4 = i4 / i3;
                    matrix.postScale(f4, 1.0f / f4, f2, f3);
                }
                matrix.postRotate(i2, f2, f3);
                ((TextureView) TextureCameraPreview.this.f39068b).setTransform(matrix);
                taskCompletionSource.b(null);
            }
        });
        try {
            Tasks.a(taskCompletionSource.f32085a);
        } catch (InterruptedException | ExecutionException unused) {
        }
    }

    @Override // com.otaliastudios.cameraview.preview.CameraPreview
    public final boolean s() {
        return true;
    }
}
