package androidx.compose.ui.input.nestedscroll;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;", "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;", "connection", "Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;", "dispatcher", "<init>", "(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class NestedScrollElement extends ModifierNodeElement<NestedScrollNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final NestedScrollConnection f9249b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final NestedScrollDispatcher f9250c;

    public NestedScrollElement(NestedScrollConnection nestedScrollConnection, NestedScrollDispatcher nestedScrollDispatcher) {
        this.f9249b = nestedScrollConnection;
        this.f9250c = nestedScrollDispatcher;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node a() {
        return new NestedScrollNode(this.f9249b, this.f9250c);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof NestedScrollElement)) {
            return false;
        }
        NestedScrollElement nestedScrollElement = (NestedScrollElement) obj;
        return Intrinsics.c(nestedScrollElement.f9249b, this.f9249b) && Intrinsics.c(nestedScrollElement.f9250c, this.f9250c);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void g(Modifier.Node node) {
        NestedScrollNode nestedScrollNode = (NestedScrollNode) node;
        nestedScrollNode.p = this.f9249b;
        NestedScrollDispatcher nestedScrollDispatcher = nestedScrollNode.q;
        if (nestedScrollDispatcher.f9241a == nestedScrollNode) {
            nestedScrollDispatcher.f9241a = null;
        }
        NestedScrollDispatcher nestedScrollDispatcher2 = this.f9250c;
        if (nestedScrollDispatcher2 == null) {
            nestedScrollNode.q = new NestedScrollDispatcher();
        } else if (nestedScrollDispatcher2 != nestedScrollDispatcher) {
            nestedScrollNode.q = nestedScrollDispatcher2;
        }
        if (nestedScrollNode.o) {
            NestedScrollDispatcher nestedScrollDispatcher3 = nestedScrollNode.q;
            nestedScrollDispatcher3.f9241a = nestedScrollNode;
            nestedScrollDispatcher3.f9242b = null;
            nestedScrollNode.r = null;
            nestedScrollDispatcher3.f9243c = new NestedScrollNode$updateDispatcherFields$1(nestedScrollNode);
            nestedScrollNode.q.d = nestedScrollNode.V1();
        }
    }

    public final int hashCode() {
        int iHashCode = this.f9249b.hashCode() * 31;
        NestedScrollDispatcher nestedScrollDispatcher = this.f9250c;
        return iHashCode + (nestedScrollDispatcher != null ? nestedScrollDispatcher.hashCode() : 0);
    }
}
