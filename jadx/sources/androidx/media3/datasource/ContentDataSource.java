package androidx.media3.datasource;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Bundle;
import androidx.media3.common.util.Util;
import com.networkbench.agent.impl.util.r;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class ContentDataSource extends BaseDataSource {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ContentResolver f14368e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Uri f14369f;
    public AssetFileDescriptor g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public FileInputStream f14370h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f14371i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f14372j;

    public ContentDataSource(Context context) {
        super(false);
        this.f14368e = context.getContentResolver();
    }

    @Override // androidx.media3.datasource.DataSource
    public final long a(DataSpec dataSpec) throws ContentDataSourceException {
        int i2;
        AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor;
        try {
            try {
                Uri uri = dataSpec.f14390a;
                long j2 = dataSpec.g;
                long j3 = dataSpec.f14394f;
                Uri uriNormalizeScheme = uri.normalizeScheme();
                this.f14369f = uriNormalizeScheme;
                q(dataSpec);
                boolean zEquals = Objects.equals(uriNormalizeScheme.getScheme(), "content");
                ContentResolver contentResolver = this.f14368e;
                if (zEquals) {
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT", true);
                    assetFileDescriptorOpenAssetFileDescriptor = contentResolver.openTypedAssetFileDescriptor(uriNormalizeScheme, "*/*", bundle);
                } else {
                    assetFileDescriptorOpenAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uriNormalizeScheme, "r");
                }
                this.g = assetFileDescriptorOpenAssetFileDescriptor;
                if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                    IOException iOException = new IOException("Could not open file descriptor for: " + uriNormalizeScheme);
                    i2 = r.E;
                    try {
                        throw new ContentDataSourceException(iOException, r.E);
                    } catch (IOException e2) {
                        e = e2;
                        throw new ContentDataSourceException(e, e instanceof FileNotFoundException ? 2005 : i2);
                    }
                }
                long length = assetFileDescriptorOpenAssetFileDescriptor.getLength();
                FileInputStream fileInputStream = new FileInputStream(assetFileDescriptorOpenAssetFileDescriptor.getFileDescriptor());
                this.f14370h = fileInputStream;
                if (length != -1 && j3 > length) {
                    throw new ContentDataSourceException(null, 2008);
                }
                long startOffset = assetFileDescriptorOpenAssetFileDescriptor.getStartOffset();
                long jSkip = fileInputStream.skip(startOffset + j3) - startOffset;
                if (jSkip != j3) {
                    throw new ContentDataSourceException(null, 2008);
                }
                if (length == -1) {
                    FileChannel channel = fileInputStream.getChannel();
                    long size = channel.size();
                    if (size == 0) {
                        this.f14371i = -1L;
                    } else {
                        long jPosition = size - channel.position();
                        this.f14371i = jPosition;
                        if (jPosition < 0) {
                            throw new ContentDataSourceException(null, 2008);
                        }
                    }
                } else {
                    long j4 = length - jSkip;
                    this.f14371i = j4;
                    if (j4 < 0) {
                        throw new ContentDataSourceException(null, 2008);
                    }
                }
                if (j2 != -1) {
                    long j5 = this.f14371i;
                    this.f14371i = j5 == -1 ? j2 : Math.min(j5, j2);
                }
                this.f14372j = true;
                r(dataSpec);
                return j2 != -1 ? j2 : this.f14371i;
            } catch (IOException e3) {
                e = e3;
                i2 = r.E;
            }
        } catch (ContentDataSourceException e4) {
            throw e4;
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x000e */
    /* JADX WARN: Bottom block not found for handler: all -> 0x004e */
    @Override // androidx.media3.datasource.DataSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void close() {
        /*
            r5 = this;
            r0 = 0
            r5.f14369f = r0
            r1 = 2000(0x7d0, float:2.803E-42)
            r2 = 0
            java.io.FileInputStream r3 = r5.f14370h     // Catch: java.lang.Throwable -> Le java.io.IOException -> L10
            if (r3 == 0) goto L12
            r3.close()     // Catch: java.lang.Throwable -> Le java.io.IOException -> L10
            goto L12
        Le:
            r3 = move-exception
            goto L44
        L10:
            r3 = move-exception
            goto L3e
        L12:
            r5.f14370h = r0
            android.content.res.AssetFileDescriptor r3 = r5.g     // Catch: java.lang.Throwable -> L1c java.io.IOException -> L1e
            if (r3 == 0) goto L20
            r3.close()     // Catch: java.lang.Throwable -> L1c java.io.IOException -> L1e
            goto L20
        L1c:
            r1 = move-exception
            goto L32
        L1e:
            r3 = move-exception
            goto L2c
        L20:
            r5.g = r0
            boolean r0 = r5.f14372j
            if (r0 == 0) goto L2b
            r5.f14372j = r2
            r5.p()
        L2b:
            return
        L2c:
            androidx.media3.datasource.ContentDataSource$ContentDataSourceException r4 = new androidx.media3.datasource.ContentDataSource$ContentDataSourceException     // Catch: java.lang.Throwable -> L1c
            r4.<init>(r3, r1)     // Catch: java.lang.Throwable -> L1c
            throw r4     // Catch: java.lang.Throwable -> L1c
        L32:
            r5.g = r0
            boolean r0 = r5.f14372j
            if (r0 == 0) goto L3d
            r5.f14372j = r2
            r5.p()
        L3d:
            throw r1
        L3e:
            androidx.media3.datasource.ContentDataSource$ContentDataSourceException r4 = new androidx.media3.datasource.ContentDataSource$ContentDataSourceException     // Catch: java.lang.Throwable -> Le
            r4.<init>(r3, r1)     // Catch: java.lang.Throwable -> Le
            throw r4     // Catch: java.lang.Throwable -> Le
        L44:
            r5.f14370h = r0
            android.content.res.AssetFileDescriptor r4 = r5.g     // Catch: java.lang.Throwable -> L4e java.io.IOException -> L50
            if (r4 == 0) goto L52
            r4.close()     // Catch: java.lang.Throwable -> L4e java.io.IOException -> L50
            goto L52
        L4e:
            r1 = move-exception
            goto L64
        L50:
            r3 = move-exception
            goto L5e
        L52:
            r5.g = r0
            boolean r0 = r5.f14372j
            if (r0 == 0) goto L5d
            r5.f14372j = r2
            r5.p()
        L5d:
            throw r3
        L5e:
            androidx.media3.datasource.ContentDataSource$ContentDataSourceException r4 = new androidx.media3.datasource.ContentDataSource$ContentDataSourceException     // Catch: java.lang.Throwable -> L4e
            r4.<init>(r3, r1)     // Catch: java.lang.Throwable -> L4e
            throw r4     // Catch: java.lang.Throwable -> L4e
        L64:
            r5.g = r0
            boolean r0 = r5.f14372j
            if (r0 == 0) goto L6f
            r5.f14372j = r2
            r5.p()
        L6f:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.datasource.ContentDataSource.close():void");
    }

    @Override // androidx.media3.datasource.DataSource
    public final Uri getUri() {
        return this.f14369f;
    }

    @Override // androidx.media3.common.DataReader
    public final int read(byte[] bArr, int i2, int i3) throws ContentDataSourceException {
        if (i3 == 0) {
            return 0;
        }
        long j2 = this.f14371i;
        if (j2 == 0) {
            return -1;
        }
        if (j2 != -1) {
            try {
                i3 = (int) Math.min(j2, i3);
            } catch (IOException e2) {
                throw new ContentDataSourceException(e2, r.E);
            }
        }
        FileInputStream fileInputStream = this.f14370h;
        String str = Util.f14242a;
        int i4 = fileInputStream.read(bArr, i2, i3);
        if (i4 == -1) {
            return -1;
        }
        long j3 = this.f14371i;
        if (j3 != -1) {
            this.f14371i = j3 - ((long) i4);
        }
        o(i4);
        return i4;
    }

    public static class ContentDataSourceException extends DataSourceException {
        @Deprecated
        public ContentDataSourceException(IOException iOException) {
            this(iOException, r.E);
        }

        public ContentDataSourceException(IOException iOException, int i2) {
            super(iOException, i2);
        }
    }
}
