package androidx.camera.core.featuregroup.impl.feature;

import androidx.camera.core.featuregroup.GroupableFeature;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature;", "Landroidx/camera/core/featuregroup/GroupableFeature;", "", "imageCaptureOutputFormat", "<init>", "(I)V", "Companion", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ImageFormatFeature extends GroupableFeature {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2033c;
    public final FeatureTypeInternal d = FeatureTypeInternal.IMAGE_FORMAT;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature$Companion;", "", "", "DEFAULT_IMAGE_CAPTURE_OUTPUT_FORMAT", "I", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public ImageFormatFeature(int i2) {
        this.f2033c = i2;
    }

    @Override // androidx.camera.core.featuregroup.GroupableFeature
    /* JADX INFO: renamed from: a, reason: from getter */
    public final FeatureTypeInternal getD() {
        return this.d;
    }

    public final String toString() {
        String strQ;
        StringBuilder sb = new StringBuilder("ImageFormatFeature(imageCaptureOutputFormat=");
        int i2 = this.f2033c;
        if (i2 != 0) {
            strQ = i2 != 1 ? n00.q("UNDEFINED(", i2, ')') : "JPEG_R";
        } else {
            strQ = "JPEG";
        }
        return fc.l(sb, strQ, ')');
    }
}
