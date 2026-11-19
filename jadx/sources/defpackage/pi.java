package defpackage;

import androidx.camera.core.ImageCapture;
import androidx.camera.core.Logger;
import androidx.camera.core.internal.ScreenFlashWrapper;
import androidx.concurrent.futures.CallbackToFutureAdapter;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class pi implements ImageCapture.ScreenFlashListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f78858a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f78859b;

    public /* synthetic */ pi(Object obj, int i2) {
        this.f78858a = i2;
        this.f78859b = obj;
    }

    @Override // androidx.camera.core.ImageCapture.ScreenFlashListener
    public final void onCompleted() {
        int i2 = this.f78858a;
        Object obj = this.f78859b;
        switch (i2) {
            case 0:
                Logger.c(3, "Camera2CapturePipeline");
                ((CallbackToFutureAdapter.Completer) obj).b(null);
                return;
            default:
                ScreenFlashWrapper screenFlashWrapper = (ScreenFlashWrapper) obj;
                synchronized (screenFlashWrapper.f2484b) {
                    try {
                        if (screenFlashWrapper.d == null) {
                            Logger.c(5, "ScreenFlashWrapper");
                        }
                        screenFlashWrapper.c();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
        }
    }
}
