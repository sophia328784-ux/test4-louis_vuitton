package androidx.media3.extractor;

import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.util.ParsableByteArray;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public interface TrackOutput {

    public static final class CryptoData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f16210a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final byte[] f16211b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f16212c;
        public final int d;

        public CryptoData(int i2, byte[] bArr, int i3, int i4) {
            this.f16210a = i2;
            this.f16211b = bArr;
            this.f16212c = i3;
            this.d = i4;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && CryptoData.class == obj.getClass()) {
                CryptoData cryptoData = (CryptoData) obj;
                if (this.f16210a == cryptoData.f16210a && this.f16212c == cryptoData.f16212c && this.d == cryptoData.d && Arrays.equals(this.f16211b, cryptoData.f16211b)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return ((((Arrays.hashCode(this.f16211b) + (this.f16210a * 31)) * 31) + this.f16212c) * 31) + this.d;
        }
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface SampleDataPart {
    }

    void a(ParsableByteArray parsableByteArray, int i2, int i3);

    void b(Format format);

    default int c(DataReader dataReader, int i2, boolean z) {
        return d(dataReader, i2, z);
    }

    int d(DataReader dataReader, int i2, boolean z);

    default void e(long j2) {
    }

    default void f(int i2, ParsableByteArray parsableByteArray) {
        a(parsableByteArray, i2, 0);
    }

    void g(long j2, int i2, int i3, int i4, CryptoData cryptoData);
}
