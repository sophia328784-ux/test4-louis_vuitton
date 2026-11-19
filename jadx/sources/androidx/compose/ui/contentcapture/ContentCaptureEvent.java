package androidx.compose.ui.contentcapture;

import androidx.compose.ui.platform.coreshims.ViewStructureCompat;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/ui/contentcapture/ContentCaptureEvent;", "", "", com.batch.android.s.b.a.f24015b, "", "timestamp", "Landroidx/compose/ui/contentcapture/ContentCaptureEventType;", "type", "Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;", "structureCompat", "<init>", "(IJLandroidx/compose/ui/contentcapture/ContentCaptureEventType;Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final /* data */ class ContentCaptureEvent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f8676a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f8677b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ContentCaptureEventType f8678c;
    public final ViewStructureCompat d;

    public ContentCaptureEvent(int i2, long j2, ContentCaptureEventType contentCaptureEventType, ViewStructureCompat viewStructureCompat) {
        this.f8676a = i2;
        this.f8677b = j2;
        this.f8678c = contentCaptureEventType;
        this.d = viewStructureCompat;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ContentCaptureEvent)) {
            return false;
        }
        ContentCaptureEvent contentCaptureEvent = (ContentCaptureEvent) obj;
        return this.f8676a == contentCaptureEvent.f8676a && this.f8677b == contentCaptureEvent.f8677b && this.f8678c == contentCaptureEvent.f8678c && Intrinsics.c(this.d, contentCaptureEvent.d);
    }

    public final int hashCode() {
        int iHashCode = (this.f8678c.hashCode() + fc.a(Integer.hashCode(this.f8676a) * 31, 31, this.f8677b)) * 31;
        ViewStructureCompat viewStructureCompat = this.d;
        return iHashCode + (viewStructureCompat == null ? 0 : viewStructureCompat.hashCode());
    }

    public final String toString() {
        return "ContentCaptureEvent(id=" + this.f8676a + ", timestamp=" + this.f8677b + ", type=" + this.f8678c + ", structureCompat=" + this.d + ')';
    }
}
