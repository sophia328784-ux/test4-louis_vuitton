package androidx.media3.datasource;

/* JADX INFO: loaded from: classes.dex */
public interface DataSink {

    public interface Factory {
    }

    void a(DataSpec dataSpec);

    void close();

    void write(byte[] bArr, int i2, int i3);
}
