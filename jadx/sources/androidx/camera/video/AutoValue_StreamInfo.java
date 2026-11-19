package androidx.camera.video;

import androidx.camera.core.SurfaceRequest;
import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_StreamInfo extends StreamInfo {
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final StreamInfo.StreamState f2746e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SurfaceRequest.TransformationInfo f2747f;

    public AutoValue_StreamInfo(int i2, StreamInfo.StreamState streamState, SurfaceRequest.TransformationInfo transformationInfo) {
        this.d = i2;
        if (streamState == null) {
            r81.d("Null streamState");
            throw null;
        }
        this.f2746e = streamState;
        this.f2747f = transformationInfo;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof StreamInfo) {
            AutoValue_StreamInfo autoValue_StreamInfo = (AutoValue_StreamInfo) ((StreamInfo) obj);
            if (this.d == autoValue_StreamInfo.d && this.f2746e.equals(autoValue_StreamInfo.f2746e)) {
                SurfaceRequest.TransformationInfo transformationInfo = autoValue_StreamInfo.f2747f;
                SurfaceRequest.TransformationInfo transformationInfo2 = this.f2747f;
                if (transformationInfo2 != null ? transformationInfo2.equals(transformationInfo) : transformationInfo == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (((this.d ^ 1000003) * 1000003) ^ this.f2746e.hashCode()) * 1000003;
        SurfaceRequest.TransformationInfo transformationInfo = this.f2747f;
        return (transformationInfo == null ? 0 : transformationInfo.hashCode()) ^ iHashCode;
    }

    public final String toString() {
        return "StreamInfo{id=" + this.d + ", streamState=" + this.f2746e + ", inProgressTransformationInfo=" + this.f2747f + "}";
    }
}
