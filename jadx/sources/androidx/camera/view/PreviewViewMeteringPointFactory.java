package androidx.camera.view;

import android.graphics.PointF;
import android.graphics.Rect;
import androidx.camera.core.MeteringPointFactory;

/* JADX INFO: loaded from: classes.dex */
class PreviewViewMeteringPointFactory extends MeteringPointFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PreviewTransformation f3158a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Rect f3159b = null;

    static {
        new PointF(2.0f, 2.0f);
    }

    public PreviewViewMeteringPointFactory(PreviewTransformation previewTransformation) {
        this.f3158a = previewTransformation;
    }
}
