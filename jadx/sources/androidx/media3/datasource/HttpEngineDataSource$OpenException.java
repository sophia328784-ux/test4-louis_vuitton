package androidx.media3.datasource;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class HttpEngineDataSource$OpenException extends HttpDataSource.HttpDataSourceException {
    public HttpEngineDataSource$OpenException(IOException iOException, DataSpec dataSpec, int i2, int i3) {
        super(iOException, dataSpec, i2, 1);
    }

    public HttpEngineDataSource$OpenException(String str, DataSpec dataSpec, int i2, int i3) {
        super(str, dataSpec, i2, 1);
    }

    public HttpEngineDataSource$OpenException(DataSpec dataSpec, int i2, int i3) {
        super(dataSpec, i2, 1);
    }
}
