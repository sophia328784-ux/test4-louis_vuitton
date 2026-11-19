package com.google.android.exoplayer2.upstream;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class DataSourceException extends IOException {
    public DataSourceException(int i2) {
    }

    public DataSourceException(Throwable th, int i2) {
        super(th);
    }

    public DataSourceException(String str, int i2) {
        super(str);
    }

    public DataSourceException(String str, Throwable th, int i2) {
        super(str, th);
    }
}
