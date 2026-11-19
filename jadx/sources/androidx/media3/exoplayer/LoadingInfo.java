package androidx.media3.exoplayer;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class LoadingInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f14703a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f14704b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f14705c;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f14706a = -9223372036854775807L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f14707b = -3.4028235E38f;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f14708c = -9223372036854775807L;
    }

    public LoadingInfo(Builder builder) {
        this.f14703a = builder.f14706a;
        this.f14704b = builder.f14707b;
        this.f14705c = builder.f14708c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LoadingInfo)) {
            return false;
        }
        LoadingInfo loadingInfo = (LoadingInfo) obj;
        return this.f14703a == loadingInfo.f14703a && this.f14704b == loadingInfo.f14704b && this.f14705c == loadingInfo.f14705c;
    }

    public final int hashCode() {
        return Objects.hash(Long.valueOf(this.f14703a), Float.valueOf(this.f14704b), Long.valueOf(this.f14705c));
    }
}
