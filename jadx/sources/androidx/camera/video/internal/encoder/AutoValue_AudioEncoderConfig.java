package androidx.camera.video.internal.encoder;

import androidx.camera.core.impl.Timebase;
import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_AudioEncoderConfig extends AudioEncoderConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f2996a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2997b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Timebase f2998c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f2999e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f3000f;
    public final int g;

    public static final class Builder extends AudioEncoderConfig.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f3001a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Integer f3002b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Timebase f3003c;
        public Integer d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Integer f3004e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Integer f3005f;
        public Integer g;

        @Override // androidx.camera.video.internal.encoder.AudioEncoderConfig.Builder
        public final AudioEncoderConfig.Builder b(int i2) {
            this.d = Integer.valueOf(i2);
            return this;
        }

        @Override // androidx.camera.video.internal.encoder.AudioEncoderConfig.Builder
        public final AudioEncoderConfig.Builder c(int i2) {
            this.f3004e = Integer.valueOf(i2);
            return this;
        }

        @Override // androidx.camera.video.internal.encoder.AudioEncoderConfig.Builder
        public final AudioEncoderConfig.Builder d(int i2) {
            this.g = Integer.valueOf(i2);
            return this;
        }

        @Override // androidx.camera.video.internal.encoder.AudioEncoderConfig.Builder
        public final AudioEncoderConfig.Builder e(int i2) {
            this.f3005f = Integer.valueOf(i2);
            return this;
        }

        @Override // androidx.camera.video.internal.encoder.AudioEncoderConfig.Builder
        public final AudioEncoderConfig.Builder f(Timebase timebase) {
            if (timebase != null) {
                this.f3003c = timebase;
                return this;
            }
            r81.d("Null inputTimebase");
            return null;
        }

        @Override // androidx.camera.video.internal.encoder.AudioEncoderConfig.Builder
        public final AudioEncoderConfig.Builder g(String str) {
            if (str != null) {
                this.f3001a = str;
                return this;
            }
            r81.d("Null mimeType");
            return null;
        }

        @Override // androidx.camera.video.internal.encoder.AudioEncoderConfig.Builder
        public final AudioEncoderConfig.Builder h(int i2) {
            this.f3002b = Integer.valueOf(i2);
            return this;
        }
    }

    public AutoValue_AudioEncoderConfig(String str, int i2, Timebase timebase, int i3, int i4, int i5, int i6) {
        this.f2996a = str;
        this.f2997b = i2;
        this.f2998c = timebase;
        this.d = i3;
        this.f2999e = i4;
        this.f3000f = i5;
        this.g = i6;
    }

    @Override // androidx.camera.video.internal.encoder.EncoderConfig
    public final String b() {
        return this.f2996a;
    }

    @Override // androidx.camera.video.internal.encoder.EncoderConfig
    public final Timebase c() {
        return this.f2998c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AudioEncoderConfig) {
            AutoValue_AudioEncoderConfig autoValue_AudioEncoderConfig = (AutoValue_AudioEncoderConfig) ((AudioEncoderConfig) obj);
            if (this.f2996a.equals(autoValue_AudioEncoderConfig.f2996a) && this.f2997b == autoValue_AudioEncoderConfig.f2997b && this.f2998c.equals(autoValue_AudioEncoderConfig.f2998c) && this.d == autoValue_AudioEncoderConfig.d && this.f2999e == autoValue_AudioEncoderConfig.f2999e && this.f3000f == autoValue_AudioEncoderConfig.f3000f && this.g == autoValue_AudioEncoderConfig.g) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.g ^ ((((((((((((this.f2996a.hashCode() ^ 1000003) * 1000003) ^ this.f2997b) * 1000003) ^ this.f2998c.hashCode()) * 1000003) ^ this.d) * 1000003) ^ this.f2999e) * 1000003) ^ this.f3000f) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AudioEncoderConfig{mimeType=");
        sb.append(this.f2996a);
        sb.append(", profile=");
        sb.append(this.f2997b);
        sb.append(", inputTimebase=");
        sb.append(this.f2998c);
        sb.append(", bitrate=");
        sb.append(this.d);
        sb.append(", captureSampleRate=");
        sb.append(this.f2999e);
        sb.append(", encodeSampleRate=");
        sb.append(this.f3000f);
        sb.append(", channelCount=");
        return defpackage.a.i(this.g, "}", sb);
    }
}
