package androidx.compose.runtime;

import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.GapAnchorKt;
import androidx.compose.runtime.composer.gapbuffer.SlotTable;
import androidx.compose.runtime.composer.gapbuffer.SlotTableKt;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.tooling.ComposeStackTraceMode;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.sightcall.universal.agent.Provider;
import defpackage.fc;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u001a\u0017\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u0000H\u0000¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"", "message", "", NBSSpanMetricUnit.Bit, "(Ljava/lang/String;)Ljava/lang/Void;", "", "a", "(Ljava/lang/String;)V", "runtime"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ComposerKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final OpaqueKey f7940a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final OpaqueKey f7941b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final OpaqueKey f7942c;
    public static final OpaqueKey d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final OpaqueKey f7943e;

    static {
        ComposeStackTraceMode.f8557a.getClass();
        f7940a = new OpaqueKey("provider");
        f7941b = new OpaqueKey("provider");
        f7942c = new OpaqueKey("compositionLocalMap");
        new OpaqueKey("providerValues");
        d = new OpaqueKey(Provider.TYPE);
        f7943e = new OpaqueKey("reference");
    }

    public static final void a(String str) {
        throw new ComposeRuntimeError(fc.h("Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API (", str, "). Please report to Google or use https://goo.gle/compose-feedback"));
    }

    public static final Void b(String str) {
        throw new ComposeRuntimeError(fc.h("Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API (", str, "). Please report to Google or use https://goo.gle/compose-feedback"));
    }

    /* JADX WARN: Code duplicated, block: B:82:0x01cd  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v4, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v7, types: [java.util.ArrayList] */
    public static final MovableContentState c(final ControlledComposition controlledComposition, MovableContentStateReference movableContentStateReference, SlotWriter slotWriter, Applier applier) {
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        SlotTable slotTable;
        ?? arrayList;
        Anchor anchor;
        long[] jArr;
        Anchor anchor2;
        int i2;
        int i3;
        int i4;
        boolean z;
        boolean zB;
        long[] jArr2;
        int i5;
        long j2;
        long[] jArr3;
        int i6;
        int i7;
        final MovableContentStateReference movableContentStateReference2 = movableContentStateReference;
        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
        SlotTable slotTable2 = new SlotTable();
        if (slotWriter.f8221e != null) {
            slotTable2.i();
        }
        if (slotWriter.f8222f != null) {
            slotTable2.l = new MutableIntObjectMap(0, 1, null);
        }
        int i8 = slotWriter.t;
        if (applier != null && slotWriter.F(i8) > 0) {
            int iG = slotWriter.v;
            while (iG > 0 && !slotWriter.y(iG)) {
                iG = slotWriter.G(iG, slotWriter.f8219b);
            }
            if (iG >= 0 && slotWriter.y(iG)) {
                Object objE = slotWriter.E(iG);
                int i9 = iG + 1;
                int iU = slotWriter.u(iG) + iG;
                int iF = 0;
                while (i9 < iU) {
                    int iU2 = slotWriter.u(i9) + i9;
                    if (iU2 > i8) {
                        break;
                    }
                    iF += slotWriter.y(i9) ? 1 : slotWriter.F(i9);
                    i9 = iU2;
                }
                int iF2 = slotWriter.y(i8) ? 1 : slotWriter.F(i8);
                applier.h(objE);
                applier.d(iF, iF2);
                applier.j();
            }
        }
        Anchor anchor3 = movableContentStateReference2.f8027e;
        if (anchor3.a()) {
            controlledComposition.getClass();
            CompositionImpl compositionImpl = (CompositionImpl) controlledComposition;
            if (compositionImpl.o.f3364e > 0) {
                arrayList = new ArrayList();
                MutableScatterMap mutableScatterMap = compositionImpl.o;
                long[] jArr4 = mutableScatterMap.f3361a;
                int length = jArr4.length - 2;
                if (length >= 0) {
                    int i10 = 0;
                    while (true) {
                        long j3 = jArr4[i10];
                        if ((((~j3) << 7) & j3 & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i11 = 8;
                            int i12 = 8 - ((~(i10 - length)) >>> 31);
                            int i13 = 0;
                            while (i13 < i12) {
                                if ((j3 & 255) < 128) {
                                    int i14 = i11;
                                    int i15 = (i10 << 3) + i13;
                                    anchor2 = anchor3;
                                    Object obj = mutableScatterMap.f3362b[i15];
                                    Object obj2 = mutableScatterMap.f3363c[i15];
                                    obj.getClass();
                                    if (obj2 instanceof MutableScatterSet) {
                                        MutableScatterSet mutableScatterSet = (MutableScatterSet) obj2;
                                        Object[] objArr = mutableScatterSet.f3368b;
                                        long[] jArr5 = mutableScatterSet.f3367a;
                                        int length2 = jArr5.length - 2;
                                        if (length2 >= 0) {
                                            int i16 = 0;
                                            while (true) {
                                                long j4 = jArr5[i16];
                                                if ((((~j4) << 7) & j4 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                    int i17 = 8 - ((~(i16 - length2)) >>> 31);
                                                    int i18 = 0;
                                                    while (i18 < i17) {
                                                        if ((j4 & 255) < 128) {
                                                            i5 = i18;
                                                            int i19 = (i16 << 3) + i5;
                                                            j2 = j4;
                                                            Object obj3 = objArr[i19];
                                                            RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) obj;
                                                            jArr3 = jArr5;
                                                            GapAnchor gapAnchor = recomposeScopeImpl.f8078c;
                                                            if (gapAnchor != null) {
                                                                GapAnchor gapAnchorA = GapAnchorKt.a(anchor2);
                                                                i7 = i13;
                                                                GapAnchor gapAnchorA2 = GapAnchorKt.a(gapAnchor);
                                                                int iC = slotWriter.c(gapAnchorA);
                                                                i6 = length;
                                                                int iA = SlotTableKt.a(iC, slotWriter.f8219b) + iC;
                                                                int i20 = gapAnchorA2.f8187a;
                                                                if (iC <= i20 && i20 < iA) {
                                                                    arrayList.add(new Pair(recomposeScopeImpl, obj3));
                                                                    mutableScatterSet.n(i19);
                                                                }
                                                            }
                                                            j4 = j2 >> i14;
                                                            i18 = i5 + 1;
                                                            jArr5 = jArr3;
                                                            length = i6;
                                                            i13 = i7;
                                                        } else {
                                                            i5 = i18;
                                                            j2 = j4;
                                                            jArr3 = jArr5;
                                                        }
                                                        i6 = length;
                                                        i7 = i13;
                                                        j4 = j2 >> i14;
                                                        i18 = i5 + 1;
                                                        jArr5 = jArr3;
                                                        length = i6;
                                                        i13 = i7;
                                                    }
                                                    jArr2 = jArr5;
                                                    i2 = length;
                                                    i3 = i13;
                                                    if (i17 != i14) {
                                                        break;
                                                    }
                                                } else {
                                                    jArr2 = jArr5;
                                                    i2 = length;
                                                    i3 = i13;
                                                }
                                                if (i16 == length2) {
                                                    break;
                                                }
                                                i16++;
                                                jArr5 = jArr2;
                                                length = i2;
                                                i13 = i3;
                                                i14 = 8;
                                            }
                                        } else {
                                            i2 = length;
                                            i3 = i13;
                                        }
                                        zB = mutableScatterSet.b();
                                    } else {
                                        i2 = length;
                                        i3 = i13;
                                        obj2.getClass();
                                        RecomposeScopeImpl recomposeScopeImpl2 = (RecomposeScopeImpl) obj;
                                        GapAnchor gapAnchor2 = recomposeScopeImpl2.f8078c;
                                        if (gapAnchor2 != null) {
                                            GapAnchor gapAnchorA3 = GapAnchorKt.a(anchor2);
                                            GapAnchor gapAnchorA4 = GapAnchorKt.a(gapAnchor2);
                                            int iC2 = slotWriter.c(gapAnchorA3);
                                            int iA2 = SlotTableKt.a(iC2, slotWriter.f8219b) + iC2;
                                            int i21 = gapAnchorA4.f8187a;
                                            if (iC2 > i21 || i21 >= iA2) {
                                                z = false;
                                            } else {
                                                arrayList.add(new Pair(recomposeScopeImpl2, obj2));
                                                z = true;
                                            }
                                        } else {
                                            z = false;
                                        }
                                        zB = z;
                                    }
                                    if (zB) {
                                        mutableScatterMap.n(i15);
                                    }
                                    i4 = 8;
                                } else {
                                    anchor2 = anchor3;
                                    composer$Companion$Empty$2 = composer$Companion$Empty$2;
                                    slotTable2 = slotTable2;
                                    i2 = length;
                                    j3 = j3;
                                    i3 = i13;
                                    i4 = i11;
                                }
                                j3 >>= i4;
                                i13 = i3 + 1;
                                i11 = i4;
                                anchor3 = anchor2;
                                jArr4 = jArr4;
                                composer$Companion$Empty$2 = composer$Companion$Empty$2;
                                slotTable2 = slotTable2;
                                length = i2;
                            }
                            anchor = anchor3;
                            composer$Companion$Empty$1 = composer$Companion$Empty$2;
                            slotTable = slotTable2;
                            jArr = jArr4;
                            int i22 = length;
                            if (i12 != i11) {
                                break;
                            }
                            length = i22;
                        } else {
                            anchor = anchor3;
                            composer$Companion$Empty$1 = composer$Companion$Empty$2;
                            slotTable = slotTable2;
                            jArr = jArr4;
                        }
                        if (i10 == length) {
                            break;
                        }
                        i10++;
                        anchor3 = anchor;
                        jArr4 = jArr;
                        composer$Companion$Empty$2 = composer$Companion$Empty$1;
                        slotTable2 = slotTable;
                    }
                } else {
                    composer$Companion$Empty$1 = composer$Companion$Empty$2;
                    slotTable = slotTable2;
                }
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                slotTable = slotTable2;
                arrayList = EmptyList.f71768b;
            }
            movableContentStateReference2 = movableContentStateReference;
            movableContentStateReference2.f8028f = CollectionsKt.Y(movableContentStateReference2.f8028f, (Iterable) arrayList);
        } else {
            composer$Companion$Empty$1 = composer$Companion$Empty$2;
            slotTable = slotTable2;
        }
        SlotWriter slotWriterO = slotTable.o();
        try {
            slotWriterO.d();
            Composer$Companion$Empty$1 composer$Companion$Empty$3 = composer$Companion$Empty$1;
            slotWriterO.S(movableContentStateReference2.f8024a, composer$Companion$Empty$3, false, 126665345);
            SlotWriter.z(slotWriterO);
            slotWriterO.U(movableContentStateReference2.f8025b);
            List listD = slotWriter.D(GapAnchorKt.a(movableContentStateReference2.f8027e), slotWriterO);
            slotWriterO.N();
            slotWriterO.j();
            slotWriterO.k();
            slotWriterO.e(true);
            SlotTable slotTable3 = slotTable;
            MovableContentState movableContentState = new MovableContentState(slotTable3);
            RecomposeScopeImpl.f8075h.getClass();
            List list = listD;
            if (!list.isEmpty()) {
                int size = list.size();
                for (int i23 = 0; i23 < size; i23++) {
                    GapAnchor gapAnchor3 = (GapAnchor) listD.get(i23);
                    if (slotTable3.p(gapAnchor3)) {
                        int iH = slotTable3.h(gapAnchor3);
                        int iC3 = SlotTableKt.c(iH, slotTable3.f8208b);
                        int i24 = iH + 1;
                        if (((i24 < slotTable3.f8209c ? slotTable3.f8208b[(i24 * 5) + 4] : slotTable3.d.length) - iC3 > 0 ? slotTable3.d[iC3] : composer$Companion$Empty$3) instanceof RecomposeScopeImpl) {
                            RecomposeScopeOwner recomposeScopeOwner = new RecomposeScopeOwner() { // from class: androidx.compose.runtime.ComposerKt$extractMovableContentAtCurrent$movableContentRecomposeScopeOwner$1
                                @Override // androidx.compose.runtime.RecomposeScopeOwner
                                public final void a(Object obj4) {
                                }

                                @Override // androidx.compose.runtime.RecomposeScopeOwner
                                public final void l(RecomposeScopeImpl recomposeScopeImpl3) {
                                }

                                @Override // androidx.compose.runtime.RecomposeScopeOwner
                                public final InvalidationResult p(RecomposeScopeImpl recomposeScopeImpl3, Object obj4) {
                                    InvalidationResult invalidationResultP;
                                    ControlledComposition controlledComposition2 = controlledComposition;
                                    RecomposeScopeOwner recomposeScopeOwner2 = controlledComposition2 instanceof RecomposeScopeOwner ? (RecomposeScopeOwner) controlledComposition2 : null;
                                    if (recomposeScopeOwner2 == null || (invalidationResultP = recomposeScopeOwner2.p(recomposeScopeImpl3, obj4)) == null) {
                                        invalidationResultP = InvalidationResult.IGNORED;
                                    }
                                    if (invalidationResultP != InvalidationResult.IGNORED) {
                                        return invalidationResultP;
                                    }
                                    MovableContentStateReference movableContentStateReference3 = movableContentStateReference2;
                                    movableContentStateReference3.f8028f = CollectionsKt.X(new Pair(recomposeScopeImpl3, obj4), movableContentStateReference3.f8028f);
                                    return InvalidationResult.SCHEDULED;
                                }
                            };
                            SlotWriter slotWriterO2 = slotTable3.o();
                            try {
                                RecomposeScopeImpl.f8075h.getClass();
                                RecomposeScopeImpl.Companion.a(slotWriterO2, listD, recomposeScopeOwner);
                                boolean z2 = true;
                                return movableContentState;
                            } finally {
                                slotWriterO2.e(false);
                            }
                        }
                    }
                }
            }
            return movableContentState;
        } catch (Throwable th) {
            slotWriterO.e(false);
            throw th;
        }
    }
}
