package androidx.media3.extractor.metadata.mp4;

import androidx.media3.common.Metadata;
import defpackage.pq0;

/* JADX INFO: loaded from: classes.dex */
public final class SmtaMetadataEntry implements Metadata.Entry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f16406a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f16407b;

    public SmtaMetadataEntry(float f2, int i2) {
        this.f16406a = f2;
        this.f16407b = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && SmtaMetadataEntry.class == obj.getClass()) {
            SmtaMetadataEntry smtaMetadataEntry = (SmtaMetadataEntry) obj;
            if (this.f16406a == smtaMetadataEntry.f16406a && this.f16407b == smtaMetadataEntry.f16407b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return pq0.b(527, 31, this.f16406a) + this.f16407b;
    }

    public final String toString() {
        return "smta: captureFrameRate=" + this.f16406a + ", svcTemporalLayerCount=" + this.f16407b;
    }
}
