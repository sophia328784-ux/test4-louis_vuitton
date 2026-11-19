package androidx.camera.video.internal.audio;

import androidx.camera.core.Logger;
import androidx.camera.core.impl.utils.executor.AudioExecutor;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.core.util.Preconditions;
import defpackage.b5;
import defpackage.fc;
import defpackage.sh;
import defpackage.t6;
import java.nio.ByteBuffer;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class BufferedAudioStream implements AudioStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f2920a = new AtomicBoolean(false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicBoolean f2921b = new AtomicBoolean(false);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConcurrentLinkedQueue f2922c = new ConcurrentLinkedQueue();
    public final Executor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f2923e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public AudioData f2924f;
    public final AudioStream g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f2925h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f2926i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f2927j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AtomicBoolean f2928k;
    public int l;

    public static class AudioData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f2929a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f2930b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ByteBuffer f2931c;
        public long d;

        public AudioData(ByteBuffer byteBuffer, AudioStream.PacketInfo packetInfo, int i2, int i3) {
            byteBuffer.rewind();
            int iLimit = byteBuffer.limit() - byteBuffer.position();
            if (iLimit != packetInfo.a()) {
                StringBuilder sbQ = fc.q(iLimit, "Byte buffer size is not match with packet info: ", " != ");
                sbQ.append(packetInfo.a());
                throw new IllegalStateException(sbQ.toString());
            }
            this.f2929a = i2;
            this.f2930b = i3;
            this.f2931c = byteBuffer;
            this.d = packetInfo.b();
        }

        public final AudioStream.PacketInfo a(ByteBuffer byteBuffer) {
            int iRemaining;
            long j2 = this.d;
            ByteBuffer byteBuffer2 = this.f2931c;
            int iPosition = byteBuffer2.position();
            int iPosition2 = byteBuffer.position();
            if (byteBuffer2.remaining() > byteBuffer.remaining()) {
                iRemaining = byteBuffer.remaining();
                this.d += AudioUtils.a(this.f2930b, AudioUtils.b(this.f2929a, iRemaining));
                ByteBuffer byteBufferDuplicate = byteBuffer2.duplicate();
                byteBufferDuplicate.position(iPosition).limit(iPosition + iRemaining);
                byteBuffer.put(byteBufferDuplicate).limit(iPosition2 + iRemaining).position(iPosition2);
            } else {
                iRemaining = byteBuffer2.remaining();
                byteBuffer.put(byteBuffer2).limit(iPosition2 + iRemaining).position(iPosition2);
            }
            byteBuffer2.position(iPosition + iRemaining);
            return new AutoValue_AudioStream_PacketInfo(iRemaining, j2);
        }
    }

    public BufferedAudioStream(AudioStream audioStream, AudioSettings audioSettings) {
        AudioExecutor audioExecutor;
        if (AudioExecutor.f2432c != null) {
            audioExecutor = AudioExecutor.f2432c;
        } else {
            synchronized (AudioExecutor.class) {
                try {
                    if (AudioExecutor.f2432c == null) {
                        AudioExecutor.f2432c = new AudioExecutor();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            audioExecutor = AudioExecutor.f2432c;
        }
        this.d = CameraXExecutors.e(audioExecutor);
        this.f2923e = new Object();
        this.f2924f = null;
        this.f2928k = new AtomicBoolean(false);
        this.g = audioStream;
        int iB = audioSettings.b();
        this.f2925h = iB;
        int i2 = ((AutoValue_AudioSettings) audioSettings).f2911c;
        this.f2926i = i2;
        Preconditions.b(((long) iB) > 0, "mBytesPerFrame must be greater than 0.");
        Preconditions.b(((long) i2) > 0, "mSampleRate must be greater than 0.");
        this.f2927j = 500;
        this.l = iB * 1024;
    }

    @Override // androidx.camera.video.internal.audio.AudioStream
    public final void a(AudioStream.AudioStreamCallback audioStreamCallback, Executor executor) {
        Preconditions.f("AudioStream can not be started when setCallback.", !this.f2920a.get());
        b();
        this.d.execute(new b5(this, audioStreamCallback, executor, 4));
    }

    public final void b() {
        Preconditions.f("AudioStream has been released.", !this.f2921b.get());
    }

    public final void c() {
        if (this.f2928k.get()) {
            ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(this.l);
            AudioData audioData = new AudioData(byteBufferAllocateDirect, this.g.read(byteBufferAllocateDirect), this.f2925h, this.f2926i);
            int i2 = this.f2927j;
            synchronized (this.f2923e) {
                try {
                    this.f2922c.offer(audioData);
                    while (this.f2922c.size() > i2) {
                        this.f2922c.poll();
                        Logger.c(5, "BufferedAudioStream");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.f2928k.get()) {
                this.d.execute(new sh(this, 2));
            }
        }
    }

    @Override // androidx.camera.video.internal.audio.AudioStream
    public final AudioStream.PacketInfo read(ByteBuffer byteBuffer) {
        boolean z;
        b();
        Preconditions.f("AudioStream has not been started.", this.f2920a.get());
        this.d.execute(new t6(this, byteBuffer.remaining(), 2));
        AudioStream.PacketInfo autoValue_AudioStream_PacketInfo = new AutoValue_AudioStream_PacketInfo(0, 0L);
        do {
            synchronized (this.f2923e) {
                try {
                    AudioData audioData = this.f2924f;
                    this.f2924f = null;
                    if (audioData == null) {
                        audioData = (AudioData) this.f2922c.poll();
                    }
                    if (audioData != null) {
                        autoValue_AudioStream_PacketInfo = audioData.a(byteBuffer);
                        if (audioData.f2931c.remaining() > 0) {
                            this.f2924f = audioData;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            z = ((AutoValue_AudioStream_PacketInfo) autoValue_AudioStream_PacketInfo).f2918a <= 0 && this.f2920a.get() && !this.f2921b.get();
            if (z) {
                try {
                    Thread.sleep(1L);
                } catch (InterruptedException unused) {
                    Logger.c(5, "BufferedAudioStream");
                    return autoValue_AudioStream_PacketInfo;
                }
            }
        } while (z);
        return autoValue_AudioStream_PacketInfo;
    }

    @Override // androidx.camera.video.internal.audio.AudioStream
    public final void release() {
        if (this.f2921b.getAndSet(true)) {
            return;
        }
        this.d.execute(new sh(this, 3));
    }

    @Override // androidx.camera.video.internal.audio.AudioStream
    public final void start() throws AudioStream.AudioStreamException {
        b();
        AtomicBoolean atomicBoolean = this.f2920a;
        if (atomicBoolean.getAndSet(true)) {
            return;
        }
        FutureTask futureTask = new FutureTask(new sh(this, 1), null);
        this.d.execute(futureTask);
        try {
            futureTask.get();
        } catch (InterruptedException | ExecutionException e2) {
            atomicBoolean.set(false);
            throw new AudioStream.AudioStreamException(e2);
        }
    }

    @Override // androidx.camera.video.internal.audio.AudioStream
    public final void stop() {
        b();
        if (this.f2920a.getAndSet(false)) {
            this.d.execute(new sh(this, 0));
        }
    }
}
