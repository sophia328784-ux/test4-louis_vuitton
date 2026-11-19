package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1", "Landroidx/compose/ui/graphics/drawscope/DrawContext;", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CanvasDrawScope$drawContext$1 implements DrawContext {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CanvasDrawScopeKt$asDrawTransform$1 f9001a = new CanvasDrawScopeKt$asDrawTransform$1(this);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public GraphicsLayer f9002b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CanvasDrawScope f9003c;

    public CanvasDrawScope$drawContext$1(CanvasDrawScope canvasDrawScope) {
        this.f9003c = canvasDrawScope;
    }

    public final Canvas a() {
        return this.f9003c.f8995b.f9000c;
    }

    public final Density b() {
        return this.f9003c.f8995b.f8998a;
    }

    public final LayoutDirection c() {
        return this.f9003c.f8995b.f8999b;
    }

    public final long d() {
        return this.f9003c.f8995b.d;
    }

    public final void e(Canvas canvas) {
        this.f9003c.f8995b.f9000c = canvas;
    }

    public final void f(Density density) {
        this.f9003c.f8995b.f8998a = density;
    }

    public final void g(LayoutDirection layoutDirection) {
        this.f9003c.f8995b.f8999b = layoutDirection;
    }

    public final void h(long j2) {
        this.f9003c.f8995b.d = j2;
    }
}
