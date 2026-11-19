package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/graphics/drawscope/DrawScope;", "invoke"}, k = 3, mv = {2, 1, 0}, xi = 48)
public final class VectorComponent$drawVectorBlock$1 extends Lambda implements Function1<DrawScope, Unit> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ VectorComponent f9162c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VectorComponent$drawVectorBlock$1(VectorComponent vectorComponent) {
        super(1);
        this.f9162c = vectorComponent;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        DrawScope drawScope = (DrawScope) obj;
        VectorComponent vectorComponent = this.f9162c;
        GroupComponent groupComponent = vectorComponent.f9153b;
        float f2 = vectorComponent.f9160k;
        float f3 = vectorComponent.l;
        Offset.f8806b.getClass();
        CanvasDrawScope$drawContext$1 f8996c = drawScope.getF8996c();
        long jD = f8996c.d();
        f8996c.a().p();
        try {
            f8996c.f9001a.f(f2, f3, 0L);
            groupComponent.a(drawScope);
            return Unit.f71739a;
        } finally {
            pq0.y(f8996c, jD);
        }
    }
}
