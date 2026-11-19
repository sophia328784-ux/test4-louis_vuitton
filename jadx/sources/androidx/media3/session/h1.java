package androidx.media3.session;

import android.os.Bundle;
import androidx.media3.common.Rating;
import androidx.media3.common.util.Util;
import com.google.common.util.concurrent.Futures;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h1 implements MediaSessionLegacyStub.SessionTask {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17672b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaSessionLegacyStub f17673c;

    public /* synthetic */ h1(MediaSessionLegacyStub mediaSessionLegacyStub, Rating rating) {
        this.f17672b = 3;
        this.f17673c = mediaSessionLegacyStub;
    }

    @Override // androidx.media3.session.MediaSessionLegacyStub.SessionTask
    public final void b(MediaSession.ControllerInfo controllerInfo) {
        int i2 = this.f17672b;
        MediaSessionLegacyStub mediaSessionLegacyStub = this.f17673c;
        switch (i2) {
            case 0:
                mediaSessionLegacyStub.f17441f.u.y();
                break;
            case 1:
                MediaSessionImpl mediaSessionImpl = mediaSessionLegacyStub.f17441f;
                PlayerWrapper playerWrapper = mediaSessionImpl.u;
                if (!Util.b0(playerWrapper, mediaSessionImpl.p)) {
                    if (playerWrapper != null && playerWrapper.R0(1)) {
                        playerWrapper.pause();
                        break;
                    }
                } else {
                    Util.G(playerWrapper);
                    break;
                }
                break;
            case 2:
                mediaSessionLegacyStub.f17441f.o(controllerInfo);
                break;
            case 3:
                MediaSessionImpl mediaSessionImpl2 = mediaSessionLegacyStub.f17441f;
                if (mediaSessionImpl2.u.Y0() != null) {
                    MediaSession.Callback callback = mediaSessionImpl2.f17429e;
                    mediaSessionImpl2.v(controllerInfo);
                    callback.getClass();
                    Futures.g(new SessionResult(-6));
                    break;
                }
                break;
            case 4:
                mediaSessionLegacyStub.f17441f.u.l();
                break;
            case 5:
                mediaSessionLegacyStub.f17441f.u.F();
                break;
            case 6:
                mediaSessionLegacyStub.f17441f.u.z();
                break;
            case 7:
                mediaSessionLegacyStub.f17441f.h(controllerInfo, true);
                break;
            case 8:
                mediaSessionLegacyStub.f17441f.u.f();
                break;
            case 9:
                mediaSessionLegacyStub.f17441f.u.stop();
                break;
            case 10:
                mediaSessionLegacyStub.f17441f.u.q();
                break;
            case 11:
                mediaSessionLegacyStub.f17441f.u.S();
                break;
            default:
                PlayerWrapper playerWrapper2 = mediaSessionLegacyStub.f17441f.u;
                String str = Util.f14242a;
                if (playerWrapper2 != null && playerWrapper2.R0(1)) {
                    playerWrapper2.pause();
                    break;
                }
                break;
        }
    }

    public /* synthetic */ h1(MediaSessionLegacyStub mediaSessionLegacyStub, int i2) {
        this.f17672b = i2;
        this.f17673c = mediaSessionLegacyStub;
    }

    public /* synthetic */ h1(MediaSessionLegacyStub mediaSessionLegacyStub, SessionCommand sessionCommand, Bundle bundle) {
        this.f17672b = 2;
        this.f17673c = mediaSessionLegacyStub;
    }
}
