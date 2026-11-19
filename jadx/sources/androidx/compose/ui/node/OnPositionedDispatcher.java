package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import java.util.Comparator;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/node/OnPositionedDispatcher;", "", "<init>", "()V", "Companion", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class OnPositionedDispatcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableVector f9809a = new MutableVector(new LayoutNode[16], 0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public LayoutNode[] f9810b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0080\u0003\u0018\u00002\u00020\u0001:\u0001\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/node/OnPositionedDispatcher$Companion;", "", "", "MinArraySize", "I", "DepthComparator", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {

        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÂ\u0002\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\b\u0012\u0004\u0012\u00020\u0002`\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/node/OnPositionedDispatcher$Companion$DepthComparator;", "Ljava/util/Comparator;", "Landroidx/compose/ui/node/LayoutNode;", "Lkotlin/Comparator;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class DepthComparator implements Comparator<LayoutNode> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public static final DepthComparator f9811b = new DepthComparator();

            @Override // java.util.Comparator
            public final int compare(LayoutNode layoutNode, LayoutNode layoutNode2) {
                LayoutNode layoutNode3 = layoutNode;
                LayoutNode layoutNode4 = layoutNode2;
                int iD = Intrinsics.d(layoutNode4.r, layoutNode3.r);
                return iD != 0 ? iD : Intrinsics.d(layoutNode3.hashCode(), layoutNode4.hashCode());
            }
        }

        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
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
    /* JADX WARN: Type inference failed for: r6v5 */
    public static void b(LayoutNode layoutNode) {
        if (layoutNode.R > 0) {
            if (layoutNode.I.d == LayoutNode.LayoutState.Idle && !layoutNode.J() && !layoutNode.K() && !layoutNode.S && layoutNode.A()) {
                Modifier.Node node = layoutNode.H.f9774f;
                if ((node.f8610e & 256) != 0) {
                    while (node != null) {
                        if ((node.d & 256) != 0) {
                            ?? B = node;
                            ?? mutableVector = 0;
                            while (B != 0) {
                                if (B instanceof GlobalPositionAwareModifierNode) {
                                    GlobalPositionAwareModifierNode globalPositionAwareModifierNode = (GlobalPositionAwareModifierNode) B;
                                    globalPositionAwareModifierNode.F(DelegatableNodeKt.d(globalPositionAwareModifierNode, 256));
                                } else if ((B.d & 256) != 0 && (B instanceof DelegatingNode)) {
                                    Modifier.Node node2 = ((DelegatingNode) B).q;
                                    int i2 = 0;
                                    B = B;
                                    mutableVector = mutableVector;
                                    while (node2 != null) {
                                        if ((node2.d & 256) != 0) {
                                            i2++;
                                            if (i2 == 1) {
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
                                        }
                                        node2 = node2.g;
                                        B = B;
                                        mutableVector = mutableVector;
                                    }
                                    if (i2 == 1) {
                                    }
                                }
                                B = DelegatableNodeKt.b(mutableVector);
                            }
                        }
                        if ((node.f8610e & 256) == 0) {
                            break;
                        } else {
                            node = node.g;
                        }
                    }
                }
            }
            layoutNode.Q = false;
            MutableVector mutableVectorR = layoutNode.R();
            Object[] objArr = mutableVectorR.f8165b;
            int i3 = mutableVectorR.d;
            for (int i4 = 0; i4 < i3; i4++) {
                b((LayoutNode) objArr[i4]);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a() {
        LayoutNode[] layoutNodeArr;
        Companion.DepthComparator depthComparator = Companion.DepthComparator.f9811b;
        MutableVector mutableVector = this.f9809a;
        mutableVector.r(depthComparator);
        int i2 = mutableVector.d;
        LayoutNode[] layoutNodeArr2 = this.f9810b;
        if (layoutNodeArr2 == null || layoutNodeArr2.length < i2) {
            layoutNodeArr = layoutNodeArr2;
            layoutNodeArr = new LayoutNode[Math.max(16, i2)];
        }
        layoutNodeArr = layoutNodeArr2;
        this.f9810b = null;
        for (int i3 = 0; i3 < i2; i3++) {
            layoutNodeArr[i3] = mutableVector.f8165b[i3];
        }
        mutableVector.j();
        while (true) {
            i2--;
            if (-1 >= i2) {
                this.f9810b = layoutNodeArr;
                return;
            }
            LayoutNode layoutNode = layoutNodeArr[i2];
            layoutNode.getClass();
            if (layoutNode.Q) {
                b(layoutNode);
            }
            layoutNodeArr[i2] = 0;
        }
    }
}
