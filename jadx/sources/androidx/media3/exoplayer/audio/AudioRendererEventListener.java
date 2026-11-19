package androidx.media3.exoplayer.audio;

import android.os.Handler;
import androidx.media3.common.Format;
import androidx.media3.exoplayer.CodecParameters;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import defpackage.vb;

/* JADX INFO: loaded from: classes.dex */
public interface AudioRendererEventListener {

    public static final class EventDispatcher {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Handler f14925a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AudioRendererEventListener f14926b;

        public EventDispatcher(Handler handler, AudioRendererEventListener audioRendererEventListener) {
            if (audioRendererEventListener != null) {
                handler.getClass();
            } else {
                handler = null;
            }
            this.f14925a = handler;
            this.f14926b = audioRendererEventListener;
        }

        public final void a(DecoderCounters decoderCounters) {
            synchronized (decoderCounters) {
            }
            Handler handler = this.f14925a;
            if (handler != null) {
                handler.post(new vb(this, decoderCounters, 1));
            }
        }
    }

    default void E(Exception exc) {
    }

    default void G(int i2, long j2, long j3) {
    }

    default void d(AudioSink.AudioTrackConfig audioTrackConfig) {
    }

    default void f(int i2) {
    }

    default void g(String str) {
    }

    default void i(AudioSink.AudioTrackConfig audioTrackConfig) {
    }

    default void j(DecoderCounters decoderCounters) {
    }

    default void l(boolean z) {
    }

    default void m(Exception exc) {
    }

    default void o(long j2) {
    }

    default void p(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
    }

    default void t(DecoderCounters decoderCounters) {
    }

    default void u(long j2, long j3, String str) {
    }

    default void v(CodecParameters codecParameters) {
    }
}
