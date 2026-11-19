package androidx.media3.session;

import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class m1 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17868b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaSessionLegacyStub f17869c;

    public /* synthetic */ m1(MediaSessionLegacyStub mediaSessionLegacyStub, int i2) {
        this.f17868b = i2;
        this.f17869c = mediaSessionLegacyStub;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f17868b;
        MediaSessionLegacyStub mediaSessionLegacyStub = this.f17869c;
        switch (i2) {
            case 0:
                int i3 = MediaSessionLegacyStub.z;
                mediaSessionLegacyStub.J();
                break;
            default:
                Util.W(mediaSessionLegacyStub.f17441f.l, new m1(mediaSessionLegacyStub, 0));
                break;
        }
    }
}
