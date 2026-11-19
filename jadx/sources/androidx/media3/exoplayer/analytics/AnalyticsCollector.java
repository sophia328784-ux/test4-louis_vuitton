package androidx.media3.exoplayer.analytics;

import android.os.Looper;
import androidx.media3.common.Format;
import androidx.media3.common.Player;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.audio.AudioSink;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface AnalyticsCollector extends Player.Listener, MediaSourceEventListener, BandwidthMeter.EventListener, DrmSessionEventListener {
    void D(Format format, DecoderReuseEvaluation decoderReuseEvaluation);

    void E(Exception exc);

    void F(long j2, long j3, String str);

    void G(int i2, long j2, long j3);

    void J(List list, MediaSource.MediaPeriodId mediaPeriodId);

    void M();

    void U(int i2);

    void a(DecoderCounters decoderCounters);

    void c(String str);

    void c0(MediaMetricsListener mediaMetricsListener);

    void d(AudioSink.AudioTrackConfig audioTrackConfig);

    void g(String str);

    void i(AudioSink.AudioTrackConfig audioTrackConfig);

    void j(DecoderCounters decoderCounters);

    void k(DecoderCounters decoderCounters);

    void m(Exception exc);

    void n0(int i2, int i3, boolean z);

    void o(long j2);

    void p(Format format, DecoderReuseEvaluation decoderReuseEvaluation);

    void q(Exception exc);

    void r(long j2, Object obj);

    void release();

    void t(DecoderCounters decoderCounters);

    void u(long j2, long j3, String str);

    void w(int i2, long j2);

    void w0(Player player, Looper looper);

    void y(int i2, long j2);
}
