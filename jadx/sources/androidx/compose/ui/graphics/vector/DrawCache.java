package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.ImageBitmapConfig;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/graphics/vector/DrawCache;", "", "<init>", "()V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DrawCache {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public AndroidImageBitmap f9056a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AndroidCanvas f9057b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public DrawScope f9058c;
    public long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9059e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CanvasDrawScope f9060f;

    public DrawCache() {
        LayoutDirection layoutDirection = LayoutDirection.Ltr;
        IntSize.f11020b.getClass();
        this.d = 0L;
        ImageBitmapConfig.f8892b.getClass();
        this.f9059e = 0;
        this.f9060f = new CanvasDrawScope();
    }
}
