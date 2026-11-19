package defpackage;

import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.Timebase;
import androidx.camera.core.processing.SurfaceEdge;
import androidx.camera.video.VideoCapture;
import androidx.camera.video.VideoOutput;
import androidx.camera.video.impl.VideoCaptureConfig;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.h;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class oy0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78690b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f78691c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f78692e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f78693f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ boolean f78694h;

    public /* synthetic */ oy0(int i2, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, boolean z) {
        this.f78690b = i2;
        this.f78691c = obj;
        this.d = obj2;
        this.f78692e = obj3;
        this.f78693f = obj4;
        this.g = obj5;
        this.f78694h = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f78690b;
        boolean z = this.f78694h;
        Object obj = this.g;
        Object obj2 = this.f78693f;
        Object obj3 = this.f78692e;
        Object obj4 = this.d;
        Object obj5 = this.f78691c;
        switch (i2) {
            case 0:
                String str = (String) obj3;
                ((ConcurrentHashMap) obj4).put(str, ((SkuHandler) obj5).l((BeautyMode) obj2, str, new Sku((h) obj), z));
                break;
            case 1:
                String str2 = (String) obj3;
                ((ConcurrentHashMap) obj4).put(str2, ((SkuHandler) obj5).l((BeautyMode) obj2, str2, new Sku((h) obj), z));
                break;
            default:
                VideoCapture videoCapture = (VideoCapture) obj5;
                SurfaceEdge surfaceEdge = (SurfaceEdge) obj4;
                CameraInternal cameraInternal = (CameraInternal) obj3;
                VideoCaptureConfig videoCaptureConfig = (VideoCaptureConfig) obj2;
                Timebase timebase = (Timebase) obj;
                VideoCapture.Defaults defaults = VideoCapture.F;
                if (cameraInternal == videoCapture.c()) {
                    videoCapture.v = surfaceEdge.d(cameraInternal, true);
                    VideoOutput videoOutput = (VideoOutput) videoCaptureConfig.a(VideoCaptureConfig.N);
                    Objects.requireNonNull(videoOutput);
                    videoOutput.g(videoCapture.v, timebase, z);
                    videoCapture.O();
                }
                break;
        }
    }
}
