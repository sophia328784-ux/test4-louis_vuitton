package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/ScrollingLayoutElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/ScrollNode;", "Landroidx/compose/foundation/ScrollState;", "scrollState", "", "reverseScrolling", "isVertical", "<init>", "(Landroidx/compose/foundation/ScrollState;ZZ)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ScrollingLayoutElement extends ModifierNodeElement<ScrollNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ScrollState f4304b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f4305c;
    public final boolean d;

    public ScrollingLayoutElement(ScrollState scrollState, boolean z, boolean z2) {
        this.f4304b = scrollState;
        this.f4305c = z;
        this.d = z2;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new ScrollNode(this.f4304b, this.f4305c, this.d);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ScrollingLayoutElement)) {
            return false;
        }
        ScrollingLayoutElement scrollingLayoutElement = (ScrollingLayoutElement) obj;
        return Intrinsics.c(this.f4304b, scrollingLayoutElement.f4304b) && this.f4305c == scrollingLayoutElement.f4305c && this.d == scrollingLayoutElement.d;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        ScrollNode scrollNode = (ScrollNode) node;
        scrollNode.p = this.f4304b;
        scrollNode.q = this.f4305c;
        scrollNode.r = this.d;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.d) + o60.b(this.f4304b.hashCode() * 31, 31, this.f4305c);
    }
}
