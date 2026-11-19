package androidx.compose.ui.input.pointer;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DpTouchBoundsExpansion;
import androidx.compose.ui.node.PointerInputModifierNode;
import androidx.compose.ui.node.TouchBoundsExpansion;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNode$Companion$TraverseDescendantsAction;
import androidx.compose.ui.node.TraversableNodeKt;
import androidx.compose.ui.unit.Density;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b!\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B%\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/compose/ui/input/pointer/HoverIconModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/TraversableNode;", "Landroidx/compose/ui/node/PointerInputModifierNode;", "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;", "Landroidx/compose/ui/input/pointer/PointerIcon;", "icon", "", "overrideDescendants", "Landroidx/compose/ui/node/DpTouchBoundsExpansion;", "dpTouchBoundsExpansion", "<init>", "(Landroidx/compose/ui/input/pointer/PointerIcon;ZLandroidx/compose/ui/node/DpTouchBoundsExpansion;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class HoverIconModifierNode extends Modifier.Node implements TraversableNode, PointerInputModifierNode, CompositionLocalConsumerModifierNode {
    public DpTouchBoundsExpansion p;
    public PointerIcon q;
    public boolean r;
    public boolean s;

    public /* synthetic */ HoverIconModifierNode(PointerIcon pointerIcon, boolean z, DpTouchBoundsExpansion dpTouchBoundsExpansion, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(pointerIcon, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? null : dpTouchBoundsExpansion);
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final long P0() {
        DpTouchBoundsExpansion dpTouchBoundsExpansion = this.p;
        if (dpTouchBoundsExpansion == null) {
            TouchBoundsExpansion.f9834a.getClass();
            return TouchBoundsExpansion.f9835b;
        }
        Density density = DelegatableNodeKt.f(this).A;
        TouchBoundsExpansion.Companion companion = TouchBoundsExpansion.f9834a;
        int iB0 = density.B0(dpTouchBoundsExpansion.f9663a);
        int iB1 = density.B0(dpTouchBoundsExpansion.f9664b);
        int iB2 = density.B0(dpTouchBoundsExpansion.f9665c);
        int iB3 = density.B0(dpTouchBoundsExpansion.d);
        boolean z = dpTouchBoundsExpansion.f9666e;
        companion.getClass();
        return TouchBoundsExpansion.Companion.b(iB0, iB1, z, iB2, iB3);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void a2() {
        l2();
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void f0(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j2) {
        if (pointerEventPass == PointerEventPass.Main) {
            List list = pointerEvent.f9305a;
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (k2(((PointerInputChange) list.get(i2)).f9334i)) {
                    int i3 = pointerEvent.f9309f;
                    PointerEventType.f9310a.getClass();
                    if (i3 == PointerEventType.f9313e) {
                        this.s = true;
                        j2();
                        return;
                    } else {
                        if (pointerEvent.f9309f == PointerEventType.f9314f) {
                            l2();
                            return;
                        }
                        return;
                    }
                }
            }
        }
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void f1() {
        l2();
    }

    public final void h2() {
        PointerIcon pointerIcon;
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        TraversableNodeKt.d(this, new Function1<HoverIconModifierNode, Boolean>() { // from class: androidx.compose.ui.input.pointer.HoverIconModifierNode$findOverridingAncestorNode$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                HoverIconModifierNode hoverIconModifierNode = (HoverIconModifierNode) obj;
                if (hoverIconModifierNode.r && hoverIconModifierNode.s) {
                    ref$ObjectRef.f71921b = hoverIconModifierNode;
                }
                return Boolean.TRUE;
            }
        });
        HoverIconModifierNode hoverIconModifierNode = (HoverIconModifierNode) ref$ObjectRef.f71921b;
        if (hoverIconModifierNode == null || (pointerIcon = hoverIconModifierNode.q) == null) {
            pointerIcon = this.q;
        }
        i2(pointerIcon);
    }

    public abstract void i2(PointerIcon pointerIcon);

    public final void j2() {
        final Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        ref$BooleanRef.f71917b = true;
        if (!this.r) {
            TraversableNodeKt.f(this, new Function1<HoverIconModifierNode, TraversableNode$Companion$TraverseDescendantsAction>() { // from class: androidx.compose.ui.input.pointer.HoverIconModifierNode$displayIconIfDescendantsDoNotHavePriority$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    if (!((HoverIconModifierNode) obj).s) {
                        return TraversableNode$Companion$TraverseDescendantsAction.ContinueTraversal;
                    }
                    ref$BooleanRef.f71917b = false;
                    return TraversableNode$Companion$TraverseDescendantsAction.CancelTraversal;
                }
            });
        }
        if (ref$BooleanRef.f71917b) {
            h2();
        }
    }

    public abstract boolean k2(int i2);

    public final void l2() {
        if (this.s) {
            this.s = false;
            if (this.o) {
                final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                TraversableNodeKt.d(this, new Function1<HoverIconModifierNode, Boolean>() { // from class: androidx.compose.ui.input.pointer.HoverIconModifierNode$displayIconFromAncestorNodeWithCursorInBoundsOrDefaultIcon$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        HoverIconModifierNode hoverIconModifierNode = (HoverIconModifierNode) obj;
                        Ref$ObjectRef ref$ObjectRef2 = ref$ObjectRef;
                        Object obj2 = ref$ObjectRef2.f71921b;
                        if (obj2 == null && hoverIconModifierNode.s) {
                            ref$ObjectRef2.f71921b = hoverIconModifierNode;
                        } else if (obj2 != null && hoverIconModifierNode.r && hoverIconModifierNode.s) {
                            ref$ObjectRef2.f71921b = hoverIconModifierNode;
                        }
                        return Boolean.TRUE;
                    }
                });
                HoverIconModifierNode hoverIconModifierNode = (HoverIconModifierNode) ref$ObjectRef.f71921b;
                if (hoverIconModifierNode != null) {
                    hoverIconModifierNode.h2();
                } else {
                    i2(null);
                }
            }
        }
    }

    public final void m2(boolean z) {
        if (this.r != z) {
            this.r = z;
            boolean z2 = this.s;
            if (z) {
                if (z2) {
                    h2();
                }
            } else if (z2 && z2) {
                if (!z) {
                    final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                    TraversableNodeKt.f(this, new Function1<HoverIconModifierNode, TraversableNode$Companion$TraverseDescendantsAction>() { // from class: androidx.compose.ui.input.pointer.HoverIconModifierNode$findDescendantNodeWithCursorInBounds$1
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            HoverIconModifierNode hoverIconModifierNode = (HoverIconModifierNode) obj;
                            TraversableNode$Companion$TraverseDescendantsAction traversableNode$Companion$TraverseDescendantsAction = TraversableNode$Companion$TraverseDescendantsAction.ContinueTraversal;
                            if (hoverIconModifierNode.s) {
                                ref$ObjectRef.f71921b = hoverIconModifierNode;
                                if (hoverIconModifierNode.r) {
                                    return TraversableNode$Companion$TraverseDescendantsAction.SkipSubtreeAndContinueTraversal;
                                }
                            }
                            return traversableNode$Companion$TraverseDescendantsAction;
                        }
                    });
                    HoverIconModifierNode hoverIconModifierNode = (HoverIconModifierNode) ref$ObjectRef.f71921b;
                    if (hoverIconModifierNode != null) {
                        this = hoverIconModifierNode;
                    }
                }
                this.h2();
            }
        }
    }

    public HoverIconModifierNode(PointerIcon pointerIcon, boolean z, DpTouchBoundsExpansion dpTouchBoundsExpansion) {
        this.p = dpTouchBoundsExpansion;
        this.q = pointerIcon;
        this.r = z;
    }
}
