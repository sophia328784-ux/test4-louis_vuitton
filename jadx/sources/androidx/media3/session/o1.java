package androidx.media3.session;

import androidx.collection.ArraySet;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class o1 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17883b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f17884c;
    public final /* synthetic */ int d;

    public /* synthetic */ o1(Object obj, int i2, int i3) {
        this.f17883b = i3;
        this.f17884c = obj;
        this.d = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f17883b;
        int i3 = this.d;
        Object obj = this.f17884c;
        switch (i2) {
            case 0:
                PlayerWrapper playerWrapper = (PlayerWrapper) obj;
                if (playerWrapper.R0(25) || playerWrapper.R0(33)) {
                    if (!playerWrapper.R0(33)) {
                        playerWrapper.L0(i3);
                    } else {
                        playerWrapper.t0(i3, 1);
                    }
                }
                break;
            case 1:
                PlayerWrapper playerWrapper2 = (PlayerWrapper) obj;
                if (playerWrapper2.R0(26) || playerWrapper2.R0(34)) {
                    if (i3 == -100) {
                        if (!playerWrapper2.R0(34)) {
                            playerWrapper2.X(true);
                        } else {
                            playerWrapper2.G(1, true);
                        }
                    } else if (i3 == -1) {
                        if (!playerWrapper2.R0(34)) {
                            playerWrapper2.H();
                        } else {
                            playerWrapper2.T(1);
                        }
                    } else if (i3 == 1) {
                        if (!playerWrapper2.R0(34)) {
                            playerWrapper2.c0();
                        } else {
                            playerWrapper2.I(1);
                        }
                    } else if (i3 == 100) {
                        if (!playerWrapper2.R0(34)) {
                            playerWrapper2.X(false);
                        } else {
                            playerWrapper2.G(1, false);
                        }
                    } else if (i3 != 101) {
                        defpackage.a.u(i3, "onAdjustVolume: Ignoring unknown direction: ");
                    } else if (!playerWrapper2.R0(34)) {
                        playerWrapper2.X(!playerWrapper2.b1());
                    } else {
                        playerWrapper2.G(1, !playerWrapper2.b1());
                    }
                }
                break;
            default:
                MediaControllerImplBase mediaControllerImplBase = (MediaControllerImplBase) obj;
                ArraySet arraySet = mediaControllerImplBase.f17335k;
                arraySet.remove(Integer.valueOf(i3));
                mediaControllerImplBase.l.delete(i3);
                SessionToken sessionToken = mediaControllerImplBase.o;
                if (sessionToken != null && sessionToken.f17568a.d() < 5 && arraySet.isEmpty()) {
                    mediaControllerImplBase.m.postDelayed(new j(mediaControllerImplBase, 1), 500L);
                    break;
                }
                break;
        }
    }
}
