package androidx.media3.datasource;

import android.net.Uri;
import androidx.media3.common.MediaLibraryInfo;
import com.google.common.base.Preconditions;
import defpackage.a;
import defpackage.r81;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class DataSpec {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ int f14389j = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Uri f14390a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f14391b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f14392c;
    public final byte[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Map f14393e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f14394f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f14395h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f14396i;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Uri f14397a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f14398b;
        public byte[] d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f14401f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public String f14402h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f14403i;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f14399c = 1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Map f14400e = Collections.EMPTY_MAP;
        public long g = -1;

        public final DataSpec a() {
            Preconditions.m(this.f14397a, "The uri must be set.");
            return new DataSpec(this.f14397a, this.f14398b, this.f14399c, this.d, this.f14400e, this.f14401f, this.g, this.f14402h, this.f14403i);
        }
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface HttpMethod {
    }

    static {
        MediaLibraryInfo.a("media3.datasource");
    }

    public DataSpec(Uri uri, long j2, int i2, byte[] bArr, Map map, long j3, long j4, String str, int i3) {
        Preconditions.g(j2 + j3 >= 0);
        Preconditions.g(j3 >= 0);
        Preconditions.g(j4 > 0 || j4 == -1);
        uri.getClass();
        this.f14390a = uri;
        this.f14391b = j2;
        this.f14392c = i2;
        this.d = (bArr == null || bArr.length == 0) ? null : bArr;
        this.f14393e = Collections.unmodifiableMap(new HashMap(map));
        this.f14394f = j3;
        this.g = j4;
        this.f14395h = str;
        this.f14396i = i3;
    }

    public final Builder a() {
        Builder builder = new Builder();
        builder.f14397a = this.f14390a;
        builder.f14398b = this.f14391b;
        builder.f14399c = this.f14392c;
        builder.d = this.d;
        builder.f14400e = this.f14393e;
        builder.f14401f = this.f14394f;
        builder.g = this.g;
        builder.f14402h = this.f14395h;
        builder.f14403i = this.f14396i;
        return builder;
    }

    public final DataSpec b(long j2, long j3) {
        if (j2 == 0 && this.g == j3) {
            return this;
        }
        return new DataSpec(this.f14390a, this.f14391b, this.f14392c, this.d, this.f14393e, this.f14394f + j2, j3, this.f14395h, this.f14396i);
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("DataSpec[");
        int i2 = this.f14392c;
        if (i2 == 1) {
            str = "GET";
        } else if (i2 == 2) {
            str = "POST";
        } else {
            if (i2 != 3) {
                r81.b();
                return null;
            }
            str = "HEAD";
        }
        sb.append(str);
        sb.append(" ");
        sb.append(this.f14390a);
        sb.append(", ");
        sb.append(this.f14394f);
        sb.append(", ");
        sb.append(this.g);
        sb.append(", ");
        sb.append(this.f14395h);
        sb.append(", ");
        return a.i(this.f14396i, "]", sb);
    }

    public DataSpec(Uri uri, long j2, long j3) {
        this(uri, j2, j3, null);
    }

    @Deprecated
    public DataSpec(Uri uri, long j2, long j3, String str) {
        this(uri, 0L, 1, null, Collections.EMPTY_MAP, j2, j3, str, 0);
    }

    public DataSpec(Uri uri) {
        this(uri, 0L, -1L);
    }
}
