package androidx.media3.exoplayer.audio;

import android.media.AudioTimestamp;
import android.media.AudioTrack;
import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
final class AudioTimestampPoller {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AudioTimestampWrapper f14932a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f14933b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AudioTrackPositionTracker.Listener f14934c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f14935e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f14936f;
    public long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f14937h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f14938i;

    public static final class AudioTimestampWrapper {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AudioTrack f14939a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AudioTimestamp f14940b = new AudioTimestamp();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f14941c;
        public long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f14942e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f14943f;
        public long g;

        public AudioTimestampWrapper(AudioTrack audioTrack) {
            this.f14939a = audioTrack;
        }
    }

    public AudioTimestampPoller(AudioTrack audioTrack, AudioTrackPositionTracker.Listener listener) {
        this.f14932a = new AudioTimestampWrapper(audioTrack);
        this.f14933b = audioTrack.getSampleRate();
        this.f14934c = listener;
        a(0);
    }

    public final void a(int i2) {
        this.d = i2;
        if (i2 == 0) {
            this.g = 0L;
            this.f14937h = -1L;
            this.f14938i = -9223372036854775807L;
            this.f14935e = System.nanoTime() / 1000;
            this.f14936f = 10000L;
            return;
        }
        if (i2 == 1) {
            this.f14936f = 10000L;
            return;
        }
        if (i2 == 2 || i2 == 3) {
            this.f14936f = 10000000L;
        } else if (i2 == 4) {
            this.f14936f = 500000L;
        } else {
            r81.b();
        }
    }
}
