package androidx.compose.ui.node;

import androidx.collection.MutableObjectIntMap;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import defpackage.md;
import defpackage.mt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b'\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/node/DelegatingNode;", "Landroidx/compose/ui/Modifier$Node;", "<init>", "()V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class DelegatingNode extends Modifier.Node {
    public final int p = NodeKindKt.e(this);
    public Modifier.Node q;

    @Override // androidx.compose.ui.Modifier.Node
    public final void X1() {
        super.X1();
        for (Modifier.Node node = this.q; node != null; node = node.g) {
            node.g2(this.f8613i);
            if (!node.o) {
                node.X1();
            }
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Y1() {
        for (Modifier.Node node = this.q; node != null; node = node.g) {
            node.Y1();
        }
        super.Y1();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void c2() {
        super.c2();
        for (Modifier.Node node = this.q; node != null; node = node.g) {
            node.c2();
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void d2() {
        for (Modifier.Node node = this.q; node != null; node = node.g) {
            node.d2();
        }
        super.d2();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void e2() {
        super.e2();
        for (Modifier.Node node = this.q; node != null; node = node.g) {
            node.e2();
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void f2(Modifier.Node node) {
        this.f8608b = node;
        for (Modifier.Node node2 = this.q; node2 != null; node2 = node2.g) {
            node2.f2(node);
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void g2(NodeCoordinator nodeCoordinator) {
        this.f8613i = nodeCoordinator;
        for (Modifier.Node node = this.q; node != null; node = node.g) {
            node.g2(nodeCoordinator);
        }
    }

    public final DelegatableNode h2(DelegatableNode delegatableNode) {
        Modifier.Node f8608b = delegatableNode.getF8608b();
        if (f8608b != delegatableNode) {
            Modifier.Node node = delegatableNode instanceof Modifier.Node ? (Modifier.Node) delegatableNode : null;
            Modifier.Node node2 = node != null ? node.f8611f : null;
            if (f8608b != this.f8608b || !Intrinsics.c(node2, this)) {
                md.k("Cannot delegate to an already delegated node");
                return null;
            }
        } else {
            if (f8608b.o) {
                InlineClassHelperKt.c("Cannot delegate to an already attached node");
            }
            f8608b.f2(this.f8608b);
            int i2 = this.d;
            int iF = NodeKindKt.f(f8608b);
            f8608b.d = iF;
            int i3 = this.d;
            int i4 = iF & 2;
            if (i4 != 0 && (i3 & 2) != 0 && !(this instanceof LayoutModifierNode)) {
                InlineClassHelperKt.c("Delegating to multiple LayoutModifierNodes without the delegating node implementing LayoutModifierNode itself is not allowed.\nDelegating Node: " + this + "\nDelegate Node: " + f8608b);
            }
            f8608b.g = this.q;
            this.q = f8608b;
            f8608b.f8611f = this;
            j2(iF | this.d, false);
            if (this.o) {
                if (i4 == 0 || (i2 & 2) != 0) {
                    g2(this.f8613i);
                } else {
                    NodeChain nodeChain = DelegatableNodeKt.f(this).H;
                    this.f8608b.g2(null);
                    nodeChain.g();
                }
                f8608b.X1();
                f8608b.d2();
                if (!f8608b.o) {
                    InlineClassHelperKt.c("autoInvalidateInsertedNode called on unattached node");
                }
                NodeKindKt.a(f8608b, -1, 1);
            }
        }
        return delegatableNode;
    }

    public final void i2(DelegatableNode delegatableNode) {
        Modifier.Node node = null;
        for (Modifier.Node node2 = this.q; node2 != null; node2 = node2.g) {
            if (node2 == delegatableNode) {
                boolean z = node2.o;
                if (z) {
                    if (!z) {
                        MutableObjectIntMap mutableObjectIntMap = NodeKindKt.f9803a;
                        InlineClassHelperKt.c("autoInvalidateRemovedNode called on unattached node");
                    }
                    NodeKindKt.a(node2, -1, 2);
                    node2.e2();
                    node2.Y1();
                }
                node2.f2(node2);
                node2.f8610e = 0;
                Modifier.Node node3 = node2.g;
                if (node == null) {
                    this.q = node3;
                } else {
                    node.g = node3;
                }
                node2.g = null;
                node2.f8611f = null;
                int i2 = this.d;
                int iF = NodeKindKt.f(this);
                j2(iF, true);
                if (this.o && (i2 & 2) != 0 && (iF & 2) == 0) {
                    NodeChain nodeChain = DelegatableNodeKt.f(this).H;
                    this.f8608b.g2(null);
                    nodeChain.g();
                    return;
                }
                return;
            }
            node = node2;
        }
        mt.f(delegatableNode, "Could not find delegate: ");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r2v2, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    public final void j2(int i2, boolean z) {
        Modifier.Node node;
        int i3 = this.d;
        this.d = i2;
        if (i3 != i2) {
            Modifier.Node node2 = this.f8608b;
            if (node2 == this) {
                this.f8610e = i2;
            }
            boolean z2 = this.o;
            ?? r2 = this;
            if (z2) {
                while (r2 != 0) {
                    i2 |= r2.d;
                    r2.d = i2;
                    if (r2 == node2) {
                        break;
                    } else {
                        r2 = r2.f8611f;
                    }
                }
                if (z && r2 == node2) {
                    i2 = NodeKindKt.f(node2);
                    node2.d = i2;
                }
                int i4 = i2 | ((r2 == 0 || (node = r2.g) == null) ? 0 : node.f8610e);
                for (?? r3 = r2; r3 != 0; r3 = r3.f8611f) {
                    i4 |= r3.d;
                    r3.f8610e = i4;
                }
            }
        }
    }
}
