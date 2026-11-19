package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutNode;
import defpackage.md;
import java.util.Comparator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÂ\u0002\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\b\u0012\u0004\u0012\u00020\u0002`\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/focus/FocusableChildrenComparator;", "Ljava/util/Comparator;", "Landroidx/compose/ui/focus/FocusTargetNode;", "Lkotlin/Comparator;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class FocusableChildrenComparator implements Comparator<FocusTargetNode> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final FocusableChildrenComparator f8793b = new FocusableChildrenComparator();

    @Override // java.util.Comparator
    public final int compare(FocusTargetNode focusTargetNode, FocusTargetNode focusTargetNode2) {
        FocusTargetNode focusTargetNode3 = focusTargetNode;
        FocusTargetNode focusTargetNode4 = focusTargetNode2;
        if (FocusTraversalKt.d(focusTargetNode3) && FocusTraversalKt.d(focusTargetNode4)) {
            LayoutNode layoutNodeF = DelegatableNodeKt.f(focusTargetNode3);
            LayoutNode layoutNodeF2 = DelegatableNodeKt.f(focusTargetNode4);
            if (!Intrinsics.c(layoutNodeF, layoutNodeF2)) {
                MutableVector mutableVector = new MutableVector(new LayoutNode[16], 0);
                while (layoutNodeF != null) {
                    mutableVector.a(0, layoutNodeF);
                    layoutNodeF = layoutNodeF.O();
                }
                MutableVector mutableVector2 = new MutableVector(new LayoutNode[16], 0);
                while (layoutNodeF2 != null) {
                    mutableVector2.a(0, layoutNodeF2);
                    layoutNodeF2 = layoutNodeF2.O();
                }
                int iMin = Math.min(mutableVector.d - 1, mutableVector2.d - 1);
                if (iMin >= 0) {
                    int i2 = 0;
                    while (Intrinsics.c(mutableVector.f8165b[i2], mutableVector2.f8165b[i2])) {
                        if (i2 != iMin) {
                            i2++;
                        }
                    }
                    return Intrinsics.d(((LayoutNode) mutableVector.f8165b[i2]).P(), ((LayoutNode) mutableVector2.f8165b[i2]).P());
                }
                md.k("Could not find a common ancestor between the two FocusModifiers.");
                return 0;
            }
        } else {
            if (FocusTraversalKt.d(focusTargetNode3)) {
                return -1;
            }
            if (FocusTraversalKt.d(focusTargetNode4)) {
                return 1;
            }
        }
        return 0;
    }
}
