package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import defpackage.md;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/focus/FocusRequester;", "", "<init>", "()V", "Companion", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FocusRequester {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f8775b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final FocusRequester f8776c = new FocusRequester();
    public static final FocusRequester d = new FocusRequester();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final FocusRequester f8777e = new FocusRequester();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableVector f8778a = new MutableVector(new FocusRequesterModifierNode[16], 0);

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/focus/FocusRequester$Companion;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public static void a(FocusRequester focusRequester) {
        FocusDirection.f8731b.getClass();
        int i2 = FocusDirection.f8736i;
        focusRequester.getClass();
        f8775b.getClass();
        if (focusRequester == f8776c) {
            md.k("\n    Please check whether the focusRequester is FocusRequester.Cancel or FocusRequester.Default\n    before invoking any functions on the focusRequester.\n");
            return;
        }
        if (focusRequester == d) {
            md.k("\n    Please check whether the focusRequester is FocusRequester.Cancel or FocusRequester.Default\n    before invoking any functions on the focusRequester.\n");
            return;
        }
        MutableVector mutableVector = focusRequester.f8778a;
        int i3 = mutableVector.d;
        if (i3 == 0) {
            System.out.println((Object) "FocusRelatedWarning: \n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n");
            return;
        }
        Object[] objArr = mutableVector.f8165b;
        for (int i4 = 0; i4 < i3; i4++) {
            FocusRequesterModifierNode focusRequesterModifierNode = (FocusRequesterModifierNode) objArr[i4];
            if (!focusRequesterModifierNode.getF8608b().o) {
                InlineClassHelperKt.c("visitChildren called on an unattached node");
            }
            MutableVector mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
            Modifier.Node node = focusRequesterModifierNode.getF8608b().g;
            if (node == null) {
                DelegatableNodeKt.a(mutableVector2, focusRequesterModifierNode.getF8608b());
            } else {
                mutableVector2.b(node);
            }
            while (true) {
                int i5 = mutableVector2.d;
                if (i5 == 0) {
                    break;
                }
                Modifier.Node nodeB = (Modifier.Node) mutableVector2.o(i5 - 1);
                if ((nodeB.f8610e & 1024) == 0) {
                    DelegatableNodeKt.a(mutableVector2, nodeB);
                } else {
                    while (nodeB != null) {
                        if ((nodeB.d & 1024) != 0) {
                            MutableVector mutableVector3 = null;
                            while (nodeB != null) {
                                if (nodeB instanceof FocusTargetNode) {
                                    if (((FocusTargetNode) nodeB).H(i2)) {
                                        break;
                                    }
                                } else if ((nodeB.d & 1024) != 0 && (nodeB instanceof DelegatingNode)) {
                                    int i6 = 0;
                                    for (Modifier.Node node2 = ((DelegatingNode) nodeB).q; node2 != null; node2 = node2.g) {
                                        if ((node2.d & 1024) != 0) {
                                            i6++;
                                            if (i6 == 1) {
                                                nodeB = node2;
                                            } else {
                                                if (mutableVector3 == null) {
                                                    mutableVector3 = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (nodeB != null) {
                                                    mutableVector3.b(nodeB);
                                                    nodeB = null;
                                                }
                                                mutableVector3.b(node2);
                                            }
                                        }
                                    }
                                    if (i6 == 1) {
                                    }
                                }
                                nodeB = DelegatableNodeKt.b(mutableVector3);
                            }
                            break;
                        }
                        nodeB = nodeB.g;
                    }
                }
            }
        }
    }
}
