package com.google.android.exoplayer2.upstream;

import com.networkbench.agent.impl.util.r;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class ContentDataSource$ContentDataSourceException extends DataSourceException {
    @Deprecated
    public ContentDataSource$ContentDataSourceException(IOException iOException) {
        this(iOException, r.E);
    }

    public ContentDataSource$ContentDataSourceException(IOException iOException, int i2) {
        super(iOException, i2);
    }
}
