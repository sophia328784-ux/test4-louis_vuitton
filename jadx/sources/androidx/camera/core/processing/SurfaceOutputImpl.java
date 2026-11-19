package androidx.camera.core.processing;

import android.graphics.RectF;
import android.opengl.Matrix;
import android.util.Size;
import android.view.Surface;
import androidx.camera.core.Logger;
import androidx.camera.core.SurfaceOutput;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.utils.MatrixExt;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Consumer;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicReference;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
final class SurfaceOutputImpl implements SurfaceOutput {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Surface f2560c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Size f2561e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float[] f2562f;
    public final float[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Consumer f2563h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Executor f2564i;
    public final ListenableFuture l;
    public CallbackToFutureAdapter.Completer m;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f2559b = new Object();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f2565j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f2566k = false;

    public SurfaceOutputImpl(Surface surface, int i2, Size size, SurfaceOutput.CameraInputInfo cameraInputInfo, SurfaceOutput.CameraInputInfo cameraInputInfo2) {
        float[] fArr = new float[16];
        this.f2562f = fArr;
        float[] fArr2 = new float[16];
        this.g = fArr2;
        this.f2560c = surface;
        this.d = i2;
        this.f2561e = size;
        c(fArr, new float[16], cameraInputInfo);
        c(fArr2, new float[16], cameraInputInfo2);
        this.l = CallbackToFutureAdapter.a(new e(this, 1));
    }

    public static void c(float[] fArr, float[] fArr2, SurfaceOutput.CameraInputInfo cameraInputInfo) {
        Matrix.setIdentityM(fArr, 0);
        if (cameraInputInfo == null) {
            return;
        }
        MatrixExt.b(fArr);
        MatrixExt.a(cameraInputInfo.e(), fArr);
        if (cameraInputInfo.d()) {
            Matrix.translateM(fArr, 0, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            Matrix.scaleM(fArr, 0, -1.0f, 1.0f, 1.0f);
        }
        Size sizeI = TransformUtils.i(cameraInputInfo.c(), cameraInputInfo.e());
        android.graphics.Matrix matrixA = TransformUtils.a(TransformUtils.j(cameraInputInfo.c()), TransformUtils.j(sizeI), cameraInputInfo.e(), cameraInputInfo.d());
        RectF rectF = new RectF(cameraInputInfo.b());
        matrixA.mapRect(rectF);
        float width = rectF.left / sizeI.getWidth();
        float height = ((sizeI.getHeight() - rectF.height()) - rectF.top) / sizeI.getHeight();
        float fWidth = rectF.width() / sizeI.getWidth();
        float fHeight = rectF.height() / sizeI.getHeight();
        Matrix.translateM(fArr, 0, width, height, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        Matrix.scaleM(fArr, 0, fWidth, fHeight, 1.0f);
        CameraInternal cameraInternalA = cameraInputInfo.a();
        Matrix.setIdentityM(fArr2, 0);
        MatrixExt.b(fArr2);
        if (cameraInternalA != null) {
            Preconditions.f("Camera has no transform.", cameraInternalA.p());
            MatrixExt.a(cameraInternalA.b().d(), fArr2);
            if (cameraInternalA.l()) {
                Matrix.translateM(fArr2, 0, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                Matrix.scaleM(fArr2, 0, -1.0f, 1.0f, 1.0f);
            }
        }
        Matrix.invertM(fArr2, 0, fArr2, 0);
        Matrix.multiplyMM(fArr, 0, fArr2, 0, fArr, 0);
    }

    @Override // androidx.camera.core.SurfaceOutput
    public final void Q0(float[] fArr, float[] fArr2) {
        v(fArr, fArr2, true);
    }

    @Override // androidx.camera.core.SurfaceOutput
    public final Surface R0(Executor executor, Consumer consumer) {
        boolean z;
        synchronized (this.f2559b) {
            this.f2564i = executor;
            this.f2563h = consumer;
            z = this.f2565j;
        }
        if (z) {
            h();
        }
        return this.f2560c;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this.f2559b) {
            try {
                if (!this.f2566k) {
                    this.f2566k = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.m.b(null);
    }

    @Override // androidx.camera.core.SurfaceOutput
    public final int getFormat() {
        return this.d;
    }

    @Override // androidx.camera.core.SurfaceOutput
    public final Size getSize() {
        return this.f2561e;
    }

    public final void h() {
        int i2;
        Executor executor;
        Consumer consumer;
        AtomicReference atomicReference = new AtomicReference();
        synchronized (this.f2559b) {
            try {
                i2 = 1;
                if (this.f2564i == null || (consumer = this.f2563h) == null) {
                    this.f2565j = true;
                } else if (!this.f2566k) {
                    atomicReference.set(consumer);
                    executor = this.f2564i;
                    this.f2565j = false;
                }
                executor = null;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (executor != null) {
            try {
                executor.execute(new b(this, atomicReference, i2));
            } catch (RejectedExecutionException unused) {
                Logger.c(3, "SurfaceOutputImpl");
            }
        }
    }

    @Override // androidx.camera.core.SurfaceOutput
    public final void v(float[] fArr, float[] fArr2, boolean z) {
        Matrix.multiplyMM(fArr, 0, fArr2, 0, z ? this.f2562f : this.g, 0);
    }
}
