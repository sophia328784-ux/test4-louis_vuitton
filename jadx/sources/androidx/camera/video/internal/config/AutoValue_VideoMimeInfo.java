package androidx.camera.video.internal.config;

import androidx.camera.core.impl.EncoderProfilesProxy;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_VideoMimeInfo extends VideoMimeInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f2977a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2978b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final EncoderProfilesProxy.VideoProfileProxy f2979c;

    public static final class Builder extends VideoMimeInfo.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f2980a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Integer f2981b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public EncoderProfilesProxy.VideoProfileProxy f2982c;
    }

    public AutoValue_VideoMimeInfo(String str, int i2, EncoderProfilesProxy.VideoProfileProxy videoProfileProxy) {
        this.f2977a = str;
        this.f2978b = i2;
        this.f2979c = videoProfileProxy;
    }

    @Override // androidx.camera.video.internal.config.MimeInfo
    public final String a() {
        return this.f2977a;
    }

    @Override // androidx.camera.video.internal.config.MimeInfo
    public final int b() {
        return this.f2978b;
    }

    @Override // androidx.camera.video.internal.config.VideoMimeInfo
    public final EncoderProfilesProxy.VideoProfileProxy c() {
        return this.f2979c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof VideoMimeInfo)) {
            return false;
        }
        VideoMimeInfo videoMimeInfo = (VideoMimeInfo) obj;
        if (!this.f2977a.equals(videoMimeInfo.a()) || this.f2978b != videoMimeInfo.b()) {
            return false;
        }
        EncoderProfilesProxy.VideoProfileProxy videoProfileProxy = this.f2979c;
        if (videoProfileProxy == null) {
            return videoMimeInfo.c() == null;
        }
        return videoProfileProxy.equals(videoMimeInfo.c());
    }

    public final int hashCode() {
        int iHashCode = (((this.f2977a.hashCode() ^ 1000003) * 1000003) ^ this.f2978b) * 1000003;
        EncoderProfilesProxy.VideoProfileProxy videoProfileProxy = this.f2979c;
        return (videoProfileProxy == null ? 0 : videoProfileProxy.hashCode()) ^ iHashCode;
    }

    public final String toString() {
        return "VideoMimeInfo{mimeType=" + this.f2977a + ", profile=" + this.f2978b + ", compatibleVideoProfile=" + this.f2979c + "}";
    }
}
