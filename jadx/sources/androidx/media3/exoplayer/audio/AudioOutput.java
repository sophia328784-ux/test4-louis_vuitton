package androidx.media3.exoplayer.audio;

import android.media.AudioDeviceInfo;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.exoplayer.analytics.PlayerId;
import defpackage.pq0;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public interface AudioOutput {

    /* JADX INFO: loaded from: classes3.dex */
    public interface Listener {
        void a(long j2);

        void b();

        void c();

        void d();

        void onReleased();
    }

    public static final class WriteException extends Exception {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f14887b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f14888c;

        public WriteException(int i2, boolean z) {
            super(pq0.k(i2, "AudioOutput write failed: "));
            this.f14888c = z;
            this.f14887b = i2;
        }
    }

    PlaybackParameters a();

    void c();

    void d(PlaybackParameters playbackParameters);

    void f(int i2, int i3);

    void g(float f2);

    int getAudioSessionId();

    default void h(PlayerId playerId) {
    }

    long i();

    boolean j();

    int k();

    void l(int i2);

    void m();

    void n(float f2);

    boolean o();

    long p();

    void pause();

    boolean q(int i2, long j2, ByteBuffer byteBuffer);

    void release();

    void setPreferredDevice(AudioDeviceInfo audioDeviceInfo);

    void stop();
}
