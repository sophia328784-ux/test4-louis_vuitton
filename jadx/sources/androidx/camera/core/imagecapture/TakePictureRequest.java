package androidx.camera.core.imagecapture;

import android.graphics.Matrix;
import android.graphics.Rect;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.Logger;
import androidx.camera.core.internal.compat.workaround.CaptureFailedRetryEnabler;
import androidx.core.util.Preconditions;
import com.sightcall.mediacapture.repo.MediaCaptureRepositoryImpl$takePhoto$2$1$1;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public abstract class TakePictureRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2136a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f2137b;

    public interface RetryControl {
    }

    public TakePictureRequest() {
        this.f2136a = new CaptureFailedRetryEnabler().f2506a == null ? 0 : 1;
        this.f2137b = new HashMap();
    }

    public static TakePictureRequest o(Executor executor, MediaCaptureRepositoryImpl$takePhoto$2$1$1 mediaCaptureRepositoryImpl$takePhoto$2$1$1, ImageCapture.OutputFileOptions outputFileOptions, Rect rect, Matrix matrix, int i2, int i3, int i4, boolean z, List list) {
        Preconditions.b(!false, "onDiskCallback and outputFileOptions should be both null or both non-null.");
        AutoValue_TakePictureRequest autoValue_TakePictureRequest = new AutoValue_TakePictureRequest(executor, mediaCaptureRepositoryImpl$takePhoto$2$1$1, outputFileOptions, rect, matrix, i2, i3, i4, z, list);
        if (z) {
            Boolean bool = Boolean.FALSE;
            HashMap map = autoValue_TakePictureRequest.f2137b;
            map.put(32, bool);
            map.put(256, bool);
        }
        return autoValue_TakePictureRequest;
    }

    public abstract Executor a();

    public abstract int b();

    public abstract Rect c();

    public abstract ImageCapture.OnImageCapturedCallback d();

    public abstract int e();

    public abstract ImageCapture.OnImageSavedCallback f();

    public abstract ImageCapture.OutputFileOptions g();

    public abstract int h();

    public abstract ImageCapture.OutputFileOptions i();

    public abstract Matrix j();

    public abstract List k();

    public final boolean l() {
        Iterator it = this.f2137b.entrySet().iterator();
        while (it.hasNext()) {
            if (!((Boolean) ((Map.Entry) it.next()).getValue()).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    public abstract boolean m();

    public final void n(int i2) {
        Integer numValueOf = Integer.valueOf(i2);
        HashMap map = this.f2137b;
        if (map.containsKey(numValueOf)) {
            map.put(Integer.valueOf(i2), Boolean.TRUE);
        } else {
            Logger.a("TakePictureRequest");
        }
    }
}
