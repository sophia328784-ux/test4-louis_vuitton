package androidx.media3.exoplayer.mediacodec;

import android.os.Bundle;
import androidx.media3.decoder.CryptoInfo;

/* JADX INFO: loaded from: classes.dex */
interface MediaCodecBufferEnqueuer {
    void a(int i2, CryptoInfo cryptoInfo, long j2, int i3);

    void b(Bundle bundle);

    void c(int i2, int i3, int i4, long j2);

    void d();

    void flush();

    void shutdown();

    void start();
}
