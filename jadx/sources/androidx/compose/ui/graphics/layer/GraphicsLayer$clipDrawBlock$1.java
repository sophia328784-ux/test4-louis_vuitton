package androidx.compose.ui.graphics.layer;

import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/graphics/drawscope/DrawScope;", "invoke"}, k = 3, mv = {2, 1, 0}, xi = 48)
public final class GraphicsLayer$clipDrawBlock$1 extends Lambda implements Function1<DrawScope, Unit> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GraphicsLayer f9032c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GraphicsLayer$clipDrawBlock$1(GraphicsLayer graphicsLayer) {
        super(1);
        this.f9032c = graphicsLayer;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        DrawScope drawScope = (DrawScope) obj;
        GraphicsLayer graphicsLayer = this.f9032c;
        Path path = graphicsLayer.l;
        if (graphicsLayer.n && graphicsLayer.w && path != null) {
            ClipOp.f8864a.getClass();
            int i2 = ClipOp.f8865b;
            CanvasDrawScope$drawContext$1 f8996c = drawScope.getF8996c();
            long jD = f8996c.d();
            f8996c.a().p();
            try {
                f8996c.f9001a.c(path, i2);
                graphicsLayer.c(drawScope);
            } finally {
                pq0.y(f8996c, jD);
            }
        } else {
            graphicsLayer.c(drawScope);
        }
        return Unit.f71739a;
    }
}
