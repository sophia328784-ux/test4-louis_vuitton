package androidx.camera.core.imagecapture;

import androidx.camera.core.ImageProxy;
import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_ProcessingNode_InputPacket extends ProcessingNode.InputPacket {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ProcessingRequest f2062a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImageProxy f2063b;

    public AutoValue_ProcessingNode_InputPacket(ProcessingRequest processingRequest, ImageProxy imageProxy) {
        if (processingRequest == null) {
            r81.d("Null processingRequest");
            throw null;
        }
        this.f2062a = processingRequest;
        this.f2063b = imageProxy;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ProcessingNode.InputPacket)) {
            return false;
        }
        AutoValue_ProcessingNode_InputPacket autoValue_ProcessingNode_InputPacket = (AutoValue_ProcessingNode_InputPacket) ((ProcessingNode.InputPacket) obj);
        return this.f2062a.equals(autoValue_ProcessingNode_InputPacket.f2062a) && this.f2063b.equals(autoValue_ProcessingNode_InputPacket.f2063b);
    }

    public final int hashCode() {
        return this.f2063b.hashCode() ^ ((this.f2062a.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "InputPacket{processingRequest=" + this.f2062a + ", imageProxy=" + this.f2063b + "}";
    }
}
