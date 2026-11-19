package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractMessageLite implements MessageLite {

    public static abstract class Builder<BuilderType extends Builder> implements MessageLite.Builder {
        @Override // 
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public abstract Builder clone();

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public abstract Builder n(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite);

        /* JADX INFO: loaded from: classes2.dex */
        public static final class LimitedInputStream extends FilterInputStream {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f73705b;

            public LimitedInputStream(InputStream inputStream, int i2) {
                super(inputStream);
                this.f73705b = i2;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public final int available() {
                return Math.min(super.available(), this.f73705b);
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public final int read(byte[] bArr, int i2, int i3) throws IOException {
                int i4 = this.f73705b;
                if (i4 <= 0) {
                    return -1;
                }
                int i5 = super.read(bArr, i2, Math.min(i3, i4));
                if (i5 >= 0) {
                    this.f73705b -= i5;
                }
                return i5;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public final long skip(long j2) throws IOException {
                long jSkip = super.skip(Math.min(j2, this.f73705b));
                if (jSkip >= 0) {
                    this.f73705b = (int) (((long) this.f73705b) - jSkip);
                }
                return jSkip;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public final int read() throws IOException {
                if (this.f73705b <= 0) {
                    return -1;
                }
                int i2 = super.read();
                if (i2 >= 0) {
                    this.f73705b--;
                }
                return i2;
            }
        }
    }
}
