package androidx.media3.datasource;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.r81;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class DefaultDataSource implements DataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f14404a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f14405b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DataSource f14406c;
    public FileDataSource d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public AssetDataSource f14407e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ContentDataSource f14408f;
    public DataSource g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public UdpDataSource f14409h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public DataSchemeDataSource f14410i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public RawResourceDataSource f14411j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public DataSource f14412k;

    public DefaultDataSource(Context context, DataSource dataSource) {
        this.f14404a = context.getApplicationContext();
        dataSource.getClass();
        this.f14406c = dataSource;
        this.f14405b = new ArrayList();
    }

    public static void p(DataSource dataSource, TransferListener transferListener) {
        if (dataSource != null) {
            dataSource.c(transferListener);
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public final long a(DataSpec dataSpec) {
        Preconditions.q(this.f14412k == null);
        Uri uri = dataSpec.f14390a;
        String scheme = uri.getScheme();
        String str = Util.f14242a;
        String scheme2 = uri.getScheme();
        boolean zIsEmpty = TextUtils.isEmpty(scheme2);
        Context context = this.f14404a;
        if (zIsEmpty || Objects.equals(scheme2, "file")) {
            String path = uri.getPath();
            if (path == null || !path.startsWith("/android_asset/")) {
                if (this.d == null) {
                    FileDataSource fileDataSource = new FileDataSource();
                    this.d = fileDataSource;
                    o(fileDataSource);
                }
                this.f14412k = this.d;
            } else {
                if (this.f14407e == null) {
                    AssetDataSource assetDataSource = new AssetDataSource(context);
                    this.f14407e = assetDataSource;
                    o(assetDataSource);
                }
                this.f14412k = this.f14407e;
            }
        } else if ("asset".equals(scheme)) {
            if (this.f14407e == null) {
                AssetDataSource assetDataSource2 = new AssetDataSource(context);
                this.f14407e = assetDataSource2;
                o(assetDataSource2);
            }
            this.f14412k = this.f14407e;
        } else if ("content".equals(scheme)) {
            if (this.f14408f == null) {
                ContentDataSource contentDataSource = new ContentDataSource(context);
                this.f14408f = contentDataSource;
                o(contentDataSource);
            }
            this.f14412k = this.f14408f;
        } else {
            boolean zEquals = "rtmp".equals(scheme);
            DataSource dataSource = this.f14406c;
            if (zEquals) {
                if (this.g == null) {
                    try {
                        DataSource dataSource2 = (DataSource) Class.forName("androidx.media3.datasource.rtmp.RtmpDataSource").getConstructor(null).newInstance(null);
                        this.g = dataSource2;
                        o(dataSource2);
                    } catch (ClassNotFoundException unused) {
                        Log.g("Attempting to play RTMP stream without depending on the RTMP extension");
                    } catch (Exception e2) {
                        r81.g("Error instantiating RTMP extension", e2);
                        return 0L;
                    }
                    if (this.g == null) {
                        this.g = dataSource;
                    }
                }
                this.f14412k = this.g;
            } else if ("udp".equals(scheme)) {
                if (this.f14409h == null) {
                    UdpDataSource udpDataSource = new UdpDataSource();
                    this.f14409h = udpDataSource;
                    o(udpDataSource);
                }
                this.f14412k = this.f14409h;
            } else if (DbParams.KEY_DATA.equals(scheme)) {
                if (this.f14410i == null) {
                    DataSchemeDataSource dataSchemeDataSource = new DataSchemeDataSource();
                    this.f14410i = dataSchemeDataSource;
                    o(dataSchemeDataSource);
                }
                this.f14412k = this.f14410i;
            } else if ("rawresource".equals(scheme) || "android.resource".equals(scheme)) {
                if (this.f14411j == null) {
                    RawResourceDataSource rawResourceDataSource = new RawResourceDataSource(context);
                    this.f14411j = rawResourceDataSource;
                    o(rawResourceDataSource);
                }
                this.f14412k = this.f14411j;
            } else {
                this.f14412k = dataSource;
            }
        }
        return this.f14412k.a(dataSpec);
    }

    @Override // androidx.media3.datasource.DataSource
    public final void c(TransferListener transferListener) {
        transferListener.getClass();
        this.f14406c.c(transferListener);
        this.f14405b.add(transferListener);
        p(this.d, transferListener);
        p(this.f14407e, transferListener);
        p(this.f14408f, transferListener);
        p(this.g, transferListener);
        p(this.f14409h, transferListener);
        p(this.f14410i, transferListener);
        p(this.f14411j, transferListener);
    }

    @Override // androidx.media3.datasource.DataSource
    public final void close() {
        DataSource dataSource = this.f14412k;
        if (dataSource != null) {
            try {
                dataSource.close();
            } finally {
                this.f14412k = null;
            }
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public final Map f() {
        DataSource dataSource = this.f14412k;
        return dataSource == null ? Collections.EMPTY_MAP : dataSource.f();
    }

    @Override // androidx.media3.datasource.DataSource
    public final Uri getUri() {
        DataSource dataSource = this.f14412k;
        if (dataSource == null) {
            return null;
        }
        return dataSource.getUri();
    }

    public final void o(DataSource dataSource) {
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.f14405b;
            if (i2 >= arrayList.size()) {
                return;
            }
            dataSource.c((TransferListener) arrayList.get(i2));
            i2++;
        }
    }

    @Override // androidx.media3.common.DataReader
    public final int read(byte[] bArr, int i2, int i3) {
        DataSource dataSource = this.f14412k;
        dataSource.getClass();
        return dataSource.read(bArr, i2, i3);
    }

    public static final class Factory implements DataSource.Factory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f14413a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final DataSource.Factory f14414b;

        public Factory(Context context, DataSource.Factory factory) {
            this.f14413a = context.getApplicationContext();
            factory.getClass();
            this.f14414b = factory;
        }

        @Override // androidx.media3.datasource.DataSource.Factory
        /* JADX INFO: renamed from: a */
        public final DataSource b() {
            return new DefaultDataSource(this.f14413a, this.f14414b.b());
        }

        public Factory(Context context) {
            this(context, new DefaultHttpDataSource.Factory());
        }
    }

    public DefaultDataSource(Context context, String str, boolean z) {
        this(context, str, 8000, 8000, z);
    }

    public DefaultDataSource(Context context, String str, int i2, int i3, boolean z) {
        DefaultHttpDataSource.Factory factory = new DefaultHttpDataSource.Factory();
        factory.f14422b = str;
        factory.f14423c = i2;
        factory.d = i3;
        factory.f14424e = z;
        this(context, factory.a());
    }

    public DefaultDataSource(Context context, boolean z) {
        this(context, null, 8000, 8000, z);
    }
}
