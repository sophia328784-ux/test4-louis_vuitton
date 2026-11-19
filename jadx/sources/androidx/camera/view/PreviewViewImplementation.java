package androidx.camera.view;

import android.graphics.Bitmap;
import android.graphics.RectF;
import android.util.Size;
import android.view.Display;
import android.view.TextureView;
import android.view.View;
import android.widget.FrameLayout;
import androidx.camera.core.Logger;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.utils.CameraOrientationUtil;
import com.google.common.util.concurrent.ListenableFuture;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
abstract class PreviewViewImplementation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Size f3155a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f3156b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PreviewTransformation f3157c;
    public boolean d = false;

    public interface OnSurfaceNotInUseListener {
        void a();
    }

    public PreviewViewImplementation(FrameLayout frameLayout, PreviewTransformation previewTransformation) {
        this.f3156b = frameLayout;
        this.f3157c = previewTransformation;
    }

    public abstract View a();

    public abstract Bitmap b();

    public abstract void c();

    public abstract void d();

    public abstract void e(SurfaceRequest surfaceRequest, d dVar);

    public final void f() {
        View viewA = a();
        if (viewA == null || !this.d) {
            return;
        }
        FrameLayout frameLayout = this.f3156b;
        Size size = new Size(frameLayout.getWidth(), frameLayout.getHeight());
        int layoutDirection = frameLayout.getLayoutDirection();
        PreviewTransformation previewTransformation = this.f3157c;
        previewTransformation.getClass();
        if (size.getHeight() == 0 || size.getWidth() == 0) {
            size.toString();
            Logger.c(5, "PreviewTransform");
            return;
        }
        if (previewTransformation.f()) {
            if (viewA instanceof TextureView) {
                ((TextureView) viewA).setTransform(previewTransformation.d());
            } else {
                Display display = viewA.getDisplay();
                boolean z = false;
                boolean z2 = (!previewTransformation.g || display == null || display.getRotation() == previewTransformation.f3141e) ? false : true;
                boolean z3 = previewTransformation.g;
                if (!z3) {
                    if ((!z3 ? previewTransformation.f3140c : -CameraOrientationUtil.b(previewTransformation.f3141e)) != 0) {
                        z = true;
                    }
                }
                if (z2 || z) {
                    Logger.a("PreviewTransform");
                }
            }
            RectF rectFE = previewTransformation.e(size, layoutDirection);
            viewA.setPivotX(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            viewA.setPivotY(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            viewA.setScaleX(rectFE.width() / previewTransformation.f3138a.getWidth());
            viewA.setScaleY(rectFE.height() / previewTransformation.f3138a.getHeight());
            viewA.setTranslationX(rectFE.left - viewA.getLeft());
            viewA.setTranslationY(rectFE.top - viewA.getTop());
        }
    }

    public abstract ListenableFuture g();
}
