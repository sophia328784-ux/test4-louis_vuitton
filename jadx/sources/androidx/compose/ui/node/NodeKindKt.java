package androidx.compose.ui.node;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.ObjectIntMapKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifier;
import androidx.compose.ui.focus.FocusEventModifier;
import androidx.compose.ui.focus.FocusEventModifierNode;
import androidx.compose.ui.focus.FocusOrderModifier;
import androidx.compose.ui.focus.FocusPropertiesModifierNode;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode;
import androidx.compose.ui.input.key.KeyInputModifierNode;
import androidx.compose.ui.input.key.SoftKeyboardInterceptionModifierNode;
import androidx.compose.ui.input.pointer.PointerInputModifier;
import androidx.compose.ui.input.rotary.RotaryInputModifierNode;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.ApproachLayoutModifierNode;
import androidx.compose.ui.layout.BeyondBoundsLayoutProviderModifierNode;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.OnGloballyPositionedModifier;
import androidx.compose.ui.layout.OnPlacedModifier;
import androidx.compose.ui.layout.OnPlacedNode;
import androidx.compose.ui.layout.OnRemeasuredModifier;
import androidx.compose.ui.layout.ParentDataModifier;
import androidx.compose.ui.modifier.ModifierLocalConsumer;
import androidx.compose.ui.modifier.ModifierLocalModifierNode;
import androidx.compose.ui.modifier.ModifierLocalProvider;
import androidx.compose.ui.relocation.BringIntoViewModifierNode;
import androidx.compose.ui.semantics.SemanticsModifier;
import kotlin.Metadata;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class NodeKindKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final MutableObjectIntMap f9803a = ObjectIntMapKt.a();

    public static final void a(Modifier.Node node, int i2, int i3) {
        if (!(node instanceof DelegatingNode)) {
            b(node, i2 & node.d, i3);
            return;
        }
        DelegatingNode delegatingNode = (DelegatingNode) node;
        int i4 = delegatingNode.p;
        b(node, i4 & i2, i3);
        int i5 = (~i4) & i2;
        for (Modifier.Node node2 = delegatingNode.q; node2 != null; node2 = node2.g) {
            a(node2, i5, i3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void b(Modifier.Node node, int i2, int i3) {
        if (i3 != 0 || node.getQ()) {
            if ((i2 & 2) != 0 && (node instanceof LayoutModifierNode)) {
                DelegatableNodeKt.f((LayoutModifierNode) node).X();
                if (i3 == 2) {
                    DelegatableNodeKt.d(node, 2).Q1();
                }
            }
            if ((i2 & 128) != 0 && i3 != 2) {
                DelegatableNodeKt.f(node).X();
            }
            if ((4194304 & i2) != 0 && i3 != 2) {
                LayoutNode layoutNodeF = DelegatableNodeKt.f(node);
                LayoutNode.Companion companion = LayoutNode.T;
                layoutNodeF.l0(false);
            }
            if ((i2 & 256) != 0 && (node instanceof GlobalPositionAwareModifierNode)) {
                if (i3 == 1) {
                    LayoutNode layoutNodeF2 = DelegatableNodeKt.f(node);
                    layoutNodeF2.q0(layoutNodeF2.R + 1);
                } else if (i3 == 2) {
                    LayoutNode layoutNodeF3 = DelegatableNodeKt.f(node);
                    layoutNodeF3.q0(layoutNodeF3.R - 1);
                }
                if (i3 != 2) {
                    LayoutNode layoutNodeF4 = DelegatableNodeKt.f(node);
                    if (layoutNodeF4.R != 0 && !layoutNodeF4.J() && !layoutNodeF4.K() && !layoutNodeF4.Q) {
                        LayoutNodeKt.a(layoutNodeF4).i(layoutNodeF4);
                    }
                }
            }
            if ((i2 & 4) != 0 && (node instanceof DrawModifierNode)) {
                DrawModifierNodeKt.a((DrawModifierNode) node);
            }
            if ((i2 & 8) != 0 && (node instanceof SemanticsModifierNode)) {
                DelegatableNodeKt.f(node).t = true;
            }
            if ((i2 & 64) != 0 && (node instanceof ParentDataModifierNode)) {
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = DelegatableNodeKt.f((ParentDataModifierNode) node).I;
                layoutNodeLayoutDelegate.p.s = true;
                LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.q;
                if (lookaheadPassDelegate != null) {
                    lookaheadPassDelegate.y = true;
                }
            }
            if ((i2 & 2048) != 0 && (node instanceof FocusPropertiesModifierNode)) {
                FocusPropertiesModifierNode focusPropertiesModifierNode = (FocusPropertiesModifierNode) node;
                CanFocusChecker canFocusChecker = CanFocusChecker.f9638b;
                CanFocusChecker.f9639c = null;
                focusPropertiesModifierNode.X0(canFocusChecker);
                if (CanFocusChecker.f9639c != null) {
                    if (!focusPropertiesModifierNode.getF8608b().o) {
                        InlineClassHelperKt.c("visitChildren called on an unattached node");
                    }
                    MutableVector mutableVector = new MutableVector(new Modifier.Node[16], 0);
                    Modifier.Node node2 = focusPropertiesModifierNode.getF8608b().g;
                    if (node2 == null) {
                        DelegatableNodeKt.a(mutableVector, focusPropertiesModifierNode.getF8608b());
                    } else {
                        mutableVector.b(node2);
                    }
                    while (true) {
                        int i4 = mutableVector.d;
                        if (i4 == 0) {
                            break;
                        }
                        Modifier.Node nodeB = (Modifier.Node) mutableVector.o(i4 - 1);
                        if ((nodeB.f8610e & 1024) == 0) {
                            DelegatableNodeKt.a(mutableVector, nodeB);
                        } else {
                            while (nodeB != null) {
                                if ((nodeB.d & 1024) != 0) {
                                    MutableVector mutableVector2 = null;
                                    while (nodeB != null) {
                                        if (nodeB instanceof FocusTargetNode) {
                                            FocusTargetNode focusTargetNode = (FocusTargetNode) nodeB;
                                            DelegatableNodeKt.g(focusTargetNode).getFocusOwner().h(focusTargetNode);
                                        } else if ((nodeB.d & 1024) != 0 && (nodeB instanceof DelegatingNode)) {
                                            int i5 = 0;
                                            for (Modifier.Node node3 = ((DelegatingNode) nodeB).q; node3 != null; node3 = node3.g) {
                                                if ((node3.d & 1024) != 0) {
                                                    i5++;
                                                    if (i5 == 1) {
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
                                            if (i5 == 1) {
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
            }
            if ((i2 & 4096) != 0 && (node instanceof FocusEventModifierNode)) {
                FocusEventModifierNode focusEventModifierNode = (FocusEventModifierNode) node;
                DelegatableNodeKt.g(focusEventModifierNode).getFocusOwner().c(focusEventModifierNode);
            }
            if ((i2 & PKIFailureInfo.badSenderNonce) != 0 && (node instanceof IndirectPointerInputModifierNode) && i3 == 2) {
                ((IndirectPointerInputModifierNode) node).w1();
            }
        }
    }

    public static final void c(Modifier.Node node) {
        if (!node.o) {
            InlineClassHelperKt.c("autoInvalidateUpdatedNode called on unattached node");
        }
        a(node, -1, 0);
    }

    public static final int d(Modifier.Element element) {
        int i2 = element instanceof LayoutModifier ? 3 : 1;
        if (element instanceof DrawModifier) {
            i2 |= 4;
        }
        if (element instanceof SemanticsModifier) {
            i2 |= 8;
        }
        if (element instanceof PointerInputModifier) {
            i2 |= 16;
        }
        if ((element instanceof ModifierLocalConsumer) || (element instanceof ModifierLocalProvider)) {
            i2 |= 32;
        }
        if (element instanceof FocusEventModifier) {
            i2 |= 4096;
        }
        if (element instanceof FocusOrderModifier) {
            i2 |= 2048;
        }
        if (element instanceof OnGloballyPositionedModifier) {
            i2 |= 256;
        }
        if (element instanceof ParentDataModifier) {
            i2 |= 64;
        }
        if (element instanceof OnPlacedModifier) {
            i2 |= 4194304;
        }
        if (element instanceof OnRemeasuredModifier) {
            i2 |= 128;
        }
        return element instanceof BringIntoViewModifierNode ? 524288 | i2 : i2;
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0055  */
    /* JADX WARN: Code duplicated, block: B:43:0x005b  */
    /* JADX WARN: Code duplicated, block: B:46:0x0061  */
    /* JADX WARN: Code duplicated, block: B:49:0x0067  */
    /* JADX WARN: Code duplicated, block: B:52:0x006d  */
    /* JADX WARN: Code duplicated, block: B:55:0x0073  */
    /* JADX WARN: Code duplicated, block: B:58:0x0079  */
    /* JADX WARN: Code duplicated, block: B:61:0x007f  */
    /* JADX WARN: Code duplicated, block: B:64:0x0087  */
    /* JADX WARN: Code duplicated, block: B:67:0x008e  */
    /* JADX WARN: Code duplicated, block: B:70:0x0095  */
    /* JADX WARN: Code duplicated, block: B:73:0x009c  */
    /* JADX WARN: Code duplicated, block: B:76:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:79:0x00aa  */
    public static final int e(Modifier.Node node) {
        int i2;
        int i3 = node.d;
        if (i3 != 0) {
            return i3;
        }
        Class<?> cls = node.getClass();
        MutableObjectIntMap mutableObjectIntMap = f9803a;
        int iA = mutableObjectIntMap.a(cls);
        if (iA >= 0) {
            return mutableObjectIntMap.f3342c[iA];
        }
        int i4 = node instanceof LayoutModifierNode ? 3 : 1;
        if (node instanceof DrawModifierNode) {
            i4 |= 4;
        }
        if (node instanceof SemanticsModifierNode) {
            i4 |= 8;
        }
        if (node instanceof PointerInputModifierNode) {
            i4 |= 16;
        }
        if (node instanceof ModifierLocalModifierNode) {
            i4 |= 32;
        }
        if (node instanceof ParentDataModifierNode) {
            i4 |= 64;
        }
        if (!(node instanceof OnPlacedNode)) {
            if (node instanceof LayoutAwareModifierNode) {
                i2 = 4194432;
            } else if (node instanceof MeasuredSizeAwareModifierNode) {
                i4 |= 128;
            }
            if (node instanceof GlobalPositionAwareModifierNode) {
                i4 |= 256;
            }
            if (node instanceof ApproachLayoutModifierNode) {
                i4 |= 512;
            }
            if (node instanceof FocusTargetNode) {
                i4 |= 1024;
            }
            if (node instanceof FocusPropertiesModifierNode) {
                i4 |= 2048;
            }
            if (node instanceof FocusEventModifierNode) {
                i4 |= 4096;
            }
            if (node instanceof KeyInputModifierNode) {
                i4 |= 8192;
            }
            if (node instanceof RotaryInputModifierNode) {
                i4 |= 16384;
            }
            if (node instanceof CompositionLocalConsumerModifierNode) {
                i4 |= 32768;
            }
            if (node instanceof SoftKeyboardInterceptionModifierNode) {
                i4 |= 131072;
            }
            if (node instanceof TraversableNode) {
                i4 |= 262144;
            }
            if (node instanceof BringIntoViewModifierNode) {
                i4 |= 524288;
            }
            if (node instanceof UnplacedAwareModifierNode) {
                i4 |= 1048576;
            }
            if (node instanceof IndirectPointerInputModifierNode) {
                i4 |= PKIFailureInfo.badSenderNonce;
            }
            if (node instanceof BeyondBoundsLayoutProviderModifierNode) {
                i4 |= 8388608;
            }
            mutableObjectIntMap.h(i4, cls);
            return i4;
        }
        i2 = 4194304;
        i4 |= i2;
        if (node instanceof GlobalPositionAwareModifierNode) {
            i4 |= 256;
        }
        if (node instanceof ApproachLayoutModifierNode) {
            i4 |= 512;
        }
        if (node instanceof FocusTargetNode) {
            i4 |= 1024;
        }
        if (node instanceof FocusPropertiesModifierNode) {
            i4 |= 2048;
        }
        if (node instanceof FocusEventModifierNode) {
            i4 |= 4096;
        }
        if (node instanceof KeyInputModifierNode) {
            i4 |= 8192;
        }
        if (node instanceof RotaryInputModifierNode) {
            i4 |= 16384;
        }
        if (node instanceof CompositionLocalConsumerModifierNode) {
            i4 |= 32768;
        }
        if (node instanceof SoftKeyboardInterceptionModifierNode) {
            i4 |= 131072;
        }
        if (node instanceof TraversableNode) {
            i4 |= 262144;
        }
        if (node instanceof BringIntoViewModifierNode) {
            i4 |= 524288;
        }
        if (node instanceof UnplacedAwareModifierNode) {
            i4 |= 1048576;
        }
        if (node instanceof IndirectPointerInputModifierNode) {
            i4 |= PKIFailureInfo.badSenderNonce;
        }
        if (node instanceof BeyondBoundsLayoutProviderModifierNode) {
            i4 |= 8388608;
        }
        mutableObjectIntMap.h(i4, cls);
        return i4;
    }

    public static final int f(Modifier.Node node) {
        if (!(node instanceof DelegatingNode)) {
            return e(node);
        }
        DelegatingNode delegatingNode = (DelegatingNode) node;
        int iF = delegatingNode.p;
        for (Modifier.Node node2 = delegatingNode.q; node2 != null; node2 = node2.g) {
            iF |= f(node2);
        }
        return iF;
    }

    public static final boolean g(int i2) {
        return ((i2 & 128) != 0) | ((i2 & 4194304) != 0);
    }
}
