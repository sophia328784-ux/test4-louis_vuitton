package androidx.media3.session;

import android.os.Bundle;
import android.os.ResultReceiver;
import androidx.media3.common.Player;
import androidx.media3.common.util.ListenerSet;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i0 implements ListenerSet.Event, MediaSessionLegacyStub.SessionTask {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f17676b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f17677c;
    public final /* synthetic */ Object d;

    public /* synthetic */ i0(MediaControllerImplLegacy.ControllerInfo controllerInfo, MediaControllerImplLegacy.ControllerInfo controllerInfo2, Integer num) {
        this.f17676b = controllerInfo;
        this.f17677c = controllerInfo2;
        this.d = num;
    }

    @Override // androidx.media3.session.MediaSessionLegacyStub.SessionTask
    public void b(MediaSession.ControllerInfo controllerInfo) {
        MediaSessionLegacyStub mediaSessionLegacyStub = (MediaSessionLegacyStub) this.f17676b;
        Bundle bundle = (Bundle) this.f17677c;
        ResultReceiver resultReceiver = (ResultReceiver) this.d;
        MediaSessionImpl mediaSessionImpl = mediaSessionLegacyStub.f17441f;
        if (bundle == null) {
            Bundle bundle2 = Bundle.EMPTY;
        }
        ListenableFuture listenableFutureO = mediaSessionImpl.o(controllerInfo);
        if (resultReceiver != null) {
            listenableFutureO.addListener(new g0(listenableFutureO, resultReceiver, 8), MoreExecutors.b());
        }
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        MediaControllerImplLegacy.ControllerInfo controllerInfo = (MediaControllerImplLegacy.ControllerInfo) this.f17676b;
        MediaControllerImplLegacy.ControllerInfo controllerInfo2 = (MediaControllerImplLegacy.ControllerInfo) this.f17677c;
        Integer num = (Integer) this.d;
        ((Player.Listener) obj).d0(num.intValue(), controllerInfo.f17354a.f17497c.f17552a, controllerInfo2.f17354a.f17497c.f17552a);
    }

    public /* synthetic */ i0(MediaSessionLegacyStub mediaSessionLegacyStub, SessionCommand sessionCommand, Bundle bundle, ResultReceiver resultReceiver) {
        this.f17676b = mediaSessionLegacyStub;
        this.f17677c = bundle;
        this.d = resultReceiver;
    }
}
