package defpackage;

import androidx.camera.video.internal.audio.AudioStream;
import androidx.camera.video.internal.audio.BufferedAudioStream;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class sh implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79798b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BufferedAudioStream f79799c;

    public /* synthetic */ sh(BufferedAudioStream bufferedAudioStream, int i2) {
        this.f79798b = i2;
        this.f79799c = bufferedAudioStream;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f79798b;
        BufferedAudioStream bufferedAudioStream = this.f79799c;
        switch (i2) {
            case 0:
                bufferedAudioStream.f2928k.set(false);
                bufferedAudioStream.g.stop();
                synchronized (bufferedAudioStream.f2923e) {
                    bufferedAudioStream.f2924f = null;
                    bufferedAudioStream.f2922c.clear();
                    break;
                }
                return;
            case 1:
                try {
                    bufferedAudioStream.g.start();
                    if (bufferedAudioStream.f2928k.getAndSet(true)) {
                        return;
                    }
                    bufferedAudioStream.c();
                    return;
                } catch (AudioStream.AudioStreamException e2) {
                    x1.m(e2);
                    return;
                }
            case 2:
                bufferedAudioStream.c();
                return;
            default:
                bufferedAudioStream.f2928k.set(false);
                bufferedAudioStream.g.release();
                synchronized (bufferedAudioStream.f2923e) {
                    bufferedAudioStream.f2924f = null;
                    bufferedAudioStream.f2922c.clear();
                    break;
                }
                return;
        }
    }
}
