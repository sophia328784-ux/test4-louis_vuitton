package androidx.media3.datasource;

import android.net.Uri;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class PlaceholderDataSource implements DataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PlaceholderDataSource f14435a = new PlaceholderDataSource();

    @Override // androidx.media3.datasource.DataSource
    public final long a(DataSpec dataSpec) throws IOException {
        throw new IOException("PlaceholderDataSource cannot be opened");
    }

    @Override // androidx.media3.datasource.DataSource
    public final void c(TransferListener transferListener) {
    }

    @Override // androidx.media3.datasource.DataSource
    public final void close() {
    }

    @Override // androidx.media3.datasource.DataSource
    public final Uri getUri() {
        return null;
    }

    @Override // androidx.media3.common.DataReader
    public final int read(byte[] bArr, int i2, int i3) {
        throw new UnsupportedOperationException();
    }
}
