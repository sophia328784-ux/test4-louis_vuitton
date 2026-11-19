package androidx.media3.common.audio;

import androidx.media3.common.Format;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import defpackage.tr;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public interface AudioProcessor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ByteBuffer f14051a = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    public static final class StreamMetadata {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final StreamMetadata f14056b = new StreamMetadata(0);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f14057a;

        public StreamMetadata(long j2) {
            Preconditions.g(j2 >= 0);
            this.f14057a = j2;
        }
    }

    boolean e();

    ByteBuffer f();

    default void flush() {
        throw new IllegalStateException("AudioProcessor must implement at least one #flush() overload.");
    }

    void g(ByteBuffer byteBuffer);

    default void h(StreamMetadata streamMetadata) {
        flush();
    }

    void i();

    boolean isActive();

    AudioFormat j(AudioFormat audioFormat);

    default long k(long j2) {
        return j2;
    }

    void reset();

    public static final class UnhandledAudioFormatException extends Exception {
        public UnhandledAudioFormatException(String str, AudioFormat audioFormat) {
            super(str + " " + audioFormat);
        }

        public UnhandledAudioFormatException(AudioFormat audioFormat) {
            this("Unhandled input format:", audioFormat);
        }
    }

    public static final class AudioFormat {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final AudioFormat f14052e = new AudioFormat(-1, -1, -1);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14053a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f14054b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f14055c;
        public final int d;

        public AudioFormat(int i2, int i3, int i4) {
            this.f14053a = i2;
            this.f14054b = i3;
            this.f14055c = i4;
            this.d = Util.K(i4) ? Util.u(i4) * i3 : -1;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AudioFormat)) {
                return false;
            }
            AudioFormat audioFormat = (AudioFormat) obj;
            return this.f14053a == audioFormat.f14053a && this.f14054b == audioFormat.f14054b && this.f14055c == audioFormat.f14055c;
        }

        public final int hashCode() {
            return Objects.hash(Integer.valueOf(this.f14053a), Integer.valueOf(this.f14054b), Integer.valueOf(this.f14055c));
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("AudioFormat[sampleRate=");
            sb.append(this.f14053a);
            sb.append(", channelCount=");
            sb.append(this.f14054b);
            sb.append(", encoding=");
            return tr.k(sb, this.f14055c, ']');
        }

        public AudioFormat(Format format) {
            this(format.H, format.G, format.I);
        }
    }
}
