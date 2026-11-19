package androidx.media3.exoplayer.audio;

import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.audio.BaseAudioProcessor;
import androidx.media3.common.util.Util;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class TrimmingAudioProcessor extends BaseAudioProcessor {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f15030i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f15031j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f15032k;
    public int l;
    public byte[] m = Util.f14243b;
    public int n;
    public long o;

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public final AudioProcessor.AudioFormat a(AudioProcessor.AudioFormat audioFormat) throws AudioProcessor.UnhandledAudioFormatException {
        if (!Util.K(audioFormat.f14055c)) {
            throw new AudioProcessor.UnhandledAudioFormatException(audioFormat);
        }
        this.f15032k = true;
        return (this.f15030i == 0 && this.f15031j == 0) ? AudioProcessor.AudioFormat.f14052e : audioFormat;
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public final void b() {
        if (this.f15032k) {
            this.f15032k = false;
            int i2 = this.f15031j;
            int i3 = this.f14058b.d;
            this.m = new byte[i2 * i3];
            this.l = this.f15030i * i3;
        }
        this.n = 0;
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public final void c() {
        if (this.f15032k) {
            int i2 = this.n;
            if (i2 > 0) {
                this.o += (long) (i2 / this.f14058b.d);
            }
            this.n = 0;
        }
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public final void d() {
        this.m = Util.f14243b;
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor, androidx.media3.common.audio.AudioProcessor
    public final boolean e() {
        return super.e() && this.n == 0;
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor, androidx.media3.common.audio.AudioProcessor
    public final ByteBuffer f() {
        int i2;
        if (super.e() && (i2 = this.n) > 0) {
            l(i2).put(this.m, 0, this.n).flip();
            this.n = 0;
        }
        return super.f();
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final void g(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i2 = iLimit - iPosition;
        if (i2 == 0) {
            return;
        }
        int iMin = Math.min(i2, this.l);
        this.o += (long) (iMin / this.f14058b.d);
        this.l -= iMin;
        byteBuffer.position(iPosition + iMin);
        if (this.l > 0) {
            return;
        }
        int i3 = i2 - iMin;
        int length = (this.n + i3) - this.m.length;
        ByteBuffer byteBufferL = l(length);
        int iJ = Util.j(length, 0, this.n);
        byteBufferL.put(this.m, 0, iJ);
        int iJ2 = Util.j(length - iJ, 0, i3);
        byteBuffer.limit(byteBuffer.position() + iJ2);
        byteBufferL.put(byteBuffer);
        byteBuffer.limit(iLimit);
        int i4 = i3 - iJ2;
        int i5 = this.n - iJ;
        this.n = i5;
        byte[] bArr = this.m;
        System.arraycopy(bArr, iJ, bArr, 0, i5);
        byteBuffer.get(this.m, this.n, i4);
        this.n += i4;
        byteBufferL.flip();
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final long k(long j2) {
        return Math.max(0L, j2 - Util.X(this.f14058b.f14053a, this.f15031j + this.f15030i));
    }
}
