package androidx.camera.video.internal.config;

import defpackage.tr;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0080\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/camera/video/internal/config/CaptureEncodeRates;", "", "", "captureRate", "encodeRate", "<init>", "(II)V", "camera-video_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class CaptureEncodeRates {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2983a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2984b;

    public CaptureEncodeRates(int i2, int i3) {
        this.f2983a = i2;
        this.f2984b = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CaptureEncodeRates)) {
            return false;
        }
        CaptureEncodeRates captureEncodeRates = (CaptureEncodeRates) obj;
        return this.f2983a == captureEncodeRates.f2983a && this.f2984b == captureEncodeRates.f2984b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f2984b) + (Integer.hashCode(this.f2983a) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CaptureEncodeRates(captureRate=");
        sb.append(this.f2983a);
        sb.append(", encodeRate=");
        return tr.k(sb, this.f2984b, ')');
    }
}
