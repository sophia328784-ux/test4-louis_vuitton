package androidx.camera.video.internal.encoder;

import android.util.Size;
import androidx.camera.core.impl.Timebase;
import defpackage.md;
import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_VideoEncoderConfig extends VideoEncoderConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3006a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f3007b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Timebase f3008c;
    public final Size d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f3009e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final VideoEncoderDataSpace f3010f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3011h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f3012i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f3013j;

    public static final class Builder extends VideoEncoderConfig.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f3014a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Integer f3015b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Timebase f3016c;
        public Size d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Integer f3017e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public VideoEncoderDataSpace f3018f;
        public Integer g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Integer f3019h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Integer f3020i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public Integer f3021j;

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public final VideoEncoderConfig a() {
            String strConcat = this.f3014a == null ? " mimeType" : "";
            if (this.f3015b == null) {
                strConcat = strConcat.concat(" profile");
            }
            if (this.f3016c == null) {
                strConcat = strConcat.concat(" inputTimebase");
            }
            if (this.d == null) {
                strConcat = strConcat.concat(" resolution");
            }
            if (this.f3017e == null) {
                strConcat = strConcat.concat(" colorFormat");
            }
            if (this.f3018f == null) {
                strConcat = strConcat.concat(" dataSpace");
            }
            if (this.g == null) {
                strConcat = strConcat.concat(" captureFrameRate");
            }
            if (this.f3019h == null) {
                strConcat = strConcat.concat(" encodeFrameRate");
            }
            if (this.f3020i == null) {
                strConcat = strConcat.concat(" IFrameInterval");
            }
            if (this.f3021j == null) {
                strConcat = strConcat.concat(" bitrate");
            }
            if (strConcat.isEmpty()) {
                return new AutoValue_VideoEncoderConfig(this.f3014a, this.f3015b.intValue(), this.f3016c, this.d, this.f3017e.intValue(), this.f3018f, this.g.intValue(), this.f3019h.intValue(), this.f3020i.intValue(), this.f3021j.intValue());
            }
            md.k("Missing required properties:".concat(strConcat));
            return null;
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public final VideoEncoderConfig.Builder b(int i2) {
            this.f3021j = Integer.valueOf(i2);
            return this;
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public final VideoEncoderConfig.Builder c(int i2) {
            this.g = Integer.valueOf(i2);
            return this;
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public final VideoEncoderConfig.Builder d(VideoEncoderDataSpace videoEncoderDataSpace) {
            this.f3018f = videoEncoderDataSpace;
            return this;
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public final VideoEncoderConfig.Builder e(int i2) {
            this.f3019h = Integer.valueOf(i2);
            return this;
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public final VideoEncoderConfig.Builder f(Timebase timebase) {
            if (timebase != null) {
                this.f3016c = timebase;
                return this;
            }
            r81.d("Null inputTimebase");
            return null;
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public final VideoEncoderConfig.Builder g(String str) {
            if (str != null) {
                this.f3014a = str;
                return this;
            }
            r81.d("Null mimeType");
            return null;
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public final VideoEncoderConfig.Builder h(int i2) {
            this.f3015b = Integer.valueOf(i2);
            return this;
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public final VideoEncoderConfig.Builder i(Size size) {
            if (size != null) {
                this.d = size;
                return this;
            }
            r81.d("Null resolution");
            return null;
        }
    }

    public AutoValue_VideoEncoderConfig(String str, int i2, Timebase timebase, Size size, int i3, VideoEncoderDataSpace videoEncoderDataSpace, int i4, int i5, int i6, int i7) {
        this.f3006a = str;
        this.f3007b = i2;
        this.f3008c = timebase;
        this.d = size;
        this.f3009e = i3;
        this.f3010f = videoEncoderDataSpace;
        this.g = i4;
        this.f3011h = i5;
        this.f3012i = i6;
        this.f3013j = i7;
    }

    @Override // androidx.camera.video.internal.encoder.EncoderConfig
    public final String b() {
        return this.f3006a;
    }

    @Override // androidx.camera.video.internal.encoder.EncoderConfig
    public final Timebase c() {
        return this.f3008c;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig
    public final int e() {
        return this.g;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof VideoEncoderConfig) {
            AutoValue_VideoEncoderConfig autoValue_VideoEncoderConfig = (AutoValue_VideoEncoderConfig) ((VideoEncoderConfig) obj);
            if (this.f3006a.equals(autoValue_VideoEncoderConfig.f3006a) && this.f3007b == autoValue_VideoEncoderConfig.f3007b && this.f3008c.equals(autoValue_VideoEncoderConfig.f3008c) && this.d.equals(autoValue_VideoEncoderConfig.d) && this.f3009e == autoValue_VideoEncoderConfig.f3009e && this.f3010f.equals(autoValue_VideoEncoderConfig.f3010f) && this.g == autoValue_VideoEncoderConfig.g && this.f3011h == autoValue_VideoEncoderConfig.f3011h && this.f3012i == autoValue_VideoEncoderConfig.f3012i && this.f3013j == autoValue_VideoEncoderConfig.f3013j) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig
    public final VideoEncoderDataSpace f() {
        return this.f3010f;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig
    public final int g() {
        return this.f3011h;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig
    public final VideoEncoderConfig.Builder h() {
        Builder builder = new Builder();
        builder.f3014a = this.f3006a;
        builder.f3015b = Integer.valueOf(this.f3007b);
        builder.f3016c = this.f3008c;
        builder.d = this.d;
        builder.f3017e = Integer.valueOf(this.f3009e);
        builder.f3018f = this.f3010f;
        builder.g = Integer.valueOf(this.g);
        builder.f3019h = Integer.valueOf(this.f3011h);
        builder.f3020i = Integer.valueOf(this.f3012i);
        builder.f3021j = Integer.valueOf(this.f3013j);
        return builder;
    }

    public final int hashCode() {
        return this.f3013j ^ ((((((((((((((((((this.f3006a.hashCode() ^ 1000003) * 1000003) ^ this.f3007b) * 1000003) ^ this.f3008c.hashCode()) * 1000003) ^ this.d.hashCode()) * 1000003) ^ this.f3009e) * 1000003) ^ this.f3010f.hashCode()) * 1000003) ^ this.g) * 1000003) ^ this.f3011h) * 1000003) ^ this.f3012i) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("VideoEncoderConfig{mimeType=");
        sb.append(this.f3006a);
        sb.append(", profile=");
        sb.append(this.f3007b);
        sb.append(", inputTimebase=");
        sb.append(this.f3008c);
        sb.append(", resolution=");
        sb.append(this.d);
        sb.append(", colorFormat=");
        sb.append(this.f3009e);
        sb.append(", dataSpace=");
        sb.append(this.f3010f);
        sb.append(", captureFrameRate=");
        sb.append(this.g);
        sb.append(", encodeFrameRate=");
        sb.append(this.f3011h);
        sb.append(", IFrameInterval=");
        sb.append(this.f3012i);
        sb.append(", bitrate=");
        return defpackage.a.i(this.f3013j, "}", sb);
    }
}
