package androidx.compose.ui.node;

import androidx.collection.MutableObjectIntMap;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0001\u0018\u00002\u00020\u0001:\u0002\u0006\u0007B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\b"}, d2 = {"Landroidx/compose/ui/node/NodeChain;", "", "Landroidx/compose/ui/node/LayoutNode;", "layoutNode", "<init>", "(Landroidx/compose/ui/node/LayoutNode;)V", "Differ", "Logger", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class NodeChain {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LayoutNode f9770a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final NodeChain$sentinelHead$1 f9771b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InnerNodeCoordinator f9772c;
    public NodeCoordinator d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TailModifierNode f9773e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Modifier.Node f9774f;
    public MutableVector g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public MutableVector f9775h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MutableVector f9776i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Differ f9777j;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/compose/ui/node/NodeChain$Differ;", "Landroidx/compose/ui/node/DiffCallback;", "Landroidx/compose/ui/Modifier$Node;", "node", "", "offset", "Landroidx/compose/runtime/collection/MutableVector;", "Landroidx/compose/ui/Modifier$Element;", "before", "after", "", "shouldAttachOnInsert", "<init>", "(Landroidx/compose/ui/node/NodeChain;Landroidx/compose/ui/Modifier$Node;ILandroidx/compose/runtime/collection/MutableVector;Landroidx/compose/runtime/collection/MutableVector;Z)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class Differ implements DiffCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Modifier.Node f9778a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f9779b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public MutableVector f9780c;
        public MutableVector d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f9781e;

        public Differ(Modifier.Node node, int i2, MutableVector<Modifier.Element> mutableVector, MutableVector<Modifier.Element> mutableVector2, boolean z) {
            this.f9778a = node;
            this.f9779b = i2;
            this.f9780c = mutableVector;
            this.d = mutableVector2;
            this.f9781e = z;
        }

        public final boolean a(int i2, int i3) {
            MutableVector mutableVector = this.f9780c;
            int i4 = this.f9779b;
            Modifier.Element element = (Modifier.Element) mutableVector.f8165b[i2 + i4];
            Modifier.Element element2 = (Modifier.Element) this.d.f8165b[i4 + i3];
            return Intrinsics.c(element, element2) || element.getClass() == element2.getClass();
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b`\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/node/NodeChain$Logger;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface Logger {
    }

    public NodeChain(LayoutNode layoutNode) {
        this.f9770a = layoutNode;
        NodeChain$sentinelHead$1 nodeChain$sentinelHead$1 = new NodeChain$sentinelHead$1();
        nodeChain$sentinelHead$1.f8610e = -1;
        this.f9771b = nodeChain$sentinelHead$1;
        InnerNodeCoordinator innerNodeCoordinator = new InnerNodeCoordinator(layoutNode);
        this.f9772c = innerNodeCoordinator;
        this.d = innerNodeCoordinator;
        TailModifierNode tailModifierNode = innerNodeCoordinator.h0;
        this.f9773e = tailModifierNode;
        this.f9774f = tailModifierNode;
        this.f9776i = new MutableVector(new Modifier[16], 0);
    }

    public static final void a(NodeChain nodeChain, Modifier.Node node, NodeCoordinator nodeCoordinator) {
        nodeChain.getClass();
        for (Modifier.Node node2 = node.f8611f; node2 != null; node2 = node2.f8611f) {
            if (node2 == nodeChain.f9771b) {
                LayoutNode layoutNodeO = nodeChain.f9770a.O();
                nodeCoordinator.u = layoutNodeO != null ? layoutNodeO.H.f9772c : null;
                nodeChain.d = nodeCoordinator;
                return;
            } else {
                if ((node2.d & 2) != 0) {
                    return;
                }
                node2.g2(nodeCoordinator);
            }
        }
    }

    public static Modifier.Node b(Modifier.Element element, Modifier.Node node) {
        Modifier.Node backwardsCompatNode;
        if (element instanceof ModifierNodeElement) {
            backwardsCompatNode = ((ModifierNodeElement) element).a();
            backwardsCompatNode.d = NodeKindKt.f(backwardsCompatNode);
        } else {
            backwardsCompatNode = new BackwardsCompatNode(element);
        }
        if (backwardsCompatNode.o) {
            InlineClassHelperKt.c("A ModifierNodeElement cannot return an already attached node from create() ");
        }
        backwardsCompatNode.f8614j = true;
        Modifier.Node node2 = node.g;
        if (node2 != null) {
            node2.f8611f = backwardsCompatNode;
            backwardsCompatNode.g = node2;
        }
        node.g = backwardsCompatNode;
        backwardsCompatNode.f8611f = node;
        return backwardsCompatNode;
    }

    public static Modifier.Node c(Modifier.Node node) {
        boolean z = node.o;
        if (z) {
            if (!z) {
                MutableObjectIntMap mutableObjectIntMap = NodeKindKt.f9803a;
                InlineClassHelperKt.c("autoInvalidateRemovedNode called on unattached node");
            }
            NodeKindKt.a(node, -1, 2);
            node.e2();
            node.Y1();
        }
        Modifier.Node node2 = node.g;
        Modifier.Node node3 = node.f8611f;
        if (node2 != null) {
            node2.f8611f = node3;
            node.g = null;
        }
        if (node3 != null) {
            node3.g = node2;
            node.f8611f = null;
        }
        node3.getClass();
        return node3;
    }

    public static void h(Modifier.Element element, Modifier.Element element2, Modifier.Node node) {
        if ((element instanceof ModifierNodeElement) && (element2 instanceof ModifierNodeElement)) {
            node.getClass();
            ((ModifierNodeElement) element2).g(node);
            if (node.o) {
                NodeKindKt.c(node);
                return;
            } else {
                node.f8615k = true;
                return;
            }
        }
        if (!(node instanceof BackwardsCompatNode)) {
            InlineClassHelperKt.c("Unknown Modifier.Node type");
            return;
        }
        BackwardsCompatNode backwardsCompatNode = (BackwardsCompatNode) node;
        if (backwardsCompatNode.o) {
            backwardsCompatNode.i2();
        }
        backwardsCompatNode.p = element2;
        backwardsCompatNode.d = NodeKindKt.d(element2);
        if (backwardsCompatNode.o) {
            backwardsCompatNode.h2(false);
        }
        if (node.o) {
            NodeKindKt.c(node);
        } else {
            node.f8615k = true;
        }
    }

    public final boolean d(int i2) {
        return (this.f9774f.f8610e & i2) != 0;
    }

    public final void e() {
        for (Modifier.Node node = this.f9774f; node != null; node = node.g) {
            node.d2();
            if (node.f8614j) {
                MutableObjectIntMap mutableObjectIntMap = NodeKindKt.f9803a;
                if (!node.o) {
                    InlineClassHelperKt.c("autoInvalidateInsertedNode called on unattached node");
                }
                NodeKindKt.a(node, -1, 1);
            }
            if (node.f8615k) {
                NodeKindKt.c(node);
            }
            node.f8614j = false;
            node.f8615k = false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:175:0x0140 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:33:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:34:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:36:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:37:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:40:0x0109 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:46:0x011c  */
    /* JADX WARN: Code duplicated, block: B:48:0x0126  */
    /* JADX WARN: Code duplicated, block: B:53:0x013e  */
    /* JADX WARN: Code duplicated, block: B:72:0x0188  */
    /* JADX WARN: Code duplicated, block: B:73:0x018b  */
    /* JADX WARN: Code duplicated, block: B:75:0x018f  */
    /* JADX WARN: Code duplicated, block: B:76:0x0192  */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:78:0x019e
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:272)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:237)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:80)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeEndlessLoop(LoopRegionMaker.java:590)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:82)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeEndlessLoop(LoopRegionMaker.java:590)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:82)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeEndlessLoop(LoopRegionMaker.java:590)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:82)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeEndlessLoop(LoopRegionMaker.java:590)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:82)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:49)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    public final void f(int r32, androidx.compose.runtime.collection.MutableVector r33, androidx.compose.runtime.collection.MutableVector r34, androidx.compose.ui.Modifier.Node r35, boolean r36) {
        /*
            Method dump skipped, instruction units count: 934
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.NodeChain.f(int, androidx.compose.runtime.collection.MutableVector, androidx.compose.runtime.collection.MutableVector, androidx.compose.ui.Modifier$Node, boolean):void");
    }

    public final void g() {
        LayoutNode layoutNode;
        LayoutModifierNodeCoordinator layoutModifierNodeCoordinator;
        OwnedLayer ownedLayer;
        Modifier.Node node = this.f9773e.f8611f;
        NodeCoordinator nodeCoordinator = this.f9772c;
        while (true) {
            layoutNode = this.f9770a;
            if (node == null) {
                break;
            }
            LayoutModifierNode layoutModifierNodeC = DelegatableNodeKt.c(node);
            if (layoutModifierNodeC != null) {
                NodeCoordinator nodeCoordinator2 = node.f8613i;
                if (nodeCoordinator2 != null) {
                    layoutModifierNodeCoordinator = (LayoutModifierNodeCoordinator) nodeCoordinator2;
                    LayoutModifierNode layoutModifierNode = layoutModifierNodeCoordinator.h0;
                    layoutModifierNodeCoordinator.i2(layoutModifierNodeC);
                    if (layoutModifierNode != node && (ownedLayer = layoutModifierNodeCoordinator.P) != null) {
                        ownedLayer.invalidate();
                    }
                } else {
                    layoutModifierNodeCoordinator = new LayoutModifierNodeCoordinator(layoutNode, layoutModifierNodeC);
                    node.g2(layoutModifierNodeCoordinator);
                }
                nodeCoordinator.u = layoutModifierNodeCoordinator;
                layoutModifierNodeCoordinator.t = nodeCoordinator;
                nodeCoordinator = layoutModifierNodeCoordinator;
            } else {
                node.g2(nodeCoordinator);
            }
            node = node.f8611f;
        }
        LayoutNode layoutNodeO = layoutNode.O();
        nodeCoordinator.u = layoutNodeO != null ? layoutNodeO.H.f9772c : null;
        this.d = nodeCoordinator;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[");
        Modifier.Node node = this.f9774f;
        TailModifierNode tailModifierNode = this.f9773e;
        if (node == tailModifierNode) {
            sb.append("]");
        } else {
            while (node != null && node != tailModifierNode) {
                sb.append(String.valueOf(node));
                if (node.g == tailModifierNode) {
                    sb.append("]");
                    break;
                }
                sb.append(",");
                node = node.g;
            }
        }
        return sb.toString();
    }
}
