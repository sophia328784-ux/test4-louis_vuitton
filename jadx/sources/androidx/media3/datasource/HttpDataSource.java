package androidx.media3.datasource;

import com.google.common.base.Ascii;
import com.networkbench.agent.impl.util.r;
import defpackage.pq0;
import defpackage.tr;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.net.SocketTimeoutException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface HttpDataSource extends DataSource {

    public static final class CleartextNotPermittedException extends HttpDataSourceException {
        public CleartextNotPermittedException(IOException iOException, DataSpec dataSpec) {
            super("Cleartext HTTP traffic not permitted. See https://developer.android.com/guide/topics/media/issues/cleartext-not-permitted", iOException, dataSpec, 2007, 1);
        }
    }

    public interface Factory extends DataSource.Factory {
        @Override // androidx.media3.datasource.DataSource.Factory
        DefaultHttpDataSource b();
    }

    public static final class InvalidContentTypeException extends HttpDataSourceException {
        public InvalidContentTypeException(String str, DataSpec dataSpec) {
            super(tr.g("Invalid content type: ", str), dataSpec, 2003, 1);
        }
    }

    public static final class InvalidResponseCodeException extends HttpDataSourceException {
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Map f14430e;

        public InvalidResponseCodeException(int i2, String str, IOException iOException, Map<String, List<String>> map, DataSpec dataSpec, byte[] bArr) {
            super(pq0.k(i2, "Response code: "), iOException, dataSpec, 2004, 1);
            this.d = i2;
            this.f14430e = map;
        }
    }

    public static final class RequestProperties {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final HashMap f14431a = new HashMap();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Map f14432b;

        public final synchronized Map a() {
            try {
                if (this.f14432b == null) {
                    this.f14432b = Collections.unmodifiableMap(new HashMap(this.f14431a));
                }
            } catch (Throwable th) {
                throw th;
            }
            return this.f14432b;
        }
    }

    public static class HttpDataSourceException extends DataSourceException {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f14429c;

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
            this.f14429c = i3;
        }

        public static HttpDataSourceException a(IOException iOException, DataSpec dataSpec, int i2) {
            int i3;
            String message = iOException.getMessage();
            if (iOException instanceof SocketTimeoutException) {
                i3 = 2002;
            } else if (iOException instanceof InterruptedIOException) {
                i3 = 1004;
            } else {
                i3 = (message == null || !Ascii.c(message).matches("cleartext.*not permitted.*")) ? 2001 : 2007;
            }
            return i3 == 2007 ? new CleartextNotPermittedException(iOException, dataSpec) : new HttpDataSourceException(iOException, dataSpec, i3, i2);
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
            this.f14429c = i3;
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
            this.f14429c = i3;
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
            this.f14429c = i3;
        }
    }
}
