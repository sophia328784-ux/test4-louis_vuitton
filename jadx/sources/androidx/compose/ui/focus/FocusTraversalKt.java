package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class FocusTraversalKt {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f8788a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f8789b;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            try {
                iArr[LayoutDirection.Ltr.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LayoutDirection.Rtl.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f8788a = iArr;
            int[] iArr2 = new int[FocusStateImpl.values().length];
            try {
                iArr2[FocusStateImpl.Active.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[FocusStateImpl.ActiveParent.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[FocusStateImpl.Captured.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[FocusStateImpl.Inactive.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            f8789b = iArr2;
        }
    }

    public static final FocusTargetNode a(FocusTargetNode focusTargetNode) {
        FocusTargetNode focusTargetNodeG = DelegatableNodeKt.g(focusTargetNode).getFocusOwner().g();
        if (focusTargetNodeG == null || !focusTargetNodeG.o) {
            return null;
        }
        return focusTargetNodeG;
    }

    public static final Rect b(FocusTargetNode focusTargetNode) {
        if (!focusTargetNode.o) {
            Rect.f8809e.getClass();
            return Rect.f8810f;
        }
        NodeCoordinator nodeCoordinator = focusTargetNode.f8613i;
        if (nodeCoordinator != null) {
            LayoutCoordinates layoutCoordinatesC = LayoutCoordinatesKt.c(nodeCoordinator);
            if (!layoutCoordinatesC.c()) {
                layoutCoordinatesC = null;
            }
            if (layoutCoordinatesC != null) {
                return focusTargetNode.k2(layoutCoordinatesC);
            }
        }
        Rect.f8809e.getClass();
        return Rect.f8810f;
    }

    public static final FocusTargetNode c(FocusTargetNode focusTargetNode) {
        boolean z = focusTargetNode.f8608b.o;
        if (z) {
            if (!z) {
                InlineClassHelperKt.c("visitChildren called on an unattached node");
            }
            MutableVector mutableVector = new MutableVector(new Modifier.Node[16], 0);
            Modifier.Node node = focusTargetNode.f8608b;
            Modifier.Node node2 = node.g;
            if (node2 == null) {
                DelegatableNodeKt.a(mutableVector, node);
            } else {
                mutableVector.b(node2);
            }
            while (true) {
                int i2 = mutableVector.d;
                if (i2 == 0) {
                    break;
                }
                Modifier.Node nodeB = (Modifier.Node) mutableVector.o(i2 - 1);
                if ((nodeB.f8610e & 1024) == 0) {
                    DelegatableNodeKt.a(mutableVector, nodeB);
                } else {
                    while (nodeB != null) {
                        if ((nodeB.d & 1024) != 0) {
                            MutableVector mutableVector2 = null;
                            while (nodeB != null) {
                                if (nodeB instanceof FocusTargetNode) {
                                    FocusTargetNode focusTargetNode2 = (FocusTargetNode) nodeB;
                                    if (focusTargetNode2.f8608b.o) {
                                        int i3 = WhenMappings.f8789b[focusTargetNode2.W().ordinal()];
                                        if (i3 == 1 || i3 == 2 || i3 == 3) {
                                            return focusTargetNode2;
                                        }
                                        if (i3 != 4) {
                                            v40.g();
                                            return null;
                                        }
                                    }
                                } else if ((nodeB.d & 1024) != 0 && (nodeB instanceof DelegatingNode)) {
                                    int i4 = 0;
                                    for (Modifier.Node node3 = ((DelegatingNode) nodeB).q; node3 != null; node3 = node3.g) {
                                        if ((node3.d & 1024) != 0) {
                                            i4++;
                                            if (i4 == 1) {
                                                nodeB = node3;
                                            } else {
                                                if (mutableVector2 == null) {
                                                    mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (nodeB != null) {
                                                    mutableVector2.b(nodeB);
                                                    nodeB = null;
                                                }
                                                mutableVector2.b(node3);
                                            }
                                        }
                                    }
                                    if (i4 == 1) {
                                    }
                                }
                                nodeB = DelegatableNodeKt.b(mutableVector2);
                            }
                            break;
                        }
                        nodeB = nodeB.g;
                    }
                }
            }
        }
        return null;
    }

    public static final boolean d(FocusTargetNode focusTargetNode) {
        LayoutNode layoutNode;
        NodeCoordinator nodeCoordinator;
        LayoutNode layoutNode2;
        NodeCoordinator nodeCoordinator2 = focusTargetNode.f8613i;
        return (nodeCoordinator2 == null || (layoutNode = nodeCoordinator2.q) == null || !layoutNode.A() || (nodeCoordinator = focusTargetNode.f8613i) == null || (layoutNode2 = nodeCoordinator.q) == null || !layoutNode2.c()) ? false : true;
    }
}
