package defpackage;

import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class vb implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80543b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AudioRendererEventListener.EventDispatcher f80544c;
    public final /* synthetic */ DecoderCounters d;

    public /* synthetic */ vb(AudioRendererEventListener.EventDispatcher eventDispatcher, DecoderCounters decoderCounters, int i2) {
        this.f80543b = i2;
        this.f80544c = eventDispatcher;
        this.d = decoderCounters;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f80543b) {
            case 0:
                AudioRendererEventListener.EventDispatcher eventDispatcher = this.f80544c;
                DecoderCounters decoderCounters = this.d;
                AudioRendererEventListener audioRendererEventListener = eventDispatcher.f14926b;
                String str = Util.f14242a;
                audioRendererEventListener.j(decoderCounters);
                break;
            default:
                AudioRendererEventListener.EventDispatcher eventDispatcher2 = this.f80544c;
                DecoderCounters decoderCounters2 = this.d;
                synchronized (decoderCounters2) {
                }
                AudioRendererEventListener audioRendererEventListener2 = eventDispatcher2.f14926b;
                String str2 = Util.f14242a;
                audioRendererEventListener2.t(decoderCounters2);
                break;
        }
    }
}
