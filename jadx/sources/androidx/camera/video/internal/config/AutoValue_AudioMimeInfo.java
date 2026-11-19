package androidx.camera.video.internal.config;

import androidx.camera.core.impl.EncoderProfilesProxy;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_AudioMimeInfo extends AudioMimeInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f2971a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2972b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final EncoderProfilesProxy.AudioProfileProxy f2973c;

    public static final class Builder extends AudioMimeInfo.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f2974a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Integer f2975b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public EncoderProfilesProxy.AudioProfileProxy f2976c;
    }

    public AutoValue_AudioMimeInfo(String str, int i2, EncoderProfilesProxy.AudioProfileProxy audioProfileProxy) {
        this.f2971a = str;
        this.f2972b = i2;
        this.f2973c = audioProfileProxy;
    }

    @Override // androidx.camera.video.internal.config.MimeInfo
    public final String a() {
        return this.f2971a;
    }

    @Override // androidx.camera.video.internal.config.MimeInfo
    public final int b() {
        return this.f2972b;
    }

    @Override // androidx.camera.video.internal.config.AudioMimeInfo
    public final EncoderProfilesProxy.AudioProfileProxy c() {
        return this.f2973c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AudioMimeInfo)) {
            return false;
        }
        AudioMimeInfo audioMimeInfo = (AudioMimeInfo) obj;
        if (!this.f2971a.equals(audioMimeInfo.a()) || this.f2972b != audioMimeInfo.b()) {
            return false;
        }
        EncoderProfilesProxy.AudioProfileProxy audioProfileProxy = this.f2973c;
        if (audioProfileProxy == null) {
            return audioMimeInfo.c() == null;
        }
        return audioProfileProxy.equals(audioMimeInfo.c());
    }

    public final int hashCode() {
        int iHashCode = (((this.f2971a.hashCode() ^ 1000003) * 1000003) ^ this.f2972b) * 1000003;
        EncoderProfilesProxy.AudioProfileProxy audioProfileProxy = this.f2973c;
        return (audioProfileProxy == null ? 0 : audioProfileProxy.hashCode()) ^ iHashCode;
    }

    public final String toString() {
        return "AudioMimeInfo{mimeType=" + this.f2971a + ", profile=" + this.f2972b + ", compatibleAudioProfile=" + this.f2973c + "}";
    }
}
