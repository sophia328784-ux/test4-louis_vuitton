package androidx.camera.core.impl;

import android.hardware.camera2.CameraCharacteristics;
import android.util.Pair;
import android.util.Range;
import androidx.camera.core.ZoomState;
import androidx.camera.core.impl.utils.MappingRedirectableLiveData;
import androidx.camera.core.impl.utils.SessionProcessorUtil;
import androidx.camera.core.internal.ImmutableZoomState;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import defpackage.s3;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Collections;
import java.util.Iterator;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class AdapterCameraInfo extends ForwardingCameraInfo {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CameraInfoInternal f2156b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SessionProcessor f2157c;
    public final CameraConfig d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public MappingRedirectableLiveData f2158e;

    @Retention(RetentionPolicy.SOURCE)
    public @interface CameraOperation {
    }

    public AdapterCameraInfo(CameraInfoInternal cameraInfoInternal, CameraConfig cameraConfig) {
        super(cameraInfoInternal);
        this.f2158e = null;
        this.f2156b = cameraInfoInternal;
        this.d = cameraConfig;
        this.f2157c = cameraConfig.x();
        cameraConfig.O();
        cameraConfig.Z();
    }

    public static float z(float f2, float f3, float f4) {
        if (f4 == f3) {
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        if (f2 == f4) {
            return 1.0f;
        }
        if (f2 == f3) {
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        float f5 = 1.0f / f3;
        return ((1.0f / f2) - f5) / ((1.0f / f4) - f5);
    }

    @Override // androidx.camera.core.impl.ForwardingCameraInfo, androidx.camera.core.impl.CameraInfoInternal
    public final CameraInfoInternal getImplementation() {
        return this.f2156b;
    }

    @Override // androidx.camera.core.impl.ForwardingCameraInfo, androidx.camera.core.CameraInfo
    public final boolean i() {
        if (SessionProcessorUtil.a(this.f2157c, 5)) {
            return this.f2156b.i();
        }
        return false;
    }

    @Override // androidx.camera.core.impl.ForwardingCameraInfo, androidx.camera.core.impl.CameraInfoInternal
    public final boolean n() {
        int[] iArr;
        if (this.f2157c != null) {
            Iterator it = Collections.EMPTY_LIST.iterator();
            while (true) {
                if (!it.hasNext()) {
                    iArr = null;
                    break;
                }
                Pair pair = (Pair) it.next();
                if (((CameraCharacteristics.Key) pair.first).equals(CameraCharacteristics.CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES)) {
                    iArr = (int[]) pair.second;
                    break;
                }
            }
            if (iArr != null) {
                for (int i2 : iArr) {
                    if (i2 == 1) {
                        return true;
                    }
                }
                return false;
            }
        }
        return this.f2302a.n();
    }

    @Override // androidx.camera.core.impl.ForwardingCameraInfo, androidx.camera.core.CameraInfo
    public final LiveData w() {
        int i2 = 0;
        SessionProcessor sessionProcessor = this.f2157c;
        if (!SessionProcessorUtil.a(sessionProcessor, 0)) {
            return new MutableLiveData(ImmutableZoomState.e(1.0f, 1.0f, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM));
        }
        CameraInfoInternal cameraInfoInternal = this.f2156b;
        if (sessionProcessor != null) {
            ZoomState zoomState = (ZoomState) cameraInfoInternal.w().getValue();
            Range rangeG = SessionProcessor.g();
            if (rangeG != null && (((Float) rangeG.getLower()).floatValue() != zoomState.c() || ((Float) rangeG.getUpper()).floatValue() != zoomState.a())) {
                if (this.f2158e == null) {
                    LiveData liveDataW = cameraInfoInternal.w();
                    s3 s3Var = new s3(rangeG, i2);
                    liveDataW.getClass();
                    MappingRedirectableLiveData mappingRedirectableLiveData = new MappingRedirectableLiveData(s3Var.mo0apply(liveDataW.getValue()), s3Var);
                    mappingRedirectableLiveData.e(liveDataW);
                    this.f2158e = mappingRedirectableLiveData;
                }
                return this.f2158e;
            }
        }
        return cameraInfoInternal.w();
    }
}
