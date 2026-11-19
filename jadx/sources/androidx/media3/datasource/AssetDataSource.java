package androidx.media3.datasource;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import androidx.media3.common.util.Util;
import com.networkbench.agent.impl.util.r;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class AssetDataSource extends BaseDataSource {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AssetManager f14361e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Uri f14362f;
    public InputStream g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f14363h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f14364i;

    public AssetDataSource(Context context) {
        super(false);
        this.f14361e = context.getAssets();
    }

    @Override // androidx.media3.datasource.DataSource
    public final long a(DataSpec dataSpec) throws AssetDataSourceException {
        try {
            Uri uri = dataSpec.f14390a;
            long j2 = dataSpec.f14394f;
            this.f14362f = uri;
            String path = uri.getPath();
            path.getClass();
            if (path.startsWith("/android_asset/")) {
                path = path.substring(15);
            } else if (path.startsWith("/")) {
                path = path.substring(1);
            }
            q(dataSpec);
            InputStream inputStreamOpen = this.f14361e.open(path, 1);
            this.g = inputStreamOpen;
            if (inputStreamOpen.skip(j2) < j2) {
                throw new AssetDataSourceException(null, 2008);
            }
            long j3 = dataSpec.g;
            if (j3 != -1) {
                this.f14363h = j3;
            } else {
                long jAvailable = this.g.available();
                this.f14363h = jAvailable;
                if (jAvailable == 2147483647L) {
                    this.f14363h = -1L;
                }
            }
            this.f14364i = true;
            r(dataSpec);
            return this.f14363h;
        } catch (AssetDataSourceException e2) {
            throw e2;
        } catch (IOException e3) {
            throw new AssetDataSourceException(e3, e3 instanceof FileNotFoundException ? 2005 : r.E);
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public final void close() {
        this.f14362f = null;
        try {
            try {
                InputStream inputStream = this.g;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.g = null;
                if (this.f14364i) {
                    this.f14364i = false;
                    p();
                }
            } catch (IOException e2) {
                throw new AssetDataSourceException(e2, r.E);
            }
        } catch (Throwable th) {
            this.g = null;
            if (this.f14364i) {
                this.f14364i = false;
                p();
            }
            throw th;
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public final Uri getUri() {
        return this.f14362f;
    }

    @Override // androidx.media3.common.DataReader
    public final int read(byte[] bArr, int i2, int i3) throws AssetDataSourceException {
        if (i3 == 0) {
            return 0;
        }
        long j2 = this.f14363h;
        if (j2 == 0) {
            return -1;
        }
        if (j2 != -1) {
            try {
                i3 = (int) Math.min(j2, i3);
            } catch (IOException e2) {
                throw new AssetDataSourceException(e2, r.E);
            }
        }
        InputStream inputStream = this.g;
        String str = Util.f14242a;
        int i4 = inputStream.read(bArr, i2, i3);
        if (i4 == -1) {
            return -1;
        }
        long j3 = this.f14363h;
        if (j3 != -1) {
            this.f14363h = j3 - ((long) i4);
        }
        o(i4);
        return i4;
    }

    public static final class AssetDataSourceException extends DataSourceException {
        @Deprecated
        public AssetDataSourceException(IOException iOException) {
            super(iOException, r.E);
        }

        public AssetDataSourceException(Throwable th, int i2) {
            super(th, i2);
        }
    }
}
