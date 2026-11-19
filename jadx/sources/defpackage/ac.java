package defpackage;

import androidx.camera.camera2.internal.Camera2CameraControlImpl;
import androidx.camera.camera2.interop.Camera2CameraControl;
import androidx.camera.core.CameraControl;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.video.internal.audio.AudioSource;
import androidx.camera.video.internal.audio.AudioStream;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import com.batch.android.l0.a;
import com.sightcall.universal.internal.view.ProgressivexImageView;
import com.vuitton.android.presentation.screen.connectivity.lightup.LightUpActivity;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.lightup.sneakers.SneakerDetailFragment;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ac implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f475b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f476c;
    public final /* synthetic */ Object d;

    public /* synthetic */ ac(Object obj, boolean z, int i2) {
        this.f475b = i2;
        this.d = obj;
        this.f476c = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f475b;
        boolean z = this.f476c;
        Object obj = this.d;
        switch (i2) {
            case 0:
                AudioRendererEventListener audioRendererEventListener = ((AudioRendererEventListener.EventDispatcher) obj).f14926b;
                String str = Util.f14242a;
                audioRendererEventListener.l(z);
                break;
            case 1:
                ((AudioSource.AudioSourceCallback) obj).a(z);
                break;
            case 2:
                ((AudioStream.AudioStreamCallback) obj).a(z);
                break;
            case 3:
                Camera2CameraControl camera2CameraControl = (Camera2CameraControl) obj;
                if (camera2CameraControl.f1848a != z) {
                    camera2CameraControl.f1848a = z;
                    if (!z) {
                        CameraControl.OperationCanceledException operationCanceledException = new CameraControl.OperationCanceledException("The camera control has became inactive.");
                        CallbackToFutureAdapter.Completer completer = camera2CameraControl.g;
                        if (completer != null) {
                            completer.d(operationCanceledException);
                            camera2CameraControl.g = null;
                        }
                    } else if (camera2CameraControl.f1849b) {
                        Camera2CameraControlImpl camera2CameraControlImpl = camera2CameraControl.f1850c;
                        camera2CameraControlImpl.getClass();
                        Futures.h(CallbackToFutureAdapter.a(new s3(camera2CameraControlImpl, 12))).addListener(new z1(camera2CameraControl, 14), camera2CameraControl.d);
                        camera2CameraControl.f1849b = false;
                    }
                    break;
                }
                break;
            case 4:
                LightUpActivity.Companion companion = LightUpActivity.t;
                LightUpDetailFragment lightUpDetailFragmentQ = ((LightUpActivity) obj).Q();
                if (lightUpDetailFragmentQ != null && lightUpDetailFragmentQ.isAdded() && !lightUpDetailFragmentQ.isHidden()) {
                    ((SneakerDetailFragment) lightUpDetailFragmentQ).I0(z);
                    break;
                }
                break;
            case 5:
                ((ProgressivexImageView) obj).lambda$loadBitmap$1(z);
                break;
            default:
                ((a) obj).c(z);
                break;
        }
    }
}
