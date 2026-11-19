package androidx.media3.common.audio;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseAudioProcessor implements AudioProcessor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AudioProcessor.AudioFormat f14058b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AudioProcessor.AudioFormat f14059c;
    public AudioProcessor.AudioFormat d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public AudioProcessor.AudioFormat f14060e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ByteBuffer f14061f;
    public ByteBuffer g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f14062h;

    public BaseAudioProcessor() {
        ByteBuffer byteBuffer = AudioProcessor.f14051a;
        this.f14061f = byteBuffer;
        this.g = byteBuffer;
        AudioProcessor.AudioFormat audioFormat = AudioProcessor.AudioFormat.f14052e;
        this.d = audioFormat;
        this.f14060e = audioFormat;
        this.f14058b = audioFormat;
        this.f14059c = audioFormat;
    }

    public AudioProcessor.AudioFormat a(AudioProcessor.AudioFormat audioFormat) {
        return AudioProcessor.AudioFormat.f14052e;
    }

    public void b() {
    }

    public void c() {
    }

    public void d() {
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public boolean e() {
        return this.f14062h && this.g == AudioProcessor.f14051a;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public ByteBuffer f() {
        ByteBuffer byteBuffer = this.g;
        this.g = AudioProcessor.f14051a;
        return byteBuffer;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final void flush() {
        h(AudioProcessor.StreamMetadata.f14056b);
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final void h(AudioProcessor.StreamMetadata streamMetadata) {
        this.g = AudioProcessor.f14051a;
        this.f14062h = false;
        this.f14058b = this.d;
        this.f14059c = this.f14060e;
        b();
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final void i() {
        this.f14062h = true;
        c();
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public boolean isActive() {
        return this.f14060e != AudioProcessor.AudioFormat.f14052e;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final AudioProcessor.AudioFormat j(AudioProcessor.AudioFormat audioFormat) {
        this.d = audioFormat;
        this.f14060e = a(audioFormat);
        return isActive() ? this.f14060e : AudioProcessor.AudioFormat.f14052e;
    }

    public final ByteBuffer l(int i2) {
        if (this.f14061f.capacity() < i2) {
            this.f14061f = ByteBuffer.allocateDirect(i2).order(ByteOrder.nativeOrder());
        } else {
            this.f14061f.clear();
        }
        ByteBuffer byteBuffer = this.f14061f;
        this.g = byteBuffer;
        return byteBuffer;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final void reset() {
        ByteBuffer byteBuffer = AudioProcessor.f14051a;
        this.g = byteBuffer;
        this.f14062h = false;
        this.f14061f = byteBuffer;
        AudioProcessor.AudioFormat audioFormat = AudioProcessor.AudioFormat.f14052e;
        this.d = audioFormat;
        this.f14060e = audioFormat;
        this.f14058b = audioFormat;
        this.f14059c = audioFormat;
        d();
    }
}
