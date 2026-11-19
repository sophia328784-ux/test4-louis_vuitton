package androidx.camera.video.internal.audio;

import android.content.Context;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioRecord;
import android.media.AudioRecordingConfiguration;
import android.media.AudioTimestamp;
import android.os.Build;
import androidx.camera.core.Logger;
import androidx.camera.video.internal.compat.Api31Impl;
import androidx.camera.video.internal.compat.quirk.AudioTimestampFramePositionIncorrectQuirk;
import androidx.camera.video.internal.compat.quirk.DeviceQuirks;
import androidx.core.util.Preconditions;
import defpackage.ac;
import defpackage.lc0;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public class AudioStreamImpl implements AudioStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public AudioRecord f2900a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AudioSettings f2901b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f2904f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public AudioStream.AudioStreamCallback f2905h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Executor f2906i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f2907j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public AudioManager.AudioRecordingCallback f2908k;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f2902c = new AtomicBoolean(false);
    public final AtomicBoolean d = new AtomicBoolean(false);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AtomicReference f2903e = new AtomicReference(null);
    public boolean l = false;

    public class AudioRecordingApi29Callback extends AudioManager.AudioRecordingCallback {
        public AudioRecordingApi29Callback() {
        }

        @Override // android.media.AudioManager.AudioRecordingCallback
        public final void onRecordingConfigChanged(List list) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AudioRecordingConfiguration audioRecordingConfiguration = (AudioRecordingConfiguration) it.next();
                int clientAudioSessionId = audioRecordingConfiguration.getClientAudioSessionId();
                AudioStreamImpl audioStreamImpl = AudioStreamImpl.this;
                if (clientAudioSessionId == audioStreamImpl.f2900a.getAudioSessionId()) {
                    audioStreamImpl.d(audioRecordingConfiguration.isClientSilenced());
                    return;
                }
            }
        }
    }

    public AudioStreamImpl(AudioSettings audioSettings, Context context) throws AudioStream.AudioStreamException, IllegalArgumentException {
        int i2 = ((AutoValue_AudioSettings) audioSettings).f2911c;
        AutoValue_AudioSettings autoValue_AudioSettings = (AutoValue_AudioSettings) audioSettings;
        int i3 = autoValue_AudioSettings.f2911c;
        int i4 = autoValue_AudioSettings.f2912e;
        int i5 = autoValue_AudioSettings.f2913f;
        if (i2 > 0 && i4 > 0) {
            if (AudioRecord.getMinBufferSize(i2, i4 == 1 ? 16 : 12, i5) > 0) {
                try {
                    new AudioFormat.Builder().setSampleRate(i2).setChannelMask(i4 == 1 ? 16 : 12).setEncoding(i5).build();
                    this.f2901b = audioSettings;
                    this.g = audioSettings.b();
                    int minBufferSize = AudioRecord.getMinBufferSize(i3, i4 == 1 ? 16 : 12, i5);
                    Preconditions.f(null, minBufferSize > 0);
                    int i6 = minBufferSize * 2;
                    this.f2904f = i6;
                    AudioRecord audioRecordC = c(i6, audioSettings, context);
                    this.f2900a = audioRecordC;
                    if (audioRecordC.getState() == 1) {
                        return;
                    }
                    audioRecordC.release();
                    throw new AudioStream.AudioStreamException("Unable to initialize AudioRecord");
                } catch (IllegalArgumentException unused) {
                }
            }
        }
        throw new UnsupportedOperationException(String.format("The combination of sample rate %d, channel count %d and audio format %d is not supported.", Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5)));
    }

    public static AudioRecord c(int i2, AudioSettings audioSettings, Context context) {
        AutoValue_AudioSettings autoValue_AudioSettings = (AutoValue_AudioSettings) audioSettings;
        AudioFormat audioFormatBuild = new AudioFormat.Builder().setSampleRate(((AutoValue_AudioSettings) audioSettings).f2911c).setChannelMask(autoValue_AudioSettings.f2912e == 1 ? 16 : 12).setEncoding(autoValue_AudioSettings.f2913f).build();
        AudioRecord.Builder builder = new AudioRecord.Builder();
        if (Build.VERSION.SDK_INT >= 31 && context != null) {
            Api31Impl.a(builder, context);
        }
        builder.setAudioSource(((AutoValue_AudioSettings) audioSettings).f2910b);
        builder.setAudioFormat(audioFormatBuild);
        builder.setBufferSizeInBytes(i2);
        try {
            return builder.build();
        } catch (UnsupportedOperationException e2) {
            lc0.u(e2);
            return null;
        }
    }

    @Override // androidx.camera.video.internal.audio.AudioStream
    public final void a(AudioStream.AudioStreamCallback audioStreamCallback, Executor executor) {
        Preconditions.f("AudioStream can not be started when setCallback.", !this.d.get());
        b();
        this.f2905h = audioStreamCallback;
        this.f2906i = executor;
        AudioManager.AudioRecordingCallback audioRecordingCallback = this.f2908k;
        if (audioRecordingCallback != null) {
            this.f2900a.unregisterAudioRecordingCallback(audioRecordingCallback);
        }
        if (this.f2908k == null) {
            this.f2908k = new AudioRecordingApi29Callback();
        }
        this.f2900a.registerAudioRecordingCallback(executor, this.f2908k);
    }

    public final void b() {
        Preconditions.f("AudioStream has been released.", !this.f2902c.get());
    }

    public final void d(boolean z) {
        Executor executor = this.f2906i;
        AudioStream.AudioStreamCallback audioStreamCallback = this.f2905h;
        if (executor == null || audioStreamCallback == null || Objects.equals(this.f2903e.getAndSet(Boolean.valueOf(z)), Boolean.valueOf(z))) {
            return;
        }
        executor.execute(new ac(audioStreamCallback, z, 2));
    }

    @Override // androidx.camera.video.internal.audio.AudioStream
    public final AudioStream.PacketInfo read(ByteBuffer byteBuffer) {
        b();
        Preconditions.f("AudioStream has not been started.", this.d.get());
        int i2 = this.f2900a.read(byteBuffer, this.f2904f);
        long jNanoTime = 0;
        if (i2 > 0) {
            byteBuffer.limit(i2);
            if (this.l) {
                jNanoTime = -1;
            } else {
                AudioTimestamp audioTimestamp = new AudioTimestamp();
                if (this.f2900a.getTimestamp(audioTimestamp, 0) == 0) {
                    int i3 = ((AutoValue_AudioSettings) this.f2901b).f2911c;
                    long j2 = this.f2907j;
                    Preconditions.b(((long) i3) > 0, "sampleRate must be greater than 0.");
                    Preconditions.b(j2 >= 0, "framePosition must be no less than 0.");
                    long jA = audioTimestamp.nanoTime + AudioUtils.a(i3, j2 - audioTimestamp.framePosition);
                    jNanoTime = jA >= 0 ? jA : 0L;
                    if (Math.abs(jNanoTime - System.nanoTime()) > 500000000) {
                        this.l = true;
                    }
                } else {
                    Logger.c(5, "AudioStreamImpl");
                }
                jNanoTime = -1;
            }
            if (jNanoTime == -1) {
                jNanoTime = System.nanoTime();
            }
            this.f2907j = AudioUtils.b(this.g, i2) + this.f2907j;
        }
        return new AutoValue_AudioStream_PacketInfo(i2, jNanoTime);
    }

    @Override // androidx.camera.video.internal.audio.AudioStream
    public final void release() {
        if (this.f2902c.getAndSet(true)) {
            return;
        }
        AudioManager.AudioRecordingCallback audioRecordingCallback = this.f2908k;
        if (audioRecordingCallback != null) {
            this.f2900a.unregisterAudioRecordingCallback(audioRecordingCallback);
        }
        this.f2900a.release();
    }

    @Override // androidx.camera.video.internal.audio.AudioStream
    public final void start() throws AudioStream.AudioStreamException {
        b();
        AtomicBoolean atomicBoolean = this.d;
        if (atomicBoolean.getAndSet(true)) {
            return;
        }
        if (DeviceQuirks.f2947a.b(AudioTimestampFramePositionIncorrectQuirk.class) != null) {
            AudioRecord audioRecord = this.f2900a;
            if (audioRecord.getState() != 1) {
                audioRecord.release();
                throw new AudioStream.AudioStreamException("Unable to initialize AudioRecord");
            }
        }
        this.f2900a.startRecording();
        if (this.f2900a.getRecordingState() != 3) {
            atomicBoolean.set(false);
            throw new AudioStream.AudioStreamException("Unable to start AudioRecord with state: " + this.f2900a.getRecordingState());
        }
        this.f2907j = 0L;
        this.l = false;
        this.f2903e.set(null);
        AudioRecordingConfiguration activeRecordingConfiguration = this.f2900a.getActiveRecordingConfiguration();
        d(activeRecordingConfiguration != null && activeRecordingConfiguration.isClientSilenced());
    }

    @Override // androidx.camera.video.internal.audio.AudioStream
    public final void stop() {
        b();
        if (this.d.getAndSet(false)) {
            this.f2900a.stop();
            if (this.f2900a.getRecordingState() != 1) {
                this.f2900a.getRecordingState();
                Logger.c(5, "AudioStreamImpl");
            }
            if (DeviceQuirks.f2947a.b(AudioTimestampFramePositionIncorrectQuirk.class) != null) {
                this.f2900a.release();
                this.f2900a = c(this.f2904f, this.f2901b, null);
            }
        }
    }
}
