package androidx.media3.exoplayer.upstream;

import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes.dex */
public interface LoadErrorHandlingPolicy {

    public static final class FallbackOptions {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f15825a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f15826b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f15827c;
        public final int d;

        public FallbackOptions(int i2, int i3, int i4, int i5) {
            this.f15825a = i2;
            this.f15826b = i3;
            this.f15827c = i4;
            this.d = i5;
        }
    }

    public static final class FallbackSelection {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f15828a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f15829b;

        public FallbackSelection(int i2, long j2) {
            Preconditions.g(j2 >= 0);
            this.f15828a = i2;
            this.f15829b = j2;
        }
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface FallbackType {
    }

    public static final class LoadErrorInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final IOException f15830a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f15831b;

        public LoadErrorInfo(LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, int i2) {
            this.f15830a = iOException;
            this.f15831b = i2;
        }
    }

    long a(LoadErrorInfo loadErrorInfo);

    int b(int i2);

    FallbackSelection c(FallbackOptions fallbackOptions, LoadErrorInfo loadErrorInfo);
}
