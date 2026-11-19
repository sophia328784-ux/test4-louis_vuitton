package androidx.media3.session;

import androidx.media3.common.Timeline;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class k1 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17689b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaSessionLegacyStub f17690c;
    public final /* synthetic */ PlayerWrapper d;

    public /* synthetic */ k1(MediaSessionLegacyStub mediaSessionLegacyStub, PlayerWrapper playerWrapper, int i2) {
        this.f17689b = i2;
        this.f17690c = mediaSessionLegacyStub;
        this.d = playerWrapper;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f17689b;
        PlayerWrapper playerWrapper = this.d;
        MediaSessionLegacyStub mediaSessionLegacyStub = this.f17690c;
        switch (i2) {
            case 0:
                mediaSessionLegacyStub.l.m(mediaSessionLegacyStub.C(playerWrapper));
                break;
            default:
                mediaSessionLegacyStub.l.m(mediaSessionLegacyStub.C(playerWrapper));
                mediaSessionLegacyStub.f17442h.t(playerWrapper.i0().a(17) ? playerWrapper.p() : Timeline.f13952a);
                break;
        }
    }
}
