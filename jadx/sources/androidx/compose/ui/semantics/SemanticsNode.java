package androidx.compose.ui.semantics;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B)\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/ui/semantics/SemanticsNode;", "", "Landroidx/compose/ui/Modifier$Node;", "outerSemanticsNode", "", "mergingEnabled", "Landroidx/compose/ui/node/LayoutNode;", "layoutNode", "Landroidx/compose/ui/semantics/SemanticsConfiguration;", "unmergedConfig", "<init>", "(Landroidx/compose/ui/Modifier$Node;ZLandroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/semantics/SemanticsConfiguration;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SemanticsNode {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Modifier.Node f10318a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f10319b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LayoutNode f10320c;
    public final SemanticsConfiguration d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public SemanticsNode f10321e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f10322f;

    public SemanticsNode(Modifier.Node node, boolean z, LayoutNode layoutNode, SemanticsConfiguration semanticsConfiguration) {
        this.f10318a = node;
        this.f10319b = z;
        this.f10320c = layoutNode;
        this.d = semanticsConfiguration;
        this.f10322f = layoutNode.f9689c;
    }

    public static /* synthetic */ List j(int i2, SemanticsNode semanticsNode) {
        return semanticsNode.i((i2 & 1) != 0 ? !semanticsNode.f10319b : false, (i2 & 2) == 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r1v14, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v7 */
    public final Rect a(NodeCoordinator nodeCoordinator) {
        ?? B;
        SemanticsNode semanticsNodeL = l();
        if (semanticsNodeL == null) {
            Rect.f8809e.getClass();
            return Rect.f8810f;
        }
        Modifier.Node node = semanticsNodeL.f10320c.H.f9774f;
        if ((node.f8610e & 8) == 0) {
            B = 0;
            break;
        }
        loop0: while (true) {
            if (node != null) {
                if ((node.d & 8) != 0) {
                    B = node;
                    ?? mutableVector = 0;
                    while (B != 0) {
                        if (B instanceof SemanticsModifierNode) {
                            if (((SemanticsModifierNode) B).J()) {
                                break loop0;
                            }
                        } else if ((B.d & 8) != 0 && (B instanceof DelegatingNode)) {
                            Modifier.Node node2 = ((DelegatingNode) B).q;
                            int i2 = 0;
                            while (node2 != null) {
                                if ((node2.d & 8) != 0) {
                                    i2++;
                                    if (i2 == 1) {
                                        B = B;
                                        mutableVector = mutableVector;
                                        mutableVector = mutableVector;
                                        B = node2;
                                    } else {
                                        if (mutableVector == 0) {
                                            mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                        }
                                        if (B != 0) {
                                            mutableVector.b(B);
                                            B = 0;
                                        }
                                        mutableVector.b(node2);
                                    }
                                } else {
                                    B = B;
                                    mutableVector = mutableVector;
                                }
                                node2 = node2.g;
                                B = B;
                                mutableVector = mutableVector;
                            }
                            if (i2 == 1) {
                                B = B;
                                mutableVector = mutableVector;
                            } else {
                                B = B;
                                mutableVector = mutableVector;
                            }
                        }
                        B = DelegatableNodeKt.b(mutableVector);
                    }
                }
                if ((node.f8610e & 8) != 0) {
                    node = node.g;
                }
            }
            B = 0;
            break;
        }
        SemanticsModifierNode semanticsModifierNode = (SemanticsModifierNode) B;
        NodeCoordinator nodeCoordinatorD = semanticsModifierNode != null ? DelegatableNodeKt.d(semanticsModifierNode, 8) : null;
        return nodeCoordinatorD == null ? semanticsNodeL.a(nodeCoordinator) : nodeCoordinatorD.L(nodeCoordinator, true);
    }

    public final SemanticsNode b(Role role, Function1 function1) {
        SemanticsConfiguration semanticsConfiguration = new SemanticsConfiguration();
        semanticsConfiguration.f10314e = false;
        semanticsConfiguration.f10315f = false;
        function1.invoke(semanticsConfiguration);
        SemanticsNode semanticsNode = new SemanticsNode(new SemanticsNode$fakeSemanticsNode$fakeNode$1(function1), false, new LayoutNode(true, this.f10322f + (role != null ? 1000000000 : 2000000000)), semanticsConfiguration);
        semanticsNode.f10321e = this;
        return semanticsNode;
    }

    public final void c(LayoutNode layoutNode, ArrayList arrayList) {
        MutableVector mutableVectorQ = layoutNode.Q();
        Object[] objArr = mutableVectorQ.f8165b;
        int i2 = mutableVectorQ.d;
        for (int i3 = 0; i3 < i2; i3++) {
            LayoutNode layoutNode2 = (LayoutNode) objArr[i3];
            if (layoutNode2.c() && !layoutNode2.S) {
                if (layoutNode2.H.d(8)) {
                    arrayList.add(SemanticsNodeKt.a(layoutNode2, this.f10319b));
                } else {
                    c(layoutNode2, arrayList);
                }
            }
        }
    }

    public final NodeCoordinator d() {
        if (!n()) {
            SemanticsModifierNode semanticsModifierNodeF = f();
            return semanticsModifierNodeF != null ? DelegatableNodeKt.d(semanticsModifierNodeF, 8) : this.f10320c.H.f9772c;
        }
        SemanticsNode semanticsNodeL = l();
        if (semanticsNodeL != null) {
            return semanticsNodeL.d();
        }
        return null;
    }

    public final void e(ArrayList arrayList, ArrayList arrayList2) {
        r(arrayList, false);
        int size = arrayList.size();
        for (int size2 = arrayList.size(); size2 < size; size2++) {
            SemanticsNode semanticsNode = (SemanticsNode) arrayList.get(size2);
            if (semanticsNode.o()) {
                arrayList2.add(semanticsNode);
            } else if (!semanticsNode.d.f10315f) {
                semanticsNode.e(arrayList, arrayList2);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r0v12, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v27 */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v29 */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r0v31 */
    /* JADX WARN: Type inference failed for: r0v32 */
    /* JADX WARN: Type inference failed for: r0v33 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v23 */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v7 */
    public final SemanticsModifierNode f() {
        ?? B;
        boolean z;
        ?? r0;
        boolean z2 = this.d.f10314e;
        ?? r4 = 0;
        r4 = 0;
        r4 = 0;
        r4 = 0;
        LayoutNode layoutNode = this.f10320c;
        if (!z2) {
            Modifier.Node node = layoutNode.H.f9774f;
            if ((node.f8610e & 8) != 0) {
                loop3: while (node != null) {
                    if ((node.d & 8) != 0) {
                        B = node;
                        ?? mutableVector = 0;
                        while (true) {
                            if (B != 0) {
                                if (B instanceof SemanticsModifierNode) {
                                    if (((SemanticsModifierNode) B).J()) {
                                        r4 = B;
                                    }
                                } else if ((B.d & 8) != 0 && (B instanceof DelegatingNode)) {
                                    Modifier.Node node2 = ((DelegatingNode) B).q;
                                    int i2 = 0;
                                    while (node2 != null) {
                                        if ((node2.d & 8) != 0) {
                                            i2++;
                                            if (i2 == 1) {
                                                B = B;
                                                mutableVector = mutableVector;
                                                mutableVector = mutableVector;
                                                B = node2;
                                            } else {
                                                if (mutableVector == 0) {
                                                    mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (B != 0) {
                                                    mutableVector.b(B);
                                                    B = 0;
                                                }
                                                mutableVector.b(node2);
                                            }
                                        } else {
                                            B = B;
                                            mutableVector = mutableVector;
                                        }
                                        node2 = node2.g;
                                        B = B;
                                        mutableVector = mutableVector;
                                    }
                                    if (i2 == 1) {
                                        B = B;
                                        mutableVector = mutableVector;
                                    } else {
                                        B = B;
                                        mutableVector = mutableVector;
                                    }
                                }
                                B = DelegatableNodeKt.b(mutableVector);
                            }
                        }
                    }
                    if ((node.f8610e & 8) == 0) {
                        break;
                    }
                    node = node.g;
                }
            }
        } else {
            Modifier.Node node3 = layoutNode.H.f9774f;
            if ((node3.f8610e & 8) != 0) {
                B = 0;
                while (node3 != null) {
                    if ((node3.d & 8) != 0) {
                        Modifier.Node nodeB = node3;
                        MutableVector mutableVector2 = null;
                        while (nodeB != null) {
                            if (nodeB instanceof SemanticsModifierNode) {
                                SemanticsModifierNode semanticsModifierNode = (SemanticsModifierNode) nodeB;
                                if (semanticsModifierNode.J()) {
                                    if (semanticsModifierNode.getP()) {
                                        r0 = B;
                                        r0 = B;
                                        return semanticsModifierNode;
                                    }
                                    if (B == 0) {
                                        r0 = semanticsModifierNode;
                                    }
                                }
                                r0 = B;
                                z = false;
                                B = r0;
                            } else {
                                z = true;
                            }
                            if (z) {
                                B = B;
                                if ((nodeB.d & 8) != 0 && (nodeB instanceof DelegatingNode)) {
                                    int i3 = 0;
                                    for (Modifier.Node node4 = ((DelegatingNode) nodeB).q; node4 != null; node4 = node4.g) {
                                        if ((node4.d & 8) != 0) {
                                            i3++;
                                            if (i3 == 1) {
                                                nodeB = node4;
                                            } else {
                                                if (mutableVector2 == null) {
                                                    mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (nodeB != null) {
                                                    mutableVector2.b(nodeB);
                                                    nodeB = null;
                                                }
                                                mutableVector2.b(node4);
                                            }
                                        }
                                    }
                                    if (i3 == 1) {
                                    }
                                }
                            } else {
                                B = B;
                            }
                            nodeB = DelegatableNodeKt.b(mutableVector2);
                        }
                    }
                    if ((node3.f8610e & 8) == 0) {
                        break;
                    }
                    node3 = node3.g;
                    B = B;
                }
                r4 = B;
            }
        }
        return (SemanticsModifierNode) r4;
    }

    public final Rect g() {
        Rect rectL;
        NodeCoordinator nodeCoordinatorD = d();
        if (nodeCoordinatorD != null) {
            if (!nodeCoordinatorD.p1().o) {
                nodeCoordinatorD = null;
            }
            if (nodeCoordinatorD != null && (rectL = LayoutCoordinatesKt.c(nodeCoordinatorD).L(nodeCoordinatorD, true)) != null) {
                return rectL;
            }
        }
        Rect.f8809e.getClass();
        return Rect.f8810f;
    }

    public final Rect h() {
        Rect rectB;
        NodeCoordinator nodeCoordinatorD = d();
        if (nodeCoordinatorD != null) {
            if (!nodeCoordinatorD.p1().o) {
                nodeCoordinatorD = null;
            }
            if (nodeCoordinatorD != null && (rectB = LayoutCoordinatesKt.b(nodeCoordinatorD, true)) != null) {
                return rectB;
            }
        }
        Rect.f8809e.getClass();
        return Rect.f8810f;
    }

    public final List i(boolean z, boolean z2) {
        if (!z && this.d.f10315f) {
            return EmptyList.f71768b;
        }
        ArrayList arrayList = new ArrayList();
        if (!o()) {
            return r(arrayList, z2);
        }
        ArrayList arrayList2 = new ArrayList();
        e(arrayList, arrayList2);
        return arrayList2;
    }

    public final SemanticsConfiguration k() {
        boolean zO = o();
        SemanticsConfiguration semanticsConfiguration = this.d;
        if (!zO) {
            return semanticsConfiguration;
        }
        semanticsConfiguration.getClass();
        SemanticsConfiguration semanticsConfiguration2 = new SemanticsConfiguration();
        semanticsConfiguration2.f10314e = semanticsConfiguration.f10314e;
        semanticsConfiguration2.f10315f = semanticsConfiguration.f10315f;
        semanticsConfiguration2.f10312b.l(semanticsConfiguration.f10312b);
        q(new ArrayList(), semanticsConfiguration2);
        return semanticsConfiguration2;
    }

    public final SemanticsNode l() {
        LayoutNode layoutNodeO;
        SemanticsNode semanticsNode = this.f10321e;
        if (semanticsNode != null) {
            return semanticsNode;
        }
        LayoutNode layoutNode = this.f10320c;
        boolean z = this.f10319b;
        if (!z) {
            layoutNodeO = null;
            break;
        }
        layoutNodeO = layoutNode.O();
        while (true) {
            if (layoutNodeO == null) {
                layoutNodeO = null;
                break;
            }
            SemanticsConfiguration semanticsConfigurationI = layoutNodeO.i();
            if (semanticsConfigurationI != null && semanticsConfigurationI.f10314e) {
                break;
            }
            layoutNodeO = layoutNodeO.O();
        }
        if (layoutNodeO == null) {
            for (LayoutNode layoutNodeO2 = layoutNode.O(); layoutNodeO2 != null; layoutNodeO2 = layoutNodeO2.O()) {
                if (layoutNodeO2.H.d(8)) {
                    layoutNodeO = layoutNodeO2;
                }
            }
            layoutNodeO = null;
        }
        if (layoutNodeO == null) {
            return null;
        }
        return SemanticsNodeKt.a(layoutNodeO, z);
    }

    public final Rect m() {
        SemanticsModifierNode semanticsModifierNodeF = f();
        if (semanticsModifierNodeF == null) {
            return this.f10320c.H.f9772c.b2();
        }
        return SemanticsModifierNodeKt.a(semanticsModifierNodeF.getF8608b(), SemanticsConfigurationKt.a(this.d, SemanticsActions.f10303b) != null, true);
    }

    public final boolean n() {
        return this.f10321e != null;
    }

    public final boolean o() {
        return this.f10319b && this.d.f10314e;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x002d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:25:? A[RETURN, SYNTHETIC] */
    public final boolean p() {
        if (n() || !j(4, this).isEmpty()) {
            return false;
        }
        LayoutNode layoutNodeO = this.f10320c.O();
        while (layoutNodeO != null) {
            SemanticsConfiguration semanticsConfigurationI = layoutNodeO.i();
            if (semanticsConfigurationI != null && semanticsConfigurationI.f10314e) {
                if (layoutNodeO == null) {
                    return true;
                }
                return false;
            }
            layoutNodeO = layoutNodeO.O();
        }
        layoutNodeO = null;
        if (layoutNodeO == null) {
            return true;
        }
        return false;
    }

    public final void q(ArrayList arrayList, SemanticsConfiguration semanticsConfiguration) {
        if (this.d.f10315f) {
            return;
        }
        r(arrayList, false);
        int size = arrayList.size();
        for (int size2 = arrayList.size(); size2 < size; size2++) {
            SemanticsNode semanticsNode = (SemanticsNode) arrayList.get(size2);
            if (!semanticsNode.o()) {
                semanticsConfiguration.i(semanticsNode.d);
                semanticsNode.q(arrayList, semanticsConfiguration);
            }
        }
    }

    public final List r(ArrayList arrayList, boolean z) {
        if (n()) {
            return EmptyList.f71768b;
        }
        c(this.f10320c, arrayList);
        if (z) {
            SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.z;
            SemanticsConfiguration semanticsConfiguration = this.d;
            final Role role = (Role) SemanticsConfigurationKt.a(semanticsConfiguration, semanticsPropertyKey);
            if (role != null && semanticsConfiguration.f10314e && !arrayList.isEmpty()) {
                arrayList.add(b(role, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.ui.semantics.SemanticsNode$emitFakeNodes$fakeNode$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        SemanticsPropertiesKt.o((SemanticsPropertyReceiver) obj, role.f10296a);
                        return Unit.f71739a;
                    }
                }));
            }
            SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.f10331a;
            if (semanticsConfiguration.f10312b.c(semanticsPropertyKey2) && !arrayList.isEmpty() && semanticsConfiguration.f10314e) {
                List list = (List) SemanticsConfigurationKt.a(semanticsConfiguration, semanticsPropertyKey2);
                final String str = list != null ? (String) CollectionsKt.firstOrNull(list) : null;
                if (str != null) {
                    arrayList.add(0, b(null, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.ui.semantics.SemanticsNode$emitFakeNodes$fakeNode$2
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            SemanticsPropertiesKt.i((SemanticsPropertyReceiver) obj, str);
                            return Unit.f71739a;
                        }
                    }));
                }
            }
        }
        return arrayList;
    }
}
