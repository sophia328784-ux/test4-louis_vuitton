package androidx.compose.ui.focus;

import androidx.collection.MutableScatterSet;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
final /* synthetic */ class FocusInvalidationManager$scheduleInvalidation$1 extends FunctionReferenceImpl implements Function0<Unit> {
    /* JADX WARN: Code duplicated, block: B:16:0x0058 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:17:0x005a A[LOOP:0: B:7:0x0023->B:17:0x005a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:65:0x010f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:66:0x0111 A[LOOP:4: B:56:0x00e1->B:66:0x0111, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:74:0x0114 A[EDGE_INSN: B:74:0x0114->B:67:0x0114 BREAK  A[LOOP:0: B:7:0x0023->B:17:0x005a], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:92:0x0114 A[EDGE_INSN: B:92:0x0114->B:67:0x0114 BREAK  A[LOOP:4: B:56:0x00e1->B:66:0x0111], SYNTHETIC] */
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        NodeChain nodeChain;
        FocusInvalidationManager focusInvalidationManager = (FocusInvalidationManager) this.receiver;
        MutableScatterSet mutableScatterSet = focusInvalidationManager.f8743c;
        MutableScatterSet mutableScatterSet2 = focusInvalidationManager.d;
        FocusOwner focusOwner = focusInvalidationManager.f8741a;
        FocusTargetNode focusTargetNodeG = focusOwner.g();
        if (focusTargetNodeG == null) {
            Object[] objArr = mutableScatterSet2.f3368b;
            long[] jArr = mutableScatterSet2.f3367a;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i2 = 0;
                while (true) {
                    long j2 = jArr[i2];
                    if ((((~j2) << 7) & j2 & (-9187201950435737472L)) == -9187201950435737472L) {
                        if (i2 != length) {
                            break;
                            break;
                        }
                        i2++;
                    } else {
                        int i3 = 8 - ((~(i2 - length)) >>> 31);
                        for (int i4 = 0; i4 < i3; i4++) {
                            if ((j2 & 255) < 128) {
                                ((FocusEventModifierNode) objArr[(i2 << 3) + i4]).E(FocusStateImpl.Inactive);
                            }
                            j2 >>= 8;
                        }
                        if (i3 != 8) {
                            break;
                        }
                        if (i2 != length) {
                            break;
                        }
                        i2++;
                    }
                }
            }
        } else if (focusTargetNodeG.o) {
            if (mutableScatterSet.a(focusTargetNodeG)) {
                focusTargetNodeG.n2();
            }
            FocusStateImpl focusStateImplW = focusTargetNodeG.W();
            if (!focusTargetNodeG.f8608b.o) {
                InlineClassHelperKt.c("visitAncestors called on an unattached node");
            }
            Modifier.Node node = focusTargetNodeG.f8608b;
            LayoutNode layoutNodeF = DelegatableNodeKt.f(focusTargetNodeG);
            int i5 = 0;
            while (layoutNodeF != null) {
                if ((layoutNodeF.H.f9774f.f8610e & 5120) != 0) {
                    while (node != null) {
                        int i6 = node.d;
                        if ((i6 & 5120) != 0) {
                            if ((i6 & 1024) != 0) {
                                i5++;
                            }
                            if ((node instanceof FocusEventModifierNode) && mutableScatterSet2.a(node)) {
                                if (i5 <= 1) {
                                    ((FocusEventModifierNode) node).E(focusStateImplW);
                                } else {
                                    ((FocusEventModifierNode) node).E(FocusStateImpl.ActiveParent);
                                }
                                mutableScatterSet2.m(node);
                            }
                        }
                        node = node.f8611f;
                    }
                }
                layoutNodeF = layoutNodeF.O();
                node = (layoutNodeF == null || (nodeChain = layoutNodeF.H) == null) ? null : nodeChain.f9773e;
            }
            Object[] objArr2 = mutableScatterSet2.f3368b;
            long[] jArr2 = mutableScatterSet2.f3367a;
            int length2 = jArr2.length - 2;
            if (length2 >= 0) {
                int i7 = 0;
                while (true) {
                    long j3 = jArr2[i7];
                    if ((((~j3) << 7) & j3 & (-9187201950435737472L)) == -9187201950435737472L) {
                        if (i7 != length2) {
                            break;
                            break;
                        }
                        i7++;
                    } else {
                        int i8 = 8 - ((~(i7 - length2)) >>> 31);
                        for (int i9 = 0; i9 < i8; i9++) {
                            if ((j3 & 255) < 128) {
                                ((FocusEventModifierNode) objArr2[(i7 << 3) + i9]).E(FocusStateImpl.Inactive);
                            }
                            j3 >>= 8;
                        }
                        if (i8 != 8) {
                            break;
                        }
                        if (i7 != length2) {
                            break;
                        }
                        i7++;
                    }
                }
            }
        }
        if (focusOwner.g() == null || focusOwner.q() == FocusStateImpl.Inactive) {
            focusOwner.a();
        }
        mutableScatterSet.f();
        mutableScatterSet2.f();
        focusInvalidationManager.f8744e = false;
        return Unit.f71739a;
    }
}
