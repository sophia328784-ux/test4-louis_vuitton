package androidx.media3.common.audio;

import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import okhttp3.internal.ws.RealWebSocket;

/* JADX INFO: loaded from: classes.dex */
public final class SonicAudioProcessor implements AudioProcessor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f14084b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f14085c = 1.0f;
    public float d = 1.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public AudioProcessor.AudioFormat f14086e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public AudioProcessor.AudioFormat f14087f;
    public AudioProcessor.AudioFormat g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public AudioProcessor.AudioFormat f14088h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f14089i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Sonic f14090j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ByteBuffer f14091k;
    public ByteBuffer l;
    public long m;
    public long n;
    public boolean o;

    public SonicAudioProcessor() {
        AudioProcessor.AudioFormat audioFormat = AudioProcessor.AudioFormat.f14052e;
        this.f14086e = audioFormat;
        this.f14087f = audioFormat;
        this.g = audioFormat;
        this.f14088h = audioFormat;
        ByteBuffer byteBuffer = AudioProcessor.f14051a;
        this.f14091k = byteBuffer;
        this.l = byteBuffer;
        this.f14084b = -1;
    }

    public final long a(long j2) {
        if (this.n < RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE) {
            return (long) (((double) this.f14085c) * j2);
        }
        long j3 = this.m;
        Sonic sonic = this.f14090j;
        sonic.getClass();
        long jQ = j3 - ((long) ((sonic.f14070j * sonic.f14064b) * sonic.f14069i.q()));
        int i2 = this.f14088h.f14053a;
        int i3 = this.g.f14053a;
        long j4 = this.n;
        if (i2 == i3) {
            String str = Util.f14242a;
            return Util.Z(j2, jQ, j4, RoundingMode.DOWN);
        }
        long j5 = jQ * ((long) i2);
        long j6 = j4 * ((long) i3);
        String str2 = Util.f14242a;
        return Util.Z(j2, j5, j6, RoundingMode.DOWN);
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final boolean e() {
        if (this.o) {
            Sonic sonic = this.f14090j;
            if (sonic != null) {
                Preconditions.q(sonic.f14071k >= 0);
                if (sonic.f14071k * sonic.f14064b * sonic.f14069i.q() == 0) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final ByteBuffer f() {
        Sonic sonic = this.f14090j;
        if (sonic != null) {
            Sonic.SonicImpl sonicImpl = sonic.f14069i;
            int i2 = sonic.f14064b;
            Preconditions.q(sonic.f14071k >= 0);
            int iQ = sonic.f14071k * i2 * sonicImpl.q();
            if (iQ > 0) {
                if (this.f14091k.capacity() < iQ) {
                    this.f14091k = ByteBuffer.allocateDirect(iQ).order(ByteOrder.nativeOrder());
                } else {
                    this.f14091k.clear();
                }
                ByteBuffer byteBuffer = this.f14091k;
                Preconditions.q(sonic.f14071k >= 0);
                int iMin = Math.min(byteBuffer.remaining() / (sonicImpl.q() * i2), sonic.f14071k);
                sonicImpl.b(iMin, byteBuffer);
                sonic.f14071k -= iMin;
                System.arraycopy(sonicImpl.n(), iMin * i2, sonicImpl.n(), 0, sonic.f14071k * i2);
                this.f14091k.flip();
                this.n += (long) iQ;
                this.l = this.f14091k;
            }
        }
        ByteBuffer byteBuffer2 = this.l;
        this.l = AudioProcessor.f14051a;
        return byteBuffer2;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final void g(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            Sonic sonic = this.f14090j;
            sonic.getClass();
            this.m += (long) byteBuffer.remaining();
            int iRemaining = byteBuffer.remaining();
            int i2 = sonic.f14064b;
            Sonic.SonicImpl sonicImpl = sonic.f14069i;
            int iQ = iRemaining / (i2 * sonicImpl.q());
            sonicImpl.i(iQ);
            sonicImpl.a(iRemaining, byteBuffer);
            sonic.f14070j += iQ;
            sonic.b();
        }
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final void h(AudioProcessor.StreamMetadata streamMetadata) {
        if (isActive()) {
            AudioProcessor.AudioFormat audioFormat = this.f14086e;
            this.g = audioFormat;
            AudioProcessor.AudioFormat audioFormat2 = this.f14087f;
            this.f14088h = audioFormat2;
            if (this.f14089i) {
                this.f14090j = new Sonic(audioFormat.f14053a, audioFormat.f14054b, this.f14085c, this.d, audioFormat2.f14053a, audioFormat.f14055c == 4);
            } else {
                Sonic sonic = this.f14090j;
                if (sonic != null) {
                    sonic.f14070j = 0;
                    sonic.f14071k = 0;
                    sonic.l = 0;
                    sonic.m = 0;
                    sonic.n = 0;
                    sonic.o = 0;
                    sonic.p = 0;
                    sonic.q = 0.0d;
                    sonic.f14069i.flush();
                }
            }
        }
        this.l = AudioProcessor.f14051a;
        this.m = 0L;
        this.n = 0L;
        this.o = false;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final void i() {
        Sonic sonic = this.f14090j;
        if (sonic != null) {
            int i2 = sonic.f14070j;
            float f2 = sonic.f14065c;
            float f3 = sonic.d;
            double d = f2 / f3;
            double d2 = sonic.f14066e * f3;
            int i3 = sonic.o;
            int i4 = sonic.f14071k + ((int) ((((((((double) (i2 - i3)) / d) + ((double) i3)) + sonic.q) + ((double) sonic.l)) / d2) + 0.5d));
            sonic.q = 0.0d;
            Sonic.SonicImpl sonicImpl = sonic.f14069i;
            int i5 = sonic.f14068h * 2;
            sonicImpl.i(i5 + i2);
            sonicImpl.c(i2 * sonic.f14064b, i5);
            sonic.f14070j = i5 + sonic.f14070j;
            sonic.b();
            if (sonic.f14071k > i4) {
                sonic.f14071k = Math.max(i4, 0);
            }
            sonic.f14070j = 0;
            sonic.o = 0;
            sonic.l = 0;
        }
        this.o = true;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final boolean isActive() {
        if (this.f14087f.f14053a != -1) {
            return Math.abs(this.f14085c - 1.0f) >= 1.0E-4f || Math.abs(this.d - 1.0f) >= 1.0E-4f || this.f14087f.f14053a != this.f14086e.f14053a;
        }
        return false;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final AudioProcessor.AudioFormat j(AudioProcessor.AudioFormat audioFormat) throws AudioProcessor.UnhandledAudioFormatException {
        int i2 = audioFormat.f14055c;
        if (i2 != 2 && i2 != 4) {
            throw new AudioProcessor.UnhandledAudioFormatException(audioFormat);
        }
        int i3 = this.f14084b;
        if (i3 == -1) {
            i3 = audioFormat.f14053a;
        }
        this.f14086e = audioFormat;
        AudioProcessor.AudioFormat audioFormat2 = new AudioProcessor.AudioFormat(i3, audioFormat.f14054b, i2);
        this.f14087f = audioFormat2;
        this.f14089i = true;
        return audioFormat2;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final long k(long j2) {
        if (this.n < RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE) {
            return (long) (j2 / ((double) this.f14085c));
        }
        long j3 = this.m;
        Sonic sonic = this.f14090j;
        sonic.getClass();
        long jQ = j3 - ((long) ((sonic.f14070j * sonic.f14064b) * sonic.f14069i.q()));
        int i2 = this.f14088h.f14053a;
        int i3 = this.g.f14053a;
        long j4 = this.n;
        if (i2 == i3) {
            String str = Util.f14242a;
            return Util.Z(j2, j4, jQ, RoundingMode.DOWN);
        }
        long j5 = j4 * ((long) i3);
        long j6 = jQ * ((long) i2);
        String str2 = Util.f14242a;
        return Util.Z(j2, j5, j6, RoundingMode.DOWN);
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final void reset() {
        this.f14085c = 1.0f;
        this.d = 1.0f;
        AudioProcessor.AudioFormat audioFormat = AudioProcessor.AudioFormat.f14052e;
        this.f14086e = audioFormat;
        this.f14087f = audioFormat;
        this.g = audioFormat;
        this.f14088h = audioFormat;
        ByteBuffer byteBuffer = AudioProcessor.f14051a;
        this.f14091k = byteBuffer;
        this.l = byteBuffer;
        this.f14084b = -1;
        this.f14089i = false;
        this.f14090j = null;
        this.m = 0L;
        this.n = 0L;
        this.o = false;
    }
}
