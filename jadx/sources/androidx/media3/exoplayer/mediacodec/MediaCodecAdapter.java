package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import androidx.media3.common.Format;
import androidx.media3.decoder.CryptoInfo;
import defpackage.aa0;
import java.nio.ByteBuffer;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public interface MediaCodecAdapter {

    public static final class Configuration {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MediaCodecInfo f15367a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MediaFormat f15368b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Format f15369c;
        public final Surface d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final MediaCrypto f15370e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final LoudnessCodecController f15371f;

        public Configuration(MediaCodecInfo mediaCodecInfo, MediaFormat mediaFormat, Format format, Surface surface, MediaCrypto mediaCrypto, LoudnessCodecController loudnessCodecController) {
            this.f15367a = mediaCodecInfo;
            this.f15368b = mediaFormat;
            this.f15369c = format;
            this.d = surface;
            this.f15370e = mediaCrypto;
            this.f15371f = loudnessCodecController;
        }
    }

    public interface Factory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int f15372a = 0;

        static {
            new DefaultMediaCodecAdapterFactory();
        }

        MediaCodecAdapter a(Configuration configuration);
    }

    public interface OnBufferAvailableListener {
    }

    public interface OnFrameRenderedListener {
        void a(long j2);
    }

    void a(int i2, CryptoInfo cryptoInfo, long j2, int i3);

    void b(Bundle bundle);

    void c(int i2, int i3, int i4, long j2);

    default boolean d(OnBufferAvailableListener onBufferAvailableListener) {
        return false;
    }

    void e(OnFrameRenderedListener onFrameRenderedListener, Handler handler);

    MediaFormat f();

    void flush();

    void g();

    void h(int i2);

    ByteBuffer i(int i2);

    void j(Surface surface);

    default void k(aa0 aa0Var) throws Throwable {
        aa0Var.run();
    }

    void l(int i2);

    void m(int i2, long j2);

    int n();

    int o(MediaCodec.BufferInfo bufferInfo);

    ByteBuffer p(int i2);

    void q(ArrayList arrayList);

    void r(ArrayList arrayList);

    void release();
}
