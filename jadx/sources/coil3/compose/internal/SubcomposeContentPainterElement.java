package coil3.compose.internal;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0081\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001BC\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcoil3/compose/internal/SubcomposeContentPainterElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Lcoil3/compose/internal/SubcomposeContentPainterNode;", "Landroidx/compose/ui/graphics/painter/Painter;", "painter", "Landroidx/compose/ui/Alignment;", "alignment", "Landroidx/compose/ui/layout/ContentScale;", "contentScale", "", "alpha", "Landroidx/compose/ui/graphics/ColorFilter;", "colorFilter", "", "clipToBounds", "", "contentDescription", "<init>", "(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ZLjava/lang/String;)V", "io.coil-kt.coil3:coil-compose-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class SubcomposeContentPainterElement extends ModifierNodeElement<SubcomposeContentPainterNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Painter f21334b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Alignment f21335c;
    public final ContentScale d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f21336e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ColorFilter f21337f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f21338h;

    public SubcomposeContentPainterElement(Painter painter, Alignment alignment, ContentScale contentScale, float f2, ColorFilter colorFilter, boolean z, String str) {
        this.f21334b = painter;
        this.f21335c = alignment;
        this.d = contentScale;
        this.f21336e = f2;
        this.f21337f = colorFilter;
        this.g = z;
        this.f21338h = str;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new SubcomposeContentPainterNode(this.f21334b, this.f21335c, this.d, this.f21336e, this.f21337f, this.g, this.f21338h);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SubcomposeContentPainterElement)) {
            return false;
        }
        SubcomposeContentPainterElement subcomposeContentPainterElement = (SubcomposeContentPainterElement) obj;
        return Intrinsics.c(this.f21334b, subcomposeContentPainterElement.f21334b) && Intrinsics.c(this.f21335c, subcomposeContentPainterElement.f21335c) && Intrinsics.c(this.d, subcomposeContentPainterElement.d) && Float.compare(this.f21336e, subcomposeContentPainterElement.f21336e) == 0 && Intrinsics.c(this.f21337f, subcomposeContentPainterElement.f21337f) && this.g == subcomposeContentPainterElement.g && Intrinsics.c(this.f21338h, subcomposeContentPainterElement.f21338h);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        SubcomposeContentPainterNode subcomposeContentPainterNode = (SubcomposeContentPainterNode) node;
        long r = subcomposeContentPainterNode.w.getR();
        Painter painter = this.f21334b;
        boolean zA = Size.a(r, painter.getR());
        subcomposeContentPainterNode.w = painter;
        subcomposeContentPainterNode.p = this.f21335c;
        subcomposeContentPainterNode.q = this.d;
        subcomposeContentPainterNode.r = this.f21336e;
        subcomposeContentPainterNode.s = this.f21337f;
        subcomposeContentPainterNode.t = this.g;
        String str = subcomposeContentPainterNode.u;
        String str2 = this.f21338h;
        if (!Intrinsics.c(str, str2)) {
            subcomposeContentPainterNode.u = str2;
            SemanticsModifierNodeKt.b(subcomposeContentPainterNode);
        }
        if (!zA) {
            DelegatableNodeKt.f(subcomposeContentPainterNode).X();
        }
        DrawModifierNodeKt.a(subcomposeContentPainterNode);
    }

    public final int hashCode() {
        int iB = pq0.b((this.d.hashCode() + ((this.f21335c.hashCode() + (this.f21334b.hashCode() * 31)) * 31)) * 31, 31, this.f21336e);
        ColorFilter colorFilter = this.f21337f;
        int iB2 = o60.b((iB + (colorFilter == null ? 0 : colorFilter.hashCode())) * 31, 31, this.g);
        String str = this.f21338h;
        return iB2 + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SubcomposeContentPainterElement(painter=");
        sb.append(this.f21334b);
        sb.append(", alignment=");
        sb.append(this.f21335c);
        sb.append(", contentScale=");
        sb.append(this.d);
        sb.append(", alpha=");
        sb.append(this.f21336e);
        sb.append(", colorFilter=");
        sb.append(this.f21337f);
        sb.append(", clipToBounds=");
        sb.append(this.g);
        sb.append(", contentDescription=");
        return n00.r(this.f21338h, ")", sb);
    }
}
