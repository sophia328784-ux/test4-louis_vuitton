package androidx.media3.exoplayer.hls;

import android.net.Uri;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSourceInputStream;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.TransferListener;
import defpackage.x1;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
class Aes128DataSource implements DataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DataSource f15119a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f15120b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f15121c;
    public CipherInputStream d;

    public Aes128DataSource(DataSource dataSource, byte[] bArr, byte[] bArr2) {
        this.f15119a = dataSource;
        this.f15120b = bArr;
        this.f15121c = bArr2;
    }

    @Override // androidx.media3.datasource.DataSource
    public final long a(DataSpec dataSpec) {
        try {
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
            try {
                cipher.init(2, new SecretKeySpec(this.f15120b, "AES"), new IvParameterSpec(this.f15121c));
                DataSourceInputStream dataSourceInputStream = new DataSourceInputStream(this.f15119a, dataSpec);
                this.d = new CipherInputStream(dataSourceInputStream, cipher);
                dataSourceInputStream.h();
                return -1L;
            } catch (InvalidAlgorithmParameterException | InvalidKeyException e2) {
                x1.m(e2);
                return 0L;
            }
        } catch (NoSuchAlgorithmException | NoSuchPaddingException e3) {
            x1.m(e3);
            return 0L;
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public final void c(TransferListener transferListener) {
        transferListener.getClass();
        this.f15119a.c(transferListener);
    }

    @Override // androidx.media3.datasource.DataSource
    public final void close() {
        if (this.d != null) {
            this.d = null;
            this.f15119a.close();
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public final Map f() {
        return this.f15119a.f();
    }

    @Override // androidx.media3.datasource.DataSource
    public final Uri getUri() {
        return this.f15119a.getUri();
    }

    @Override // androidx.media3.common.DataReader
    public final int read(byte[] bArr, int i2, int i3) throws IOException {
        this.d.getClass();
        int i4 = this.d.read(bArr, i2, i3);
        if (i4 < 0) {
            return -1;
        }
        return i4;
    }
}
