package com.google.android.exoplayer2.upstream;

import com.networkbench.agent.impl.util.r;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class AssetDataSource$AssetDataSourceException extends DataSourceException {
    @Deprecated
    public AssetDataSource$AssetDataSourceException(IOException iOException) {
        super(iOException, r.E);
    }

    public AssetDataSource$AssetDataSourceException(Throwable th, int i2) {
        super(th, i2);
    }
}
