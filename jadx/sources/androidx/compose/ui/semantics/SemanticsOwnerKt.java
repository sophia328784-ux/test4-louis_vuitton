package androidx.compose.ui.semantics;

import android.os.Trace;
import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableScatterMap;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.InnerNodeCoordinator;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntRectKt;
import androidx.compose.ui.unit.IntSizeKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SemanticsOwnerKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Rect f10330a = new Rect(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10.0f, 10.0f);

    public static final MutableIntObjectMap a(SemanticsOwner semanticsOwner, Function1 function1) {
        Trace.beginSection("getAllUncoveredSemanticsNodesToIntObjectMap");
        try {
            SemanticsNode semanticsNodeA = semanticsOwner.a();
            LayoutNode layoutNode = semanticsNodeA.f10320c;
            if (layoutNode.A() && layoutNode.c()) {
                Rect rectG = semanticsNodeA.g();
                MutableIntObjectMap mutableIntObjectMap = new MutableIntObjectMap(48);
                SemanticRegionImpl semanticRegionImpl = new SemanticRegionImpl();
                semanticRegionImpl.d(IntRectKt.b(rectG));
                d(mutableIntObjectMap, semanticsNodeA, semanticsNodeA, new SemanticRegionImpl(), semanticRegionImpl, function1);
                return mutableIntObjectMap;
            }
            MutableIntObjectMap mutableIntObjectMap2 = IntObjectMapKt.f3262a;
            mutableIntObjectMap2.getClass();
            return mutableIntObjectMap2;
        } finally {
            Trace.endSection();
        }
    }

    public static final void b(MutableIntObjectMap mutableIntObjectMap, SemanticsNode semanticsNode, SemanticsNode semanticsNode2, SemanticsRegion semanticsRegion, SemanticsRegion semanticsRegion2, Function1 function1) {
        LayoutNode layoutNode = semanticsNode2.f10320c;
        LayoutNode layoutNode2 = semanticsNode2.f10320c;
        if (layoutNode.A() && layoutNode2.c()) {
            SemanticRegionImpl semanticRegionImpl = (SemanticRegionImpl) semanticsRegion2;
            if (!semanticRegionImpl.f10301a.isEmpty()) {
                Rect rectM = semanticsNode2.m();
                if (rectM.f()) {
                    SemanticsModifierNode semanticsModifierNodeF = semanticsNode2.f();
                    if (semanticsModifierNodeF == null) {
                        InnerNodeCoordinator innerNodeCoordinator = layoutNode2.H.f9772c;
                        rectM = LayoutCoordinatesKt.c(innerNodeCoordinator).L(innerNodeCoordinator, false);
                    } else {
                        rectM = SemanticsModifierNodeKt.a(semanticsModifierNodeF.getF8608b(), SemanticsConfigurationKt.a(semanticsNode2.d, SemanticsActions.f10303b) != null, false);
                    }
                }
                IntRect intRectB = IntRectKt.b(rectM);
                SemanticRegionImpl semanticRegionImpl2 = (SemanticRegionImpl) semanticsRegion;
                semanticRegionImpl2.d(intRectB);
                if (semanticRegionImpl2.c(semanticsRegion2)) {
                    int i2 = semanticsNode2.f10322f;
                    if (i2 == semanticsNode.f10322f) {
                        i2 = -1;
                    }
                    mutableIntObjectMap.i(i2, new SemanticsNodeWithAdjustedBounds(semanticsNode2, semanticRegionImpl2.b()));
                    List listJ = SemanticsNode.j(4, semanticsNode2);
                    for (int size = listJ.size() - 1; -1 < size; size--) {
                        if (!((Boolean) function1.invoke(listJ.get(size))).booleanValue()) {
                            b(mutableIntObjectMap, semanticsNode, (SemanticsNode) listJ.get(size), semanticsRegion, semanticsRegion2, function1);
                        }
                    }
                    if (f(semanticsNode2)) {
                        semanticRegionImpl.a(intRectB);
                        return;
                    }
                    return;
                }
                return;
            }
        }
        if (semanticsNode2.n()) {
            c(mutableIntObjectMap, semanticsNode, semanticsNode2);
        }
    }

    public static final void c(MutableIntObjectMap mutableIntObjectMap, SemanticsNode semanticsNode, SemanticsNode semanticsNode2) {
        LayoutNode layoutNode;
        SemanticsNode semanticsNodeL = semanticsNode2.l();
        Rect rectG = (semanticsNodeL == null || (layoutNode = semanticsNodeL.f10320c) == null || !layoutNode.A()) ? f10330a : semanticsNodeL.g();
        int i2 = semanticsNode2.f10322f;
        if (i2 == semanticsNode.f10322f) {
            i2 = -1;
        }
        mutableIntObjectMap.i(i2, new SemanticsNodeWithAdjustedBounds(semanticsNode2, IntRectKt.b(rectG)));
    }

    /* JADX WARN: Code duplicated, block: B:105:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:41:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:50:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:56:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:85:0x0189  */
    public static final void d(MutableIntObjectMap mutableIntObjectMap, SemanticsNode semanticsNode, SemanticsNode semanticsNode2, SemanticsRegion semanticsRegion, SemanticsRegion semanticsRegion2, Function1 function1) {
        boolean z;
        boolean z2;
        Rect rectA;
        MutableIntObjectMap mutableIntObjectMap2 = mutableIntObjectMap;
        SemanticsRegion semanticsRegion3 = semanticsRegion2;
        SemanticsNode semanticsNode3 = semanticsNode;
        Function1 function2 = function1;
        int i2 = semanticsNode3.f10322f;
        LayoutNode layoutNode = semanticsNode2.f10320c;
        SemanticsConfiguration semanticsConfiguration = semanticsNode2.d;
        LayoutNode layoutNode2 = semanticsNode2.f10320c;
        int i3 = semanticsNode2.f10322f;
        boolean z3 = (layoutNode.A() && layoutNode2.c()) ? false : true;
        SemanticRegionImpl semanticRegionImpl = (SemanticRegionImpl) semanticsRegion3;
        if (!semanticRegionImpl.f10301a.isEmpty() || i3 == i2) {
            if (!z3 || semanticsNode2.n()) {
                IntRect intRectB = IntRectKt.b(semanticsNode2.m());
                SemanticRegionImpl semanticRegionImpl2 = (SemanticRegionImpl) semanticsRegion;
                semanticRegionImpl2.d(intRectB);
                if (i3 == i2) {
                    i3 = -1;
                }
                if (!semanticRegionImpl2.c(semanticsRegion3)) {
                    if (semanticsNode2.n()) {
                        c(mutableIntObjectMap, semanticsNode, semanticsNode2);
                        return;
                    } else {
                        if (i3 == -1) {
                            mutableIntObjectMap2.i(i3, new SemanticsNodeWithAdjustedBounds(semanticsNode2, semanticRegionImpl2.b()));
                            return;
                        }
                        return;
                    }
                }
                mutableIntObjectMap2.i(i3, new SemanticsNodeWithAdjustedBounds(semanticsNode2, semanticRegionImpl2.b()));
                List listJ = SemanticsNode.j(4, semanticsNode2);
                if (semanticsConfiguration.f10314e) {
                    SemanticsNode semanticsNodeL = semanticsNode2.l();
                    while (true) {
                        if (semanticsNodeL == null) {
                            z = true;
                            semanticsNodeL = null;
                            break;
                        }
                        SemanticsConfiguration semanticsConfiguration2 = semanticsNodeL.d;
                        z = true;
                        if (semanticsConfiguration2.f10312b.c(SemanticsProperties.w)) {
                            break;
                        }
                        if (semanticsConfiguration2.f10312b.c(SemanticsProperties.v)) {
                            break;
                        } else {
                            semanticsNodeL = semanticsNodeL.l();
                        }
                    }
                    if (semanticsNodeL == null) {
                        z2 = false;
                    } else {
                        NodeCoordinator nodeCoordinatorD = semanticsNode2.d();
                        if (nodeCoordinatorD == null) {
                            nodeCoordinatorD = null;
                        } else {
                            if (!nodeCoordinatorD.p1().o) {
                                nodeCoordinatorD = null;
                            }
                            if (nodeCoordinatorD == null) {
                                nodeCoordinatorD = null;
                            }
                        }
                        NodeCoordinator nodeCoordinatorD2 = semanticsNodeL.d();
                        if (nodeCoordinatorD2 == null) {
                            nodeCoordinatorD2 = null;
                        } else {
                            if (!nodeCoordinatorD2.p1().o) {
                                nodeCoordinatorD2 = null;
                            }
                            if (nodeCoordinatorD2 == null) {
                                nodeCoordinatorD2 = null;
                            }
                        }
                        if (nodeCoordinatorD == null || nodeCoordinatorD2 == null) {
                            z2 = false;
                        } else {
                            Rect rectL = nodeCoordinatorD2.L(nodeCoordinatorD, false);
                            Offset.f8806b.getClass();
                            z2 = !rectL.equals(rectL.e(RectKt.a(0L, IntSizeKt.d(nodeCoordinatorD2.d))));
                        }
                    }
                    if (z2) {
                        SemanticRegionImpl semanticRegionImpl3 = new SemanticRegionImpl();
                        SemanticsModifierNode semanticsModifierNodeF = semanticsNode2.f();
                        if (semanticsModifierNodeF == null) {
                            InnerNodeCoordinator innerNodeCoordinator = layoutNode2.H.f9772c;
                            rectA = LayoutCoordinatesKt.c(innerNodeCoordinator).L(innerNodeCoordinator, false);
                        } else {
                            rectA = SemanticsModifierNodeKt.a(semanticsModifierNodeF.getF8608b(), SemanticsConfigurationKt.a(semanticsConfiguration, SemanticsActions.f10303b) != null ? z : false, false);
                        }
                        semanticRegionImpl3.d(IntRectKt.b(rectA));
                        int size = listJ.size() - 1;
                        while (-1 < size) {
                            if (!((Boolean) function2.invoke(listJ.get(size))).booleanValue()) {
                                b(mutableIntObjectMap2, semanticsNode3, (SemanticsNode) listJ.get(size), new SemanticRegionImpl(), semanticRegionImpl3, function2);
                            }
                            size--;
                            mutableIntObjectMap2 = mutableIntObjectMap;
                            semanticsNode3 = semanticsNode;
                        }
                    }
                    if (f(semanticsNode2)) {
                        semanticRegionImpl.a(intRectB);
                    }
                }
                semanticRegionImpl = semanticRegionImpl;
                int size2 = listJ.size() - 1;
                while (-1 < size2) {
                    if (!((Boolean) function2.invoke(listJ.get(size2))).booleanValue()) {
                        d(mutableIntObjectMap, semanticsNode, (SemanticsNode) listJ.get(size2), semanticsRegion, semanticsRegion3, function2);
                    }
                    size2--;
                    semanticsRegion3 = semanticsRegion2;
                    function2 = function1;
                }
                if (f(semanticsNode2)) {
                    semanticRegionImpl.a(intRectB);
                }
            }
        }
    }

    public static final boolean e(SemanticsNode semanticsNode) {
        NodeCoordinator nodeCoordinatorD = semanticsNode.d();
        SemanticsConfiguration semanticsConfiguration = semanticsNode.d;
        if (nodeCoordinatorD != null ? nodeCoordinatorD.L1() : false) {
            return true;
        }
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.f10331a;
        if (semanticsConfiguration.f10312b.c(SemanticsProperties.q)) {
            return true;
        }
        return semanticsConfiguration.f10312b.c(SemanticsProperties.p);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0054 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:21:0x0056 A[LOOP:0: B:9:0x001b->B:21:0x0056, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:27:0x005b A[SYNTHETIC] */
    public static final boolean f(SemanticsNode semanticsNode) {
        if (!e(semanticsNode)) {
            SemanticsConfiguration semanticsConfiguration = semanticsNode.d;
            if (semanticsConfiguration.f10314e) {
                return true;
            }
            MutableScatterMap mutableScatterMap = semanticsConfiguration.f10312b;
            Object[] objArr = mutableScatterMap.f3362b;
            Object[] objArr2 = mutableScatterMap.f3363c;
            long[] jArr = mutableScatterMap.f3361a;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i2 = 0;
                while (true) {
                    long j2 = jArr[i2];
                    if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i3 = 8 - ((~(i2 - length)) >>> 31);
                        for (int i4 = 0; i4 < i3; i4++) {
                            if ((255 & j2) < 128) {
                                int i5 = (i2 << 3) + i4;
                                Object obj = objArr[i5];
                                Object obj2 = objArr2[i5];
                                if (((SemanticsPropertyKey) obj).f10365c) {
                                    return true;
                                }
                            }
                            j2 >>= 8;
                        }
                        if (i3 == 8) {
                            if (i2 != length) {
                                i2++;
                            }
                        }
                    } else if (i2 != length) {
                        i2++;
                    }
                }
            }
        }
        return false;
    }
}
