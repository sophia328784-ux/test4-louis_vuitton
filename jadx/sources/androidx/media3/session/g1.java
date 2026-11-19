package androidx.media3.session;

import androidx.media3.common.MediaItem;
import androidx.media3.session.MediaSessionLegacyStub.AnonymousClass1;
import com.google.common.collect.ImmutableList;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.MoreExecutors;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g1 implements MediaSessionImpl.RemoteControllerTask, MediaSessionLegacyStub.SessionTask {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f17664b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f17665c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f17666e;

    public /* synthetic */ g1(MediaSessionLegacyStub mediaSessionLegacyStub, MediaItem mediaItem, boolean z, boolean z2) {
        this.d = mediaSessionLegacyStub;
        this.f17666e = mediaItem;
        this.f17664b = z;
        this.f17665c = z2;
    }

    @Override // androidx.media3.session.MediaSessionLegacyStub.SessionTask
    public void b(MediaSession.ControllerInfo controllerInfo) {
        MediaSessionLegacyStub mediaSessionLegacyStub = (MediaSessionLegacyStub) this.d;
        Futures.a(mediaSessionLegacyStub.f17441f.t(controllerInfo, ImmutableList.A((MediaItem) this.f17666e), -1, -9223372036854775807L), mediaSessionLegacyStub.new AnonymousClass1(controllerInfo, this.f17664b, this.f17665c), MoreExecutors.b());
    }

    @Override // androidx.media3.session.MediaSessionImpl.RemoteControllerTask
    public void d(MediaSession.ControllerCb controllerCb, int i2) {
        SessionPositionInfo sessionPositionInfo = (SessionPositionInfo) this.d;
        MediaSession.ControllerInfo controllerInfo = (MediaSession.ControllerInfo) this.f17666e;
        SessionResult sessionResult = MediaSessionImpl.F;
        controllerCb.c(i2, sessionPositionInfo, this.f17664b, this.f17665c, controllerInfo.f17421c);
    }

    public /* synthetic */ g1(SessionPositionInfo sessionPositionInfo, boolean z, boolean z2, MediaSession.ControllerInfo controllerInfo) {
        this.d = sessionPositionInfo;
        this.f17664b = z;
        this.f17665c = z2;
        this.f17666e = controllerInfo;
    }
}
