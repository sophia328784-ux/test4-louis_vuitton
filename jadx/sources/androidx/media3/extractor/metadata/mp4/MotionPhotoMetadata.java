package androidx.media3.extractor.metadata.mp4;

import androidx.media3.common.Metadata;
import defpackage.fc;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class MotionPhotoMetadata implements Metadata.Entry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f16398a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f16399b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f16400c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f16401e;

    public MotionPhotoMetadata(long j2, long j3, long j4, long j5, long j6) {
        this.f16398a = j2;
        this.f16399b = j3;
        this.f16400c = j4;
        this.d = j5;
        this.f16401e = j6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            MotionPhotoMetadata motionPhotoMetadata = (MotionPhotoMetadata) obj;
            if (this.f16398a == motionPhotoMetadata.f16398a && this.f16399b == motionPhotoMetadata.f16399b && this.f16400c == motionPhotoMetadata.f16400c && this.d == motionPhotoMetadata.d && this.f16401e == motionPhotoMetadata.f16401e) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.f16401e) + fc.a(fc.a(fc.a(fc.a(527, 31, this.f16398a), 31, this.f16399b), 31, this.f16400c), 31, this.d);
    }

    public final String toString() {
        return "Motion photo metadata: photoStartPosition=" + this.f16398a + ", photoSize=" + this.f16399b + ", photoPresentationTimestampUs=" + this.f16400c + ", videoStartPosition=" + this.d + ", videoSize=" + this.f16401e;
    }
}
