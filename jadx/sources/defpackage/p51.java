package defpackage;

import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.video.VideoRendererEventListener;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class p51 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78761b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ VideoRendererEventListener.EventDispatcher f78762c;
    public final /* synthetic */ long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f78763e;

    public /* synthetic */ p51(VideoRendererEventListener.EventDispatcher eventDispatcher, int i2, long j2) {
        this.f78762c = eventDispatcher;
        this.f78763e = i2;
        this.d = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f78761b;
        int i3 = this.f78763e;
        long j2 = this.d;
        VideoRendererEventListener.EventDispatcher eventDispatcher = this.f78762c;
        switch (i2) {
            case 0:
                VideoRendererEventListener videoRendererEventListener = eventDispatcher.f15989b;
                String str = Util.f14242a;
                videoRendererEventListener.y(i3, j2);
                break;
            default:
                VideoRendererEventListener videoRendererEventListener2 = eventDispatcher.f15989b;
                String str2 = Util.f14242a;
                videoRendererEventListener2.w(i3, j2);
                break;
        }
    }

    public /* synthetic */ p51(VideoRendererEventListener.EventDispatcher eventDispatcher, long j2, int i2) {
        this.f78762c = eventDispatcher;
        this.d = j2;
        this.f78763e = i2;
    }
}
