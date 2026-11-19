package androidx.camera.video.internal;

import androidx.camera.core.impl.EncoderProfilesProxy;
import defpackage.r81;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_VideoValidatedEncoderProfilesProxy extends VideoValidatedEncoderProfilesProxy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2875a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2876b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f2877c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final EncoderProfilesProxy.AudioProfileProxy f2878e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final EncoderProfilesProxy.VideoProfileProxy f2879f;

    public AutoValue_VideoValidatedEncoderProfilesProxy(int i2, int i3, List list, List list2, EncoderProfilesProxy.AudioProfileProxy audioProfileProxy, EncoderProfilesProxy.VideoProfileProxy videoProfileProxy) {
        this.f2875a = i2;
        this.f2876b = i3;
        if (list == null) {
            r81.d("Null audioProfiles");
            throw null;
        }
        this.f2877c = list;
        if (list2 == null) {
            r81.d("Null videoProfiles");
            throw null;
        }
        this.d = list2;
        this.f2878e = audioProfileProxy;
        if (videoProfileProxy != null) {
            this.f2879f = videoProfileProxy;
        } else {
            r81.d("Null defaultVideoProfile");
            throw null;
        }
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProxy
    public final int a() {
        return this.f2875a;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProxy
    public final List b() {
        return this.d;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProxy
    public final int c() {
        return this.f2876b;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProxy
    public final List d() {
        return this.f2877c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof VideoValidatedEncoderProfilesProxy)) {
            return false;
        }
        VideoValidatedEncoderProfilesProxy videoValidatedEncoderProfilesProxy = (VideoValidatedEncoderProfilesProxy) obj;
        AutoValue_VideoValidatedEncoderProfilesProxy autoValue_VideoValidatedEncoderProfilesProxy = (AutoValue_VideoValidatedEncoderProfilesProxy) videoValidatedEncoderProfilesProxy;
        if (this.f2875a != autoValue_VideoValidatedEncoderProfilesProxy.f2875a || this.f2876b != autoValue_VideoValidatedEncoderProfilesProxy.f2876b || !this.f2877c.equals(autoValue_VideoValidatedEncoderProfilesProxy.f2877c) || !this.d.equals(autoValue_VideoValidatedEncoderProfilesProxy.d)) {
            return false;
        }
        EncoderProfilesProxy.AudioProfileProxy audioProfileProxy = this.f2878e;
        if (audioProfileProxy == null) {
            if (videoValidatedEncoderProfilesProxy.f() != null) {
                return false;
            }
        } else if (!audioProfileProxy.equals(videoValidatedEncoderProfilesProxy.f())) {
            return false;
        }
        return this.f2879f.equals(videoValidatedEncoderProfilesProxy.g());
    }

    @Override // androidx.camera.video.internal.VideoValidatedEncoderProfilesProxy
    public final EncoderProfilesProxy.AudioProfileProxy f() {
        return this.f2878e;
    }

    @Override // androidx.camera.video.internal.VideoValidatedEncoderProfilesProxy
    public final EncoderProfilesProxy.VideoProfileProxy g() {
        return this.f2879f;
    }

    public final int hashCode() {
        int iHashCode = (((((((this.f2875a ^ 1000003) * 1000003) ^ this.f2876b) * 1000003) ^ this.f2877c.hashCode()) * 1000003) ^ this.d.hashCode()) * 1000003;
        EncoderProfilesProxy.AudioProfileProxy audioProfileProxy = this.f2878e;
        return this.f2879f.hashCode() ^ ((iHashCode ^ (audioProfileProxy == null ? 0 : audioProfileProxy.hashCode())) * 1000003);
    }

    public final String toString() {
        return "VideoValidatedEncoderProfilesProxy{defaultDurationSeconds=" + this.f2875a + ", recommendedFileFormat=" + this.f2876b + ", audioProfiles=" + this.f2877c + ", videoProfiles=" + this.d + ", defaultAudioProfile=" + this.f2878e + ", defaultVideoProfile=" + this.f2879f + "}";
    }
}
