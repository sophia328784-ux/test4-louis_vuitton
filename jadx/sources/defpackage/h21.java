package defpackage;

import android.util.Range;
import androidx.camera.core.SurfaceRequest;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h21 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69568b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SurfaceRequest.TransformationInfoListener f69569c;
    public final /* synthetic */ SurfaceRequest.TransformationInfo d;

    public /* synthetic */ h21(SurfaceRequest.TransformationInfoListener transformationInfoListener, SurfaceRequest.TransformationInfo transformationInfo, int i2) {
        this.f69568b = i2;
        this.f69569c = transformationInfoListener;
        this.d = transformationInfo;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f69568b;
        SurfaceRequest.TransformationInfo transformationInfo = this.d;
        SurfaceRequest.TransformationInfoListener transformationInfoListener = this.f69569c;
        switch (i2) {
            case 0:
                Range range = SurfaceRequest.q;
                transformationInfoListener.f(transformationInfo);
                break;
            default:
                Range range2 = SurfaceRequest.q;
                transformationInfoListener.f(transformationInfo);
                break;
        }
    }
}
