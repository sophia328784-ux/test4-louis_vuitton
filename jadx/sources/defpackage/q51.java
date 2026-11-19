package defpackage;

import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.video.VideoRendererEventListener;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class q51 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79018b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ VideoRendererEventListener.EventDispatcher f79019c;
    public final /* synthetic */ DecoderCounters d;

    public /* synthetic */ q51(VideoRendererEventListener.EventDispatcher eventDispatcher, DecoderCounters decoderCounters, int i2) {
        this.f79018b = i2;
        this.f79019c = eventDispatcher;
        this.d = decoderCounters;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f79018b) {
            case 0:
                VideoRendererEventListener.EventDispatcher eventDispatcher = this.f79019c;
                DecoderCounters decoderCounters = this.d;
                VideoRendererEventListener videoRendererEventListener = eventDispatcher.f15989b;
                String str = Util.f14242a;
                videoRendererEventListener.k(decoderCounters);
                break;
            default:
                VideoRendererEventListener.EventDispatcher eventDispatcher2 = this.f79019c;
                DecoderCounters decoderCounters2 = this.d;
                synchronized (decoderCounters2) {
                }
                VideoRendererEventListener videoRendererEventListener2 = eventDispatcher2.f15989b;
                String str2 = Util.f14242a;
                videoRendererEventListener2.a(decoderCounters2);
                break;
        }
    }
}
