package androidx.camera.view;

import android.view.Surface;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import defpackage.ir0;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements CallbackToFutureAdapter.Resolver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3185b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f3186c;
    public final /* synthetic */ Object d;

    public /* synthetic */ b(CameraInfo cameraInfo, PreviewStreamStateObserver previewStreamStateObserver, ArrayList arrayList) {
        this.f3186c = cameraInfo;
        this.d = arrayList;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public final Object i(final CallbackToFutureAdapter.Completer completer) {
        int i2 = this.f3185b;
        Object obj = this.d;
        Object obj2 = this.f3186c;
        switch (i2) {
            case 0:
                final CameraInfo cameraInfo = (CameraInfo) obj2;
                CameraCaptureCallback cameraCaptureCallback = new CameraCaptureCallback() { // from class: androidx.camera.view.PreviewStreamStateObserver.2
                    @Override // androidx.camera.core.impl.CameraCaptureCallback
                    public final void b(int i3, CameraCaptureResult cameraCaptureResult) {
                        completer.b(null);
                        ((CameraInfoInternal) cameraInfo).m(this);
                    }
                };
                ((ArrayList) obj).add(cameraCaptureCallback);
                ((CameraInfoInternal) cameraInfo).e(CameraXExecutors.a(), cameraCaptureCallback);
                return "waitForCaptureResult";
            default:
                TextureViewImplementation textureViewImplementation = (TextureViewImplementation) obj2;
                Surface surface = (Surface) obj;
                Logger.c(3, "TextureViewImpl");
                textureViewImplementation.f3177h.a(surface, CameraXExecutors.a(), new ir0(completer, 2));
                return "provideSurface[request=" + textureViewImplementation.f3177h + " surface=" + surface + "]";
        }
    }

    public /* synthetic */ b(TextureViewImplementation textureViewImplementation, Surface surface) {
        this.f3186c = textureViewImplementation;
        this.d = surface;
    }
}
