package coil3.graphics;

import java.io.IOException;
import java.io.InputStream;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcoil3/decode/ExifInterfaceInputStream;", "Ljava/io/InputStream;", "delegate", "<init>", "(Ljava/io/InputStream;)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
final class ExifInterfaceInputStream extends InputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InputStream f21361b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f21362c = 1073741824;

    public ExifInterfaceInputStream(InputStream inputStream) {
        this.f21361b = inputStream;
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.f21362c;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f21361b.close();
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        int i2 = this.f21361b.read();
        if (i2 == -1) {
            this.f21362c = 0;
        }
        return i2;
    }

    @Override // java.io.InputStream
    public final long skip(long j2) {
        return this.f21361b.skip(j2);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        int i2 = this.f21361b.read(bArr);
        if (i2 == -1) {
            this.f21362c = 0;
        }
        return i2;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i2, int i3) throws IOException {
        int i4 = this.f21361b.read(bArr, i2, i3);
        if (i4 == -1) {
            this.f21362c = 0;
        }
        return i4;
    }
}
