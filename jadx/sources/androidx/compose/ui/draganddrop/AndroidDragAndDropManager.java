package androidx.compose.ui.draganddrop;

import android.view.DragEvent;
import android.view.View;
import androidx.collection.ArraySet;
import androidx.collection.IndexBasedArrayIterator;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.TraversableNode$Companion$TraverseDescendantsAction;
import androidx.compose.ui.node.TraversableNodeKt;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref$BooleanRef;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002Be\u0012\\\u0010\u0010\u001aX\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00110\b¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\t\u0012$\u0012\"\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\r¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u000f0\u0003¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;", "Landroid/view/View$OnDragListener;", "Landroidx/compose/ui/draganddrop/DragAndDropManager;", "Lkotlin/Function3;", "Landroidx/compose/ui/draganddrop/DragAndDropTransferData;", "Lkotlin/ParameterName;", "name", "transferData", "Landroidx/compose/ui/geometry/Size;", "decorationSize", "Lkotlin/Function1;", "Landroidx/compose/ui/graphics/drawscope/DrawScope;", "", "Lkotlin/ExtensionFunctionType;", "drawDragDecoration", "", "startDrag", "<init>", "(Lkotlin/jvm/functions/Function3;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidDragAndDropManager implements View.OnDragListener, DragAndDropManager {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function3 f8682b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DragAndDropNode f8683c = new DragAndDropNode(null, null, 3, null);
    public final ArraySet d = new ArraySet(0, 1, null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AndroidDragAndDropManager$modifier$1 f8684e = new ModifierNodeElement<DragAndDropNode>() { // from class: androidx.compose.ui.draganddrop.AndroidDragAndDropManager$modifier$1
        @Override // androidx.compose.ui.node.ModifierNodeElement
        public final Modifier.Node a() {
            return this.f8685b.f8683c;
        }

        public final boolean equals(Object obj) {
            return obj == this;
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public final /* bridge */ /* synthetic */ void g(Modifier.Node node) {
        }

        public final int hashCode() {
            return this.f8685b.f8683c.hashCode();
        }
    };

    /* JADX WARN: Type inference failed for: r4v3, types: [androidx.compose.ui.draganddrop.AndroidDragAndDropManager$modifier$1] */
    public AndroidDragAndDropManager(Function3<? super DragAndDropTransferData, ? super Size, ? super Function1<? super DrawScope, Unit>, Boolean> function3) {
        this.f8682b = function3;
    }

    @Override // androidx.compose.ui.draganddrop.DragAndDropManager
    public final boolean a(DragAndDropNode dragAndDropNode) {
        return this.d.contains(dragAndDropNode);
    }

    @Override // androidx.compose.ui.draganddrop.DragAndDropManager
    public final void b(DragAndDropNode dragAndDropNode) {
        this.d.add(dragAndDropNode);
    }

    @Override // android.view.View.OnDragListener
    public final boolean onDrag(View view, DragEvent dragEvent) {
        final DragAndDropEvent dragAndDropEvent = new DragAndDropEvent(dragEvent);
        int action = dragEvent.getAction();
        ArraySet arraySet = this.d;
        final DragAndDropNode dragAndDropNode = this.f8683c;
        switch (action) {
            case 1:
                dragAndDropNode.getClass();
                final Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
                Function1<DragAndDropNode, TraversableNode$Companion$TraverseDescendantsAction> function1 = new Function1<DragAndDropNode, TraversableNode$Companion$TraverseDescendantsAction>() { // from class: androidx.compose.ui.draganddrop.DragAndDropNode$acceptDragAndDropTransfer$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        DragAndDropNode dragAndDropNode2 = (DragAndDropNode) obj;
                        if (!dragAndDropNode2.o) {
                            return TraversableNode$Companion$TraverseDescendantsAction.SkipSubtreeAndContinueTraversal;
                        }
                        if (dragAndDropNode2.t != null) {
                            InlineClassHelperKt.c("DragAndDropTarget self reference must be null at the start of a drag and drop session");
                        }
                        Function1 function2 = dragAndDropNode2.q;
                        DragAndDropTarget dragAndDropTarget = function2 != null ? (DragAndDropTarget) function2.invoke(dragAndDropEvent) : null;
                        dragAndDropNode2.t = dragAndDropTarget;
                        boolean z = dragAndDropTarget != null;
                        if (z) {
                            DragAndDropNode dragAndDropNode3 = dragAndDropNode;
                            dragAndDropNode3.getClass();
                            DelegatableNodeKt.g(dragAndDropNode3).getDragAndDropManager().b(dragAndDropNode2);
                        }
                        Ref$BooleanRef ref$BooleanRef2 = ref$BooleanRef;
                        ref$BooleanRef2.f71917b = ref$BooleanRef2.f71917b || z;
                        return TraversableNode$Companion$TraverseDescendantsAction.ContinueTraversal;
                    }
                };
                if (function1.invoke(dragAndDropNode) == TraversableNode$Companion$TraverseDescendantsAction.ContinueTraversal) {
                    TraversableNodeKt.f(dragAndDropNode, function1);
                }
                boolean z = ref$BooleanRef.f71917b;
                Iterator it = arraySet.iterator();
                while (true) {
                    IndexBasedArrayIterator indexBasedArrayIterator = (IndexBasedArrayIterator) it;
                    if (!indexBasedArrayIterator.hasNext()) {
                        return z;
                    }
                    ((DragAndDropTarget) indexBasedArrayIterator.next()).K(dragAndDropEvent);
                }
                break;
            case 2:
                dragAndDropNode.L(dragAndDropEvent);
                return false;
            case 3:
                return dragAndDropNode.K0(dragAndDropEvent);
            case 4:
                dragAndDropNode.S1(dragAndDropEvent);
                arraySet.clear();
                return false;
            case 5:
                dragAndDropNode.z0(dragAndDropEvent);
                return false;
            case 6:
                dragAndDropNode.e0(dragAndDropEvent);
                return false;
            default:
                return false;
        }
    }
}
