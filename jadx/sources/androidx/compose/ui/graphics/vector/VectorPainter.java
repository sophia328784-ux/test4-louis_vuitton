package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0013\b\u0000\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/graphics/vector/VectorPainter;", "Landroidx/compose/ui/graphics/painter/Painter;", "Landroidx/compose/ui/graphics/vector/GroupComponent;", "root", "<init>", "(Landroidx/compose/ui/graphics/vector/GroupComponent;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class VectorPainter extends Painter {
    public final MutableState g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableState f9174h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final VectorComponent f9175i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MutableState f9176j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f9177k;
    public ColorFilter l;

    public VectorPainter(GroupComponent groupComponent) {
        Size.f8820b.getClass();
        this.g = SnapshotStateKt.g(new Size(0L));
        this.f9174h = SnapshotStateKt.g(Boolean.FALSE);
        VectorComponent vectorComponent = new VectorComponent(groupComponent);
        vectorComponent.f9156f = new Function0<Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorPainter$vector$1$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                Unit unit = Unit.f71739a;
                ((SnapshotMutableStateImpl) this.f9178c.f9176j).setValue(unit);
                return unit;
            }
        };
        this.f9175i = vectorComponent;
        this.f9176j = SnapshotStateKt.f(Unit.f71739a, SnapshotStateKt.h());
        this.f9177k = 1.0f;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean a(float f2) {
        this.f9177k = f2;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean b(ColorFilter colorFilter) {
        this.l = colorFilter;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    /* JADX INFO: renamed from: g */
    public final long getR() {
        return ((Size) ((SnapshotMutableStateImpl) this.g).getF10755b()).f8822a;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void h(DrawScope drawScope) {
        ColorFilter colorFilter = this.l;
        VectorComponent vectorComponent = this.f9175i;
        if (colorFilter == null) {
            colorFilter = (ColorFilter) ((SnapshotMutableStateImpl) vectorComponent.g).getF10755b();
        }
        if (((Boolean) ((SnapshotMutableStateImpl) this.f9174h).getF10755b()).booleanValue() && drawScope.getLayoutDirection() == LayoutDirection.Rtl) {
            long jG1 = drawScope.G1();
            CanvasDrawScope$drawContext$1 f8996c = drawScope.getF8996c();
            long jD = f8996c.d();
            f8996c.a().p();
            try {
                f8996c.f9001a.f(-1.0f, 1.0f, jG1);
                vectorComponent.e(drawScope, this.f9177k, colorFilter);
                pq0.y(f8996c, jD);
            } catch (Throwable th) {
                pq0.y(f8996c, jD);
                throw th;
            }
        } else {
            vectorComponent.e(drawScope, this.f9177k, colorFilter);
        }
        ((SnapshotMutableStateImpl) this.f9176j).getF10755b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public VectorPainter() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ VectorPainter(GroupComponent groupComponent, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? new GroupComponent() : groupComponent);
    }
}
