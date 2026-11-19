package androidx.media3.exoplayer;

import androidx.media3.common.Format;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Clock;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.SampleStream;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes.dex */
public interface Renderer extends PlayerMessage.Target {

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface MessageType {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface State {
    }

    public interface WakeupListener {
        void a();

        void b();
    }

    void A(RendererConfiguration rendererConfiguration, Format[] formatArr, SampleStream sampleStream, boolean z, boolean z2, long j2, long j3, MediaSource.MediaPeriodId mediaPeriodId);

    BaseRenderer B();

    default void D(float f2, float f3) {
    }

    SampleStream G();

    long H();

    MediaClock I();

    void c();

    boolean e();

    int f();

    void g(long j2, long j3);

    String getName();

    int getState();

    boolean isReady();

    boolean j();

    void l(int i2, PlayerId playerId, Clock clock);

    default void m() {
    }

    void n();

    void r(Format[] formatArr, SampleStream sampleStream, long j2, long j3, MediaSource.MediaPeriodId mediaPeriodId);

    default void release() {
    }

    void reset();

    void s();

    void start();

    void stop();

    boolean u();

    default boolean v(long j2) {
        return false;
    }

    default long x(long j2, long j3) {
        if (getState() == 1) {
            return (isReady() || e()) ? 1000000L : 10000L;
        }
        return 10000L;
    }

    void y(Timeline timeline);

    void z(long j2, boolean z);
}
