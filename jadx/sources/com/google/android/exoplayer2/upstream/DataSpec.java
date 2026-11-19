package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import com.google.android.exoplayer2.ExoPlayerLibraryInfo;
import com.google.android.exoplayer2.util.Assertions;
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

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class DataSpec {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Uri f28432a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f28433b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map f28434c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f28435e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f28436f;
    public final int g;

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
        ExoPlayerLibraryInfo.a("goog.exo.datasource");
    }

    public DataSpec(Uri uri, long j2, int i2, byte[] bArr, Map map, long j3, long j4, String str, int i3) {
        Assertions.a(j2 + j3 >= 0);
        Assertions.a(j3 >= 0);
        Assertions.a(j4 > 0 || j4 == -1);
        this.f28432a = uri;
        this.f28433b = i2;
        if (bArr != null) {
            int length = bArr.length;
        }
        this.f28434c = Collections.unmodifiableMap(new HashMap(map));
        this.d = j3;
        this.f28435e = j4;
        this.f28436f = str;
        this.g = i3;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("DataSpec[");
        int i2 = this.f28433b;
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
        sb.append(this.f28432a);
        sb.append(", ");
        sb.append(this.d);
        sb.append(", ");
        sb.append(this.f28435e);
        sb.append(", ");
        sb.append(this.f28436f);
        sb.append(", ");
        return a.i(this.g, "]", sb);
    }

    public DataSpec(Uri uri, long j2, long j3) {
        this(uri, 0L, 1, (byte[]) null, Collections.EMPTY_MAP, j2, j3, (String) null, 0);
    }

    @Deprecated
    public DataSpec(Uri uri, int i2) {
        this(uri, 0L, -1L, null, i2);
    }

    @Deprecated
    public DataSpec(Uri uri, long j2, long j3, String str) {
        this(uri, j2, j2, j3, str, 0);
    }

    @Deprecated
    public DataSpec(Uri uri, long j2, long j3, String str, int i2) {
        this(uri, j2, j2, j3, str, i2);
    }

    @Deprecated
    public DataSpec(Uri uri, long j2, long j3, String str, int i2, Map<String, String> map) {
        this(uri, 1, (byte[]) null, j2, j2, j3, str, i2, map);
    }

    @Deprecated
    public DataSpec(Uri uri, long j2, long j3, long j4, String str, int i2) {
        this(uri, null, j2, j3, j4, str, i2);
    }

    @Deprecated
    public DataSpec(Uri uri, byte[] bArr, long j2, long j3, long j4, String str, int i2) {
        this(uri, bArr != null ? 2 : 1, bArr, j2, j3, j4, str, i2);
    }

    @Deprecated
    public DataSpec(Uri uri, int i2, byte[] bArr, long j2, long j3, long j4, String str, int i3) {
        this(uri, i2, bArr, j2, j3, j4, str, i3, (Map<String, String>) Collections.EMPTY_MAP);
    }

    @Deprecated
    public DataSpec(Uri uri, int i2, byte[] bArr, long j2, long j3, long j4, String str, int i3, Map<String, String> map) {
        this(uri, j2 - j3, i2, bArr, map, j3, j4, str, i3);
    }

    public DataSpec(Uri uri) {
        this(uri, 0L, -1L);
    }
}
