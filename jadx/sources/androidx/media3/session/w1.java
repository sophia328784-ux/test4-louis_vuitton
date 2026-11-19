package androidx.media3.session;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class w1 implements MediaSessionStub.SessionTask {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17936b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ List f17937c;

    public /* synthetic */ w1(List list, int i2) {
        this.f17936b = i2;
        this.f17937c = list;
    }

    @Override // androidx.media3.session.MediaSessionStub.SessionTask
    public final Object c(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i2) {
        int i3 = this.f17936b;
        List list = this.f17937c;
        switch (i3) {
            case 0:
                int i4 = MediaSessionStub.p;
                break;
            default:
                int i5 = MediaSessionStub.p;
                break;
        }
        return mediaSessionImpl.m(controllerInfo, list);
    }
}
