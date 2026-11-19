package androidx.media3.session;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e0 implements Handler.Callback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17644b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f17645c;

    public /* synthetic */ e0(Object obj, int i2) {
        this.f17644b = i2;
        this.f17645c = obj;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i2 = this.f17644b;
        Object obj = this.f17645c;
        switch (i2) {
            case 0:
                MediaControllerImplBase.FlushCommandQueueHandler flushCommandQueueHandler = (MediaControllerImplBase.FlushCommandQueueHandler) obj;
                if (message.what == 1) {
                    flushCommandQueueHandler.a();
                }
                break;
            default:
                MediaControllerImplLegacy.ControllerCompatCallback controllerCompatCallback = (MediaControllerImplLegacy.ControllerCompatCallback) obj;
                if (message.what == 1) {
                    MediaControllerImplLegacy mediaControllerImplLegacy = controllerCompatCallback.f17353e;
                    mediaControllerImplLegacy.V0(false, mediaControllerImplLegacy.n);
                }
                break;
        }
        return true;
    }
}
