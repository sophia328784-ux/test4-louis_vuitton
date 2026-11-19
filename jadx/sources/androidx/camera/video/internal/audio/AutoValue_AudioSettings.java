package androidx.camera.video.internal.audio;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_AudioSettings extends AudioSettings {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2910b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2911c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f2912e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f2913f;

    public static final class Builder extends AudioSettings.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Integer f2914a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Integer f2915b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Integer f2916c;
        public Integer d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Integer f2917e;

        @Override // androidx.camera.video.internal.audio.AudioSettings.Builder
        public final AudioSettings.Builder b(int i2) {
            this.f2917e = Integer.valueOf(i2);
            return this;
        }

        @Override // androidx.camera.video.internal.audio.AudioSettings.Builder
        public final AudioSettings.Builder c(int i2) {
            this.f2914a = Integer.valueOf(i2);
            return this;
        }

        @Override // androidx.camera.video.internal.audio.AudioSettings.Builder
        public final AudioSettings.Builder d(int i2) {
            this.f2915b = Integer.valueOf(i2);
            return this;
        }

        @Override // androidx.camera.video.internal.audio.AudioSettings.Builder
        public final AudioSettings.Builder e(int i2) {
            this.d = Integer.valueOf(i2);
            return this;
        }

        @Override // androidx.camera.video.internal.audio.AudioSettings.Builder
        public final AudioSettings.Builder f(int i2) {
            this.f2916c = Integer.valueOf(i2);
            return this;
        }
    }

    public AutoValue_AudioSettings(int i2, int i3, int i4, int i5, int i6) {
        this.f2910b = i2;
        this.f2911c = i3;
        this.d = i4;
        this.f2912e = i5;
        this.f2913f = i6;
    }

    @Override // androidx.camera.video.internal.audio.AudioSettings
    public final int c() {
        return this.f2911c;
    }

    @Override // androidx.camera.video.internal.audio.AudioSettings
    public final int d() {
        return this.f2912e;
    }

    @Override // androidx.camera.video.internal.audio.AudioSettings
    public final int e() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AudioSettings) {
            AutoValue_AudioSettings autoValue_AudioSettings = (AutoValue_AudioSettings) ((AudioSettings) obj);
            if (this.f2910b == autoValue_AudioSettings.f2910b && this.f2911c == autoValue_AudioSettings.f2911c && this.d == autoValue_AudioSettings.d && this.f2912e == autoValue_AudioSettings.f2912e && this.f2913f == autoValue_AudioSettings.f2913f) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f2913f ^ ((((((((this.f2910b ^ 1000003) * 1000003) ^ this.f2911c) * 1000003) ^ this.d) * 1000003) ^ this.f2912e) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AudioSettings{audioSource=");
        sb.append(this.f2910b);
        sb.append(", captureSampleRate=");
        sb.append(this.f2911c);
        sb.append(", encodeSampleRate=");
        sb.append(this.d);
        sb.append(", channelCount=");
        sb.append(this.f2912e);
        sb.append(", audioFormat=");
        return defpackage.a.i(this.f2913f, "}", sb);
    }
}
