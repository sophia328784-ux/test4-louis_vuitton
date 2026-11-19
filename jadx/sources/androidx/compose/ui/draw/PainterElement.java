package androidx.compose.ui.draw;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.node.ModifierNodeElement;
import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B9\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Landroidx/compose/ui/draw/PainterElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/ui/draw/PainterNode;", "Landroidx/compose/ui/graphics/painter/Painter;", "painter", "", "sizeToIntrinsics", "Landroidx/compose/ui/Alignment;", "alignment", "Landroidx/compose/ui/layout/ContentScale;", "contentScale", "", "alpha", "Landroidx/compose/ui/graphics/ColorFilter;", "colorFilter", "<init>", "(Landroidx/compose/ui/graphics/painter/Painter;ZLandroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final /* data */ class PainterElement extends ModifierNodeElement<PainterNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Painter f8716b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f8717c;
    public final Alignment d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ContentScale f8718e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f8719f;
    public final ColorFilter g;

    public PainterElement(Painter painter, boolean z, Alignment alignment, ContentScale contentScale, float f2, ColorFilter colorFilter) {
        this.f8716b = painter;
        this.f8717c = z;
        this.d = alignment;
        this.f8718e = contentScale;
        this.f8719f = f2;
        this.g = colorFilter;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new PainterNode(this.f8716b, this.f8717c, this.d, this.f8718e, this.f8719f, this.g);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PainterElement)) {
            return false;
        }
        PainterElement painterElement = (PainterElement) obj;
        return Intrinsics.c(this.f8716b, painterElement.f8716b) && this.f8717c == painterElement.f8717c && Intrinsics.c(this.d, painterElement.d) && Intrinsics.c(this.f8718e, painterElement.f8718e) && Float.compare(this.f8719f, painterElement.f8719f) == 0 && Intrinsics.c(this.g, painterElement.g);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        PainterNode painterNode = (PainterNode) node;
        boolean z = painterNode.q;
        Painter painter = this.f8716b;
        boolean z2 = this.f8717c;
        boolean z3 = z != z2 || (z2 && !Size.a(painterNode.p.g(), painter.g()));
        painterNode.p = painter;
        painterNode.q = z2;
        painterNode.r = this.d;
        painterNode.s = this.f8718e;
        painterNode.t = this.f8719f;
        painterNode.u = this.g;
        if (z3) {
            DelegatableNodeKt.f(painterNode).X();
        }
        DrawModifierNodeKt.a(painterNode);
    }

    public final int hashCode() {
        int iB = pq0.b((this.f8718e.hashCode() + ((this.d.hashCode() + o60.b(this.f8716b.hashCode() * 31, 31, this.f8717c)) * 31)) * 31, 31, this.f8719f);
        ColorFilter colorFilter = this.g;
        return iB + (colorFilter == null ? 0 : colorFilter.hashCode());
    }

    public final String toString() {
        return "PainterElement(painter=" + this.f8716b + ", sizeToIntrinsics=" + this.f8717c + ", alignment=" + this.d + ", contentScale=" + this.f8718e + ", alpha=" + this.f8719f + ", colorFilter=" + this.g + ')';
    }
}
