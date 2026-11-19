package androidx.media3.exoplayer.audio;

import android.media.AudioDeviceInfo;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.Format;
import androidx.media3.common.util.Clock;
import defpackage.md;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public interface AudioOutputProvider {

    public static final class ConfigurationException extends Exception {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ConfigurationException(String str) {
            super(str);
            str.getClass();
        }
    }

    public static final class FormatConfig {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Format f14889a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AudioAttributes f14890b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AudioDeviceInfo f14891c;
        public final boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f14892e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f14893f;
        public final boolean g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f14894h;

        public static final class Builder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Format f14895a;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public AudioDeviceInfo f14897c;
            public boolean d;
            public boolean g;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public AudioAttributes f14896b = AudioAttributes.f13689i;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f14898e = 0;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f14899f = -1;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public int f14900h = -1;

            public Builder(Format format) {
                this.f14895a = format;
            }
        }

        public FormatConfig(Builder builder) {
            this.f14889a = builder.f14895a;
            this.f14890b = builder.f14896b;
            this.f14891c = builder.f14897c;
            this.d = builder.d;
            this.f14892e = builder.f14898e;
            this.f14893f = builder.f14899f;
            this.g = builder.g;
            this.f14894h = builder.f14900h;
        }
    }

    public static final class FormatSupport {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f14901a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f14902b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f14903c;
        public final int d;

        public static final class Builder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f14904a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public boolean f14905b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public boolean f14906c;
            public int d = 0;

            public final FormatSupport a() {
                if (this.f14904a || !(this.f14905b || this.f14906c)) {
                    return new FormatSupport(this);
                }
                md.k("Secondary offload attribute fields are true but primary isFormatSupportedForOffload is false");
                return null;
            }
        }

        static {
            new Builder().a();
        }

        public FormatSupport(Builder builder) {
            this.f14901a = builder.f14904a;
            this.f14902b = builder.f14905b;
            this.f14903c = builder.f14906c;
            this.d = builder.d;
        }
    }

    public interface Listener {
        void a();
    }

    public static final class OutputConfig {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14907a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f14908b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f14909c;
        public final boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f14910e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f14911f;
        public final AudioAttributes g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f14912h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f14913i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final boolean f14914j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final boolean f14915k;

        public static final class Builder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f14916a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f14917b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f14918c;
            public boolean d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f14919e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f14920f;
            public AudioAttributes g = AudioAttributes.f13689i;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public int f14921h = 0;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public int f14922i = -1;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public boolean f14923j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public boolean f14924k;
        }

        public OutputConfig(Builder builder) {
            this.f14907a = builder.f14916a;
            this.f14908b = builder.f14917b;
            this.f14909c = builder.f14918c;
            this.d = builder.d;
            this.f14910e = builder.f14919e;
            this.f14911f = builder.f14920f;
            this.g = builder.g;
            this.f14912h = builder.f14921h;
            this.f14913i = builder.f14922i;
            this.f14914j = builder.f14923j;
            this.f14915k = builder.f14924k;
        }

        public final Builder a() {
            Builder builder = new Builder();
            builder.f14916a = this.f14907a;
            builder.f14917b = this.f14908b;
            builder.f14918c = this.f14909c;
            builder.d = this.d;
            builder.f14919e = this.f14910e;
            builder.f14920f = this.f14911f;
            builder.g = this.g;
            builder.f14921h = this.f14912h;
            builder.f14922i = this.f14913i;
            builder.f14923j = this.f14914j;
            builder.f14924k = this.f14915k;
            return builder;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || OutputConfig.class != obj.getClass()) {
                return false;
            }
            OutputConfig outputConfig = (OutputConfig) obj;
            return this.f14907a == outputConfig.f14907a && this.f14908b == outputConfig.f14908b && this.f14909c == outputConfig.f14909c && this.d == outputConfig.d && this.f14910e == outputConfig.f14910e && this.f14911f == outputConfig.f14911f && this.f14912h == outputConfig.f14912h && this.f14913i == outputConfig.f14913i && this.f14914j == outputConfig.f14914j && this.f14915k == outputConfig.f14915k && this.g.equals(outputConfig.g);
        }

        public final int hashCode() {
            return Objects.hash(Integer.valueOf(this.f14907a), Integer.valueOf(this.f14908b), Integer.valueOf(this.f14909c), Boolean.valueOf(this.d), Boolean.valueOf(this.f14910e), Integer.valueOf(this.f14911f), this.g, Integer.valueOf(this.f14912h), Integer.valueOf(this.f14913i), Boolean.valueOf(this.f14915k), Boolean.valueOf(this.f14914j));
        }
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface SupportLevel {
    }

    default void i(Clock clock) {
    }

    FormatSupport j(FormatConfig formatConfig);

    OutputConfig k(FormatConfig formatConfig);

    AudioTrackAudioOutput l(OutputConfig outputConfig);

    void m(c cVar);

    void release();

    public static final class InitializationException extends Exception {
        public InitializationException() {
        }

        public InitializationException(Throwable th) {
            super(th);
        }
    }
}
