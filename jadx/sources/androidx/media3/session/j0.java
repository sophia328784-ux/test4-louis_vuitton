package androidx.media3.session;

import android.os.Looper;
import androidx.media3.session.MediaControllerImplLegacy.ConnectionCallback;
import androidx.media3.session.legacy.MediaBrowserCompat;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17682b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaControllerImplLegacy f17683c;

    public /* synthetic */ j0(MediaControllerImplLegacy mediaControllerImplLegacy, MediaControllerImplLegacy.ControllerInfo controllerInfo) {
        this.f17682b = 2;
        this.f17683c = mediaControllerImplLegacy;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f17682b;
        MediaControllerImplLegacy mediaControllerImplLegacy = this.f17683c;
        switch (i2) {
            case 0:
                if (!mediaControllerImplLegacy.f17351k && !mediaControllerImplLegacy.f17349i.q()) {
                    mediaControllerImplLegacy.X0();
                    break;
                }
                break;
            case 1:
                MediaBrowserCompat mediaBrowserCompat = new MediaBrowserCompat(mediaControllerImplLegacy.f17343a, mediaControllerImplLegacy.f17345c.f17568a.e(), mediaControllerImplLegacy.new ConnectionCallback(), mediaControllerImplLegacy.f17344b.f17315c.P0());
                mediaControllerImplLegacy.f17350j = mediaBrowserCompat;
                mediaBrowserCompat.a();
                break;
            default:
                MediaController mediaController = mediaControllerImplLegacy.f17344b;
                mediaController.getClass();
                Preconditions.q(Looper.myLooper() == mediaController.f17316e.getLooper());
                MediaController.Listener listener = mediaController.d;
                listener.getClass();
                MediaController.Listener.z();
                listener.x();
                break;
        }
    }

    public /* synthetic */ j0(MediaControllerImplLegacy mediaControllerImplLegacy, int i2) {
        this.f17682b = i2;
        this.f17683c = mediaControllerImplLegacy;
    }
}
