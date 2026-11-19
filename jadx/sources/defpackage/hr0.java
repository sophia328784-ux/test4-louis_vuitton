package defpackage;

import android.view.Surface;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.video.Recorder;
import androidx.camera.video.internal.encoder.Encoder;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class hr0 implements Encoder.SurfaceInput.OnSurfaceUpdateListener, SurfaceRequest.TransformationInfoListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Recorder f69770b;

    @Override // androidx.camera.video.internal.encoder.Encoder.SurfaceInput.OnSurfaceUpdateListener
    public void a(Surface surface) {
        this.f69770b.A(surface);
    }

    @Override // androidx.camera.core.SurfaceRequest.TransformationInfoListener
    public void f(SurfaceRequest.TransformationInfo transformationInfo) {
        this.f69770b.v = transformationInfo;
    }
}
