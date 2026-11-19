package androidx.camera.video.internal.audio;

import android.content.Context;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.Observable;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.video.internal.BufferProvider;
import androidx.camera.video.internal.encoder.Encoder;
import androidx.camera.video.internal.encoder.InputBuffer;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.ac;
import defpackage.r6;
import defpackage.z1;
import java.nio.ByteBuffer;
import java.nio.ShortBuffer;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class AudioSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Executor f2886a;
    public final BufferedAudioStream d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SilentAudioStream f2889e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f2890f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f2892i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Executor f2893j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public AudioSourceCallback f2894k;
    public BufferProvider l;
    public FutureCallback m;
    public Observable.Observer n;
    public boolean o;
    public long p;
    public boolean q;
    public boolean r;
    public byte[] s;
    public double t;
    public final int v;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicReference f2887b = new AtomicReference(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f2888c = new AtomicBoolean(false);
    public InternalState g = InternalState.CONFIGURED;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public BufferProvider.State f2891h = BufferProvider.State.INACTIVE;
    public long u = 0;

    /* JADX INFO: loaded from: classes3.dex */
    public interface AudioSourceCallback {
        void a(boolean z);

        void b(double d);

        void onError(Throwable th);
    }

    public class AudioStreamCallback implements AudioStream.AudioStreamCallback {
        public AudioStreamCallback() {
        }

        @Override // androidx.camera.video.internal.audio.AudioStream.AudioStreamCallback
        public final void a(boolean z) {
            AudioSource audioSource = AudioSource.this;
            audioSource.q = z;
            if (audioSource.g == InternalState.STARTED) {
                audioSource.a();
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class InternalState {
        private static final /* synthetic */ InternalState[] $VALUES;
        public static final InternalState CONFIGURED;
        public static final InternalState RELEASED;
        public static final InternalState STARTED;

        static {
            InternalState internalState = new InternalState("CONFIGURED", 0);
            CONFIGURED = internalState;
            InternalState internalState2 = new InternalState("STARTED", 1);
            STARTED = internalState2;
            InternalState internalState3 = new InternalState("RELEASED", 2);
            RELEASED = internalState3;
            $VALUES = new InternalState[]{internalState, internalState2, internalState3};
        }

        public static InternalState valueOf(String str) {
            return (InternalState) Enum.valueOf(InternalState.class, str);
        }

        public static InternalState[] values() {
            return (InternalState[]) $VALUES.clone();
        }
    }

    public AudioSource(AudioSettings audioSettings, Executor executor, Context context) throws AudioSourceAccessException {
        Executor executorE = CameraXExecutors.e(executor);
        this.f2886a = executorE;
        this.f2890f = 3000000000L;
        try {
            BufferedAudioStream bufferedAudioStream = new BufferedAudioStream(new AudioStreamImpl(audioSettings, context), audioSettings);
            this.d = bufferedAudioStream;
            bufferedAudioStream.a(new AudioStreamCallback(), executorE);
            this.f2889e = new SilentAudioStream(audioSettings);
            this.v = ((AutoValue_AudioSettings) audioSettings).f2913f;
        } catch (AudioStream.AudioStreamException | IllegalArgumentException e2) {
            throw new AudioSourceAccessException("Unable to create AudioStream", e2);
        }
    }

    public final void a() {
        Executor executor = this.f2893j;
        AudioSourceCallback audioSourceCallback = this.f2894k;
        if (executor == null || audioSourceCallback == null) {
            return;
        }
        int i2 = 1;
        boolean z = this.r || this.o || this.q;
        if (Objects.equals(this.f2887b.getAndSet(Boolean.valueOf(z)), Boolean.valueOf(z))) {
            return;
        }
        executor.execute(new ac(audioSourceCallback, z, i2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b(final Encoder.ByteBufferInput byteBufferInput) {
        BufferProvider bufferProvider = this.l;
        BufferProvider.State state = null;
        if (bufferProvider != null) {
            Observable.Observer observer = this.n;
            Objects.requireNonNull(observer);
            bufferProvider.d(observer);
            this.l = null;
            this.n = null;
            this.m = null;
            this.f2891h = BufferProvider.State.INACTIVE;
            e();
        }
        if (byteBufferInput != null) {
            this.l = byteBufferInput;
            this.n = new Observable.Observer<BufferProvider.State>() { // from class: androidx.camera.video.internal.audio.AudioSource.1
                @Override // androidx.camera.core.impl.Observable.Observer
                public final void a(Object obj) {
                    BufferProvider.State state2 = (BufferProvider.State) obj;
                    Objects.requireNonNull(state2);
                    AudioSource audioSource = AudioSource.this;
                    if (audioSource.l == byteBufferInput) {
                        Objects.toString(audioSource.f2891h);
                        state2.toString();
                        Logger.c(3, "AudioSource");
                        if (audioSource.f2891h != state2) {
                            audioSource.f2891h = state2;
                            audioSource.e();
                        }
                    }
                }

                @Override // androidx.camera.core.impl.Observable.Observer
                public final void onError(Throwable th) {
                    AudioSource audioSource = AudioSource.this;
                    if (audioSource.l == byteBufferInput) {
                        Executor executor = audioSource.f2893j;
                        AudioSourceCallback audioSourceCallback = audioSource.f2894k;
                        if (executor == null || audioSourceCallback == null) {
                            return;
                        }
                        executor.execute(new r6(audioSourceCallback, th, 7));
                    }
                }
            };
            this.m = new FutureCallback<InputBuffer>() { // from class: androidx.camera.video.internal.audio.AudioSource.2
                @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                public final void onFailure(Throwable th) {
                    AudioSource audioSource = AudioSource.this;
                    if (audioSource.l != byteBufferInput) {
                        return;
                    }
                    Logger.c(3, "AudioSource");
                    if (th instanceof IllegalStateException) {
                        return;
                    }
                    Executor executor = audioSource.f2893j;
                    AudioSourceCallback audioSourceCallback = audioSource.f2894k;
                    if (executor == null || audioSourceCallback == null) {
                        return;
                    }
                    executor.execute(new r6(audioSourceCallback, th, 7));
                }

                @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                public final void onSuccess(Object obj) {
                    InputBuffer inputBuffer = (InputBuffer) obj;
                    AudioSource audioSource = AudioSource.this;
                    boolean z = audioSource.f2892i;
                    AudioStream audioStream = audioSource.f2889e;
                    BufferedAudioStream bufferedAudioStream = audioSource.d;
                    if (!z || audioSource.l != byteBufferInput) {
                        inputBuffer.cancel();
                        return;
                    }
                    if (audioSource.o) {
                        Preconditions.f(null, audioSource.p > 0);
                        if (System.nanoTime() - audioSource.p >= audioSource.f2890f) {
                            Preconditions.f(null, audioSource.o);
                            try {
                                bufferedAudioStream.start();
                                Logger.c(3, "AudioSource");
                                audioStream.stop();
                                audioSource.o = false;
                            } catch (AudioStream.AudioStreamException unused) {
                                Logger.c(5, "AudioSource");
                                audioSource.p = System.nanoTime();
                            }
                        }
                    }
                    if (!audioSource.o) {
                        audioStream = bufferedAudioStream;
                    }
                    ByteBuffer byteBufferN = inputBuffer.N();
                    AutoValue_AudioStream_PacketInfo autoValue_AudioStream_PacketInfo = (AutoValue_AudioStream_PacketInfo) audioStream.read(byteBufferN);
                    long j2 = autoValue_AudioStream_PacketInfo.f2919b;
                    int i2 = autoValue_AudioStream_PacketInfo.f2918a;
                    if (i2 > 0) {
                        if (audioSource.r) {
                            byte[] bArr = audioSource.s;
                            if (bArr == null || bArr.length < i2) {
                                audioSource.s = new byte[i2];
                            }
                            int iPosition = byteBufferN.position();
                            byteBufferN.put(audioSource.s, 0, i2);
                            byteBufferN.limit(byteBufferN.position()).position(iPosition);
                        }
                        Executor executor = audioSource.f2893j;
                        if (executor != null && j2 - audioSource.u >= 200) {
                            audioSource.u = j2;
                            AudioSourceCallback audioSourceCallback = audioSource.f2894k;
                            if (audioSource.v == 2) {
                                ShortBuffer shortBufferAsShortBuffer = byteBufferN.asShortBuffer();
                                double dMax = 0.0d;
                                while (shortBufferAsShortBuffer.hasRemaining()) {
                                    dMax = Math.max(dMax, Math.abs((int) shortBufferAsShortBuffer.get()));
                                }
                                audioSource.t = dMax / 32767.0d;
                                if (executor != null && audioSourceCallback != null) {
                                    executor.execute(new r6(audioSource, audioSourceCallback, 6));
                                }
                            }
                        }
                        byteBufferN.limit(i2 + byteBufferN.position());
                        inputBuffer.b(j2 / 1000);
                        inputBuffer.a();
                    } else {
                        Logger.c(5, "AudioSource");
                        inputBuffer.cancel();
                    }
                    BufferProvider bufferProvider2 = audioSource.l;
                    Objects.requireNonNull(bufferProvider2);
                    ListenableFuture listenableFutureE = bufferProvider2.e();
                    FutureCallback futureCallback = audioSource.m;
                    Objects.requireNonNull(futureCallback);
                    Futures.a(listenableFutureE, futureCallback, audioSource.f2886a);
                }
            };
            try {
                ListenableFuture listenableFutureA = byteBufferInput.a();
                if (listenableFutureA.isDone()) {
                    state = (BufferProvider.State) listenableFutureA.get();
                }
            } catch (InterruptedException | ExecutionException unused) {
            }
            if (state != null) {
                this.f2891h = state;
                e();
            }
            this.l.b(this.f2886a, this.n);
        }
    }

    public final void c(InternalState internalState) {
        Objects.toString(this.g);
        Objects.toString(internalState);
        Logger.c(3, "AudioSource");
        this.g = internalState;
    }

    public final void d() {
        if (this.f2892i) {
            this.f2892i = false;
            Logger.c(3, "AudioSource");
            this.d.stop();
        }
    }

    public final void e() {
        if (this.g != InternalState.STARTED) {
            d();
            return;
        }
        boolean z = this.f2891h == BufferProvider.State.ACTIVE;
        boolean z2 = !z;
        Executor executor = this.f2893j;
        AudioSourceCallback audioSourceCallback = this.f2894k;
        if (executor != null && audioSourceCallback != null && this.f2888c.getAndSet(z2) != z2) {
            executor.execute(new z1(audioSourceCallback, z2));
        }
        if (!z) {
            d();
            return;
        }
        if (this.f2892i) {
            return;
        }
        try {
            Logger.c(3, "AudioSource");
            this.d.start();
            this.o = false;
        } catch (AudioStream.AudioStreamException unused) {
            Logger.c(5, "AudioSource");
            this.o = true;
            this.f2889e.start();
            this.p = System.nanoTime();
            a();
        }
        this.f2892i = true;
        BufferProvider bufferProvider = this.l;
        Objects.requireNonNull(bufferProvider);
        ListenableFuture listenableFutureE = bufferProvider.e();
        FutureCallback futureCallback = this.m;
        Objects.requireNonNull(futureCallback);
        Futures.a(listenableFutureE, futureCallback, this.f2886a);
    }
}
