package androidx.camera.core.imagecapture;

import android.graphics.Matrix;
import android.graphics.Rect;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.impl.CaptureBundle;
import androidx.camera.core.impl.CaptureStage;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
class ProcessingRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2105a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TakePictureRequest f2106b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImageCapture.OutputFileOptions f2107c;
    public final ImageCapture.OutputFileOptions d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Rect f2108e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f2109f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Matrix f2110h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final RequestWithCallback f2111i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f2112j;
    public final ListenableFuture l;
    public int m = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ArrayList f2113k = new ArrayList();

    public ProcessingRequest(CaptureBundle captureBundle, TakePictureRequest takePictureRequest, RequestWithCallback requestWithCallback, ListenableFuture listenableFuture, int i2) {
        this.f2105a = i2;
        this.f2106b = takePictureRequest;
        this.f2107c = takePictureRequest.g();
        this.d = takePictureRequest.i();
        this.g = takePictureRequest.e();
        this.f2109f = takePictureRequest.h();
        this.f2108e = takePictureRequest.c();
        this.f2110h = takePictureRequest.j();
        this.f2111i = requestWithCallback;
        this.f2112j = String.valueOf(captureBundle.hashCode());
        List<CaptureStage> listA = captureBundle.a();
        Objects.requireNonNull(listA);
        for (CaptureStage captureStage : listA) {
            ArrayList arrayList = this.f2113k;
            captureStage.getClass();
            arrayList.add(0);
        }
        this.l = listenableFuture;
    }
}
