package androidx.media3.datasource;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class DataSourceException extends IOException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f14384b;

    public DataSourceException(int i2) {
        this.f14384b = i2;
    }

    public DataSourceException(Throwable th, int i2) {
        super(th);
        this.f14384b = i2;
    }

    public DataSourceException(String str, int i2) {
        super(str);
        this.f14384b = i2;
    }

    public DataSourceException(String str, Throwable th, int i2) {
        super(str, th);
        this.f14384b = i2;
    }
}
