package androidx.compose.ui.node;

import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.PlaceableKt;
import androidx.compose.ui.layout.Ruler;
import androidx.compose.ui.layout.RulerScope;
import androidx.compose.ui.layout.VerticalAlignmentLine;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import com.batch.android.q0.b;
import java.util.Arrays;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b!\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0002\u0006\u0007B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\b"}, d2 = {"Landroidx/compose/ui/node/LookaheadCapablePlaceable;", "Landroidx/compose/ui/layout/Placeable;", "Landroidx/compose/ui/node/MeasureScopeWithLayoutNode;", "Landroidx/compose/ui/node/MotionReferencePlacementDelegate;", "<init>", "()V", "ResettableRulerScope", "Companion", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class LookaheadCapablePlaceable extends Placeable implements MeasureScopeWithLayoutNode, MotionReferencePlacementDelegate {
    public static final Function1 p;
    public ResettableRulerScope g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Function1 f9715h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public PlaceableResult f9716i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f9717j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f9718k;
    public boolean l;
    public final Placeable.PlacementScope m = PlaceableKt.a(this);
    public RulerTrackingMap n;
    public MutableScatterMap o;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R \u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/node/LookaheadCapablePlaceable$Companion;", "", "Lkotlin/Function1;", "Landroidx/compose/ui/node/PlaceableResult;", "", "onCommitAffectingRuler", "Lkotlin/jvm/functions/Function1;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;", "Landroidx/compose/ui/layout/RulerScope;", "<init>", "(Landroidx/compose/ui/node/LookaheadCapablePlaceable;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class ResettableRulerScope implements RulerScope {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f9720b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f9721c;
        public long d;

        public ResettableRulerScope() {
            IntOffset.f11012b.getClass();
            this.f9721c = IntOffset.f11013c;
            IntSize.f11020b.getClass();
            this.d = 0L;
        }

        @Override // androidx.compose.ui.layout.RulerScope
        public final void F0(Ruler ruler, float f2) {
            LookaheadCapablePlaceable lookaheadCapablePlaceable = LookaheadCapablePlaceable.this;
            RulerTrackingMap rulerTrackingMap = lookaheadCapablePlaceable.n;
            if (rulerTrackingMap == null) {
                rulerTrackingMap = new RulerTrackingMap();
                lookaheadCapablePlaceable.n = rulerTrackingMap;
            }
            int iE = ArraysKt.E(rulerTrackingMap.f9830b, ruler);
            if (iE >= 0) {
                float[] fArr = rulerTrackingMap.f9831c;
                if (fArr[iE] != f2) {
                    fArr[iE] = f2;
                    rulerTrackingMap.d[iE] = 1;
                    return;
                } else {
                    byte[] bArr = rulerTrackingMap.d;
                    if (bArr[iE] == 2) {
                        bArr[iE] = 0;
                        return;
                    }
                    return;
                }
            }
            int i2 = rulerTrackingMap.f9829a;
            Ruler[] rulerArr = rulerTrackingMap.f9830b;
            if (i2 == rulerArr.length) {
                int i3 = i2 * 2;
                rulerTrackingMap.f9830b = (Ruler[]) Arrays.copyOf(rulerArr, i3);
                rulerTrackingMap.f9831c = Arrays.copyOf(rulerTrackingMap.f9831c, i3);
                rulerTrackingMap.d = Arrays.copyOf(rulerTrackingMap.d, i3);
            }
            rulerTrackingMap.f9830b[i2] = ruler;
            rulerTrackingMap.d[i2] = 3;
            rulerTrackingMap.f9831c[i2] = f2;
            rulerTrackingMap.f9829a++;
        }

        @Override // androidx.compose.ui.unit.Density
        /* JADX INFO: renamed from: getDensity */
        public final float getF11002b() {
            return LookaheadCapablePlaceable.this.getF11002b();
        }

        @Override // androidx.compose.ui.unit.FontScaling
        /* JADX INFO: renamed from: s1 */
        public final float getF11003c() {
            return LookaheadCapablePlaceable.this.getF11003c();
        }

        @Override // androidx.compose.ui.layout.RulerScope
        public final LayoutCoordinates w() {
            this.f9720b = true;
            LookaheadCapablePlaceable lookaheadCapablePlaceable = LookaheadCapablePlaceable.this;
            LayoutCoordinates layoutCoordinatesW = lookaheadCapablePlaceable.w();
            long j2 = this.f9721c;
            IntOffset.f11012b.getClass();
            if (IntOffset.b(j2, IntOffset.f11013c)) {
                this.f9721c = IntOffsetKt.b(LayoutCoordinatesKt.g(layoutCoordinatesW));
                this.d = layoutCoordinatesW.a();
            }
            lookaheadCapablePlaceable.getQ().I.b();
            return layoutCoordinatesW;
        }
    }

    static {
        new Companion(null);
        p = LookaheadCapablePlaceable$Companion$onCommitAffectingRuler$1.f9719c;
    }

    public static void S0(NodeCoordinator nodeCoordinator) {
        LayoutNodeAlignmentLines layoutNodeAlignmentLines;
        NodeCoordinator nodeCoordinator2 = nodeCoordinator.t;
        LayoutNode layoutNode = nodeCoordinator.q;
        if (!Intrinsics.c(nodeCoordinator2 != null ? nodeCoordinator2.q : null, layoutNode)) {
            layoutNode.I.p.z.g();
            return;
        }
        AlignmentLinesOwner alignmentLinesOwnerZ = layoutNode.I.p.z();
        if (alignmentLinesOwnerZ == null || (layoutNodeAlignmentLines = ((MeasurePassDelegate) alignmentLinesOwnerZ).z) == null) {
            return;
        }
        layoutNodeAlignmentLines.g();
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0050 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:21:0x0052 A[LOOP:0: B:11:0x001b->B:21:0x0052, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:48:0x0055 A[EDGE_INSN: B:48:0x0055->B:22:0x0055 BREAK  A[LOOP:0: B:11:0x001b->B:21:0x0052], SYNTHETIC] */
    public final void A0(MeasureResult measureResult) {
        long j2;
        long j3;
        MutableScatterMap mutableScatterMap = this.o;
        if (this.l) {
            return;
        }
        Function1 d = measureResult.getD();
        if (d != null) {
            boolean z = this.f9715h != d;
            IntOffset.f11012b.getClass();
            long j4 = IntOffset.f11013c;
            IntSize.f11020b.getClass();
            if (z || !R0().f9720b) {
                j2 = j4;
                j3 = 0;
            } else {
                LayoutCoordinates layoutCoordinatesW = w();
                long jB = IntOffsetKt.b(LayoutCoordinatesKt.g(layoutCoordinatesW));
                long jA = layoutCoordinatesW.a();
                j2 = jB;
                j3 = jA;
                z = (IntOffset.b(jB, R0().f9721c) && IntSize.b(jA, R0().d)) ? false : true;
            }
            if (z) {
                PlaceableResult placeableResult = this.f9716i;
                if (placeableResult != null) {
                    placeableResult.f9826b = measureResult;
                } else {
                    placeableResult = new PlaceableResult(measureResult, this);
                    this.f9716i = placeableResult;
                }
                z0(placeableResult, j2, j3);
                this.f9715h = measureResult.getD();
                return;
            }
            return;
        }
        if (mutableScatterMap != null) {
            Object[] objArr = mutableScatterMap.f3363c;
            long[] jArr = mutableScatterMap.f3361a;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i2 = 0;
                while (true) {
                    long j5 = jArr[i2];
                    if ((((~j5) << 7) & j5 & (-9187201950435737472L)) == -9187201950435737472L) {
                        if (i2 != length) {
                            break;
                            break;
                        }
                        i2++;
                    } else {
                        int i3 = 8 - ((~(i2 - length)) >>> 31);
                        for (int i4 = 0; i4 < i3; i4++) {
                            if ((255 & j5) < 128) {
                                W0((MutableScatterSet) objArr[(i2 << 3) + i4]);
                            }
                            j5 >>= 8;
                        }
                        if (i3 != 8) {
                            break;
                        } else if (i2 != length) {
                            break;
                        } else {
                            i2++;
                        }
                    }
                }
            }
            mutableScatterMap.h();
        }
    }

    @Override // androidx.compose.ui.layout.MeasureScope
    public final MeasureResult B1(final int i2, final int i3, final Map map, final Function1 function1, final Function1 function2) {
        if ((i2 & b.v) != 0 || ((-16777216) & i3) != 0) {
            InlineClassHelperKt.c("Size(" + i2 + " x " + i3 + ") is out of range. Each dimension must be between 0 and 16777215.");
        }
        return new MeasureResult() { // from class: androidx.compose.ui.node.LookaheadCapablePlaceable$layout$1
            @Override // androidx.compose.ui.layout.MeasureResult
            /* JADX INFO: renamed from: getHeight, reason: from getter */
            public final int getF9727b() {
                return i3;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            /* JADX INFO: renamed from: getWidth, reason: from getter */
            public final int getF9726a() {
                return i2;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            /* JADX INFO: renamed from: j, reason: from getter */
            public final Map getF9728c() {
                return map;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public final void k() {
                function2.invoke(this.m);
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            /* JADX INFO: renamed from: l, reason: from getter */
            public final Function1 getD() {
                return function1;
            }
        };
    }

    public final float D0(Ruler ruler) {
        int iE;
        if (this.l) {
            return Float.NaN;
        }
        LookaheadCapablePlaceable lookaheadCapablePlaceable = this;
        while (true) {
            RulerTrackingMap rulerTrackingMap = lookaheadCapablePlaceable.n;
            float f2 = (rulerTrackingMap == null || (iE = ArraysKt.E(rulerTrackingMap.f9830b, ruler)) < 0) ? Float.NaN : rulerTrackingMap.f9831c[iE];
            if (!Float.isNaN(f2)) {
                lookaheadCapablePlaceable.t0(getQ(), ruler);
                return ruler.a(f2, lookaheadCapablePlaceable.w(), w());
            }
            LookaheadCapablePlaceable lookaheadCapablePlaceableL0 = lookaheadCapablePlaceable.L0();
            if (lookaheadCapablePlaceableL0 == null) {
                lookaheadCapablePlaceable.t0(getQ(), ruler);
                return Float.NaN;
            }
            lookaheadCapablePlaceable = lookaheadCapablePlaceableL0;
        }
    }

    @Override // androidx.compose.ui.node.MotionReferencePlacementDelegate
    public final void E(boolean z) {
        LookaheadCapablePlaceable lookaheadCapablePlaceableL0 = L0();
        LayoutNode q = lookaheadCapablePlaceableL0 != null ? lookaheadCapablePlaceableL0.getQ() : null;
        if (Intrinsics.c(q, getQ())) {
            this.f9717j = z;
            return;
        }
        if ((q != null ? q.I.d : null) != LayoutNode.LayoutState.LayingOut) {
            if ((q != null ? q.I.d : null) != LayoutNode.LayoutState.LookaheadLayingOut) {
                return;
            }
        }
        this.f9717j = z;
    }

    public abstract LookaheadCapablePlaceable I0();

    @Override // androidx.compose.ui.node.MeasureScopeWithLayoutNode
    /* JADX INFO: renamed from: I1 */
    public abstract LayoutNode getQ();

    public abstract boolean J0();

    public abstract MeasureResult K0();

    public abstract LookaheadCapablePlaceable L0();

    /* JADX INFO: renamed from: P0 */
    public abstract long getR();

    public final ResettableRulerScope R0() {
        ResettableRulerScope resettableRulerScope = this.g;
        if (resettableRulerScope != null) {
            return resettableRulerScope;
        }
        ResettableRulerScope resettableRulerScope2 = new ResettableRulerScope();
        this.g = resettableRulerScope2;
        return resettableRulerScope2;
    }

    @Override // androidx.compose.ui.layout.Measured
    public final int W(AlignmentLine alignmentLine) {
        int iY0;
        long j2;
        if (!J0() || (iY0 = y0(alignmentLine)) == Integer.MIN_VALUE) {
            return Integer.MIN_VALUE;
        }
        boolean z = alignmentLine instanceof VerticalAlignmentLine;
        long j3 = this.f9551f;
        if (z) {
            IntOffset.Companion companion = IntOffset.f11012b;
            j2 = j3 >> 32;
        } else {
            IntOffset.Companion companion2 = IntOffset.f11012b;
            j2 = BodyPartID.bodyIdMax & j3;
        }
        return iY0 + ((int) j2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void W0(MutableScatterSet mutableScatterSet) {
        LayoutNode layoutNode;
        Object[] objArr = mutableScatterSet.f3368b;
        long[] jArr = mutableScatterSet.f3367a;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i2 = 0;
        while (true) {
            long j2 = jArr[i2];
            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i3 = 8 - ((~(i2 - length)) >>> 31);
                for (int i4 = 0; i4 < i3; i4++) {
                    if ((255 & j2) < 128 && (layoutNode = (LayoutNode) ((WeakReference) objArr[(i2 << 3) + i4]).get()) != null) {
                        if (u0()) {
                            layoutNode.j0(false);
                        } else {
                            layoutNode.l0(false);
                        }
                    }
                    j2 >>= 8;
                }
                if (i3 != 8) {
                    return;
                }
            }
            if (i2 == length) {
                return;
            } else {
                i2++;
            }
        }
    }

    public abstract void X0();

    /* JADX WARN: Code duplicated, block: B:30:0x0097  */
    /* JADX WARN: Code duplicated, block: B:49:0x0100  */
    /* JADX WARN: Code duplicated, block: B:89:0x009f A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    public final void t0(LayoutNode layoutNode, Ruler ruler) {
        char c2;
        long j2;
        long j3;
        long j4;
        int i2;
        int i3;
        long[] jArr;
        long[] jArr2;
        long j5;
        int i4;
        char c3;
        long j6;
        int i5;
        int i6;
        int i7;
        boolean z;
        MutableScatterMap mutableScatterMap = this.o;
        char c4 = 7;
        long j7 = -9187201950435737472L;
        int i8 = 8;
        if (mutableScatterMap != null) {
            Object[] objArr = mutableScatterMap.f3363c;
            long[] jArr3 = mutableScatterMap.f3361a;
            int length = jArr3.length - 2;
            if (length >= 0) {
                int i9 = 0;
                j3 = 128;
                while (true) {
                    long j8 = jArr3[i9];
                    j4 = 255;
                    if ((((~j8) << c4) & j8 & j7) != j7) {
                        int i10 = 8 - ((~(i9 - length)) >>> 31);
                        int i11 = 0;
                        while (i11 < i10) {
                            if ((j8 & 255) < 128) {
                                c3 = c4;
                                MutableScatterSet mutableScatterSet = (MutableScatterSet) objArr[(i9 << 3) + i11];
                                j6 = j7;
                                Object[] objArr2 = mutableScatterSet.f3368b;
                                long[] jArr4 = mutableScatterSet.f3367a;
                                int length2 = jArr4.length - 2;
                                if (length2 >= 0) {
                                    int i12 = i8;
                                    int i13 = 0;
                                    while (true) {
                                        int i14 = length2;
                                        long j9 = jArr4[i13];
                                        jArr2 = jArr3;
                                        j5 = j8;
                                        if ((((~j9) << c3) & j9 & j6) != j6) {
                                            int i15 = 8 - ((~(i13 - i14)) >>> 31);
                                            int i16 = 0;
                                            while (i16 < i15) {
                                                if ((j9 & 255) < 128) {
                                                    int i17 = (i13 << 3) + i16;
                                                    LayoutNode layoutNode2 = (LayoutNode) ((WeakReference) objArr2[i17]).get();
                                                    i6 = i16;
                                                    if (layoutNode2 != null) {
                                                        boolean zC = layoutNode2.c();
                                                        i7 = i11;
                                                        z = zC;
                                                        if (!z) {
                                                            mutableScatterSet.n(i17);
                                                        }
                                                    } else {
                                                        i7 = i11;
                                                    }
                                                    if (!z) {
                                                        mutableScatterSet.n(i17);
                                                    }
                                                } else {
                                                    i6 = i16;
                                                    i7 = i11;
                                                }
                                                j9 >>= i12;
                                                i16 = i6 + 1;
                                                i11 = i7;
                                            }
                                            i4 = i11;
                                            if (i15 != i12) {
                                                break;
                                            }
                                        } else {
                                            i4 = i11;
                                        }
                                        length2 = i14;
                                        if (i13 == length2) {
                                            break;
                                        }
                                        i13++;
                                        jArr3 = jArr2;
                                        j8 = j5;
                                        i11 = i4;
                                        i12 = 8;
                                    }
                                } else {
                                    jArr2 = jArr3;
                                    j5 = j8;
                                    i4 = i11;
                                }
                                i5 = 8;
                            } else {
                                jArr2 = jArr3;
                                j5 = j8;
                                i4 = i11;
                                c3 = c4;
                                j6 = j7;
                                i5 = i8;
                            }
                            i8 = i5;
                            j8 = j5 >> i5;
                            c4 = c3;
                            j7 = j6;
                            i11 = i4 + 1;
                            jArr3 = jArr2;
                        }
                        jArr = jArr3;
                        c2 = c4;
                        j2 = j7;
                        if (i10 != i8) {
                            break;
                        }
                    } else {
                        jArr = jArr3;
                        c2 = c4;
                        j2 = j7;
                    }
                    if (i9 == length) {
                        break;
                    }
                    i9++;
                    c4 = c2;
                    j7 = j2;
                    jArr3 = jArr;
                    i8 = 8;
                }
            } else {
                c2 = 7;
                j2 = -9187201950435737472L;
                j3 = 128;
                j4 = 255;
            }
        } else {
            c2 = 7;
            j2 = -9187201950435737472L;
            j3 = 128;
            j4 = 255;
        }
        MutableScatterMap mutableScatterMap2 = this.o;
        if (mutableScatterMap2 != null) {
            long[] jArr5 = mutableScatterMap2.f3361a;
            int length3 = jArr5.length - 2;
            if (length3 >= 0) {
                int i18 = 0;
                while (true) {
                    long j10 = jArr5[i18];
                    if ((((~j10) << c2) & j10 & j2) != j2) {
                        int i19 = 8 - ((~(i18 - length3)) >>> 31);
                        for (int i20 = 0; i20 < i19; i20++) {
                            if ((j10 & j4) < j3) {
                                int i21 = (i18 << 3) + i20;
                                if (((MutableScatterSet) mutableScatterMap2.f3363c[i21]).b()) {
                                    mutableScatterMap2.n(i21);
                                }
                            }
                            j10 >>= 8;
                        }
                        if (i19 != 8) {
                            break;
                        }
                    }
                    if (i18 == length3) {
                        break;
                    } else {
                        i18++;
                    }
                }
            }
        }
        MutableScatterMap mutableScatterMap3 = this.o;
        if (mutableScatterMap3 == null) {
            i2 = 0;
            i3 = 1;
            mutableScatterMap3 = new MutableScatterMap(0, 1, null);
            this.o = mutableScatterMap3;
        } else {
            i2 = 0;
            i3 = 1;
        }
        Object objE = mutableScatterMap3.e(ruler);
        if (objE == null) {
            objE = new MutableScatterSet(i2, i3, null);
            mutableScatterMap3.o(ruler, objE);
        }
        ((MutableScatterSet) objE).l(new WeakReference(layoutNode));
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    public boolean u0() {
        return false;
    }

    public abstract LayoutCoordinates w();

    public abstract int y0(AlignmentLine alignmentLine);

    /* JADX WARN: Multi-variable type inference failed */
    public final void z0(final PlaceableResult placeableResult, final long j2, final long j3) {
        boolean z;
        char c2;
        long j4;
        long j5;
        long j6;
        LayoutNode layoutNode;
        boolean z2;
        int i2;
        char c3;
        long j7;
        OwnerSnapshotObserver snapshotObserver;
        MutableScatterMap mutableScatterMap = this.o;
        RulerTrackingMap rulerTrackingMap = this.n;
        if (rulerTrackingMap == null) {
            rulerTrackingMap = new RulerTrackingMap();
            this.n = rulerTrackingMap;
        }
        RulerTrackingMap rulerTrackingMap2 = rulerTrackingMap;
        Owner owner = getQ().p;
        if (owner != null && (snapshotObserver = owner.getSnapshotObserver()) != null) {
            snapshotObserver.f9812a.e(placeableResult, p, new Function0<Unit>() { // from class: androidx.compose.ui.node.LookaheadCapablePlaceable$captureRulers$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    Function1 function1 = LookaheadCapablePlaceable.p;
                    LookaheadCapablePlaceable lookaheadCapablePlaceable = this.f9723c;
                    lookaheadCapablePlaceable.R0().f9720b = false;
                    lookaheadCapablePlaceable.R0().f9721c = j2;
                    lookaheadCapablePlaceable.R0().d = j3;
                    Function1 d = placeableResult.f9826b.getD();
                    if (d != null) {
                        d.invoke(lookaheadCapablePlaceable.R0());
                    }
                    return Unit.f71739a;
                }
            });
        }
        boolean zU0 = u0();
        MutableScatterSet mutableScatterSet = rulerTrackingMap2.f9832e;
        MutableScatterSet mutableScatterSet2 = rulerTrackingMap2.f9833f;
        int i3 = rulerTrackingMap2.f9829a;
        for (int i4 = 0; i4 < i3; i4++) {
            byte b2 = rulerTrackingMap2.d[i4];
            if (b2 == 3) {
                Ruler ruler = rulerTrackingMap2.f9830b[i4];
                ruler.getClass();
                mutableScatterSet2.l(ruler);
            } else if (b2 != 0 && mutableScatterMap != null) {
                Ruler ruler2 = rulerTrackingMap2.f9830b[i4];
                ruler2.getClass();
                MutableScatterSet mutableScatterSet3 = (MutableScatterSet) mutableScatterMap.m(ruler2);
                if (mutableScatterSet3 != null) {
                    mutableScatterSet.k(mutableScatterSet3);
                }
            }
        }
        int i5 = rulerTrackingMap2.f9829a;
        int i6 = 0;
        for (int i7 = 0; i7 < i5; i7++) {
            byte[] bArr = rulerTrackingMap2.d;
            if (bArr[i7] == 2) {
                i6++;
            } else if (i6 > 0) {
                Ruler[] rulerArr = rulerTrackingMap2.f9830b;
                rulerArr[i7 - i6] = rulerArr[i7];
            }
            bArr[i7] = 2;
        }
        int i8 = rulerTrackingMap2.f9829a;
        for (int i9 = i8 - i6; i9 < i8; i9++) {
            rulerTrackingMap2.f9830b[i9] = null;
        }
        rulerTrackingMap2.f9829a -= i6;
        LookaheadCapablePlaceable lookaheadCapablePlaceableL0 = L0();
        Object[] objArr = mutableScatterSet2.f3368b;
        long[] jArr = mutableScatterSet2.f3367a;
        int length = jArr.length - 2;
        char c4 = 7;
        long j8 = -9187201950435737472L;
        int i10 = 8;
        if (length >= 0) {
            j5 = 128;
            int i11 = 0;
            while (true) {
                long j9 = jArr[i11];
                j6 = 255;
                if ((((~j9) << c4) & j9 & j8) != j8) {
                    int i12 = 8 - ((~(i11 - length)) >>> 31);
                    int i13 = 0;
                    while (i13 < i12) {
                        if ((j9 & 255) < 128) {
                            c3 = c4;
                            Ruler ruler3 = (Ruler) objArr[(i11 << 3) + i13];
                            j7 = j8;
                            LookaheadCapablePlaceable lookaheadCapablePlaceable = lookaheadCapablePlaceableL0 == null ? this : lookaheadCapablePlaceableL0;
                            i2 = i10;
                            LookaheadCapablePlaceable lookaheadCapablePlaceable2 = lookaheadCapablePlaceable;
                            while (true) {
                                RulerTrackingMap rulerTrackingMap3 = lookaheadCapablePlaceable2.n;
                                if (rulerTrackingMap3 != null) {
                                    z2 = zU0;
                                    if (ArraysKt.f(ruler3, rulerTrackingMap3.f9830b)) {
                                        break;
                                    } else {
                                        break;
                                    }
                                }
                                z2 = zU0;
                                LookaheadCapablePlaceable lookaheadCapablePlaceableL1 = lookaheadCapablePlaceable2.L0();
                                if (lookaheadCapablePlaceableL1 == null) {
                                    break;
                                }
                                lookaheadCapablePlaceable2 = lookaheadCapablePlaceableL1;
                                zU0 = z2;
                            }
                            MutableScatterMap mutableScatterMap2 = lookaheadCapablePlaceable2.o;
                            MutableScatterSet mutableScatterSet4 = mutableScatterMap2 != null ? (MutableScatterSet) mutableScatterMap2.m(ruler3) : null;
                            if (mutableScatterSet4 != null) {
                                lookaheadCapablePlaceable.W0(mutableScatterSet4);
                            }
                        } else {
                            z2 = zU0;
                            i2 = i10;
                            c3 = c4;
                            j7 = j8;
                        }
                        j9 >>= i2;
                        i13++;
                        c4 = c3;
                        j8 = j7;
                        i10 = i2;
                        zU0 = z2;
                    }
                    z = zU0;
                    c2 = c4;
                    j4 = j8;
                    if (i12 != i10) {
                        break;
                    }
                } else {
                    z = zU0;
                    c2 = c4;
                    j4 = j8;
                }
                if (i11 == length) {
                    break;
                }
                i11++;
                c4 = c2;
                j8 = j4;
                zU0 = z;
                i10 = 8;
            }
        } else {
            z = zU0;
            c2 = 7;
            j4 = -9187201950435737472L;
            j5 = 128;
            j6 = 255;
        }
        mutableScatterSet2.f();
        Object[] objArr2 = mutableScatterSet.f3368b;
        long[] jArr2 = mutableScatterSet.f3367a;
        int length2 = jArr2.length - 2;
        if (length2 >= 0) {
            int i14 = 0;
            while (true) {
                long j10 = jArr2[i14];
                if ((((~j10) << c2) & j10 & j4) != j4) {
                    int i15 = 8 - ((~(i14 - length2)) >>> 31);
                    for (int i16 = 0; i16 < i15; i16++) {
                        if ((j10 & j6) < j5 && (layoutNode = (LayoutNode) ((WeakReference) objArr2[(i14 << 3) + i16]).get()) != null) {
                            if (z) {
                                layoutNode.j0(false);
                            } else {
                                layoutNode.l0(false);
                            }
                        }
                        j10 >>= 8;
                    }
                    if (i15 != 8) {
                        break;
                    }
                }
                if (i14 == length2) {
                    break;
                } else {
                    i14++;
                }
            }
        }
        mutableScatterSet.f();
    }
}
