package com.google.android.exoplayer2.upstream;

import com.networkbench.agent.impl.util.r;
import defpackage.pq0;
import defpackage.tr;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public interface HttpDataSource extends DataSource {

    public static final class CleartextNotPermittedException extends HttpDataSourceException {
        public CleartextNotPermittedException(IOException iOException, DataSpec dataSpec) {
            super("Cleartext HTTP traffic not permitted. See https://developer.android.com/guide/topics/media/issues/cleartext-not-permitted", iOException, dataSpec, 2007, 1);
        }
    }

    public interface Factory extends DataSource.Factory {
    }

    public static final class InvalidContentTypeException extends HttpDataSourceException {
        public InvalidContentTypeException(String str, DataSpec dataSpec) {
            super(tr.g("Invalid content type: ", str), dataSpec, 2003, 1);
        }
    }

    public static final class InvalidResponseCodeException extends HttpDataSourceException {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Map f28437b;

        public InvalidResponseCodeException(int i2, String str, IOException iOException, Map<String, List<String>> map, DataSpec dataSpec, byte[] bArr) {
            super(pq0.k(i2, "Response code: "), iOException, dataSpec, 2004, 1);
            this.f28437b = map;
        }
    }

    public static class HttpDataSourceException extends DataSourceException {

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface Type {
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public HttpDataSourceException(DataSpec dataSpec, int i2, int i3) {
            if (i2 == 2000 && i3 == 1) {
                i2 = 2001;
            }
            super(i2);
        }

        @Deprecated
        public HttpDataSourceException(DataSpec dataSpec, int i2) {
            this(dataSpec, r.E, i2);
        }

        @Deprecated
        public HttpDataSourceException(String str, DataSpec dataSpec, int i2) {
            this(str, dataSpec, r.E, i2);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public HttpDataSourceException(String str, DataSpec dataSpec, int i2, int i3) {
            if (i2 == 2000 && i3 == 1) {
                i2 = 2001;
            }
            super(str, i2);
        }

        @Deprecated
        public HttpDataSourceException(IOException iOException, DataSpec dataSpec, int i2) {
            this(iOException, dataSpec, r.E, i2);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public HttpDataSourceException(IOException iOException, DataSpec dataSpec, int i2, int i3) {
            if (i2 == 2000 && i3 == 1) {
                i2 = 2001;
            }
            super(iOException, i2);
        }

        @Deprecated
        public HttpDataSourceException(String str, IOException iOException, DataSpec dataSpec, int i2) {
            this(str, iOException, dataSpec, r.E, i2);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public HttpDataSourceException(String str, IOException iOException, DataSpec dataSpec, int i2, int i3) {
            if (i2 == 2000 && i3 == 1) {
                i2 = 2001;
            }
            super(str, iOException, i2);
        }
    }
}
