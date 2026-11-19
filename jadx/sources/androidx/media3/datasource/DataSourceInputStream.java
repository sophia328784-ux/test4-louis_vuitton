package androidx.media3.datasource;

import com.google.common.base.Preconditions;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class DataSourceInputStream extends InputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DataSource f14385b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DataSpec f14386c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f14387e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f14388f = false;
    public final byte[] d = new byte[1];

    public DataSourceInputStream(DataSource dataSource, DataSpec dataSpec) {
        this.f14385b = dataSource;
        this.f14386c = dataSpec;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f14388f) {
            return;
        }
        this.f14385b.close();
        this.f14388f = true;
    }

    public final void h() {
        if (this.f14387e) {
            return;
        }
        this.f14385b.a(this.f14386c);
        this.f14387e = true;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i2, int i3) {
        Preconditions.q(!this.f14388f);
        h();
        int i4 = this.f14385b.read(bArr, i2, i3);
        if (i4 == -1) {
            return -1;
        }
        return i4;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = this.d;
        if (read(bArr, 0, bArr.length) == -1) {
            return -1;
        }
        return bArr[0] & 255;
    }
}
