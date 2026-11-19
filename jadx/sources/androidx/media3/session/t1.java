package androidx.media3.session;

import androidx.media3.common.util.Consumer;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class t1 implements Consumer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17913b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f17914c;

    public /* synthetic */ t1(boolean z, int i2) {
        this.f17913b = i2;
        this.f17914c = z;
    }

    @Override // androidx.media3.common.util.Consumer
    public final void accept(Object obj) {
        int i2 = this.f17913b;
        boolean z = this.f17914c;
        PlayerWrapper playerWrapper = (PlayerWrapper) obj;
        switch (i2) {
            case 0:
                int i3 = MediaSessionStub.p;
                playerWrapper.P(z);
                break;
            case 1:
                int i4 = MediaSessionStub.p;
                playerWrapper.X(z);
                break;
            default:
                int i5 = MediaSessionStub.p;
                playerWrapper.j0(z);
                break;
        }
    }
}
