package androidx.compose.ui.node;

import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "result", "Landroidx/compose/ui/node/PlaceableResult;", "invoke"}, k = 3, mv = {2, 1, 0}, xi = 48)
public final class LookaheadCapablePlaceable$Companion$onCommitAffectingRuler$1 extends Lambda implements Function1<PlaceableResult, Unit> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final LookaheadCapablePlaceable$Companion$onCommitAffectingRuler$1 f9719c = new LookaheadCapablePlaceable$Companion$onCommitAffectingRuler$1(1);

    /* JADX WARN: Code duplicated, block: B:22:0x005c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:23:0x005e A[LOOP:0: B:13:0x0027->B:23:0x005e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:29:0x0061 A[EDGE_INSN: B:29:0x0061->B:24:0x0061 BREAK  A[LOOP:0: B:13:0x0027->B:23:0x005e], SYNTHETIC] */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        PlaceableResult placeableResult = (PlaceableResult) obj;
        if (placeableResult.T0()) {
            LookaheadCapablePlaceable lookaheadCapablePlaceable = placeableResult.f9827c;
            if (!lookaheadCapablePlaceable.l) {
                Function1 d = placeableResult.f9826b.getD();
                MutableScatterMap mutableScatterMap = lookaheadCapablePlaceable.o;
                if (d != null) {
                    IntOffset.f11012b.getClass();
                    long j2 = IntOffset.f11013c;
                    IntSize.f11020b.getClass();
                    lookaheadCapablePlaceable.z0(placeableResult, j2, 0L);
                    lookaheadCapablePlaceable.f9715h = d;
                } else if (mutableScatterMap != null) {
                    Object[] objArr = mutableScatterMap.f3363c;
                    long[] jArr = mutableScatterMap.f3361a;
                    int length = jArr.length - 2;
                    if (length >= 0) {
                        int i2 = 0;
                        while (true) {
                            long j3 = jArr[i2];
                            if ((((~j3) << 7) & j3 & (-9187201950435737472L)) == -9187201950435737472L) {
                                if (i2 != length) {
                                    break;
                                    break;
                                }
                                i2++;
                            } else {
                                int i3 = 8 - ((~(i2 - length)) >>> 31);
                                for (int i4 = 0; i4 < i3; i4++) {
                                    if ((255 & j3) < 128) {
                                        lookaheadCapablePlaceable.W0((MutableScatterSet) objArr[(i2 << 3) + i4]);
                                    }
                                    j3 >>= 8;
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
                    mutableScatterMap.h();
                }
            }
        }
        return Unit.f71739a;
    }
}
