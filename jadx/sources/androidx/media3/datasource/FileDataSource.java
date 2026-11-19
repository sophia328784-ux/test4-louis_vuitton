package androidx.media3.datasource;

import android.net.Uri;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.text.TextUtils;
import androidx.media3.common.util.Util;
import com.networkbench.agent.impl.util.r;
import defpackage.fc;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

/* JADX INFO: loaded from: classes.dex */
public final class FileDataSource extends BaseDataSource {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public RandomAccessFile f14426e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Uri f14427f;
    public long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f14428h;

    public static final class Factory implements DataSource.Factory {
        @Override // androidx.media3.datasource.DataSource.Factory
        /* JADX INFO: renamed from: a */
        public final DataSource b() {
            return new FileDataSource();
        }
    }

    public FileDataSource() {
        super(false);
    }

    @Override // androidx.media3.datasource.DataSource
    public final long a(DataSpec dataSpec) throws FileDataSourceException {
        Uri uri = dataSpec.f14390a;
        long j2 = dataSpec.f14394f;
        this.f14427f = uri;
        q(dataSpec);
        try {
            String path = uri.getPath();
            path.getClass();
            RandomAccessFile randomAccessFile = new RandomAccessFile(path, "r");
            this.f14426e = randomAccessFile;
            try {
                randomAccessFile.seek(j2);
                long length = dataSpec.g;
                if (length == -1) {
                    length = this.f14426e.length() - j2;
                }
                this.g = length;
                if (length < 0) {
                    throw new FileDataSourceException(null, null, 2008);
                }
                this.f14428h = true;
                r(dataSpec);
                return this.g;
            } catch (IOException e2) {
                throw new FileDataSourceException(e2, r.E);
            }
        } catch (FileNotFoundException e3) {
            if (TextUtils.isEmpty(uri.getQuery()) && TextUtils.isEmpty(uri.getFragment())) {
                throw new FileDataSourceException(e3, ((e3.getCause() instanceof ErrnoException) && ((ErrnoException) e3.getCause()).errno == OsConstants.EACCES) ? 2006 : 2005);
            }
            String path2 = uri.getPath();
            String query = uri.getQuery();
            String fragment = uri.getFragment();
            StringBuilder sbS = fc.s("uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=", path2, ",query=", query, ",fragment=");
            sbS.append(fragment);
            throw new FileDataSourceException(sbS.toString(), e3, 1004);
        } catch (SecurityException e4) {
            throw new FileDataSourceException(e4, 2006);
        } catch (RuntimeException e5) {
            throw new FileDataSourceException(e5, r.E);
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public final void close() {
        this.f14427f = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.f14426e;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                this.f14426e = null;
                if (this.f14428h) {
                    this.f14428h = false;
                    p();
                }
            } catch (IOException e2) {
                throw new FileDataSourceException(e2, r.E);
            }
        } catch (Throwable th) {
            this.f14426e = null;
            if (this.f14428h) {
                this.f14428h = false;
                p();
            }
            throw th;
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public final Uri getUri() {
        return this.f14427f;
    }

    @Override // androidx.media3.common.DataReader
    public final int read(byte[] bArr, int i2, int i3) throws FileDataSourceException {
        if (i3 == 0) {
            return 0;
        }
        long j2 = this.g;
        if (j2 == 0) {
            return -1;
        }
        try {
            RandomAccessFile randomAccessFile = this.f14426e;
            String str = Util.f14242a;
            int i4 = randomAccessFile.read(bArr, i2, (int) Math.min(j2, i3));
            if (i4 > 0) {
                this.g -= (long) i4;
                o(i4);
            }
            return i4;
        } catch (IOException e2) {
            throw new FileDataSourceException(e2, r.E);
        }
    }

    public static class FileDataSourceException extends DataSourceException {
        @Deprecated
        public FileDataSourceException(Exception exc) {
            super(exc, r.E);
        }

        @Deprecated
        public FileDataSourceException(String str, IOException iOException) {
            super(str, iOException, r.E);
        }

        public FileDataSourceException(Throwable th, int i2) {
            super(th, i2);
        }

        public FileDataSourceException(String str, Throwable th, int i2) {
            super(str, th, i2);
        }
    }
}
