package androidx.compose.ui.spatial;

import android.os.Trace;
import androidx.collection.IntObjectMap;
import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.geometry.MutableRect;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.graphics.MatrixKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeKt;
import androidx.compose.ui.node.MeasurePassDelegate;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.OwnedLayer;
import androidx.compose.ui.unit.IntOffset;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B!\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/spatial/RectManager;", "", "Landroidx/collection/IntObjectMap;", "Landroidx/compose/ui/node/LayoutNode;", "layoutNodes", "Landroidx/compose/ui/spatial/ExecuteDelayed;", "executeDelayed", "<init>", "(Landroidx/collection/IntObjectMap;Landroidx/compose/ui/spatial/ExecuteDelayed;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RectManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ExecuteDelayed f10384a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RectList f10385b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ThrottledCallbacks f10386c;
    public final MutableObjectList d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f10387e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f10388f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Object f10389h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f10390i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Function0 f10391j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MutableRect f10392k;

    public RectManager(IntObjectMap<LayoutNode> intObjectMap, ExecuteDelayed executeDelayed) {
        this.f10384a = executeDelayed;
        this.f10385b = new RectList();
        this.f10386c = new ThrottledCallbacks();
        this.d = new MutableObjectList(0, 1, null);
        this.f10390i = -1L;
        this.f10391j = new Function0<Unit>() { // from class: androidx.compose.ui.spatial.RectManager$dispatchLambda$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                RectManager rectManager = this.f10393c;
                rectManager.f10389h = null;
                Trace.beginSection("OnPositionedDispatch");
                try {
                    rectManager.a();
                    return Unit.f71739a;
                } finally {
                    Trace.endSection();
                }
            }
        };
        this.f10392k = new MutableRect(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }

    public static long d(LayoutNode layoutNode) {
        NodeCoordinator nodeCoordinator = layoutNode.H.d;
        IntOffset.f11012b.getClass();
        long jD = 0;
        for (NodeCoordinator nodeCoordinator2 = layoutNode.H.f9772c; nodeCoordinator2 != null && nodeCoordinator2 != nodeCoordinator; nodeCoordinator2 = nodeCoordinator2.u) {
            OwnedLayer ownedLayer = nodeCoordinator2.P;
            if (ownedLayer != null && !MatrixKt.a(ownedLayer.mo3getUnderlyingMatrixsQKQjiQ())) {
                IntOffset.f11012b.getClass();
                return IntOffset.f11013c;
            }
            jD = IntOffset.d(jD, nodeCoordinator2.D);
        }
        return jD;
    }

    public static void g(LayoutNode layoutNode) {
        if (layoutNode.d) {
            OwnedLayer ownedLayer = layoutNode.H.d.P;
            if (ownedLayer == null || MatrixKt.a(ownedLayer.mo3getUnderlyingMatrixsQKQjiQ())) {
                layoutNode.d = false;
                if (layoutNode.f9691f) {
                    layoutNode.f9690e = d(layoutNode);
                    layoutNode.f9691f = false;
                }
                long j2 = layoutNode.f9690e;
                IntOffset.f11012b.getClass();
                if (IntOffset.b(j2, IntOffset.f11013c)) {
                    return;
                }
                MutableVector mutableVectorR = layoutNode.R();
                Object[] objArr = mutableVectorR.f8165b;
                int i2 = mutableVectorR.d;
                for (int i3 = 0; i3 < i2; i3++) {
                    g((LayoutNode) objArr[i3]);
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:104:0x0224  */
    /* JADX WARN: Code duplicated, block: B:110:0x0249  */
    /* JADX WARN: Code duplicated, block: B:112:0x025f  */
    /* JADX WARN: Code duplicated, block: B:115:0x0273  */
    /* JADX WARN: Code duplicated, block: B:117:0x0283  */
    /* JADX WARN: Code duplicated, block: B:119:0x0289  */
    /* JADX WARN: Code duplicated, block: B:121:0x0292 A[LOOP:11: B:120:0x0290->B:121:0x0292, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:125:0x02cf  */
    /* JADX WARN: Code duplicated, block: B:126:0x02d2  */
    /* JADX WARN: Code duplicated, block: B:128:0x02da A[LOOP:9: B:113:0x0264->B:128:0x02da, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:130:0x02e3  */
    /* JADX WARN: Code duplicated, block: B:133:0x02e9  */
    /* JADX WARN: Code duplicated, block: B:135:0x02ec A[LOOP:12: B:134:0x02ea->B:135:0x02ec, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:138:0x02fb  */
    /* JADX WARN: Code duplicated, block: B:139:0x02fe  */
    /* JADX WARN: Code duplicated, block: B:143:0x0308  */
    /* JADX WARN: Code duplicated, block: B:167:0x0238 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:168:0x02e5 A[EDGE_INSN: B:168:0x02e5->B:131:0x02e5 BREAK  A[LOOP:9: B:113:0x0264->B:128:0x02da], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:169:0x02e0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:171:0x02b1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:174:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:89:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:91:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:93:0x01b9 A[LOOP:7: B:92:0x01b7->B:93:0x01b9, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:96:0x0202  */
    public final void a() {
        boolean z;
        long j2;
        long j3;
        long j4;
        long j5;
        ThrottledCallbacks throttledCallbacks;
        RectList rectList;
        long j6;
        long j7;
        float[] fArr;
        Object[] objArr;
        long[] jArr;
        int length;
        long jA;
        ThrottledCallbacks.Entry entry;
        long j8;
        ThrottledCallbacks.Entry entry2;
        int i2;
        long j9;
        long j10;
        long j11;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        long j12;
        int i8;
        int i9;
        ThrottledCallbacks.Entry entry3;
        long[] jArr2;
        long[] jArr3;
        int i10;
        int i11;
        int i12;
        long j13;
        long j14;
        float[] fArr2;
        ThrottledCallbacks.Entry entry4;
        ThrottledCallbacks.Entry entry5;
        long j15;
        long j16;
        Object obj = this.f10389h;
        if (obj != null) {
            this.f10384a.j(obj);
            this.f10389h = null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean z2 = this.f10387e;
        boolean z3 = z2 || this.f10388f;
        long j17 = 0;
        RectList rectList2 = this.f10385b;
        boolean z4 = true;
        ThrottledCallbacks throttledCallbacks2 = this.f10386c;
        if (z2) {
            this.f10387e = false;
            MutableObjectList mutableObjectList = this.d;
            Object[] objArr2 = mutableObjectList.f3345a;
            int i13 = mutableObjectList.f3346b;
            for (int i14 = 0; i14 < i13; i14++) {
                ((Function0) objArr2[i14]).mo47invoke();
            }
            long[] jArr4 = rectList2.f10378a;
            int i15 = rectList2.f10380c;
            int i16 = 0;
            while (i16 < jArr4.length - 2 && i16 < i15) {
                boolean z5 = z4;
                int i17 = i15;
                long j18 = jArr4[i16 + 2];
                boolean z6 = z3;
                if ((((int) (j18 >> 60)) & 1) != 0) {
                    long j19 = jArr4[i16];
                    long j20 = jArr4[i16 + 1];
                    ThrottledCallbacks.Entry entry6 = (ThrottledCallbacks.Entry) throttledCallbacks2.f10399a.b(((int) j18) & 33554431);
                    while (entry6 != null) {
                        ThrottledCallbacks.Entry entry7 = entry6.f10408f;
                        int i18 = i16;
                        long j21 = entry6.f10410i;
                        long j22 = entry6.f10405b;
                        long j23 = entry6.f10406c;
                        boolean z7 = (jCurrentTimeMillis - j21 >= j22 || j21 == Long.MIN_VALUE) ? z5 : false;
                        boolean z8 = j23 == j17 ? z5 : false;
                        boolean z9 = j22 == j17 ? z5 : false;
                        entry6.g = j19;
                        entry6.f10409h = j20;
                        boolean z10 = ((z8 || z9) && !z8) ? false : z5;
                        if (z7 && z10) {
                            j15 = j20;
                            entry6.f10411j = -1L;
                            entry6.f10410i = jCurrentTimeMillis;
                            j16 = j17;
                            entry6.a(j19, j15, throttledCallbacks2.d, throttledCallbacks2.f10402e, throttledCallbacks2.g);
                        } else {
                            j15 = j20;
                            j16 = j17;
                            if (!z8) {
                                entry6.f10411j = jCurrentTimeMillis;
                                long j24 = throttledCallbacks2.f10401c;
                                long j25 = j23 + jCurrentTimeMillis;
                                if (j24 > j16 && j25 < j24) {
                                    throttledCallbacks2.f10401c = j24;
                                }
                            }
                        }
                        i16 = i18;
                        entry6 = entry7;
                        j20 = j15;
                        j17 = j16;
                    }
                }
                i16 += 3;
                i15 = i17;
                z3 = z6;
                z4 = z5;
                j17 = j17;
            }
            z = z3;
            j2 = j17;
            long[] jArr5 = rectList2.f10378a;
            int i19 = rectList2.f10380c;
            for (int i20 = 0; i20 < jArr5.length - 2 && i20 < i19; i20 += 3) {
                int i21 = i20 + 2;
                jArr5[i21] = jArr5[i21] & (-1152921504606846977L);
            }
        } else {
            z = z3;
            j2 = 0;
        }
        if (this.f10388f) {
            this.f10388f = false;
            long j26 = throttledCallbacks2.d;
            long j27 = throttledCallbacks2.f10402e;
            j3 = jCurrentTimeMillis;
            float[] fArr3 = throttledCallbacks2.g;
            MutableIntObjectMap mutableIntObjectMap = throttledCallbacks2.f10399a;
            j4 = 128;
            Object[] objArr3 = mutableIntObjectMap.f3260c;
            long[] jArr6 = mutableIntObjectMap.f3258a;
            int length2 = jArr6.length - 2;
            if (length2 >= 0) {
                int i22 = 0;
                j5 = 255;
                while (true) {
                    long j28 = jArr6[i22];
                    long[] jArr7 = jArr6;
                    ThrottledCallbacks throttledCallbacks3 = throttledCallbacks2;
                    if ((((~j28) << 7) & j28 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i23 = 8 - ((~(i22 - length2)) >>> 31);
                        long j29 = j28;
                        int i24 = 0;
                        while (i24 < i23) {
                            if ((j29 & 255) < 128) {
                                ThrottledCallbacks.Entry entry8 = (ThrottledCallbacks.Entry) objArr3[(i22 << 3) + i24];
                                while (entry8 != null) {
                                    RectList rectList3 = rectList2;
                                    ThrottledCallbacks.Entry entry9 = entry8;
                                    throttledCallbacks3.b(entry9, j26, j27, fArr3, j3);
                                    entry8 = entry9.f10408f;
                                    rectList2 = rectList3;
                                }
                            }
                            j29 >>= 8;
                            i24++;
                            throttledCallbacks3 = throttledCallbacks3;
                            rectList2 = rectList2;
                        }
                        rectList2 = rectList2;
                        throttledCallbacks2 = throttledCallbacks3;
                        if (i23 != 8) {
                            break;
                        }
                    } else {
                        rectList2 = rectList2;
                        throttledCallbacks2 = throttledCallbacks3;
                    }
                    if (i22 == length2) {
                        break;
                    }
                    i22++;
                    rectList2 = rectList2;
                    jArr6 = jArr7;
                }
            }
            if (z) {
                j13 = throttledCallbacks2.d;
                j14 = throttledCallbacks2.f10402e;
                fArr2 = throttledCallbacks2.g;
                entry4 = throttledCallbacks2.f10400b;
                if (entry4 != null) {
                    entry5 = entry4;
                    while (entry5 != null) {
                        LayoutNode layoutNodeF = DelegatableNodeKt.f(entry5.d);
                        long jB = LayoutNodeKt.a(layoutNodeF).getRectManager().b(layoutNodeF);
                        entry5.g = jB;
                        IntOffset.Companion companion = IntOffset.f11012b;
                        MeasurePassDelegate measurePassDelegate = layoutNodeF.I.p;
                        entry5.f10409h = (((long) (measurePassDelegate.f9548b + ((int) (jB >> 32)))) << 32) | (((long) (measurePassDelegate.f9549c + ((int) (jB & BodyPartID.bodyIdMax)))) & BodyPartID.bodyIdMax);
                        throttledCallbacks2.b(entry5, j13, j14, fArr2, j3);
                        entry5 = entry5.f10408f;
                        rectList2 = rectList2;
                    }
                }
            }
            throttledCallbacks = throttledCallbacks2;
            rectList = rectList2;
            if (this.g) {
                this.g = false;
                jArr2 = rectList.f10378a;
                int i25 = rectList.f10380c;
                jArr3 = rectList.f10379b;
                i11 = 0;
                for (i10 = 0; i10 < jArr2.length - 2 && i11 < jArr3.length - 2 && i10 < i25; i10 += 3) {
                    i12 = i10 + 2;
                    if (jArr2[i12] != RectListKt.f10383c) {
                        jArr3[i11] = jArr2[i10];
                        jArr3[i11 + 1] = jArr2[i10 + 1];
                        jArr3[i11 + 2] = jArr2[i12];
                        i11 += 3;
                    }
                }
                rectList.f10380c = i11;
                rectList.f10378a = jArr3;
                rectList.f10379b = jArr2;
            }
            if (throttledCallbacks.f10401c <= j3) {
                j6 = throttledCallbacks.d;
                j7 = throttledCallbacks.f10402e;
                fArr = throttledCallbacks.g;
                MutableIntObjectMap mutableIntObjectMap2 = throttledCallbacks.f10399a;
                objArr = mutableIntObjectMap2.f3260c;
                jArr = mutableIntObjectMap2.f3258a;
                length = jArr.length - 2;
                if (length >= 0) {
                    i2 = 0;
                    j9 = Long.MAX_VALUE;
                    while (true) {
                        j10 = jArr[i2];
                        j11 = j6;
                        i3 = length;
                        if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                            i6 = 8;
                            i7 = 8 - ((~(i2 - i3)) >>> 31);
                            jA = j9;
                            j12 = j10;
                            i8 = 0;
                            while (i8 < i7) {
                                if ((j12 & j5) < j4) {
                                    entry3 = (ThrottledCallbacks.Entry) objArr[(i2 << 3) + i8];
                                    while (entry3 != null) {
                                        int i26 = i7;
                                        ThrottledCallbacks.Entry entry10 = entry3;
                                        long j30 = j11;
                                        int i27 = i8;
                                        int i28 = i6;
                                        int i29 = i2;
                                        long j31 = j3;
                                        jA = ThrottledCallbacks.a(entry10, j30, j7, fArr, j31, jA);
                                        j3 = j31;
                                        i2 = i29;
                                        i6 = i28;
                                        i8 = i27;
                                        j11 = j30;
                                        i3 = i3;
                                        entry3 = entry10.f10408f;
                                        i7 = i26;
                                    }
                                }
                                int i30 = i7;
                                long j32 = j11;
                                int i31 = i8;
                                int i32 = i6;
                                j12 >>= i32;
                                int i33 = i31 + 1;
                                j11 = j32;
                                i3 = i3;
                                i2 = i2;
                                i6 = i32;
                                i8 = i33;
                                i7 = i30;
                            }
                            i4 = i3;
                            i9 = i6;
                            j6 = j11;
                            i5 = i2;
                            if (i7 == i9) {
                                break;
                            } else {
                                j9 = jA;
                            }
                        } else {
                            i4 = i3;
                            i5 = i2;
                            j6 = j11;
                        }
                        if (i5 != i4) {
                            jA = j9;
                            break;
                        } else {
                            i2 = i5 + 1;
                            length = i4;
                        }
                    }
                } else {
                    jA = Long.MAX_VALUE;
                }
                entry = throttledCallbacks.f10400b;
                if (entry != null) {
                    for (entry2 = entry; entry2 != null; entry2 = entry2.f10408f) {
                        long j33 = j3;
                        jA = ThrottledCallbacks.a(entry2, j6, j7, fArr, j33, jA);
                        j3 = j33;
                    }
                }
                if (jA == Long.MAX_VALUE) {
                    j8 = -1;
                } else {
                    j8 = jA;
                }
                throttledCallbacks.f10401c = j8;
            }
            if (throttledCallbacks.f10401c > j2) {
                h();
            }
        }
        j3 = jCurrentTimeMillis;
        j4 = 128;
        j5 = 255;
        if (z) {
            j13 = throttledCallbacks2.d;
            j14 = throttledCallbacks2.f10402e;
            fArr2 = throttledCallbacks2.g;
            entry4 = throttledCallbacks2.f10400b;
            if (entry4 != null) {
                entry5 = entry4;
                while (entry5 != null) {
                    LayoutNode layoutNodeF2 = DelegatableNodeKt.f(entry5.d);
                    long jB2 = LayoutNodeKt.a(layoutNodeF2).getRectManager().b(layoutNodeF2);
                    entry5.g = jB2;
                    IntOffset.Companion companion2 = IntOffset.f11012b;
                    MeasurePassDelegate measurePassDelegate2 = layoutNodeF2.I.p;
                    entry5.f10409h = (((long) (measurePassDelegate2.f9548b + ((int) (jB2 >> 32)))) << 32) | (((long) (measurePassDelegate2.f9549c + ((int) (jB2 & BodyPartID.bodyIdMax)))) & BodyPartID.bodyIdMax);
                    throttledCallbacks2.b(entry5, j13, j14, fArr2, j3);
                    entry5 = entry5.f10408f;
                    rectList2 = rectList2;
                }
            }
        }
        throttledCallbacks = throttledCallbacks2;
        rectList = rectList2;
        if (this.g) {
            this.g = false;
            jArr2 = rectList.f10378a;
            int i210 = rectList.f10380c;
            jArr3 = rectList.f10379b;
            i11 = 0;
            while (i10 < jArr2.length - 2) {
                i12 = i10 + 2;
                if (jArr2[i12] != RectListKt.f10383c) {
                    jArr3[i11] = jArr2[i10];
                    jArr3[i11 + 1] = jArr2[i10 + 1];
                    jArr3[i11 + 2] = jArr2[i12];
                    i11 += 3;
                }
            }
            rectList.f10380c = i11;
            rectList.f10378a = jArr3;
            rectList.f10379b = jArr2;
        }
        if (throttledCallbacks.f10401c <= j3) {
            j6 = throttledCallbacks.d;
            j7 = throttledCallbacks.f10402e;
            fArr = throttledCallbacks.g;
            MutableIntObjectMap mutableIntObjectMap3 = throttledCallbacks.f10399a;
            objArr = mutableIntObjectMap3.f3260c;
            jArr = mutableIntObjectMap3.f3258a;
            length = jArr.length - 2;
            if (length >= 0) {
                i2 = 0;
                j9 = Long.MAX_VALUE;
                while (true) {
                    j10 = jArr[i2];
                    j11 = j6;
                    i3 = length;
                    if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                        i6 = 8;
                        i7 = 8 - ((~(i2 - i3)) >>> 31);
                        jA = j9;
                        j12 = j10;
                        i8 = 0;
                        while (i8 < i7) {
                            if ((j12 & j5) < j4) {
                                entry3 = (ThrottledCallbacks.Entry) objArr[(i2 << 3) + i8];
                                while (entry3 != null) {
                                    int i211 = i7;
                                    ThrottledCallbacks.Entry entry11 = entry3;
                                    long j34 = j11;
                                    int i212 = i8;
                                    int i213 = i6;
                                    int i214 = i2;
                                    long j35 = j3;
                                    jA = ThrottledCallbacks.a(entry11, j34, j7, fArr, j35, jA);
                                    j3 = j35;
                                    i2 = i214;
                                    i6 = i213;
                                    i8 = i212;
                                    j11 = j34;
                                    i3 = i3;
                                    entry3 = entry11.f10408f;
                                    i7 = i211;
                                }
                            }
                            int i34 = i7;
                            long j36 = j11;
                            int i35 = i8;
                            int i36 = i6;
                            j12 >>= i36;
                            int i37 = i35 + 1;
                            j11 = j36;
                            i3 = i3;
                            i2 = i2;
                            i6 = i36;
                            i8 = i37;
                            i7 = i34;
                        }
                        i4 = i3;
                        i9 = i6;
                        j6 = j11;
                        i5 = i2;
                        if (i7 == i9) {
                            break;
                            break;
                        }
                        j9 = jA;
                    } else {
                        i4 = i3;
                        i5 = i2;
                        j6 = j11;
                    }
                    if (i5 != i4) {
                        jA = j9;
                        break;
                    } else {
                        i2 = i5 + 1;
                        length = i4;
                    }
                }
            } else {
                jA = Long.MAX_VALUE;
            }
            entry = throttledCallbacks.f10400b;
            if (entry != null) {
                while (entry2 != null) {
                    long j37 = j3;
                    jA = ThrottledCallbacks.a(entry2, j6, j7, fArr, j37, jA);
                    j3 = j37;
                }
            }
            if (jA == Long.MAX_VALUE) {
                j8 = -1;
            } else {
                j8 = jA;
            }
            throttledCallbacks.f10401c = j8;
        }
        if (throttledCallbacks.f10401c > j2) {
            h();
        }
    }

    public final long b(LayoutNode layoutNode) {
        long j2;
        int i2 = layoutNode.f9689c & 33554431;
        RectList rectList = this.f10385b;
        long[] jArr = rectList.f10378a;
        int i3 = rectList.f10380c;
        int i4 = 0;
        while (true) {
            if (i4 >= jArr.length - 2 || i4 >= i3) {
                j2 = Long.MAX_VALUE;
                break;
            }
            if ((((int) jArr[i4 + 2]) & 33554431) == i2) {
                j2 = jArr[i4];
                break;
            }
            i4 += 3;
        }
        if (j2 == Long.MAX_VALUE) {
            IntOffset.f11012b.getClass();
            return IntOffset.f11013c;
        }
        long j3 = (((long) ((int) j2)) & BodyPartID.bodyIdMax) | (((long) ((int) (j2 >> 32))) << 32);
        IntOffset.Companion companion = IntOffset.f11012b;
        return j3;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0102  */
    /* JADX WARN: Code duplicated, block: B:33:0x0106  */
    public final void c(LayoutNode layoutNode) {
        char c2;
        boolean z;
        LayoutNode layoutNodeO;
        int i2;
        boolean z2 = true;
        layoutNode.d = true;
        NodeChain nodeChain = layoutNode.H;
        NodeCoordinator nodeCoordinator = nodeChain.d;
        MeasurePassDelegate measurePassDelegate = layoutNode.I.p;
        int iM0 = measurePassDelegate.m0();
        float fL0 = measurePassDelegate.l0();
        MutableRect mutableRect = this.f10392k;
        mutableRect.f8803a = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        mutableRect.f8804b = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        mutableRect.f8805c = iM0;
        mutableRect.d = fL0;
        while (true) {
            c2 = ' ';
            if (nodeCoordinator == null) {
                break;
            }
            LayoutNode layoutNode2 = nodeCoordinator.q;
            if (nodeCoordinator == layoutNode2.H.d && !layoutNode2.d) {
                long jB = b(layoutNode2);
                IntOffset.f11012b.getClass();
                if (!IntOffset.b(jB, IntOffset.f11013c)) {
                    long jFloatToRawIntBits = (((long) Float.floatToRawIntBits((int) (jB >> 32))) << 32) | (((long) Float.floatToRawIntBits((int) (jB & BodyPartID.bodyIdMax))) & BodyPartID.bodyIdMax);
                    Offset.Companion companion = Offset.f8806b;
                    mutableRect.c(jFloatToRawIntBits);
                    break;
                }
            }
            OwnedLayer ownedLayer = nodeCoordinator.P;
            if (ownedLayer != null) {
                float[] fArrMo3getUnderlyingMatrixsQKQjiQ = ownedLayer.mo3getUnderlyingMatrixsQKQjiQ();
                if (!MatrixKt.a(fArrMo3getUnderlyingMatrixsQKQjiQ)) {
                    Matrix.c(fArrMo3getUnderlyingMatrixsQKQjiQ, mutableRect);
                }
            }
            long j2 = nodeCoordinator.D;
            IntOffset.Companion companion2 = IntOffset.f11012b;
            float f2 = (int) (j2 >> 32);
            long jFloatToRawIntBits2 = (BodyPartID.bodyIdMax & ((long) Float.floatToRawIntBits((int) (j2 & BodyPartID.bodyIdMax)))) | (Float.floatToRawIntBits(f2) << 32);
            Offset.Companion companion3 = Offset.f8806b;
            mutableRect.c(jFloatToRawIntBits2);
            nodeCoordinator = nodeCoordinator.u;
        }
        int i3 = (int) mutableRect.f8803a;
        int i4 = (int) mutableRect.f8804b;
        int i5 = (int) mutableRect.f8805c;
        int i6 = (int) mutableRect.d;
        int i7 = layoutNode.f9689c;
        boolean z3 = layoutNode.f9692h;
        layoutNode.f9692h = true;
        if (z3) {
            int i8 = i7 & 33554431;
            RectList rectList = this.f10385b;
            long[] jArr = rectList.f10378a;
            int i9 = rectList.f10380c;
            int i10 = 0;
            while (true) {
                if (i10 >= jArr.length - 2 || i10 >= i9) {
                    z = z2;
                    layoutNodeO = layoutNode.O();
                    if (layoutNodeO != null) {
                        i2 = layoutNodeO.f9689c;
                    } else {
                        i2 = -1;
                    }
                    this.f10385b.a(i7, i3, i4, i5, i6, (512 & 32) != 0 ? -1 : i2, nodeChain.d(1024), nodeChain.d(16), this.f10386c.f10399a.a(i7), -1);
                } else {
                    int i11 = i10 + 2;
                    char c3 = c2;
                    long j3 = jArr[i11];
                    z = z2;
                    if ((((int) j3) & 33554431) == i8) {
                        jArr[i10] = (((long) i3) << c3) | (((long) i4) & BodyPartID.bodyIdMax);
                        jArr[i10 + 1] = (((long) i5) << c3) | (((long) i6) & BodyPartID.bodyIdMax);
                        jArr[i11] = (((j3 >> 63) & 1) << 60) | j3;
                    } else {
                        i10 += 3;
                        c2 = c3;
                        z2 = z;
                    }
                }
            }
        } else {
            z = z2;
            layoutNodeO = layoutNode.O();
            if (layoutNodeO != null) {
                i2 = layoutNodeO.f9689c;
            } else {
                i2 = -1;
            }
            this.f10385b.a(i7, i3, i4, i5, i6, (512 & 32) != 0 ? -1 : i2, nodeChain.d(1024), nodeChain.d(16), this.f10386c.f10399a.a(i7), -1);
        }
        layoutNode.g = false;
        this.f10387e = z;
        MutableVector mutableVectorR = layoutNode.R();
        Object[] objArr = mutableVectorR.f8165b;
        int i12 = mutableVectorR.d;
        for (int i13 = 0; i13 < i12; i13++) {
            LayoutNode layoutNode3 = (LayoutNode) objArr[i13];
            if (layoutNode3.A()) {
                c(layoutNode3);
            }
        }
    }

    public final void e(LayoutNode layoutNode) {
        long j2;
        OwnedLayer ownedLayer;
        int i2;
        int i3;
        int i4;
        char c2;
        boolean zA = layoutNode.A();
        NodeChain nodeChain = layoutNode.H;
        if (zA && layoutNode.g) {
            LayoutNode layoutNodeO = layoutNode.O();
            if (layoutNodeO != null && !layoutNodeO.d) {
                if (layoutNodeO.f9691f) {
                    layoutNodeO.f9691f = false;
                    layoutNodeO.f9690e = d(layoutNodeO);
                }
                j2 = layoutNodeO.f9690e;
            } else if (layoutNodeO == null) {
                IntOffset.f11012b.getClass();
                j2 = 0;
            } else {
                IntOffset.f11012b.getClass();
                j2 = IntOffset.f11013c;
            }
            NodeCoordinator nodeCoordinator = nodeChain.d;
            IntOffset.f11012b.getClass();
            if (IntOffset.b(j2, IntOffset.f11013c) || !((ownedLayer = nodeCoordinator.P) == null || MatrixKt.a(ownedLayer.mo3getUnderlyingMatrixsQKQjiQ()))) {
                c(layoutNode);
            } else if (layoutNode.d) {
                c(layoutNode);
                g(layoutNode);
            } else {
                long jD = IntOffset.d(j2, nodeCoordinator.D);
                MeasurePassDelegate measurePassDelegate = layoutNode.I.p;
                int iM0 = measurePassDelegate.m0();
                int iL0 = measurePassDelegate.l0();
                int i5 = layoutNode.f9689c;
                char c3 = ' ';
                if (layoutNode.f9692h) {
                    RectList rectList = this.f10385b;
                    if (layoutNodeO != null) {
                        int i6 = layoutNodeO.f9689c;
                        int i7 = (int) (jD >> 32);
                        int i8 = (int) (jD & BodyPartID.bodyIdMax);
                        int i9 = i5 & 33554431;
                        long[] jArr = rectList.f10378a;
                        int i10 = rectList.f10380c;
                        int i11 = 0;
                        loop0: while (i11 < jArr.length - 2 && i11 < i10) {
                            int i12 = i8;
                            if ((((int) jArr[i11 + 2]) & 33554431) == i6) {
                                long j3 = jArr[i11];
                                int i13 = ((int) (j3 >> c3)) + i7;
                                int i14 = ((int) j3) + i12;
                                int i15 = i13 + iM0;
                                int i16 = i14 + iL0;
                                i11 += 3;
                                c2 = c3;
                                while (i11 < jArr.length - 2 && i11 < i10) {
                                    int i17 = i11 + 2;
                                    int i18 = iL0;
                                    int i19 = iM0;
                                    long j4 = jArr[i17];
                                    int i20 = i6;
                                    if ((((int) j4) & 33554431) == i9) {
                                        long j5 = jArr[i11];
                                        int i21 = i13 - ((int) (j5 >> c2));
                                        int i22 = i14 - ((int) j5);
                                        jArr[i11] = (((long) i13) << c2) | (((long) i14) & BodyPartID.bodyIdMax);
                                        jArr[i11 + 1] = (((long) i15) << c2) | (((long) i16) & BodyPartID.bodyIdMax);
                                        jArr[i17] = j4 | (((j4 >> 63) & 1) << 60);
                                        if (i21 != 0 || i22 != 0) {
                                            rectList.d(i21, i22, (j4 & RectListKt.f10382b) | (((long) ((i11 + 3) & 33554431)) << 25));
                                            break loop0;
                                        }
                                        break loop0;
                                    }
                                    i11 += 3;
                                    iM0 = i19;
                                    iL0 = i18;
                                    i6 = i20;
                                }
                                i2 = i6;
                                i3 = iL0;
                                i4 = iM0;
                            } else {
                                i2 = i6;
                                i3 = iL0;
                                i4 = iM0;
                                c2 = c3;
                            }
                            i11 += 3;
                            i8 = i12;
                            c3 = c2;
                            iM0 = i4;
                            iL0 = i3;
                            i6 = i2;
                        }
                    } else {
                        int i23 = (int) (jD >> 32);
                        int i24 = (int) (jD & BodyPartID.bodyIdMax);
                        int i25 = i23 + iM0;
                        int i26 = i24 + iL0;
                        int i27 = i5 & 33554431;
                        long[] jArr2 = rectList.f10378a;
                        int i28 = rectList.f10380c;
                        for (int i29 = 0; i29 < jArr2.length - 2 && i29 < i28; i29 += 3) {
                            int i30 = i29 + 2;
                            long j6 = jArr2[i30];
                            if ((((int) j6) & 33554431) == i27) {
                                long j7 = jArr2[i29];
                                jArr2[i29] = (((long) i23) << 32) | (((long) i24) & BodyPartID.bodyIdMax);
                                jArr2[i29 + 1] = (((long) i26) & BodyPartID.bodyIdMax) | (((long) i25) << 32);
                                jArr2[i30] = (((j6 >> 63) & 1) << 60) | j6;
                                int i31 = i23 - ((int) (j7 >> 32));
                                int i32 = i24 - ((int) j7);
                                if (!(i31 != 0) && !(i32 != 0)) {
                                    break;
                                }
                                rectList.d(i31, i32, (RectListKt.f10382b & j6) | (((long) ((i29 + 3) & 33554431)) << 25));
                                break;
                            }
                        }
                    }
                } else {
                    layoutNode.f9692h = true;
                    boolean zD = nodeChain.d(1024);
                    boolean zD2 = nodeChain.d(16);
                    boolean zA2 = this.f10386c.f10399a.a(i5);
                    RectList rectList2 = this.f10385b;
                    if (layoutNodeO != null) {
                        int i33 = layoutNodeO.f9689c;
                        int i34 = (int) (jD >> 32);
                        int i35 = (int) (jD & BodyPartID.bodyIdMax);
                        int i36 = i5 & 33554431;
                        long[] jArr3 = rectList2.f10378a;
                        for (int i37 = rectList2.f10380c - 3; i37 >= 0; i37 -= 3) {
                            if ((((int) jArr3[i37 + 2]) & 33554431) == i33) {
                                long j8 = jArr3[i37];
                                int i38 = ((int) (j8 >> 32)) + i34;
                                int i39 = ((int) j8) + i35;
                                rectList2.a(i36, i38, i39, i38 + iM0, i39 + iL0, i33, zD, zD2, zA2, i37);
                                break;
                            }
                        }
                    } else {
                        int i40 = (int) (jD >> 32);
                        int i41 = (int) (jD & BodyPartID.bodyIdMax);
                        rectList2.a(i5, i40, i41, i40 + iM0, i41 + iL0, (512 & 32) != 0 ? -1 : 0, zD, zD2, zA2, -1);
                    }
                }
            }
            layoutNode.g = false;
            this.f10387e = true;
            h();
        }
    }

    public final void f(LayoutNode layoutNode) {
        if (layoutNode.f9692h) {
            int i2 = layoutNode.f9689c & 33554431;
            RectList rectList = this.f10385b;
            long[] jArr = rectList.f10378a;
            int i3 = rectList.f10380c;
            for (int i4 = 0; i4 < jArr.length - 2 && i4 < i3; i4 += 3) {
                int i5 = i4 + 2;
                if ((((int) jArr[i5]) & 33554431) == i2) {
                    jArr[i4] = -1;
                    jArr[i4 + 1] = -1;
                    jArr[i5] = RectListKt.f10383c;
                    break;
                }
            }
            layoutNode.f9692h = false;
            layoutNode.g = true;
            this.f10387e = true;
            this.g = true;
        }
    }

    public final void h() {
        Object obj = this.f10389h;
        boolean z = obj != null;
        long j2 = this.f10386c.f10401c;
        if (j2 >= 0 || !z) {
            if (this.f10390i == j2 && z) {
                return;
            }
            ExecuteDelayed executeDelayed = this.f10384a;
            if (obj != null) {
                executeDelayed.j(obj);
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            long jMax = Math.max(j2, 16 + jCurrentTimeMillis);
            this.f10390i = jMax;
            this.f10389h = executeDelayed.H(jMax - jCurrentTimeMillis, this.f10391j);
        }
    }

    public RectManager() {
        this(null, null, 3, null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public RectManager(IntObjectMap intObjectMap, ExecuteDelayed executeDelayed, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 1) != 0) {
            intObjectMap = IntObjectMapKt.f3262a;
            intObjectMap.getClass();
        }
        this(intObjectMap, (i2 & 2) != 0 ? ExecuteDelayUsingPostAndRemove.f10377b : executeDelayed);
    }
}
