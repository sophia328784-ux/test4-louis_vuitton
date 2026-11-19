package androidx.compose.ui.input.pointer;

import androidx.collection.LongSparseArray;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.util.PointerIdArray;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.PointerInputModifierNode;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/input/pointer/Node;", "Landroidx/compose/ui/input/pointer/NodeParent;", "Landroidx/compose/ui/Modifier$Node;", "modifierNode", "<init>", "(Landroidx/compose/ui/Modifier$Node;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Node extends NodeParent {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Modifier.Node f9297c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public NodeCoordinator f9299f;
    public PointerEvent g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f9300h;
    public final PointerIdArray d = new PointerIdArray();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LongSparseArray f9298e = new LongSparseArray(2);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f9301i = true;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f9302j = true;

    public Node(Modifier.Node node) {
        this.f9297c = node;
    }

    /* JADX WARN: Code duplicated, block: B:126:0x0296  */
    /* JADX WARN: Code duplicated, block: B:136:0x02b1  */
    /* JADX WARN: Code duplicated, block: B:137:0x02b4  */
    /* JADX WARN: Code duplicated, block: B:139:0x02b9  */
    /* JADX WARN: Code duplicated, block: B:141:0x02c4  */
    /* JADX WARN: Code duplicated, block: B:146:0x02d1  */
    /* JADX WARN: Code duplicated, block: B:148:0x02d7  */
    /* JADX WARN: Code duplicated, block: B:168:0x0326  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r5v0, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v38 */
    /* JADX WARN: Type inference failed for: r5v39, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v40, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v41 */
    /* JADX WARN: Type inference failed for: r5v42 */
    /* JADX WARN: Type inference failed for: r5v43 */
    /* JADX WARN: Type inference failed for: r5v44 */
    /* JADX WARN: Type inference failed for: r5v45 */
    /* JADX WARN: Type inference failed for: r5v46 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v19 */
    @Override // androidx.compose.ui.input.pointer.NodeParent
    public final boolean a(LongSparseArray longSparseArray, LayoutCoordinates layoutCoordinates, InternalPointerEvent internalPointerEvent, boolean z) {
        PointerIdArray pointerIdArray;
        LongSparseArray longSparseArray2;
        Object obj;
        int i2;
        boolean z2;
        ?? r7;
        PointerEvent pointerEvent;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        boolean zA = super.a(longSparseArray, layoutCoordinates, internalPointerEvent, z);
        ?? B = this.f9297c;
        if (B.o) {
            ?? mutableVector = 0;
            while (B != 0) {
                if (B instanceof PointerInputModifierNode) {
                    this.f9299f = DelegatableNodeKt.d((PointerInputModifierNode) B, 16);
                } else if ((B.d & 16) != 0 && (B instanceof DelegatingNode)) {
                    Modifier.Node node = ((DelegatingNode) B).q;
                    int i9 = 0;
                    while (node != null) {
                        if ((node.d & 16) != 0) {
                            i9++;
                            if (i9 == 1) {
                                B = B;
                                mutableVector = mutableVector;
                                mutableVector = mutableVector;
                                B = node;
                            } else {
                                if (mutableVector == 0) {
                                    mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                }
                                if (B != 0) {
                                    mutableVector.b(B);
                                    B = 0;
                                }
                                mutableVector.b(node);
                            }
                        } else {
                            B = B;
                            mutableVector = mutableVector;
                        }
                        node = node.g;
                        B = B;
                        mutableVector = mutableVector;
                    }
                    if (i9 == 1) {
                        B = B;
                        mutableVector = mutableVector;
                    } else {
                        B = B;
                        mutableVector = mutableVector;
                    }
                }
                B = DelegatableNodeKt.b(mutableVector);
            }
            if (this.f9299f != null) {
                int iG = longSparseArray.g();
                int i10 = 0;
                while (true) {
                    pointerIdArray = this.d;
                    longSparseArray2 = this.f9298e;
                    if (i10 >= iG) {
                        break;
                    }
                    long jD = longSparseArray.d(i10);
                    PointerInputChange pointerInputChange = (PointerInputChange) longSparseArray.h(i10);
                    if (pointerIdArray.b(jD)) {
                        long j2 = pointerInputChange.g;
                        List list = pointerInputChange.m;
                        i8 = i10;
                        long j3 = pointerInputChange.f9330c;
                        if ((((j2 & 9223372034707292159L) + 36028792732385279L) & (-9223372034707292160L)) == 0 && (((j3 & 9223372034707292159L) + 36028792732385279L) & (-9223372034707292160L)) == 0) {
                            ArrayList arrayList = new ArrayList((list == null ? EmptyList.f71768b : list).size());
                            if (list == null) {
                                list = EmptyList.f71768b;
                            }
                            int size = list.size();
                            int i11 = 0;
                            while (i11 < size) {
                                int i12 = size;
                                HistoricalChange historicalChange = (HistoricalChange) list.get(i11);
                                int i13 = i11;
                                List list2 = list;
                                long j4 = historicalChange.f9270b;
                                if ((((j4 & 9223372034707292159L) + 36028792732385279L) & (-9223372034707292160L)) == 0) {
                                    long j5 = historicalChange.f9269a;
                                    NodeCoordinator nodeCoordinator = this.f9299f;
                                    nodeCoordinator.getClass();
                                    arrayList.add(new HistoricalChange(j5, nodeCoordinator.u(layoutCoordinates, j4, true), historicalChange.f9271c, historicalChange.d, historicalChange.f9272e, (DefaultConstructorMarker) null));
                                }
                                i11 = i13 + 1;
                                list = list2;
                                size = i12;
                                longSparseArray2 = longSparseArray2;
                                jD = jD;
                            }
                            LongSparseArray longSparseArray3 = longSparseArray2;
                            long j6 = jD;
                            NodeCoordinator nodeCoordinator2 = this.f9299f;
                            nodeCoordinator2.getClass();
                            long jU = nodeCoordinator2.u(layoutCoordinates, j2, true);
                            NodeCoordinator nodeCoordinator3 = this.f9299f;
                            nodeCoordinator3.getClass();
                            PointerInputChange pointerInputChange2 = new PointerInputChange(pointerInputChange.f9328a, pointerInputChange.f9329b, nodeCoordinator3.u(layoutCoordinates, j3, true), pointerInputChange.d, pointerInputChange.f9331e, pointerInputChange.f9332f, jU, pointerInputChange.f9333h, false, pointerInputChange.f9334i, arrayList, pointerInputChange.f9335j, pointerInputChange.f9336k, pointerInputChange.l, pointerInputChange.n, null);
                            PointerInputChange pointerInputChange3 = pointerInputChange.q;
                            if (pointerInputChange3 == null) {
                                pointerInputChange3 = pointerInputChange;
                            }
                            pointerInputChange2.q = pointerInputChange3;
                            PointerInputChange pointerInputChange4 = pointerInputChange.q;
                            if (pointerInputChange4 != null) {
                                pointerInputChange = pointerInputChange4;
                            }
                            pointerInputChange2.q = pointerInputChange;
                            longSparseArray3.e(j6, pointerInputChange2);
                        }
                    } else {
                        i8 = i10;
                    }
                    i10 = i8 + 1;
                    iG = iG;
                    zA = zA;
                }
                boolean z3 = zA;
                if (longSparseArray2.g() == 0) {
                    pointerIdArray.f9401a = 0;
                    this.f9303a.j();
                    return true;
                }
                int i14 = pointerIdArray.f9401a;
                while (true) {
                    i14--;
                    if (-1 >= i14) {
                        break;
                    }
                    if (longSparseArray.c(pointerIdArray.f9402b[i14]) < 0 && i14 < (i7 = pointerIdArray.f9401a)) {
                        int i15 = i7 - 1;
                        int i16 = i14;
                        while (i16 < i15) {
                            long[] jArr = pointerIdArray.f9402b;
                            int i17 = i16 + 1;
                            jArr[i16] = jArr[i17];
                            i16 = i17;
                        }
                        pointerIdArray.f9401a--;
                    }
                }
                ArrayList arrayList2 = new ArrayList(longSparseArray2.g());
                int iG2 = longSparseArray2.g();
                for (int i18 = 0; i18 < iG2; i18++) {
                    arrayList2.add(longSparseArray2.h(i18));
                }
                PointerEvent pointerEvent2 = new PointerEvent(arrayList2, internalPointerEvent);
                List list3 = pointerEvent2.f9305a;
                int size2 = list3.size();
                int i19 = 0;
                while (true) {
                    if (i19 >= size2) {
                        obj = null;
                        break;
                    }
                    obj = list3.get(i19);
                    if (internalPointerEvent.a(((PointerInputChange) obj).f9328a)) {
                        break;
                    }
                    i19++;
                }
                PointerInputChange pointerInputChange5 = (PointerInputChange) obj;
                if (pointerInputChange5 != null) {
                    boolean z4 = pointerInputChange5.d;
                    if (z) {
                        i2 = 0;
                        if (!this.f9301i && (z4 || pointerInputChange5.f9333h)) {
                            NodeCoordinator nodeCoordinator4 = this.f9299f;
                            nodeCoordinator4.getClass();
                            long j7 = nodeCoordinator4.d;
                            long j8 = pointerInputChange5.f9330c;
                            float fIntBitsToFloat = Float.intBitsToFloat((int) (j8 >> 32));
                            float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j8 & BodyPartID.bodyIdMax));
                            z2 = true;
                            this.f9301i = !((fIntBitsToFloat < Call.Parameters.DEFAULT_CAMERA_ZOOM) | (fIntBitsToFloat > ((float) ((int) (j7 >> 32)))) | (fIntBitsToFloat2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) | (fIntBitsToFloat2 > ((float) ((int) (j7 & BodyPartID.bodyIdMax)))));
                        }
                        if (this.f9301i != this.f9300h) {
                            i4 = pointerEvent2.f9309f;
                            PointerEventType.f9310a.getClass();
                            if (i4 == PointerEventType.d || (i6 = pointerEvent2.f9309f) == PointerEventType.f9313e || i6 == PointerEventType.f9314f) {
                                if (this.f9301i) {
                                    i5 = PointerEventType.f9313e;
                                } else {
                                    i5 = PointerEventType.f9314f;
                                }
                                pointerEvent2.f9309f = i5;
                            } else {
                                i3 = pointerEvent2.f9309f;
                                PointerEventType.f9310a.getClass();
                                if (i3 != PointerEventType.f9313e && this.f9300h && !this.f9302j) {
                                    pointerEvent2.f9309f = PointerEventType.d;
                                } else if (pointerEvent2.f9309f == PointerEventType.f9314f && this.f9301i && z4) {
                                    pointerEvent2.f9309f = PointerEventType.d;
                                }
                            }
                        } else {
                            i3 = pointerEvent2.f9309f;
                            PointerEventType.f9310a.getClass();
                            if (i3 != PointerEventType.f9313e) {
                                if (pointerEvent2.f9309f == PointerEventType.f9314f) {
                                    pointerEvent2.f9309f = PointerEventType.d;
                                }
                            } else if (pointerEvent2.f9309f == PointerEventType.f9314f) {
                                pointerEvent2.f9309f = PointerEventType.d;
                            }
                        }
                    } else {
                        i2 = 0;
                        this.f9301i = false;
                    }
                    z2 = true;
                    if (this.f9301i != this.f9300h) {
                        i4 = pointerEvent2.f9309f;
                        PointerEventType.f9310a.getClass();
                        if (i4 == PointerEventType.d) {
                            i3 = pointerEvent2.f9309f;
                            PointerEventType.f9310a.getClass();
                            if (i3 != PointerEventType.f9313e) {
                                if (pointerEvent2.f9309f == PointerEventType.f9314f) {
                                    pointerEvent2.f9309f = PointerEventType.d;
                                }
                            } else if (pointerEvent2.f9309f == PointerEventType.f9314f) {
                                pointerEvent2.f9309f = PointerEventType.d;
                            }
                        }
                        if (this.f9301i) {
                            i5 = PointerEventType.f9313e;
                        } else {
                            i5 = PointerEventType.f9314f;
                        }
                        pointerEvent2.f9309f = i5;
                    } else {
                        i3 = pointerEvent2.f9309f;
                        PointerEventType.f9310a.getClass();
                        if (i3 != PointerEventType.f9313e) {
                            if (pointerEvent2.f9309f == PointerEventType.f9314f) {
                                pointerEvent2.f9309f = PointerEventType.d;
                            }
                        } else if (pointerEvent2.f9309f == PointerEventType.f9314f) {
                            pointerEvent2.f9309f = PointerEventType.d;
                        }
                    }
                } else {
                    i2 = 0;
                    z2 = true;
                }
                if (z3) {
                    r7 = z2;
                    break;
                }
                int i20 = pointerEvent2.f9309f;
                PointerEventType.f9310a.getClass();
                if (i20 != PointerEventType.d || (pointerEvent = this.g) == null) {
                    r7 = z2;
                    break;
                }
                List list4 = pointerEvent.f9305a;
                if (list4.size() != list3.size()) {
                    r7 = z2;
                    break;
                }
                int size3 = list3.size();
                int i21 = i2;
                while (true) {
                    if (i21 >= size3) {
                        r7 = i2;
                        break;
                    }
                    if (!Offset.c(((PointerInputChange) list4.get(i21)).f9330c, ((PointerInputChange) list3.get(i21)).f9330c)) {
                        r7 = z2;
                        break;
                    }
                    i21++;
                }
                this.g = pointerEvent2;
                return r7;
            }
        }
        return true;
    }

    @Override // androidx.compose.ui.input.pointer.NodeParent
    public final void b(InternalPointerEvent internalPointerEvent) {
        super.b(internalPointerEvent);
        PointerEvent pointerEvent = this.g;
        if (pointerEvent == null) {
            return;
        }
        this.f9300h = this.f9301i;
        List list = pointerEvent.f9305a;
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            PointerInputChange pointerInputChange = (PointerInputChange) list.get(i2);
            boolean z = pointerInputChange.d;
            long j2 = pointerInputChange.f9328a;
            boolean zA = internalPointerEvent.a(j2);
            boolean z2 = this.f9301i;
            if ((!z && !zA) || (!z && !z2)) {
                this.d.c(j2);
            }
        }
        this.f9301i = false;
        int i3 = pointerEvent.f9309f;
        PointerEventType.f9310a.getClass();
        this.f9302j = i3 == PointerEventType.f9314f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r8v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v2, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    public final void c() {
        MutableVector mutableVector = this.f9303a;
        Object[] objArr = mutableVector.f8165b;
        int i2 = mutableVector.d;
        for (int i3 = 0; i3 < i2; i3++) {
            ((Node) objArr[i3]).c();
        }
        ?? B = this.f9297c;
        ?? mutableVector2 = 0;
        while (B != 0) {
            if (B instanceof PointerInputModifierNode) {
                ((PointerInputModifierNode) B).f1();
            } else if ((B.d & 16) != 0 && (B instanceof DelegatingNode)) {
                Modifier.Node node = ((DelegatingNode) B).q;
                int i4 = 0;
                mutableVector2 = mutableVector2;
                B = B;
                while (node != null) {
                    if ((node.d & 16) != 0) {
                        i4++;
                        if (i4 == 1) {
                            mutableVector2 = mutableVector2;
                            B = node;
                        } else {
                            if (mutableVector2 == 0) {
                                mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                            }
                            if (B != 0) {
                                mutableVector2.b(B);
                                B = 0;
                            }
                            mutableVector2.b(node);
                        }
                    }
                    node = node.g;
                    mutableVector2 = mutableVector2;
                    B = B;
                }
                if (i4 == 1) {
                }
            }
            B = DelegatableNodeKt.b(mutableVector2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    public final boolean d(InternalPointerEvent internalPointerEvent) {
        LayoutNode layoutNode;
        LongSparseArray longSparseArray = this.f9298e;
        boolean z = false;
        z = false;
        z = false;
        if (longSparseArray.g() != 0) {
            Modifier.Node node = this.f9297c;
            if (node.o) {
                NodeCoordinator nodeCoordinator = node.f8613i;
                if ((nodeCoordinator == null || (layoutNode = nodeCoordinator.q) == null) ? false : layoutNode.A()) {
                    PointerEvent pointerEvent = this.g;
                    pointerEvent.getClass();
                    NodeCoordinator nodeCoordinator2 = this.f9299f;
                    nodeCoordinator2.getClass();
                    long j2 = nodeCoordinator2.d;
                    ?? B = node;
                    ?? mutableVector = 0;
                    while (B != 0) {
                        if (B instanceof PointerInputModifierNode) {
                            ((PointerInputModifierNode) B).f0(pointerEvent, PointerEventPass.Final, j2);
                        } else if ((B.d & 16) != 0 && (B instanceof DelegatingNode)) {
                            Modifier.Node node2 = ((DelegatingNode) B).q;
                            int i2 = 0;
                            while (node2 != null) {
                                if ((node2.d & 16) != 0) {
                                    i2++;
                                    if (i2 == 1) {
                                        B = B;
                                        mutableVector = mutableVector;
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
                                } else {
                                    B = B;
                                    mutableVector = mutableVector;
                                }
                                node2 = node2.g;
                                B = B;
                                mutableVector = mutableVector;
                            }
                            if (i2 == 1) {
                                B = B;
                                mutableVector = mutableVector;
                            } else {
                                B = B;
                                mutableVector = mutableVector;
                            }
                        }
                        B = DelegatableNodeKt.b(mutableVector);
                    }
                    if (node.o) {
                        MutableVector mutableVector2 = this.f9303a;
                        Object[] objArr = mutableVector2.f8165b;
                        int i3 = mutableVector2.d;
                        for (int i4 = 0; i4 < i3; i4++) {
                            ((Node) objArr[i4]).d(internalPointerEvent);
                        }
                    }
                    z = true;
                }
            }
        }
        b(internalPointerEvent);
        longSparseArray.a();
        this.f9299f = null;
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v8, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r6v10, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r6v11, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r7v9 */
    public final boolean e(InternalPointerEvent internalPointerEvent, boolean z) {
        LayoutNode layoutNode;
        if (this.f9298e.g() == 0) {
            return false;
        }
        ?? B = this.f9297c;
        if (B.o) {
            NodeCoordinator nodeCoordinator = B.f8613i;
            if ((nodeCoordinator == null || (layoutNode = nodeCoordinator.q) == null) ? false : layoutNode.A()) {
                PointerEvent pointerEvent = this.g;
                pointerEvent.getClass();
                NodeCoordinator nodeCoordinator2 = this.f9299f;
                nodeCoordinator2.getClass();
                long j2 = nodeCoordinator2.d;
                ?? B2 = B;
                ?? mutableVector = 0;
                while (B2 != 0) {
                    if (B2 instanceof PointerInputModifierNode) {
                        ((PointerInputModifierNode) B2).f0(pointerEvent, PointerEventPass.Initial, j2);
                    } else if ((B2.d & 16) != 0 && (B2 instanceof DelegatingNode)) {
                        Modifier.Node node = ((DelegatingNode) B2).q;
                        int i2 = 0;
                        while (node != null) {
                            if ((node.d & 16) != 0) {
                                i2++;
                                if (i2 == 1) {
                                    B2 = B2;
                                    mutableVector = mutableVector;
                                    mutableVector = mutableVector;
                                    B2 = node;
                                } else {
                                    if (mutableVector == 0) {
                                        mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                    }
                                    if (B2 != 0) {
                                        mutableVector.b(B2);
                                        B2 = 0;
                                    }
                                    mutableVector.b(node);
                                }
                            } else {
                                B2 = B2;
                                mutableVector = mutableVector;
                            }
                            node = node.g;
                            B2 = B2;
                            mutableVector = mutableVector;
                        }
                        if (i2 == 1) {
                            B2 = B2;
                            mutableVector = mutableVector;
                        } else {
                            B2 = B2;
                            mutableVector = mutableVector;
                        }
                    }
                    B2 = DelegatableNodeKt.b(mutableVector);
                }
                if (B.o) {
                    MutableVector mutableVector2 = this.f9303a;
                    Object[] objArr = mutableVector2.f8165b;
                    int i3 = mutableVector2.d;
                    for (int i4 = 0; i4 < i3; i4++) {
                        Node node2 = (Node) objArr[i4];
                        this.f9299f.getClass();
                        node2.e(internalPointerEvent, z);
                    }
                }
                if (B.o) {
                    ?? mutableVector3 = 0;
                    while (B != 0) {
                        if (B instanceof PointerInputModifierNode) {
                            ((PointerInputModifierNode) B).f0(pointerEvent, PointerEventPass.Main, j2);
                        } else if ((B.d & 16) != 0 && (B instanceof DelegatingNode)) {
                            Modifier.Node node3 = ((DelegatingNode) B).q;
                            int i5 = 0;
                            while (node3 != null) {
                                if ((node3.d & 16) != 0) {
                                    i5++;
                                    if (i5 == 1) {
                                        B = B;
                                        mutableVector3 = mutableVector3;
                                        mutableVector3 = mutableVector3;
                                        B = node3;
                                    } else {
                                        if (mutableVector3 == 0) {
                                            mutableVector3 = new MutableVector(new Modifier.Node[16], 0);
                                        }
                                        if (B != 0) {
                                            mutableVector3.b(B);
                                            B = 0;
                                        }
                                        mutableVector3.b(node3);
                                    }
                                } else {
                                    B = B;
                                    mutableVector3 = mutableVector3;
                                }
                                node3 = node3.g;
                                B = B;
                                mutableVector3 = mutableVector3;
                            }
                            if (i5 == 1) {
                                B = B;
                                mutableVector3 = mutableVector3;
                            } else {
                                B = B;
                                mutableVector3 = mutableVector3;
                            }
                        }
                        B = DelegatableNodeKt.b(mutableVector3);
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final void f(long j2, MutableObjectList mutableObjectList) {
        PointerIdArray pointerIdArray = this.d;
        if (pointerIdArray.b(j2) && mutableObjectList.c(this) < 0) {
            pointerIdArray.c(j2);
            this.f9298e.f(j2);
        }
        MutableVector mutableVector = this.f9303a;
        Object[] objArr = mutableVector.f8165b;
        int i2 = mutableVector.d;
        for (int i3 = 0; i3 < i2; i3++) {
            ((Node) objArr[i3]).f(j2, mutableObjectList);
        }
    }

    public final String toString() {
        return "Node(modifierNode=" + this.f9297c + ", children=" + this.f9303a + ", pointerIds=" + this.d + ')';
    }
}
