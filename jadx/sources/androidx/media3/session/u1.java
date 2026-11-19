package androidx.media3.session;

import androidx.media3.common.util.Consumer;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class u1 implements Consumer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17921b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ float f17922c;

    public /* synthetic */ u1(float f2, int i2) {
        this.f17921b = i2;
        this.f17922c = f2;
    }

    @Override // androidx.media3.common.util.Consumer
    public final void accept(Object obj) {
        int i2 = this.f17921b;
        float f2 = this.f17922c;
        PlayerWrapper playerWrapper = (PlayerWrapper) obj;
        switch (i2) {
            case 0:
                int i3 = MediaSessionStub.p;
                playerWrapper.t(f2);
                break;
            default:
                int i4 = MediaSessionStub.p;
                playerWrapper.g(f2);
                break;
        }
    }
}
