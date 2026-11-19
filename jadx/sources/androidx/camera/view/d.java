package androidx.camera.view;

import android.util.Size;
import androidx.camera.core.Logger;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.utils.futures.FutureChain;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements SurfaceRequest.TransformationInfoListener, PreviewViewImplementation.OnSurfaceNotInUseListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PreviewView.AnonymousClass1 f3189b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CameraInternal f3190c;
    public final /* synthetic */ Object d;

    public /* synthetic */ d(PreviewView.AnonymousClass1 anonymousClass1, CameraInternal cameraInternal, SurfaceRequest surfaceRequest) {
        this.f3189b = anonymousClass1;
        this.f3190c = cameraInternal;
        this.d = surfaceRequest;
    }

    @Override // androidx.camera.view.PreviewViewImplementation.OnSurfaceNotInUseListener
    public void a() {
        PreviewStreamStateObserver previewStreamStateObserver = (PreviewStreamStateObserver) this.d;
        AtomicReference atomicReference = PreviewView.this.f3149h;
        do {
            if (atomicReference.compareAndSet(previewStreamStateObserver, null)) {
                previewStreamStateObserver.b(PreviewView.StreamState.IDLE);
                break;
            }
        } while (atomicReference.get() == previewStreamStateObserver);
        FutureChain futureChain = previewStreamStateObserver.f3130e;
        if (futureChain != null) {
            futureChain.cancel(false);
            previewStreamStateObserver.f3130e = null;
        }
        this.f3190c.c().d(previewStreamStateObserver);
    }

    @Override // androidx.camera.core.SurfaceRequest.TransformationInfoListener
    public void f(SurfaceRequest.TransformationInfo transformationInfo) {
        PreviewViewImplementation previewViewImplementation;
        SurfaceRequest surfaceRequest = (SurfaceRequest) this.d;
        PreviewView previewView = PreviewView.this;
        Objects.toString(transformationInfo);
        Logger.c(3, "PreviewView");
        boolean z = this.f3190c.k().g() == 0;
        PreviewTransformation previewTransformation = previewView.f3147e;
        Size size = surfaceRequest.f1974b;
        previewTransformation.getClass();
        Objects.toString(transformationInfo);
        Objects.toString(size);
        Logger.c(3, "PreviewTransform");
        previewTransformation.f3139b = transformationInfo.a();
        previewTransformation.f3140c = transformationInfo.b();
        previewTransformation.f3141e = transformationInfo.d();
        previewTransformation.f3138a = size;
        previewTransformation.f3142f = z;
        previewTransformation.g = transformationInfo.e();
        previewTransformation.d = transformationInfo.c();
        if (transformationInfo.d() == -1 || ((previewViewImplementation = previewView.f3146c) != null && (previewViewImplementation instanceof SurfaceViewImplementation))) {
            previewView.f3148f = true;
        } else {
            previewView.f3148f = false;
        }
        previewView.a();
    }

    public /* synthetic */ d(PreviewView.AnonymousClass1 anonymousClass1, PreviewStreamStateObserver previewStreamStateObserver, CameraInternal cameraInternal) {
        this.f3189b = anonymousClass1;
        this.d = previewStreamStateObserver;
        this.f3190c = cameraInternal;
    }
}
