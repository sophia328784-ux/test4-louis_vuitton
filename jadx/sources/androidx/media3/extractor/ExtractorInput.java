package androidx.media3.extractor;

import androidx.media3.common.DataReader;

/* JADX INFO: loaded from: classes.dex */
public interface ExtractorInput extends DataReader {
    void b(int i2, int i3, byte[] bArr);

    int d(int i2, int i3, byte[] bArr);

    boolean e(int i2, boolean z);

    void g();

    long getLength();

    long getPosition();

    boolean h(boolean z, int i2, int i3, byte[] bArr);

    boolean i(boolean z, int i2, int i3, byte[] bArr);

    long j();

    void k(int i2);

    int l(int i2);

    void m(int i2);

    boolean n(int i2, boolean z);

    void readFully(byte[] bArr, int i2, int i3);
}
