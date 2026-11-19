package androidx.media3.extractor.metadata;

import androidx.media3.common.Metadata;

/* JADX INFO: loaded from: classes.dex */
public final class ThumbnailMetadata implements Metadata.Entry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f16334a;

    public ThumbnailMetadata(long j2) {
        this.f16334a = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && ThumbnailMetadata.class == obj.getClass() && this.f16334a == ((ThumbnailMetadata) obj).f16334a;
    }

    public final int hashCode() {
        return Long.hashCode(this.f16334a) + 527;
    }

    public final String toString() {
        return "ThumbnailMetadata: presentationTimeUs=" + this.f16334a;
    }
}
