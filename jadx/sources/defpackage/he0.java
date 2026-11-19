package defpackage;

import com.sightcall.videoplayer.view.MyVideoProducerPlayerView;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class he0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69689b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MyVideoProducerPlayerView f69690c;

    public /* synthetic */ he0(MyVideoProducerPlayerView myVideoProducerPlayerView, int i2) {
        this.f69689b = i2;
        this.f69690c = myVideoProducerPlayerView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f69689b;
        MyVideoProducerPlayerView myVideoProducerPlayerView = this.f69690c;
        switch (i2) {
            case 0:
                myVideoProducerPlayerView.lambda$mediaPlayerInit$6();
                break;
            case 1:
                myVideoProducerPlayerView.lambda$startSeek$10();
                break;
            case 2:
                myVideoProducerPlayerView.lambda$stopRendering$1();
                break;
            case 3:
                myVideoProducerPlayerView.lambda$hideBar$5();
                break;
            case 4:
                myVideoProducerPlayerView.lambda$mediaPlayerPause$9();
                break;
            case 5:
                myVideoProducerPlayerView.lambda$mediaPlayerDestroy$7();
                break;
            case 6:
                myVideoProducerPlayerView.lambda$mediaPlayerResume$8();
                break;
            case 7:
                myVideoProducerPlayerView.lambda$startRendering$0();
                break;
            default:
                myVideoProducerPlayerView.showBar();
                break;
        }
    }
}
