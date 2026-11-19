package androidx.compose.ui.draganddrop;

import android.graphics.Canvas;
import android.graphics.Point;
import android.view.View;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B0\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/compose/ui/draganddrop/ComposeDragShadowBuilder;", "Landroid/view/View$DragShadowBuilder;", "Landroidx/compose/ui/unit/Density;", "density", "Landroidx/compose/ui/geometry/Size;", "decorationSize", "Lkotlin/Function1;", "Landroidx/compose/ui/graphics/drawscope/DrawScope;", "", "Lkotlin/ExtensionFunctionType;", "drawDragDecoration", "<init>", "(Landroidx/compose/ui/unit/Density;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ComposeDragShadowBuilder extends View.DragShadowBuilder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Density f8686a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f8687b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function1 f8688c;

    public ComposeDragShadowBuilder(Density density, long j2, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this.f8686a = density;
        this.f8687b = j2;
        this.f8688c = function1;
    }

    @Override // android.view.View.DragShadowBuilder
    public final void onDrawShadow(Canvas canvas) {
        CanvasDrawScope canvasDrawScope = new CanvasDrawScope();
        LayoutDirection layoutDirection = LayoutDirection.Ltr;
        Canvas canvas2 = AndroidCanvas_androidKt.f8826a;
        AndroidCanvas androidCanvas = new AndroidCanvas();
        androidCanvas.f8823a = canvas;
        CanvasDrawScope.DrawParams drawParams = canvasDrawScope.f8995b;
        Density density = drawParams.f8998a;
        LayoutDirection layoutDirection2 = drawParams.f8999b;
        androidx.compose.ui.graphics.Canvas canvas3 = drawParams.f9000c;
        long j2 = drawParams.d;
        drawParams.f8998a = this.f8686a;
        drawParams.f8999b = layoutDirection;
        drawParams.f9000c = androidCanvas;
        drawParams.d = this.f8687b;
        androidCanvas.p();
        this.f8688c.invoke(canvasDrawScope);
        androidCanvas.restore();
        drawParams.f8998a = density;
        drawParams.f8999b = layoutDirection2;
        drawParams.f9000c = canvas3;
        drawParams.d = j2;
    }

    @Override // android.view.View.DragShadowBuilder
    public final void onProvideShadowMetrics(Point point, Point point2) {
        long j2 = this.f8687b;
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32));
        Density density = this.f8686a;
        point.set(density.B0(density.l1(fIntBitsToFloat)), density.B0(density.l1(Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)))));
        point2.set(point.x / 2, point.y / 2);
    }
}
