package androidx.compose.ui.node;

import androidx.compose.ui.geometry.MutableRect;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b`\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/node/OwnedLayer;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface OwnedLayer {
    void a(float[] fArr);

    long b(long j2, boolean z);

    void c(long j2);

    void d(Canvas canvas, GraphicsLayer graphicsLayer);

    void destroy();

    void e(MutableRect mutableRect, boolean z);

    boolean f(long j2);

    void g(ReusableGraphicsLayerScope reusableGraphicsLayerScope);

    /* JADX INFO: renamed from: getUnderlyingMatrix-sQKQjiQ, reason: not valid java name */
    float[] mo3getUnderlyingMatrixsQKQjiQ();

    void h(Function0 function0, Function2 function2);

    void i(float[] fArr);

    void invalidate();

    void j(long j2);

    void k();
}
