package androidx.camera.video.internal.audio;

import androidx.camera.core.Logger;
import androidx.core.util.Preconditions;
import defpackage.hn0;
import java.nio.ByteBuffer;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class SilentAudioStream implements AudioStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f2932a = new AtomicBoolean(false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicBoolean f2933b = new AtomicBoolean(false);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2934c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte[] f2935e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f2936f;
    public AudioStream.AudioStreamCallback g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Executor f2937h;

    public SilentAudioStream(AudioSettings audioSettings) {
        this.f2934c = audioSettings.b();
        this.d = ((AutoValue_AudioSettings) audioSettings).f2911c;
    }

    @Override // androidx.camera.video.internal.audio.AudioStream
    public final void a(AudioStream.AudioStreamCallback audioStreamCallback, Executor executor) {
        Preconditions.f("AudioStream can not be started when setCallback.", !this.f2932a.get());
        b();
        this.g = audioStreamCallback;
        this.f2937h = executor;
    }

    public final void b() {
        Preconditions.f("AudioStream has been released.", !this.f2933b.get());
    }

    @Override // androidx.camera.video.internal.audio.AudioStream
    public final AudioStream.PacketInfo read(ByteBuffer byteBuffer) {
        b();
        Preconditions.f("AudioStream has not been started.", this.f2932a.get());
        long jRemaining = byteBuffer.remaining();
        int i2 = this.f2934c;
        long jB = AudioUtils.b(i2, jRemaining);
        long j2 = i2;
        Preconditions.b(j2 > 0, "bytesPerFrame must be greater than 0.");
        int i3 = (int) (j2 * jB);
        if (i3 <= 0) {
            return new AutoValue_AudioStream_PacketInfo(0, this.f2936f);
        }
        long jA = this.f2936f + AudioUtils.a(this.d, jB);
        long jNanoTime = jA - System.nanoTime();
        if (jNanoTime > 0) {
            try {
                Thread.sleep(jNanoTime / 1000000);
            } catch (InterruptedException unused) {
                Logger.c(5, "SilentAudioStream");
            }
        }
        Preconditions.f(null, i3 <= byteBuffer.remaining());
        byte[] bArr = this.f2935e;
        if (bArr == null || bArr.length < i3) {
            this.f2935e = new byte[i3];
        }
        int iPosition = byteBuffer.position();
        byteBuffer.put(this.f2935e, 0, i3).limit(iPosition + i3).position(iPosition);
        AutoValue_AudioStream_PacketInfo autoValue_AudioStream_PacketInfo = new AutoValue_AudioStream_PacketInfo(i3, this.f2936f);
        this.f2936f = jA;
        return autoValue_AudioStream_PacketInfo;
    }

    @Override // androidx.camera.video.internal.audio.AudioStream
    public final void release() {
        this.f2933b.getAndSet(true);
    }

    @Override // androidx.camera.video.internal.audio.AudioStream
    public final void start() {
        b();
        if (this.f2932a.getAndSet(true)) {
            return;
        }
        this.f2936f = System.nanoTime();
        AudioStream.AudioStreamCallback audioStreamCallback = this.g;
        Executor executor = this.f2937h;
        if (audioStreamCallback == null || executor == null) {
            return;
        }
        executor.execute(new hn0(audioStreamCallback, 17));
    }

    @Override // androidx.camera.video.internal.audio.AudioStream
    public final void stop() {
        b();
        this.f2932a.set(false);
    }
}
