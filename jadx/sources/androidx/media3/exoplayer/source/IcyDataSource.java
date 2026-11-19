package androidx.media3.exoplayer.source;

import android.net.Uri;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.TransferListener;
import com.google.common.base.Preconditions;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class IcyDataSource implements DataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DataSource f15492a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f15493b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Listener f15494c;
    public final byte[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f15495e;

    public interface Listener {
        void b(ParsableByteArray parsableByteArray);
    }

    public IcyDataSource(DataSource dataSource, int i2, Listener listener) {
        Preconditions.g(i2 > 0);
        this.f15492a = dataSource;
        this.f15493b = i2;
        this.f15494c = listener;
        this.d = new byte[1];
        this.f15495e = i2;
    }

    @Override // androidx.media3.datasource.DataSource
    public final long a(DataSpec dataSpec) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.media3.datasource.DataSource
    public final void c(TransferListener transferListener) {
        transferListener.getClass();
        this.f15492a.c(transferListener);
    }

    @Override // androidx.media3.datasource.DataSource
    public final void close() {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.media3.datasource.DataSource
    public final Map f() {
        return this.f15492a.f();
    }

    @Override // androidx.media3.datasource.DataSource
    public final Uri getUri() {
        return this.f15492a.getUri();
    }

    @Override // androidx.media3.common.DataReader
    public final int read(byte[] bArr, int i2, int i3) {
        int i4 = this.f15495e;
        DataSource dataSource = this.f15492a;
        if (i4 == 0) {
            byte[] bArr2 = this.d;
            int i5 = 0;
            if (dataSource.read(bArr2, 0, 1) != -1) {
                int i6 = (bArr2[0] & 255) << 4;
                if (i6 != 0) {
                    byte[] bArr3 = new byte[i6];
                    int i7 = i6;
                    while (i7 > 0) {
                        int i8 = dataSource.read(bArr3, i5, i7);
                        if (i8 != -1) {
                            i5 += i8;
                            i7 -= i8;
                        }
                    }
                    while (i6 > 0 && bArr3[i6 - 1] == 0) {
                        i6--;
                    }
                    if (i6 > 0) {
                        this.f15494c.b(new ParsableByteArray(bArr3, i6));
                    }
                }
                this.f15495e = this.f15493b;
            }
            return -1;
        }
        int i9 = dataSource.read(bArr, i2, Math.min(this.f15495e, i3));
        if (i9 != -1) {
            this.f15495e -= i9;
        }
        return i9;
    }
}
