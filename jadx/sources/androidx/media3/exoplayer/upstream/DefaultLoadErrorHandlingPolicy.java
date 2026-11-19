package androidx.media3.exoplayer.upstream;

import androidx.media3.common.ParserException;
import androidx.media3.datasource.DataSourceException;
import androidx.media3.datasource.HttpDataSource;
import java.io.FileNotFoundException;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class DefaultLoadErrorHandlingPolicy implements LoadErrorHandlingPolicy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f15824a;

    public DefaultLoadErrorHandlingPolicy(int i2) {
        this.f15824a = i2;
    }

    @Override // androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy
    public final long a(LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo) {
        for (Throwable cause = loadErrorInfo.f15830a; cause != null; cause = cause.getCause()) {
            if ((cause instanceof ParserException) || (cause instanceof FileNotFoundException) || (cause instanceof HttpDataSource.CleartextNotPermittedException) || (cause instanceof Loader.UnexpectedLoaderException)) {
                return -9223372036854775807L;
            }
            if ((cause instanceof DataSourceException) && ((DataSourceException) cause).f14384b == 2008) {
                return -9223372036854775807L;
            }
        }
        return Math.min((loadErrorInfo.f15831b - 1) * 1000, 5000);
    }

    @Override // androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy
    public final int b(int i2) {
        int i3 = this.f15824a;
        if (i3 == -1) {
            return i2 == 7 ? 6 : 3;
        }
        return i3;
    }

    @Override // androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy
    public final LoadErrorHandlingPolicy.FallbackSelection c(LoadErrorHandlingPolicy.FallbackOptions fallbackOptions, LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo) {
        IOException iOException = loadErrorInfo.f15830a;
        if (!(iOException instanceof HttpDataSource.InvalidResponseCodeException)) {
            return null;
        }
        int i2 = ((HttpDataSource.InvalidResponseCodeException) iOException).d;
        if (i2 != 403 && i2 != 404 && i2 != 410 && i2 != 416 && i2 != 500 && i2 != 503) {
            return null;
        }
        if (fallbackOptions.f15825a - fallbackOptions.f15826b > 1) {
            return new LoadErrorHandlingPolicy.FallbackSelection(1, 300000L);
        }
        if (fallbackOptions.f15827c - fallbackOptions.d > 1) {
            return new LoadErrorHandlingPolicy.FallbackSelection(2, 60000L);
        }
        return null;
    }

    public DefaultLoadErrorHandlingPolicy() {
        this(-1);
    }
}
