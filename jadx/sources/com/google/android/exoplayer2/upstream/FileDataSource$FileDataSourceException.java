package com.google.android.exoplayer2.upstream;

import com.networkbench.agent.impl.util.r;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class FileDataSource$FileDataSourceException extends DataSourceException {
    @Deprecated
    public FileDataSource$FileDataSourceException(Exception exc) {
        super(exc, r.E);
    }

    @Deprecated
    public FileDataSource$FileDataSourceException(String str, IOException iOException) {
        super(str, iOException, r.E);
    }

    public FileDataSource$FileDataSourceException(Throwable th, int i2) {
        super(th, i2);
    }

    public FileDataSource$FileDataSourceException(String str, Throwable th, int i2) {
        super(str, th, i2);
    }
}
