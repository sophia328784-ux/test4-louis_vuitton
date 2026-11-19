package androidx.media3.exoplayer.upstream;

import com.google.common.base.Preconditions;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes.dex */
public final class CmcdConfiguration {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f15755a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f15756b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RequestConfig f15757c;
    public final int d;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface CmcdKey {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface DataTransmissionMode {
    }

    public interface Factory {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface HeaderKey {
    }

    public interface RequestConfig {
    }

    public CmcdConfiguration(String str, String str2, RequestConfig requestConfig, int i2) {
        boolean z = true;
        Preconditions.g(str == null || str.length() <= 64);
        if (str2 != null && str2.length() > 64) {
            z = false;
        }
        Preconditions.g(z);
        requestConfig.getClass();
        this.f15755a = str;
        this.f15756b = str2;
        this.f15757c = requestConfig;
        this.d = i2;
    }

    public CmcdConfiguration(String str, String str2, RequestConfig requestConfig) {
        this(str, str2, requestConfig, 0);
    }
}
