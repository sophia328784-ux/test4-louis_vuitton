package androidx.media3.common;

import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class DeviceInfo {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final DeviceInfo f13735e = new Builder(0).a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f13736f;
    public static final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f13737h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f13738i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f13739a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f13740b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f13741c;
    public final String d;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f13742a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f13743b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f13744c;
        public String d;

        public Builder(int i2) {
            this.f13742a = i2;
        }

        public final DeviceInfo a() {
            Preconditions.g(this.f13743b <= this.f13744c);
            return new DeviceInfo(this);
        }
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface PlaybackType {
    }

    static {
        String str = Util.f14242a;
        f13736f = Integer.toString(0, 36);
        g = Integer.toString(1, 36);
        f13737h = Integer.toString(2, 36);
        f13738i = Integer.toString(3, 36);
    }

    public DeviceInfo(Builder builder) {
        this.f13739a = builder.f13742a;
        this.f13740b = builder.f13743b;
        this.f13741c = builder.f13744c;
        this.d = builder.d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeviceInfo)) {
            return false;
        }
        DeviceInfo deviceInfo = (DeviceInfo) obj;
        return this.f13739a == deviceInfo.f13739a && this.f13740b == deviceInfo.f13740b && this.f13741c == deviceInfo.f13741c && Objects.equals(this.d, deviceInfo.d);
    }

    public final int hashCode() {
        int i2 = (((((527 + this.f13739a) * 31) + this.f13740b) * 31) + this.f13741c) * 31;
        String str = this.d;
        return i2 + (str == null ? 0 : str.hashCode());
    }

    @Deprecated
    public DeviceInfo(int i2, int i3, int i4) {
        Builder builder = new Builder(i2);
        builder.f13743b = i3;
        builder.f13744c = i4;
        this(builder);
    }
}
