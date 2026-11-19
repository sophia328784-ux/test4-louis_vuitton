package androidx.media3.exoplayer.audio;

import android.media.AudioDeviceInfo;
import android.media.AudioRouting;
import android.media.AudioTimestamp;
import android.media.AudioTrack;
import android.media.PlaybackParams;
import android.media.metrics.LogSessionId;
import android.os.Build;
import android.os.Handler;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.util.BackgroundExecutor;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.audio.AudioOutput;
import defpackage.b5;
import defpackage.dc;
import defpackage.l51;
import defpackage.pq0;
import defpackage.r81;
import defpackage.v7;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class AudioTrackAudioOutput implements AudioOutput {
    public static final Object q = new Object();
    public static ScheduledExecutorService r;
    public static int s;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AudioTrack f14944a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AudioOutputProvider.OutputConfig f14945b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f14946c;
    public final CapabilityChangeListener d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public OnRoutingChangedListenerApi24 f14947e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AudioTrackPositionTracker f14948f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f14949h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final StreamEventCallbackV29 f14950i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ListenerSet f14951j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f14952k;
    public long l;
    public long m;
    public long n;
    public int o;
    public int p;

    public interface CapabilityChangeListener {
        void a();

        void b(AudioDeviceInfo audioDeviceInfo);
    }

    public static final class InvalidAudioTrackTimestampException extends RuntimeException {
    }

    public static final class OnRoutingChangedListenerApi24 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AudioTrack f14953a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final CapabilityChangeListener f14954b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Handler f14955c;
        public a d;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [android.media.AudioRouting$OnRoutingChangedListener, androidx.media3.exoplayer.audio.a] */
        public OnRoutingChangedListenerApi24(AudioTrack audioTrack, CapabilityChangeListener capabilityChangeListener) {
            this.f14953a = audioTrack;
            this.f14954b = capabilityChangeListener;
            Handler handlerR = Util.r(null);
            this.f14955c = handlerR;
            ?? r0 = new AudioRouting.OnRoutingChangedListener() { // from class: androidx.media3.exoplayer.audio.a
                @Override // android.media.AudioRouting.OnRoutingChangedListener
                public final void onRoutingChanged(AudioRouting audioRouting) {
                    AudioTrackAudioOutput.OnRoutingChangedListenerApi24 onRoutingChangedListenerApi24 = this.f15033a;
                    if (onRoutingChangedListenerApi24.d == null) {
                        return;
                    }
                    BackgroundExecutor.a().execute(new b(onRoutingChangedListenerApi24, audioRouting, 0));
                }
            };
            this.d = r0;
            audioTrack.addOnRoutingChangedListener((AudioRouting.OnRoutingChangedListener) r0, handlerR);
        }
    }

    public final class PositionTrackerListener implements AudioTrackPositionTracker.Listener {
        public PositionTrackerListener() {
        }

        @Override // androidx.media3.exoplayer.audio.AudioTrackPositionTracker.Listener
        public final void a(final long j2) {
            ListenerSet listenerSet = AudioTrackAudioOutput.this.f14951j;
            listenerSet.getClass();
            if (Thread.currentThread() == listenerSet.f14160b) {
                listenerSet.f(-1, new ListenerSet.Event() { // from class: cc
                    @Override // androidx.media3.common.util.ListenerSet.Event
                    public final void invoke(Object obj) {
                        ((AudioOutput.Listener) obj).a(j2);
                    }
                });
            }
        }

        @Override // androidx.media3.exoplayer.audio.AudioTrackPositionTracker.Listener
        public final void b(long j2) {
            Log.g("Ignoring impossibly large audio latency: " + j2);
        }

        @Override // androidx.media3.exoplayer.audio.AudioTrackPositionTracker.Listener
        public final void c(long j2, long j3, long j4, long j5) {
            StringBuilder sbQ = pq0.q(j2, "Spurious audio timestamp (frame position mismatch): ", ", ");
            sbQ.append(j3);
            sbQ.append(", ");
            sbQ.append(j4);
            sbQ.append(", ");
            sbQ.append(j5);
            sbQ.append(", ");
            sbQ.append(AudioTrackAudioOutput.this.b());
            Log.g(sbQ.toString());
        }

        @Override // androidx.media3.exoplayer.audio.AudioTrackPositionTracker.Listener
        public final void d(long j2, long j3, long j4, long j5) {
            StringBuilder sbQ = pq0.q(j2, "Spurious audio timestamp (system clock mismatch): ", ", ");
            sbQ.append(j3);
            sbQ.append(", ");
            sbQ.append(j4);
            sbQ.append(", ");
            sbQ.append(j5);
            sbQ.append(", ");
            sbQ.append(AudioTrackAudioOutput.this.b());
            Log.g(sbQ.toString());
        }
    }

    public final class StreamEventCallbackV29 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Handler f14957a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AudioTrack.StreamEventCallback f14958b;

        public StreamEventCallbackV29() {
            Handler handlerR = Util.r(null);
            this.f14957a = handlerR;
            AudioTrack.StreamEventCallback streamEventCallback = new AudioTrack.StreamEventCallback() { // from class: androidx.media3.exoplayer.audio.AudioTrackAudioOutput.StreamEventCallbackV29.1
                @Override // android.media.AudioTrack.StreamEventCallback
                public final void onDataRequest(AudioTrack audioTrack, int i2) {
                    AudioTrackAudioOutput.this.f14951j.f(-1, new v7(21));
                }

                @Override // android.media.AudioTrack.StreamEventCallback
                public final void onPresentationEnded(AudioTrack audioTrack) {
                    AudioTrackAudioOutput.this.f14951j.f(-1, new v7(22));
                }

                @Override // android.media.AudioTrack.StreamEventCallback
                public final void onTearDown(AudioTrack audioTrack) {
                    AudioTrackAudioOutput.this.f14951j.f(-1, new v7(21));
                }
            };
            this.f14958b = streamEventCallback;
            AudioTrackAudioOutput.this.f14944a.registerStreamEventCallback(new dc(handlerR, 0), streamEventCallback);
        }
    }

    public AudioTrackAudioOutput(AudioTrack audioTrack, AudioOutputProvider.OutputConfig outputConfig, CapabilityChangeListener capabilityChangeListener, float f2, Clock clock) {
        this.f14944a = audioTrack;
        this.f14945b = outputConfig;
        this.f14946c = f2;
        this.d = capabilityChangeListener;
        this.f14951j = new ListenerSet(Thread.currentThread());
        boolean zK = Util.K(outputConfig.f14907a);
        this.g = zK;
        if (zK) {
            this.f14949h = Util.u(outputConfig.f14907a) * Integer.bitCount(outputConfig.f14909c);
        } else {
            this.f14949h = -1;
        }
        this.f14948f = new AudioTrackPositionTracker(new PositionTrackerListener(), clock, audioTrack, outputConfig.f14907a, this.f14949h, outputConfig.f14911f);
        if (capabilityChangeListener != null) {
            this.f14947e = new OnRoutingChangedListenerApi24(audioTrack, capabilityChangeListener);
        }
        this.f14950i = audioTrack.isOffloadedPlayback() ? new StreamEventCallbackV29() : null;
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public final PlaybackParameters a() {
        PlaybackParams playbackParams = this.f14944a.getPlaybackParams();
        return new PlaybackParameters(playbackParams.getSpeed(), playbackParams.getPitch());
    }

    public final long b() {
        if (!this.g) {
            return this.m;
        }
        long j2 = this.l;
        long j3 = this.f14949h;
        String str = Util.f14242a;
        return ((j2 + j3) - 1) / j3;
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public final void c() {
        AudioTrackPositionTracker audioTrackPositionTracker = this.f14948f;
        if (audioTrackPositionTracker.u != -9223372036854775807L) {
            audioTrackPositionTracker.u = Util.R(audioTrackPositionTracker.f14976b.b());
        }
        audioTrackPositionTracker.f14982j = Util.X(audioTrackPositionTracker.f14978e, audioTrackPositionTracker.a());
        audioTrackPositionTracker.f14980h.a(0);
        boolean z = this.f14952k;
        AudioTrack audioTrack = this.f14944a;
        if (!z || audioTrack.isOffloadedPlayback()) {
            audioTrack.play();
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public final void d(PlaybackParameters playbackParameters) {
        AudioTrack audioTrack = this.f14944a;
        try {
            audioTrack.setPlaybackParams(new PlaybackParams().allowDefaults().setSpeed(Util.i(playbackParameters.f13919a, 0.1f, this.f14946c)).setPitch(Util.i(playbackParameters.f13920b, 0.1f, 8.0f)).setAudioFallbackMode(2));
        } catch (IllegalArgumentException e2) {
            Log.h("Failed to set playback params", e2);
        }
        float speed = audioTrack.getPlaybackParams().getSpeed();
        AudioTrackPositionTracker audioTrackPositionTracker = this.f14948f;
        audioTrackPositionTracker.f14981i = speed;
        audioTrackPositionTracker.f14980h.a(0);
        audioTrackPositionTracker.f14983k = 0L;
        audioTrackPositionTracker.t = 0;
        audioTrackPositionTracker.s = 0;
        audioTrackPositionTracker.l = 0L;
        audioTrackPositionTracker.y = -9223372036854775807L;
        audioTrackPositionTracker.z = -9223372036854775807L;
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public final void f(int i2, int i3) {
        this.f14944a.setOffloadDelayPadding(i2, i3);
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public final void g(float f2) {
        this.f14944a.setVolume(f2);
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public final int getAudioSessionId() {
        return this.f14944a.getAudioSessionId();
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public final void h(PlayerId playerId) {
        if (Build.VERSION.SDK_INT < 31) {
            return;
        }
        LogSessionId logSessionIdA = playerId.a();
        if (logSessionIdA.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
            return;
        }
        this.f14944a.setLogSessionId(logSessionIdA);
    }

    /* JADX WARN: Code duplicated, block: B:103:0x022d  */
    /* JADX WARN: Code duplicated, block: B:104:0x022f  */
    /* JADX WARN: Code duplicated, block: B:106:0x0232  */
    /* JADX WARN: Code duplicated, block: B:108:0x024d  */
    /* JADX WARN: Code duplicated, block: B:111:0x0259  */
    /* JADX WARN: Code duplicated, block: B:112:0x025b  */
    /* JADX WARN: Code duplicated, block: B:117:0x0263  */
    /* JADX WARN: Code duplicated, block: B:120:0x0271  */
    /* JADX WARN: Code duplicated, block: B:122:0x028a  */
    /* JADX WARN: Code duplicated, block: B:126:0x02a4  */
    /* JADX WARN: Code duplicated, block: B:128:0x02a7  */
    /* JADX WARN: Code duplicated, block: B:85:0x01d6  */
    /* JADX WARN: Code duplicated, block: B:87:0x01e1  */
    /* JADX WARN: Code duplicated, block: B:88:0x01e6  */
    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public final long i() {
        long j2;
        long j3;
        boolean z;
        long jC;
        boolean z2;
        long jB;
        long jK;
        int playState;
        long j4;
        long j5;
        long jA;
        long j6;
        int i2;
        float f2;
        Method method;
        AudioTrackPositionTracker audioTrackPositionTracker = this.f14948f;
        Clock clock = audioTrackPositionTracker.f14976b;
        AudioTimestampPoller audioTimestampPoller = audioTrackPositionTracker.f14980h;
        AudioTrack audioTrack = audioTrackPositionTracker.d;
        audioTrack.getClass();
        if (audioTrack.getPlayState() == 3) {
            long[] jArr = audioTrackPositionTracker.f14977c;
            long jC2 = clock.c() / 1000;
            j2 = 1000;
            if (jC2 - audioTrackPositionTracker.l >= 30000) {
                long jX = Util.X(audioTrackPositionTracker.f14978e, audioTrackPositionTracker.a());
                if (jX != 0) {
                    jArr[audioTrackPositionTracker.s] = Util.D(audioTrackPositionTracker.f14981i, jX) - jC2;
                    audioTrackPositionTracker.s = (audioTrackPositionTracker.s + 1) % 10;
                    int i3 = audioTrackPositionTracker.t;
                    if (i3 < 10) {
                        audioTrackPositionTracker.t = i3 + 1;
                    }
                    audioTrackPositionTracker.l = jC2;
                    audioTrackPositionTracker.f14983k = 0L;
                    int i4 = 0;
                    while (true) {
                        int i5 = audioTrackPositionTracker.t;
                        if (i4 >= i5) {
                            break;
                        }
                        int i6 = i4;
                        audioTrackPositionTracker.f14983k = (jArr[i6] / ((long) i5)) + audioTrackPositionTracker.f14983k;
                        i4 = i6 + 1;
                    }
                }
                z = false;
                jC = clock.c() / j2;
                if (audioTimestampPoller.d == 2) {
                    z2 = true;
                } else {
                    z2 = z;
                }
                if (z2) {
                    float f3 = audioTrackPositionTracker.f14981i;
                    AudioTimestampPoller.AudioTimestampWrapper audioTimestampWrapper = audioTimestampPoller.f14932a;
                    jB = Util.A(f3, jC - (audioTimestampWrapper.f14940b.nanoTime / j2)) + Util.X(audioTimestampPoller.f14933b, audioTimestampWrapper.f14942e);
                } else {
                    jB = audioTrackPositionTracker.b(jC);
                }
                jK = jB;
                playState = audioTrack.getPlayState();
                if (playState == 3) {
                    if (z2 || ((i2 = audioTimestampPoller.d) != 0 && i2 != 1)) {
                        audioTrackPositionTracker.d(jK);
                    }
                    j4 = audioTrackPositionTracker.z;
                    if (j4 != -9223372036854775807L) {
                        j5 = jK - audioTrackPositionTracker.y;
                        jA = Util.A(audioTrackPositionTracker.f14981i, jC - j4);
                        j6 = audioTrackPositionTracker.y + jA;
                        long jAbs = Math.abs(j6 - jK);
                        if (j5 != j3 && jAbs < 1000000) {
                            long j7 = (jA * 10) / 100;
                            jK = Util.k(jK, j6 - j7, j6 + j7);
                        }
                    }
                    audioTrackPositionTracker.z = jC;
                    audioTrackPositionTracker.y = jK;
                } else if (playState == 1) {
                    audioTrackPositionTracker.d(jK);
                }
                return jK;
            }
            long j8 = audioTrackPositionTracker.n;
            if (audioTrackPositionTracker.g && (method = audioTrackPositionTracker.m) != null && jC2 - audioTrackPositionTracker.o >= 500000) {
                try {
                    Integer num = (Integer) method.invoke(audioTrack, null);
                    String str = Util.f14242a;
                    long jIntValue = (((long) num.intValue()) * 1000) - audioTrackPositionTracker.f14979f;
                    audioTrackPositionTracker.n = jIntValue;
                    long jMax = Math.max(jIntValue, 0L);
                    audioTrackPositionTracker.n = jMax;
                    if (jMax > 10000000) {
                        audioTrackPositionTracker.f14975a.b(jMax);
                        audioTrackPositionTracker.n = 0L;
                    }
                } catch (Exception unused) {
                    audioTrackPositionTracker.m = null;
                }
                audioTrackPositionTracker.o = jC2;
            }
            boolean z3 = j8 != audioTrackPositionTracker.n;
            float f4 = audioTrackPositionTracker.f14981i;
            long jB2 = audioTrackPositionTracker.b(jC2);
            AudioTimestampPoller.AudioTimestampWrapper audioTimestampWrapper2 = audioTimestampPoller.f14932a;
            AudioTimestampPoller.AudioTimestampWrapper audioTimestampWrapper3 = audioTimestampPoller.f14932a;
            int i7 = audioTimestampPoller.f14933b;
            if (!z3) {
                j3 = 0;
                if (jC2 - audioTimestampPoller.g < audioTimestampPoller.f14936f) {
                    z = false;
                }
                jC = clock.c() / j2;
                if (audioTimestampPoller.d == 2) {
                    z2 = true;
                } else {
                    z2 = z;
                }
                if (z2) {
                    float f5 = audioTrackPositionTracker.f14981i;
                    AudioTimestampPoller.AudioTimestampWrapper audioTimestampWrapper4 = audioTimestampPoller.f14932a;
                    jB = Util.A(f5, jC - (audioTimestampWrapper4.f14940b.nanoTime / j2)) + Util.X(audioTimestampPoller.f14933b, audioTimestampWrapper4.f14942e);
                } else {
                    jB = audioTrackPositionTracker.b(jC);
                }
                jK = jB;
                playState = audioTrack.getPlayState();
                if (playState == 3) {
                    if (z2) {
                        audioTrackPositionTracker.d(jK);
                    } else {
                        audioTrackPositionTracker.d(jK);
                    }
                    j4 = audioTrackPositionTracker.z;
                    if (j4 != -9223372036854775807L) {
                        j5 = jK - audioTrackPositionTracker.y;
                        jA = Util.A(audioTrackPositionTracker.f14981i, jC - j4);
                        j6 = audioTrackPositionTracker.y + jA;
                        long jAbs2 = Math.abs(j6 - jK);
                        if (j5 != j3) {
                            long j9 = (jA * 10) / 100;
                            jK = Util.k(jK, j6 - j9, j6 + j9);
                        }
                    }
                    audioTrackPositionTracker.z = jC;
                    audioTrackPositionTracker.y = jK;
                } else if (playState == 1) {
                    audioTrackPositionTracker.d(jK);
                }
                return jK;
            }
            j3 = 0;
            audioTimestampPoller.g = jC2;
            AudioTrack audioTrack2 = audioTimestampWrapper2.f14939a;
            AudioTimestamp audioTimestamp = audioTimestampWrapper2.f14940b;
            boolean timestamp = audioTrack2.getTimestamp(audioTimestamp);
            if (timestamp) {
                long j10 = audioTimestamp.framePosition;
                long j11 = audioTimestampWrapper2.d;
                if (j11 > j10) {
                    if (audioTimestampWrapper2.f14943f) {
                        audioTimestampWrapper2.g += j11;
                        audioTimestampWrapper2.f14943f = false;
                    } else {
                        audioTimestampWrapper2.f14941c++;
                    }
                }
                audioTimestampWrapper2.d = j10;
                audioTimestampWrapper2.f14942e = j10 + audioTimestampWrapper2.g + (audioTimestampWrapper2.f14941c << 32);
            }
            if (timestamp) {
                long j12 = audioTimestamp.nanoTime / 1000;
                long jA2 = Util.A(f2, jC2 - (audioTimestampWrapper3.f14940b.nanoTime / 1000)) + Util.X(i7, audioTimestampWrapper3.f14942e);
                if (Math.abs(j12 - jC2) > 5000000) {
                    f2 = f4;
                    audioTimestampPoller.f14934c.d(audioTimestampWrapper2.f14942e, j12, jC2, jB2);
                    audioTimestampPoller.a(4);
                } else if (Math.abs(jA2 - jB2) > 5000000) {
                    f2 = f4;
                    audioTimestampPoller.f14934c.c(audioTimestampWrapper2.f14942e, j12, jC2, jB2);
                    audioTimestampPoller.a(4);
                } else if (audioTimestampPoller.d == 4) {
                    f2 = f4;
                    audioTimestampPoller.a(0);
                }
            } else {
                f2 = f4;
            }
            f2 = f4;
            int i8 = audioTimestampPoller.d;
            if (i8 == 0) {
                z = false;
                if (timestamp) {
                    long j13 = audioTimestamp.nanoTime;
                    if (j13 / 1000 >= audioTimestampPoller.f14935e) {
                        audioTimestampPoller.f14937h = audioTimestampWrapper2.f14942e;
                        audioTimestampPoller.f14938i = j13 / 1000;
                        audioTimestampPoller.a(1);
                    }
                } else if (jC2 - audioTimestampPoller.f14935e > 500000) {
                    audioTimestampPoller.a(3);
                }
            } else if (i8 != 1) {
                if (i8 != 2) {
                    if (i8 != 3) {
                        if (i8 != 4) {
                            r81.b();
                            return j3;
                        }
                    } else if (timestamp) {
                        z = false;
                        audioTimestampPoller.a(0);
                    }
                } else if (!timestamp) {
                    audioTimestampPoller.a(0);
                }
                z = false;
            } else if (timestamp) {
                long j14 = audioTimestampWrapper2.f14942e;
                long j15 = audioTimestampPoller.f14937h;
                if (j14 > j15) {
                    if (Math.abs((Util.A(f2, jC2 - (audioTimestampWrapper3.f14940b.nanoTime / 1000)) + Util.X(i7, audioTimestampWrapper3.f14942e)) - (Util.A(f2, jC2 - audioTimestampPoller.f14938i) + Util.X(i7, j15))) < 1000) {
                        audioTimestampPoller.a(2);
                    } else if (jC2 - audioTimestampPoller.f14935e > 2000000) {
                        audioTimestampPoller.a(3);
                    } else {
                        audioTimestampPoller.f14937h = audioTimestampWrapper2.f14942e;
                        audioTimestampPoller.f14938i = audioTimestamp.nanoTime / 1000;
                    }
                } else if (jC2 - audioTimestampPoller.f14935e > 2000000) {
                    audioTimestampPoller.a(3);
                } else {
                    audioTimestampPoller.f14937h = audioTimestampWrapper2.f14942e;
                    audioTimestampPoller.f14938i = audioTimestamp.nanoTime / 1000;
                }
                z = false;
            } else {
                z = false;
                audioTimestampPoller.a(0);
            }
            jC = clock.c() / j2;
            if (audioTimestampPoller.d == 2) {
                z2 = true;
            } else {
                z2 = z;
            }
            if (z2) {
                float f6 = audioTrackPositionTracker.f14981i;
                AudioTimestampPoller.AudioTimestampWrapper audioTimestampWrapper5 = audioTimestampPoller.f14932a;
                jB = Util.A(f6, jC - (audioTimestampWrapper5.f14940b.nanoTime / j2)) + Util.X(audioTimestampPoller.f14933b, audioTimestampWrapper5.f14942e);
            } else {
                jB = audioTrackPositionTracker.b(jC);
            }
            jK = jB;
            playState = audioTrack.getPlayState();
            if (playState == 3) {
                if (z2) {
                    audioTrackPositionTracker.d(jK);
                } else {
                    audioTrackPositionTracker.d(jK);
                }
                j4 = audioTrackPositionTracker.z;
                if (j4 != -9223372036854775807L) {
                    j5 = jK - audioTrackPositionTracker.y;
                    jA = Util.A(audioTrackPositionTracker.f14981i, jC - j4);
                    j6 = audioTrackPositionTracker.y + jA;
                    long jAbs3 = Math.abs(j6 - jK);
                    if (j5 != j3) {
                        long j16 = (jA * 10) / 100;
                        jK = Util.k(jK, j6 - j16, j6 + j16);
                    }
                }
                audioTrackPositionTracker.z = jC;
                audioTrackPositionTracker.y = jK;
            } else if (playState == 1) {
                audioTrackPositionTracker.d(jK);
            }
            return jK;
        }
        j2 = 1000;
        j3 = 0;
        z = false;
        jC = clock.c() / j2;
        if (audioTimestampPoller.d == 2) {
            z2 = true;
        } else {
            z2 = z;
        }
        if (z2) {
            float f7 = audioTrackPositionTracker.f14981i;
            AudioTimestampPoller.AudioTimestampWrapper audioTimestampWrapper6 = audioTimestampPoller.f14932a;
            jB = Util.A(f7, jC - (audioTimestampWrapper6.f14940b.nanoTime / j2)) + Util.X(audioTimestampPoller.f14933b, audioTimestampWrapper6.f14942e);
        } else {
            jB = audioTrackPositionTracker.b(jC);
        }
        jK = jB;
        playState = audioTrack.getPlayState();
        if (playState == 3) {
            if (z2) {
                audioTrackPositionTracker.d(jK);
            } else {
                audioTrackPositionTracker.d(jK);
            }
            j4 = audioTrackPositionTracker.z;
            if (j4 != -9223372036854775807L) {
                j5 = jK - audioTrackPositionTracker.y;
                jA = Util.A(audioTrackPositionTracker.f14981i, jC - j4);
                j6 = audioTrackPositionTracker.y + jA;
                long jAbs4 = Math.abs(j6 - jK);
                if (j5 != j3) {
                    long j17 = (jA * 10) / 100;
                    jK = Util.k(jK, j6 - j17, j6 + j17);
                }
            }
            audioTrackPositionTracker.z = jC;
            audioTrackPositionTracker.y = jK;
        } else if (playState == 1) {
            audioTrackPositionTracker.d(jK);
        }
        return jK;
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public final boolean j() {
        long jB = b();
        AudioTrackPositionTracker audioTrackPositionTracker = this.f14948f;
        return audioTrackPositionTracker.v != -9223372036854775807L && jB > 0 && audioTrackPositionTracker.f14976b.b() - audioTrackPositionTracker.v >= 200;
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public final int k() {
        return this.f14944a.getSampleRate();
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public final void l(int i2) {
        this.f14944a.attachAuxEffect(i2);
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public final void m() {
        AudioTrack audioTrack = this.f14944a;
        if (audioTrack.getPlayState() != 3) {
            return;
        }
        audioTrack.setOffloadEndOfStream();
        AudioTrackPositionTracker audioTrackPositionTracker = this.f14948f;
        audioTrackPositionTracker.A = true;
        audioTrackPositionTracker.f14980h.f14932a.f14943f = true;
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public final void n(float f2) {
        this.f14944a.setAuxEffectSendLevel(f2);
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public final boolean o() {
        return this.f14944a.isOffloadedPlayback();
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public final long p() {
        return this.f14944a.getBufferSizeInFrames();
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public final void pause() {
        AudioTrackPositionTracker audioTrackPositionTracker = this.f14948f;
        audioTrackPositionTracker.f14983k = 0L;
        audioTrackPositionTracker.t = 0;
        audioTrackPositionTracker.s = 0;
        audioTrackPositionTracker.l = 0L;
        audioTrackPositionTracker.y = -9223372036854775807L;
        audioTrackPositionTracker.z = -9223372036854775807L;
        if (audioTrackPositionTracker.u == -9223372036854775807L) {
            audioTrackPositionTracker.f14980h.a(0);
        }
        audioTrackPositionTracker.w = audioTrackPositionTracker.a();
        boolean z = this.f14952k;
        AudioTrack audioTrack = this.f14944a;
        if (!z || audioTrack.isOffloadedPlayback()) {
            audioTrack.pause();
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public final boolean q(int i2, long j2, ByteBuffer byteBuffer) throws AudioOutput.WriteException {
        int iWrite;
        boolean z;
        CapabilityChangeListener capabilityChangeListener;
        AudioOutputProvider.OutputConfig outputConfig = this.f14945b;
        boolean z2 = this.g;
        if (!z2 && this.o == 0) {
            this.o = DefaultAudioSink.I(outputConfig.f14907a, byteBuffer);
        }
        ListenerSet listenerSet = this.f14951j;
        listenerSet.getClass();
        Thread threadCurrentThread = Thread.currentThread();
        Thread thread = listenerSet.f14160b;
        AudioTrack audioTrack = this.f14944a;
        if (threadCurrentThread == thread) {
            b();
            int underrunCount = audioTrack.getUnderrunCount();
            boolean z3 = underrunCount > this.p;
            this.p = underrunCount;
            if (z3) {
                listenerSet.f(-1, new v7(19));
            }
        }
        int iRemaining = byteBuffer.remaining();
        if (outputConfig.d) {
            if (j2 == Long.MIN_VALUE) {
                j2 = this.n;
            } else {
                this.n = j2;
            }
            iWrite = this.f14944a.write(byteBuffer, byteBuffer.remaining(), 1, j2 * 1000);
        } else {
            iWrite = audioTrack.write(byteBuffer, byteBuffer.remaining(), 1);
        }
        if (iWrite < 0) {
            z = iWrite == -6 || iWrite == -32;
            if (z && (capabilityChangeListener = this.d) != null) {
                capabilityChangeListener.a();
            }
            throw new AudioOutput.WriteException(iWrite, z);
        }
        z = iWrite == iRemaining;
        if (z2) {
            this.l += (long) iWrite;
            return z;
        }
        if (z) {
            this.m = (((long) this.o) * ((long) i2)) + this.m;
        }
        return z;
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public final void release() {
        AudioTrack audioTrack = this.f14948f.d;
        audioTrack.getClass();
        int i2 = 3;
        if (audioTrack.getPlayState() == 3) {
            this.f14944a.pause();
        }
        if (this.f14944a.isOffloadedPlayback()) {
            StreamEventCallbackV29 streamEventCallbackV29 = this.f14950i;
            streamEventCallbackV29.getClass();
            AudioTrackAudioOutput.this.f14944a.unregisterStreamEventCallback(streamEventCallbackV29.f14958b);
            streamEventCallbackV29.f14957a.removeCallbacksAndMessages(null);
        }
        OnRoutingChangedListenerApi24 onRoutingChangedListenerApi24 = this.f14947e;
        if (onRoutingChangedListenerApi24 != null) {
            AudioTrack audioTrack2 = onRoutingChangedListenerApi24.f14953a;
            a aVar = onRoutingChangedListenerApi24.d;
            aVar.getClass();
            audioTrack2.removeOnRoutingChangedListener(aVar);
            onRoutingChangedListenerApi24.d = null;
            this.f14947e = null;
        }
        AudioTrack audioTrack3 = this.f14944a;
        ListenerSet listenerSet = this.f14951j;
        Handler handlerR = Util.r(null);
        synchronized (q) {
            try {
                if (r == null) {
                    r = Executors.newSingleThreadScheduledExecutor(new l51());
                }
                s++;
                r.schedule(new b5(audioTrack3, handlerR, listenerSet, i2), 20L, TimeUnit.MILLISECONDS);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public final void setPreferredDevice(AudioDeviceInfo audioDeviceInfo) {
        this.f14944a.setPreferredDevice(audioDeviceInfo);
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public final void stop() {
        if (this.f14952k) {
            return;
        }
        this.f14952k = true;
        long jB = b();
        AudioTrackPositionTracker audioTrackPositionTracker = this.f14948f;
        audioTrackPositionTracker.w = audioTrackPositionTracker.a();
        audioTrackPositionTracker.u = Util.R(audioTrackPositionTracker.f14976b.b());
        audioTrackPositionTracker.x = jB;
        this.f14944a.stop();
    }

    @Deprecated
    public AudioTrackAudioOutput(AudioTrack audioTrack, AudioOutputProvider.OutputConfig outputConfig, CapabilityChangeListener capabilityChangeListener, Clock clock) {
        this(audioTrack, outputConfig, capabilityChangeListener, 8.0f, clock);
    }
}
