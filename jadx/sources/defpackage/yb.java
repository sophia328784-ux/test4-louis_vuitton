package defpackage;

import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.audio.AudioSink;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class yb implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81337b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AudioRendererEventListener.EventDispatcher f81338c;
    public final /* synthetic */ AudioSink.AudioTrackConfig d;

    public /* synthetic */ yb(AudioRendererEventListener.EventDispatcher eventDispatcher, AudioSink.AudioTrackConfig audioTrackConfig, int i2) {
        this.f81337b = i2;
        this.f81338c = eventDispatcher;
        this.d = audioTrackConfig;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f81337b;
        AudioSink.AudioTrackConfig audioTrackConfig = this.d;
        AudioRendererEventListener.EventDispatcher eventDispatcher = this.f81338c;
        switch (i2) {
            case 0:
                AudioRendererEventListener audioRendererEventListener = eventDispatcher.f14926b;
                String str = Util.f14242a;
                audioRendererEventListener.i(audioTrackConfig);
                break;
            default:
                AudioRendererEventListener audioRendererEventListener2 = eventDispatcher.f14926b;
                String str2 = Util.f14242a;
                audioRendererEventListener2.d(audioTrackConfig);
                break;
        }
    }
}
