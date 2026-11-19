package androidx.camera.core.imagecapture;

import android.graphics.Matrix;
import android.graphics.Rect;
import androidx.camera.core.ImageCapture;
import com.sightcall.mediacapture.repo.MediaCaptureRepositoryImpl$takePhoto$2$1$1;
import defpackage.r81;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_TakePictureRequest extends TakePictureRequest {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Executor f2066c;
    public final MediaCaptureRepositoryImpl$takePhoto$2$1$1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ImageCapture.OutputFileOptions f2067e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Rect f2068f;
    public final Matrix g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f2069h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f2070i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f2071j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f2072k;
    public final List l;

    public AutoValue_TakePictureRequest(Executor executor, MediaCaptureRepositoryImpl$takePhoto$2$1$1 mediaCaptureRepositoryImpl$takePhoto$2$1$1, ImageCapture.OutputFileOptions outputFileOptions, Rect rect, Matrix matrix, int i2, int i3, int i4, boolean z, List list) {
        if (executor == null) {
            r81.d("Null appExecutor");
            throw null;
        }
        this.f2066c = executor;
        this.d = mediaCaptureRepositoryImpl$takePhoto$2$1$1;
        this.f2067e = outputFileOptions;
        this.f2068f = rect;
        if (matrix == null) {
            r81.d("Null sensorToBufferTransform");
            throw null;
        }
        this.g = matrix;
        this.f2069h = i2;
        this.f2070i = i3;
        this.f2071j = i4;
        this.f2072k = z;
        if (list != null) {
            this.l = list;
        } else {
            r81.d("Null sessionConfigCameraCaptureCallbacks");
            throw null;
        }
    }

    @Override // androidx.camera.core.imagecapture.TakePictureRequest
    public final Executor a() {
        return this.f2066c;
    }

    @Override // androidx.camera.core.imagecapture.TakePictureRequest
    public final int b() {
        return this.f2071j;
    }

    @Override // androidx.camera.core.imagecapture.TakePictureRequest
    public final Rect c() {
        return this.f2068f;
    }

    @Override // androidx.camera.core.imagecapture.TakePictureRequest
    public final ImageCapture.OnImageCapturedCallback d() {
        return null;
    }

    @Override // androidx.camera.core.imagecapture.TakePictureRequest
    public final int e() {
        return this.f2070i;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof TakePictureRequest) {
            TakePictureRequest takePictureRequest = (TakePictureRequest) obj;
            if (this.f2066c.equals(takePictureRequest.a()) && takePictureRequest.d() == null) {
                MediaCaptureRepositoryImpl$takePhoto$2$1$1 mediaCaptureRepositoryImpl$takePhoto$2$1$1 = this.d;
                if (mediaCaptureRepositoryImpl$takePhoto$2$1$1 == null) {
                    if (takePictureRequest.f() == null) {
                    }
                } else if (mediaCaptureRepositoryImpl$takePhoto$2$1$1 != takePictureRequest.f()) {
                    return false;
                }
                ImageCapture.OutputFileOptions outputFileOptions = this.f2067e;
                if (outputFileOptions == null) {
                    if (takePictureRequest.g() == null) {
                    }
                } else if (outputFileOptions != takePictureRequest.g()) {
                    return false;
                }
                if (takePictureRequest.i() == null && this.f2068f.equals(takePictureRequest.c()) && this.g.equals(takePictureRequest.j()) && this.f2069h == takePictureRequest.h() && this.f2070i == takePictureRequest.e() && this.f2071j == takePictureRequest.b() && this.f2072k == takePictureRequest.m() && this.l.equals(takePictureRequest.k())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // androidx.camera.core.imagecapture.TakePictureRequest
    public final ImageCapture.OnImageSavedCallback f() {
        return this.d;
    }

    @Override // androidx.camera.core.imagecapture.TakePictureRequest
    public final ImageCapture.OutputFileOptions g() {
        return this.f2067e;
    }

    @Override // androidx.camera.core.imagecapture.TakePictureRequest
    public final int h() {
        return this.f2069h;
    }

    public final int hashCode() {
        int iHashCode = (this.f2066c.hashCode() ^ 1000003) * (-721379959);
        MediaCaptureRepositoryImpl$takePhoto$2$1$1 mediaCaptureRepositoryImpl$takePhoto$2$1$1 = this.d;
        int iHashCode2 = (iHashCode ^ (mediaCaptureRepositoryImpl$takePhoto$2$1$1 == null ? 0 : mediaCaptureRepositoryImpl$takePhoto$2$1$1.hashCode())) * 1000003;
        ImageCapture.OutputFileOptions outputFileOptions = this.f2067e;
        return this.l.hashCode() ^ ((((((((((((((iHashCode2 ^ (outputFileOptions != null ? outputFileOptions.hashCode() : 0)) * (-721379959)) ^ this.f2068f.hashCode()) * 1000003) ^ this.g.hashCode()) * 1000003) ^ this.f2069h) * 1000003) ^ this.f2070i) * 1000003) ^ this.f2071j) * 1000003) ^ (this.f2072k ? 1231 : 1237)) * 1000003);
    }

    @Override // androidx.camera.core.imagecapture.TakePictureRequest
    public final ImageCapture.OutputFileOptions i() {
        return null;
    }

    @Override // androidx.camera.core.imagecapture.TakePictureRequest
    public final Matrix j() {
        return this.g;
    }

    @Override // androidx.camera.core.imagecapture.TakePictureRequest
    public final List k() {
        return this.l;
    }

    @Override // androidx.camera.core.imagecapture.TakePictureRequest
    public final boolean m() {
        return this.f2072k;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TakePictureRequest{appExecutor=");
        sb.append(this.f2066c);
        sb.append(", inMemoryCallback=null, onDiskCallback=");
        sb.append(this.d);
        sb.append(", outputFileOptions=");
        sb.append(this.f2067e);
        sb.append(", secondaryOutputFileOptions=null, cropRect=");
        sb.append(this.f2068f);
        sb.append(", sensorToBufferTransform=");
        sb.append(this.g);
        sb.append(", rotationDegrees=");
        sb.append(this.f2069h);
        sb.append(", jpegQuality=");
        sb.append(this.f2070i);
        sb.append(", captureMode=");
        sb.append(this.f2071j);
        sb.append(", simultaneousCapture=");
        sb.append(this.f2072k);
        sb.append(", sessionConfigCameraCaptureCallbacks=");
        return defpackage.a.o(sb, this.l, "}");
    }
}
