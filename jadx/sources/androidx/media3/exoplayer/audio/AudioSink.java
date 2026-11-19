package androidx.media3.exoplayer.audio;

import android.media.AudioDeviceInfo;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.AuxEffectInfo;
import androidx.media3.common.Format;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.util.Clock;
import androidx.media3.exoplayer.analytics.PlayerId;
import defpackage.fc;
import defpackage.pq0;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public interface AudioSink {

    public static final class AudioTrackConfig {
        public AudioTrackConfig(int i2, int i3, int i4, boolean z, boolean z2, int i5) {
        }
    }

    public interface Listener {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface OffloadMode {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface SinkFormatSupport {
    }

    public static final class UnexpectedDiscontinuityException extends Exception {
        /* JADX WARN: Illegal instructions before constructor call */
        public UnexpectedDiscontinuityException(long j2, long j3) {
            StringBuilder sbQ = pq0.q(j3, "Unexpected audio track timestamp discontinuity: expected ", ", got ");
            sbQ.append(j2);
            super(sbQ.toString());
        }
    }

    public static final class WriteException extends Exception {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f14930b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f14931c;
        public final Format d;

        public WriteException(int i2, Format format, boolean z) {
            super(pq0.k(i2, "AudioTrack write failed: "));
            this.f14931c = z;
            this.f14930b = i2;
            this.d = format;
        }
    }

    int A(Format format);

    void B(boolean z);

    void C(AuxEffectInfo auxEffectInfo);

    PlaybackParameters a();

    boolean b(Format format);

    void c();

    void d(PlaybackParameters playbackParameters);

    boolean e();

    default void f(int i2, int i3) {
    }

    void flush();

    void g(float f2);

    default void h(PlayerId playerId) {
    }

    default void i(Clock clock) {
    }

    void j(AudioAttributes audioAttributes);

    default AudioOffloadSupport k(Format format) {
        return AudioOffloadSupport.d;
    }

    boolean l();

    void m(int i2);

    long n();

    void o(Listener listener);

    default void p(int i2) {
    }

    void pause();

    void q();

    default void r(AudioOutputProvider audioOutputProvider) {
        throw new UnsupportedOperationException("AudioSink doesn't support setAudioOutputProvider");
    }

    default void release() {
    }

    void reset();

    default void s(int i2) {
    }

    default void setPreferredDevice(AudioDeviceInfo audioDeviceInfo) {
    }

    long t();

    void u();

    boolean v(int i2, long j2, ByteBuffer byteBuffer);

    void w(Format format, int[] iArr);

    void x();

    void y();

    default AudioCapabilities z() {
        return null;
    }

    public static final class ConfigurationException extends Exception {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Format f14927b;

        public ConfigurationException(Throwable th, Format format) {
            super(th);
            this.f14927b = format;
        }

        public ConfigurationException(String str, Format format) {
            super(str);
            this.f14927b = format;
        }
    }

    public static final class InitializationException extends Exception {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f14928b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f14929c;

        /* JADX WARN: Illegal instructions before constructor call */
        public InitializationException(int i2, int i3, int i4, int i5, int i6, Format format, boolean z, Exception exc) {
            StringBuilder sbP = fc.p(i2, i3, "AudioTrack init failed ", " Config(", ", ");
            fc.x(i4, i5, ", ", ", ", sbP);
            sbP.append(i6);
            sbP.append(") ");
            sbP.append(format);
            sbP.append(z ? " (recoverable)" : "");
            this(sbP.toString(), i2, format, z, exc);
        }

        public InitializationException(String str, int i2, Format format, boolean z, Throwable th) {
            super(str, th);
            this.f14928b = i2;
            this.f14929c = z;
        }
    }
}
