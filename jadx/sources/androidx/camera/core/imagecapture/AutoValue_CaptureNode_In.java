package androidx.camera.core.imagecapture;

import android.util.Size;
import androidx.camera.core.ImageReaderProxyProvider;
import androidx.camera.core.processing.Edge;
import defpackage.r81;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_CaptureNode_In extends CaptureNode.In {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Size f2045f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList f2046h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f2047i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ImageReaderProxyProvider f2048j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final PostviewSettings f2049k;
    public final Edge l;
    public final Edge m;

    public AutoValue_CaptureNode_In(Size size, int i2, ArrayList arrayList, boolean z, ImageReaderProxyProvider imageReaderProxyProvider, PostviewSettings postviewSettings, Edge edge, Edge edge2) {
        this.f2083a = new CaptureNode.In.AnonymousClass1();
        this.f2086e = null;
        if (size == null) {
            r81.d("Null size");
            throw null;
        }
        this.f2045f = size;
        this.g = i2;
        this.f2046h = arrayList;
        this.f2047i = z;
        this.f2048j = imageReaderProxyProvider;
        this.f2049k = postviewSettings;
        this.l = edge;
        this.m = edge2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CaptureNode.In)) {
            return false;
        }
        AutoValue_CaptureNode_In autoValue_CaptureNode_In = (AutoValue_CaptureNode_In) ((CaptureNode.In) obj);
        if (!this.f2045f.equals(autoValue_CaptureNode_In.f2045f) || this.g != autoValue_CaptureNode_In.g || !this.f2046h.equals(autoValue_CaptureNode_In.f2046h) || this.f2047i != autoValue_CaptureNode_In.f2047i) {
            return false;
        }
        ImageReaderProxyProvider imageReaderProxyProvider = autoValue_CaptureNode_In.f2048j;
        ImageReaderProxyProvider imageReaderProxyProvider2 = this.f2048j;
        if (imageReaderProxyProvider2 == null) {
            if (imageReaderProxyProvider != null) {
                return false;
            }
        } else if (!imageReaderProxyProvider2.equals(imageReaderProxyProvider)) {
            return false;
        }
        PostviewSettings postviewSettings = autoValue_CaptureNode_In.f2049k;
        PostviewSettings postviewSettings2 = this.f2049k;
        if (postviewSettings2 == null) {
            if (postviewSettings != null) {
                return false;
            }
        } else if (!postviewSettings2.equals(postviewSettings)) {
            return false;
        }
        return this.l.equals(autoValue_CaptureNode_In.l) && this.m.equals(autoValue_CaptureNode_In.m);
    }

    public final int hashCode() {
        int iHashCode = (((((((this.f2045f.hashCode() ^ 1000003) * 1000003) ^ this.g) * 1000003) ^ this.f2046h.hashCode()) * 1000003) ^ (this.f2047i ? 1231 : 1237)) * 1000003;
        ImageReaderProxyProvider imageReaderProxyProvider = this.f2048j;
        int iHashCode2 = (iHashCode ^ (imageReaderProxyProvider == null ? 0 : imageReaderProxyProvider.hashCode())) * 1000003;
        PostviewSettings postviewSettings = this.f2049k;
        return this.m.hashCode() ^ ((((iHashCode2 ^ (postviewSettings != null ? postviewSettings.hashCode() : 0)) * 1000003) ^ this.l.hashCode()) * 1000003);
    }

    public final String toString() {
        return "In{size=" + this.f2045f + ", inputFormat=" + this.g + ", outputFormats=" + this.f2046h + ", virtualCamera=" + this.f2047i + ", imageReaderProxyProvider=" + this.f2048j + ", postviewSettings=" + this.f2049k + ", requestEdge=" + this.l + ", errorEdge=" + this.m + "}";
    }
}
