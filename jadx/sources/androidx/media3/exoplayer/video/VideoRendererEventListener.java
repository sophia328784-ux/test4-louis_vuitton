package androidx.media3.exoplayer.video;

import android.os.Handler;
import androidx.media3.common.Format;
import androidx.media3.common.VideoSize;
import androidx.media3.exoplayer.CodecParameters;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import defpackage.w21;

/* JADX INFO: loaded from: classes.dex */
public interface VideoRendererEventListener {

    public static final class EventDispatcher {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Handler f15988a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final VideoRendererEventListener f15989b;

        public EventDispatcher(Handler handler, VideoRendererEventListener videoRendererEventListener) {
            if (videoRendererEventListener != null) {
                handler.getClass();
            } else {
                handler = null;
            }
            this.f15988a = handler;
            this.f15989b = videoRendererEventListener;
        }

        public final void a(VideoSize videoSize) {
            Handler handler = this.f15988a;
            if (handler != null) {
                handler.post(new w21(this, videoSize, 13));
            }
        }
    }

    default void D(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
    }

    default void F(long j2, long j3, String str) {
    }

    default void a(DecoderCounters decoderCounters) {
    }

    default void b(VideoSize videoSize) {
    }

    default void c(String str) {
    }

    default void h(CodecParameters codecParameters) {
    }

    default void k(DecoderCounters decoderCounters) {
    }

    default void q(Exception exc) {
    }

    default void r(long j2, Object obj) {
    }

    default void w(int i2, long j2) {
    }

    default void y(int i2, long j2) {
    }
}
