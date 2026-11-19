package androidx.media3.datasource;

import android.net.Uri;
import android.util.Base64;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.pq0;
import defpackage.tr;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes.dex */
public final class DataSchemeDataSource extends BaseDataSource {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public DataSpec f14373e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte[] f14374f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f14375h;

    public DataSchemeDataSource() {
        super(false);
    }

    @Override // androidx.media3.datasource.DataSource
    public final long a(DataSpec dataSpec) throws ParserException, DataSourceException {
        q(dataSpec);
        this.f14373e = dataSpec;
        Uri uri = dataSpec.f14390a;
        long j2 = dataSpec.g;
        Uri uriNormalizeScheme = uri.normalizeScheme();
        String scheme = uriNormalizeScheme.getScheme();
        Preconditions.e(scheme, "Unsupported scheme: %s", DbParams.KEY_DATA.equals(scheme));
        String schemeSpecificPart = uriNormalizeScheme.getSchemeSpecificPart();
        String str = Util.f14242a;
        String[] strArrSplit = schemeSpecificPart.split(",", -1);
        if (strArrSplit.length != 2) {
            throw new ParserException(pq0.l(uriNormalizeScheme, "Unexpected URI format: "), null, true, 0);
        }
        String str2 = strArrSplit[1];
        if (strArrSplit[0].contains(";base64")) {
            try {
                this.f14374f = Base64.decode(str2, 0);
            } catch (IllegalArgumentException e2) {
                throw new ParserException(tr.g("Error while parsing Base64 encoded string: ", str2), e2, true, 0);
            }
        } else {
            this.f14374f = URLDecoder.decode(str2, StandardCharsets.US_ASCII.name()).getBytes(StandardCharsets.UTF_8);
        }
        long j3 = dataSpec.f14394f;
        byte[] bArr = this.f14374f;
        if (j3 > bArr.length) {
            this.f14374f = null;
            throw new DataSourceException(2008);
        }
        int i2 = (int) j3;
        this.g = i2;
        int length = bArr.length - i2;
        this.f14375h = length;
        if (j2 != -1) {
            this.f14375h = (int) Math.min(length, j2);
        }
        r(dataSpec);
        return j2 != -1 ? j2 : this.f14375h;
    }

    @Override // androidx.media3.datasource.DataSource
    public final void close() {
        if (this.f14374f != null) {
            this.f14374f = null;
            p();
        }
        this.f14373e = null;
    }

    @Override // androidx.media3.datasource.DataSource
    public final Uri getUri() {
        DataSpec dataSpec = this.f14373e;
        if (dataSpec != null) {
            return dataSpec.f14390a;
        }
        return null;
    }

    @Override // androidx.media3.common.DataReader
    public final int read(byte[] bArr, int i2, int i3) {
        if (i3 == 0) {
            return 0;
        }
        int i4 = this.f14375h;
        if (i4 == 0) {
            return -1;
        }
        int iMin = Math.min(i3, i4);
        byte[] bArr2 = this.f14374f;
        String str = Util.f14242a;
        System.arraycopy(bArr2, this.g, bArr, i2, iMin);
        this.g += iMin;
        this.f14375h -= iMin;
        o(iMin);
        return iMin;
    }
}
