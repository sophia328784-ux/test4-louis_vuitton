package androidx.compose.ui.modifier;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.BackwardsCompatNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.Owner;
import java.util.HashSet;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/modifier/ModifierLocalManager;", "", "Landroidx/compose/ui/node/Owner;", "owner", "<init>", "(Landroidx/compose/ui/node/Owner;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ModifierLocalManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Owner f9614a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableVector f9615b = new MutableVector(new BackwardsCompatNode[16], 0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableVector f9616c = new MutableVector(new ModifierLocal[16], 0);
    public final MutableVector d = new MutableVector(new LayoutNode[16], 0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableVector f9617e = new MutableVector(new ModifierLocal[16], 0);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f9618f;

    public ModifierLocalManager(Owner owner) {
        this.f9614a = owner;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Type inference failed for: r7v9 */
    public static void b(Modifier.Node node, ModifierLocal modifierLocal, HashSet hashSet) {
        if (!node.f8608b.o) {
            InlineClassHelperKt.c("visitSubtreeIf called on an unattached node");
        }
        MutableVector mutableVector = new MutableVector(new Modifier.Node[16], 0);
        Modifier.Node node2 = node.f8608b;
        Modifier.Node node3 = node2.g;
        if (node3 == null) {
            DelegatableNodeKt.a(mutableVector, node2);
        } else {
            mutableVector.b(node3);
        }
        while (true) {
            int i2 = mutableVector.d;
            if (i2 == 0) {
                return;
            }
            Modifier.Node node4 = (Modifier.Node) mutableVector.o(i2 - 1);
            if ((node4.f8610e & 32) != 0) {
                Modifier.Node node5 = node4;
                while (true) {
                    if (node5 != null && node5.o) {
                        if ((node5.d & 32) != 0) {
                            ?? B = node5;
                            ?? mutableVector2 = 0;
                            while (B != 0) {
                                if (B instanceof ModifierLocalModifierNode) {
                                    ModifierLocalModifierNode modifierLocalModifierNode = (ModifierLocalModifierNode) B;
                                    if (modifierLocalModifierNode instanceof BackwardsCompatNode) {
                                        BackwardsCompatNode backwardsCompatNode = (BackwardsCompatNode) modifierLocalModifierNode;
                                        if ((backwardsCompatNode.p instanceof ModifierLocalConsumer) && backwardsCompatNode.s.contains(modifierLocal)) {
                                            hashSet.add(modifierLocalModifierNode);
                                        }
                                    }
                                    if (modifierLocalModifierNode.s0().a(modifierLocal)) {
                                        break;
                                    }
                                } else if ((B.d & 32) != 0 && (B instanceof DelegatingNode)) {
                                    Modifier.Node node6 = ((DelegatingNode) B).q;
                                    int i3 = 0;
                                    B = B;
                                    mutableVector2 = mutableVector2;
                                    while (node6 != null) {
                                        if ((node6.d & 32) != 0) {
                                            i3++;
                                            if (i3 == 1) {
                                                mutableVector2 = mutableVector2;
                                                B = node6;
                                            } else {
                                                if (mutableVector2 == 0) {
                                                    mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (B != 0) {
                                                    mutableVector2.b(B);
                                                    B = 0;
                                                }
                                                mutableVector2.b(node6);
                                            }
                                        }
                                        node6 = node6.g;
                                        B = B;
                                        mutableVector2 = mutableVector2;
                                    }
                                    if (i3 == 1) {
                                    }
                                }
                                B = DelegatableNodeKt.b(mutableVector2);
                            }
                        }
                        node5 = node5.g;
                    }
                }
            }
            DelegatableNodeKt.a(mutableVector, node4);
        }
    }

    public final void a() {
        if (this.f9618f) {
            return;
        }
        this.f9618f = true;
        this.f9614a.E(new Function0<Unit>() { // from class: androidx.compose.ui.modifier.ModifierLocalManager$invalidate$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                ModifierLocalManager modifierLocalManager = this.f9619c;
                MutableVector mutableVector = modifierLocalManager.f9616c;
                MutableVector mutableVector2 = modifierLocalManager.f9615b;
                MutableVector mutableVector3 = modifierLocalManager.f9617e;
                modifierLocalManager.f9618f = false;
                HashSet hashSet = new HashSet();
                MutableVector mutableVector4 = modifierLocalManager.d;
                Object[] objArr = mutableVector4.f8165b;
                int i2 = mutableVector4.d;
                for (int i3 = 0; i3 < i2; i3++) {
                    LayoutNode layoutNode = (LayoutNode) objArr[i3];
                    ModifierLocal modifierLocal = (ModifierLocal) mutableVector3.f8165b[i3];
                    Modifier.Node node = layoutNode.H.f9774f;
                    if (node.o) {
                        ModifierLocalManager.b(node, modifierLocal, hashSet);
                    }
                }
                mutableVector4.j();
                mutableVector3.j();
                Object[] objArr2 = mutableVector2.f8165b;
                int i4 = mutableVector2.d;
                for (int i5 = 0; i5 < i4; i5++) {
                    BackwardsCompatNode backwardsCompatNode = (BackwardsCompatNode) objArr2[i5];
                    ModifierLocal modifierLocal2 = (ModifierLocal) mutableVector.f8165b[i5];
                    if (backwardsCompatNode.o) {
                        ModifierLocalManager.b(backwardsCompatNode, modifierLocal2, hashSet);
                    }
                }
                mutableVector2.j();
                mutableVector.j();
                Iterator it = hashSet.iterator();
                while (it.hasNext()) {
                    ((BackwardsCompatNode) it.next()).j2();
                }
                return Unit.f71739a;
            }
        });
    }
}
