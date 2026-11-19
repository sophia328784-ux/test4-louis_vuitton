package androidx.media3.exoplayer.audio;

import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.audio.BaseAudioProcessor;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import com.google.common.base.Strings;
import defpackage.md;
import defpackage.r81;
import java.nio.ByteBuffer;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final class SilenceSkippingAudioProcessor extends BaseAudioProcessor {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f15025i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final short f15026j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f15027k;
    public final long l;
    public final long m;
    public int n;
    public boolean o;
    public int p;
    public long q;
    public int r;
    public byte[] s;
    public int t;
    public int u;
    public byte[] v;

    public SilenceSkippingAudioProcessor(long j2, float f2, long j3, int i2, short s) {
        boolean z = false;
        this.r = 0;
        this.t = 0;
        this.u = 0;
        if (f2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM && f2 <= 1.0f) {
            z = true;
        }
        Preconditions.g(z);
        this.l = j2;
        this.f15025i = f2;
        this.m = j3;
        this.f15027k = i2;
        this.f15026j = s;
        byte[] bArr = Util.f14243b;
        this.s = bArr;
        this.v = bArr;
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public final AudioProcessor.AudioFormat a(AudioProcessor.AudioFormat audioFormat) throws AudioProcessor.UnhandledAudioFormatException {
        if (audioFormat.f14055c == 2) {
            return audioFormat.f14053a == -1 ? AudioProcessor.AudioFormat.f14052e : audioFormat;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(audioFormat);
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public final void b() {
        if (isActive()) {
            AudioProcessor.AudioFormat audioFormat = this.f14058b;
            int i2 = audioFormat.f14054b * 2;
            this.n = i2;
            int i3 = ((((int) ((this.l * ((long) audioFormat.f14053a)) / 1000000)) / 2) / i2) * i2 * 2;
            if (this.s.length != i3) {
                this.s = new byte[i3];
                this.v = new byte[i3];
            }
        }
        this.p = 0;
        this.q = 0L;
        this.r = 0;
        this.t = 0;
        this.u = 0;
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public final void c() {
        if (this.u > 0) {
            n(true);
            this.r = 0;
        }
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public final void d() {
        this.o = false;
        byte[] bArr = Util.f14243b;
        this.s = bArr;
        this.v = bArr;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final void g(ByteBuffer byteBuffer) {
        int iLimit;
        int iPosition;
        while (byteBuffer.hasRemaining() && !this.g.hasRemaining()) {
            int i2 = this.p;
            short s = this.f15026j;
            if (i2 == 0) {
                int iLimit2 = byteBuffer.limit();
                byteBuffer.limit(Math.min(iLimit2, byteBuffer.position() + this.s.length));
                int iLimit3 = byteBuffer.limit() - 1;
                while (true) {
                    if (iLimit3 < byteBuffer.position()) {
                        iPosition = byteBuffer.position();
                        break;
                    }
                    if (Math.abs((byteBuffer.get(iLimit3) << 8) | (byteBuffer.get(iLimit3 - 1) & 255)) > s) {
                        int i3 = this.n;
                        iPosition = ((iLimit3 / i3) * i3) + i3;
                        break;
                    }
                    iLimit3 -= 2;
                }
                if (iPosition == byteBuffer.position()) {
                    this.p = 1;
                } else {
                    byteBuffer.limit(Math.min(iPosition, byteBuffer.capacity()));
                    l(byteBuffer.remaining()).put(byteBuffer).flip();
                }
                byteBuffer.limit(iLimit2);
            } else {
                if (i2 != 1) {
                    r81.b();
                    return;
                }
                Preconditions.q(this.t < this.s.length);
                int iLimit4 = byteBuffer.limit();
                int iPosition2 = byteBuffer.position() + 1;
                while (true) {
                    if (iPosition2 >= byteBuffer.limit()) {
                        iLimit = byteBuffer.limit();
                        break;
                    }
                    if (Math.abs((byteBuffer.get(iPosition2) << 8) | (byteBuffer.get(iPosition2 - 1) & 255)) > s) {
                        int i4 = this.n;
                        iLimit = (iPosition2 / i4) * i4;
                        break;
                    }
                    iPosition2 += 2;
                }
                int iPosition3 = iLimit - byteBuffer.position();
                int length = this.t;
                int i5 = this.u;
                int length2 = length + i5;
                byte[] bArr = this.s;
                if (length2 < bArr.length) {
                    length = bArr.length;
                } else {
                    length2 = i5 - (bArr.length - length);
                }
                int i6 = length - length2;
                boolean z = iLimit < iLimit4;
                int iMin = Math.min(iPosition3, i6);
                byteBuffer.limit(byteBuffer.position() + iMin);
                byteBuffer.get(this.s, length2, iMin);
                int i7 = this.u + iMin;
                this.u = i7;
                Preconditions.q(i7 <= this.s.length);
                boolean z2 = z && iPosition3 < i6;
                n(z2);
                if (z2) {
                    this.p = 0;
                    this.r = 0;
                }
                byteBuffer.limit(iLimit4);
            }
        }
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor, androidx.media3.common.audio.AudioProcessor
    public final boolean isActive() {
        return super.isActive() && this.o;
    }

    public final int m(int i2) {
        int length = ((((int) ((this.m * ((long) this.f14058b.f14053a)) / 1000000)) - this.r) * this.n) - (this.s.length / 2);
        Preconditions.q(length >= 0);
        int iMin = (int) Math.min((i2 * this.f15025i) + 0.5f, length);
        int i3 = this.n;
        return (iMin / i3) * i3;
    }

    public final void n(boolean z) {
        int length;
        int iM;
        int i2 = this.u;
        byte[] bArr = this.s;
        if (i2 == bArr.length || z) {
            if (this.r == 0) {
                if (z) {
                    o(i2, 3);
                    length = i2;
                } else {
                    Preconditions.q(i2 >= bArr.length / 2);
                    length = this.s.length / 2;
                    o(length, 0);
                }
                iM = length;
            } else if (z) {
                int length2 = i2 - (bArr.length / 2);
                int length3 = (bArr.length / 2) + length2;
                int iM2 = m(length2) + (this.s.length / 2);
                o(iM2, 2);
                iM = iM2;
                length = length3;
            } else {
                length = i2 - (bArr.length / 2);
                iM = m(length);
                o(iM, 1);
            }
            if (!(length % this.n == 0)) {
                md.k(Strings.b("bytesConsumed is not aligned to frame size: %s", Integer.valueOf(length)));
                return;
            }
            Preconditions.q(i2 >= iM);
            this.u -= length;
            int i3 = this.t + length;
            this.t = i3;
            this.t = i3 % this.s.length;
            int i4 = this.r;
            int i5 = this.n;
            this.r = (iM / i5) + i4;
            this.q += (long) ((length - iM) / i5);
        }
    }

    public final void o(int i2, int i3) {
        if (i2 == 0) {
            return;
        }
        Preconditions.g(this.u >= i2);
        int i4 = this.t;
        if (i3 == 2) {
            int i5 = this.u;
            int i6 = i4 + i5;
            byte[] bArr = this.s;
            if (i6 <= bArr.length) {
                System.arraycopy(bArr, i6 - i2, this.v, 0, i2);
            } else {
                int length = i5 - (bArr.length - i4);
                byte[] bArr2 = this.v;
                if (length >= i2) {
                    System.arraycopy(bArr, length - i2, bArr2, 0, i2);
                } else {
                    int i7 = i2 - length;
                    System.arraycopy(bArr, bArr.length - i7, bArr2, 0, i7);
                    System.arraycopy(this.s, 0, this.v, i7, length);
                }
            }
        } else {
            int i8 = i4 + i2;
            byte[] bArr3 = this.s;
            int length2 = bArr3.length;
            byte[] bArr4 = this.v;
            if (i8 <= length2) {
                System.arraycopy(bArr3, i4, bArr4, 0, i2);
            } else {
                int length3 = bArr3.length - i4;
                System.arraycopy(bArr3, i4, bArr4, 0, length3);
                System.arraycopy(this.s, 0, this.v, length3, i2 - length3);
            }
        }
        Preconditions.b(i2, "sizeToOutput is not aligned to frame size: %s", i2 % this.n == 0);
        Preconditions.q(this.t < this.s.length);
        byte[] bArr5 = this.v;
        Preconditions.b(i2, "byteOutput size is not aligned to frame size %s", i2 % this.n == 0);
        if (i3 != 3) {
            for (int i9 = 0; i9 < i2; i9 += 2) {
                int i10 = i9 + 1;
                int i11 = (bArr5[i10] << 8) | (bArr5[i9] & 255);
                int i12 = this.f15027k;
                if (i3 == 0) {
                    i12 = ((((i9 * 1000) / (i2 - 1)) * (i12 - 100)) / 1000) + 100;
                } else if (i3 == 2) {
                    i12 += (((i9 * 1000) * (100 - i12)) / (i2 - 1)) / 1000;
                }
                int i13 = (i11 * i12) / 100;
                if (i13 >= 32767) {
                    bArr5[i9] = -1;
                    bArr5[i10] = 127;
                } else if (i13 <= -32768) {
                    bArr5[i9] = 0;
                    bArr5[i10] = -128;
                } else {
                    bArr5[i9] = (byte) (i13 & 255);
                    bArr5[i10] = (byte) (i13 >> 8);
                }
            }
        }
        l(i2).put(bArr5, 0, i2).flip();
    }

    @Deprecated
    public SilenceSkippingAudioProcessor(long j2, long j3, short s) {
        this(j2, j3 / j2, j2, 0, s);
    }

    public SilenceSkippingAudioProcessor() {
        this(100000L, 0.2f, 2000000L, 10, (short) 1024);
    }
}
