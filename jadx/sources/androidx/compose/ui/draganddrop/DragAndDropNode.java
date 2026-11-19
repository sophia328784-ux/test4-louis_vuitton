package androidx.compose.ui.draganddrop;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNode$Companion$TraverseDescendantsAction;
import androidx.compose.ui.node.TraversableNodeKt;
import androidx.compose.ui.unit.IntSize;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006:\u0001\u0012BD\u0012!\b\u0002\u0010\f\u001a\u001b\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u0007¢\u0006\u0002\b\u000b\u0012\u0018\b\u0002\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\r¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, d2 = {"Landroidx/compose/ui/draganddrop/DragAndDropNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/TraversableNode;", "Landroidx/compose/ui/draganddrop/DragAndDropModifierNode;", "Landroidx/compose/ui/draganddrop/DragAndDropSourceModifierNode;", "Landroidx/compose/ui/draganddrop/DragAndDropTargetModifierNode;", "Landroidx/compose/ui/draganddrop/DragAndDropTarget;", "Lkotlin/Function2;", "Landroidx/compose/ui/draganddrop/DragAndDropStartTransferScope;", "Landroidx/compose/ui/geometry/Offset;", "", "Lkotlin/ExtensionFunctionType;", "onStartTransfer", "Lkotlin/Function1;", "Landroidx/compose/ui/draganddrop/DragAndDropEvent;", "onDropTargetValidate", "<init>", "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V", "Companion", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DragAndDropNode extends Modifier.Node implements TraversableNode, DragAndDropModifierNode, DragAndDropSourceModifierNode, DragAndDropTargetModifierNode, DragAndDropTarget {
    public static final /* synthetic */ int v = 0;
    public final Function2 p;
    public final Function1 q;
    public final Object r;
    public DragAndDropNode s;
    public DragAndDropTarget t;
    public long u;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0082\u0003\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/compose/ui/draganddrop/DragAndDropNode$Companion;", "", "DragAndDropTraversableKey", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÂ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/draganddrop/DragAndDropNode$Companion$DragAndDropTraversableKey;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class DragAndDropTraversableKey {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final DragAndDropTraversableKey f8690a = new DragAndDropTraversableKey();
        }

        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public DragAndDropNode(Function2<? super DragAndDropStartTransferScope, ? super Offset, Unit> function2, Function1<? super DragAndDropEvent, ? extends DragAndDropTarget> function1) {
        this.p = function2;
        this.q = function1;
        this.r = Companion.DragAndDropTraversableKey.f8690a;
        IntSize.f11020b.getClass();
        this.u = 0L;
    }

    @Override // androidx.compose.ui.draganddrop.DragAndDropTarget
    public final void K(DragAndDropEvent dragAndDropEvent) {
        DragAndDropTarget dragAndDropTarget = this.t;
        if (dragAndDropTarget != null) {
            dragAndDropTarget.K(dragAndDropEvent);
            return;
        }
        DragAndDropNode dragAndDropNode = this.s;
        if (dragAndDropNode != null) {
            dragAndDropNode.K(dragAndDropEvent);
        }
    }

    @Override // androidx.compose.ui.draganddrop.DragAndDropTarget
    public final boolean K0(DragAndDropEvent dragAndDropEvent) {
        DragAndDropNode dragAndDropNode = this.s;
        if (dragAndDropNode != null) {
            return dragAndDropNode.K0(dragAndDropEvent);
        }
        DragAndDropTarget dragAndDropTarget = this.t;
        if (dragAndDropTarget != null) {
            return dragAndDropTarget.K0(dragAndDropEvent);
        }
        return false;
    }

    @Override // androidx.compose.ui.draganddrop.DragAndDropTarget
    public final void L(final DragAndDropEvent dragAndDropEvent) {
        TraversableNode traversableNode;
        DragAndDropNode dragAndDropNode;
        DragAndDropNode dragAndDropNode2 = this.s;
        if (dragAndDropNode2 == null || !DragAndDropNodeKt.a(dragAndDropNode2, DragAndDrop_androidKt.a(dragAndDropEvent))) {
            if (this.f8608b.o) {
                final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                TraversableNodeKt.f(this, new Function1<DragAndDropNode, TraversableNode$Companion$TraverseDescendantsAction>() { // from class: androidx.compose.ui.draganddrop.DragAndDropNode$onMoved$$inlined$firstDescendantOrNull$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        TraversableNode traversableNode2 = (TraversableNode) obj;
                        DragAndDropNode dragAndDropNode3 = (DragAndDropNode) traversableNode2;
                        int i2 = DragAndDropNode.v;
                        DragAndDropNode dragAndDropNode4 = this;
                        dragAndDropNode4.getClass();
                        if (!DelegatableNodeKt.g(dragAndDropNode4).getDragAndDropManager().a(dragAndDropNode3) || !DragAndDropNodeKt.a(dragAndDropNode3, DragAndDrop_androidKt.a(dragAndDropEvent))) {
                            return TraversableNode$Companion$TraverseDescendantsAction.ContinueTraversal;
                        }
                        ref$ObjectRef.f71921b = traversableNode2;
                        return TraversableNode$Companion$TraverseDescendantsAction.CancelTraversal;
                    }
                });
                traversableNode = (TraversableNode) ref$ObjectRef.f71921b;
            } else {
                traversableNode = null;
            }
            dragAndDropNode = (DragAndDropNode) traversableNode;
        } else {
            dragAndDropNode = dragAndDropNode2;
        }
        if (dragAndDropNode != null && dragAndDropNode2 == null) {
            dragAndDropNode.z0(dragAndDropEvent);
            dragAndDropNode.L(dragAndDropEvent);
            DragAndDropTarget dragAndDropTarget = this.t;
            if (dragAndDropTarget != null) {
                dragAndDropTarget.e0(dragAndDropEvent);
            }
        } else if (dragAndDropNode == null && dragAndDropNode2 != null) {
            DragAndDropTarget dragAndDropTarget2 = this.t;
            if (dragAndDropTarget2 != null) {
                dragAndDropTarget2.z0(dragAndDropEvent);
                dragAndDropTarget2.L(dragAndDropEvent);
            }
            dragAndDropNode2.e0(dragAndDropEvent);
        } else if (!Intrinsics.c(dragAndDropNode, dragAndDropNode2)) {
            if (dragAndDropNode != null) {
                dragAndDropNode.z0(dragAndDropEvent);
                dragAndDropNode.L(dragAndDropEvent);
            }
            if (dragAndDropNode2 != null) {
                dragAndDropNode2.e0(dragAndDropEvent);
            }
        } else if (dragAndDropNode != null) {
            dragAndDropNode.L(dragAndDropEvent);
        } else {
            DragAndDropTarget dragAndDropTarget3 = this.t;
            if (dragAndDropTarget3 != null) {
                dragAndDropTarget3.L(dragAndDropEvent);
            }
        }
        this.s = dragAndDropNode;
    }

    @Override // androidx.compose.ui.node.TraversableNode
    /* JADX INFO: renamed from: M, reason: from getter */
    public final Object getR() {
        return this.r;
    }

    @Override // androidx.compose.ui.draganddrop.DragAndDropTarget
    public final void S1(final DragAndDropEvent dragAndDropEvent) {
        Function1<DragAndDropNode, TraversableNode$Companion$TraverseDescendantsAction> function1 = new Function1<DragAndDropNode, TraversableNode$Companion$TraverseDescendantsAction>() { // from class: androidx.compose.ui.draganddrop.DragAndDropNode$onEnded$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                DragAndDropNode dragAndDropNode = (DragAndDropNode) obj;
                if (!dragAndDropNode.f8608b.o) {
                    return TraversableNode$Companion$TraverseDescendantsAction.SkipSubtreeAndContinueTraversal;
                }
                DragAndDropTarget dragAndDropTarget = dragAndDropNode.t;
                if (dragAndDropTarget != null) {
                    dragAndDropTarget.S1(dragAndDropEvent);
                }
                dragAndDropNode.t = null;
                dragAndDropNode.s = null;
                return TraversableNode$Companion$TraverseDescendantsAction.ContinueTraversal;
            }
        };
        if (function1.invoke(this) != TraversableNode$Companion$TraverseDescendantsAction.ContinueTraversal) {
            return;
        }
        TraversableNodeKt.f(this, function1);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void a2() {
        this.t = null;
        this.s = null;
    }

    @Override // androidx.compose.ui.node.LayoutAwareModifierNode, androidx.compose.ui.node.MeasuredSizeAwareModifierNode
    public final void c(long j2) {
        this.u = j2;
    }

    @Override // androidx.compose.ui.draganddrop.DragAndDropTarget
    public final void e0(DragAndDropEvent dragAndDropEvent) {
        DragAndDropTarget dragAndDropTarget = this.t;
        if (dragAndDropTarget != null) {
            dragAndDropTarget.e0(dragAndDropEvent);
        }
        DragAndDropNode dragAndDropNode = this.s;
        if (dragAndDropNode != null) {
            dragAndDropNode.e0(dragAndDropEvent);
        }
        this.s = null;
    }

    @Override // androidx.compose.ui.draganddrop.DragAndDropTarget
    public final void z0(DragAndDropEvent dragAndDropEvent) {
        DragAndDropTarget dragAndDropTarget = this.t;
        if (dragAndDropTarget != null) {
            dragAndDropTarget.z0(dragAndDropEvent);
            return;
        }
        DragAndDropNode dragAndDropNode = this.s;
        if (dragAndDropNode != null) {
            dragAndDropNode.z0(dragAndDropEvent);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DragAndDropNode() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ DragAndDropNode(Function2 function2, Function1 function1, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : function2, (i2 & 2) != 0 ? null : function1);
    }
}
