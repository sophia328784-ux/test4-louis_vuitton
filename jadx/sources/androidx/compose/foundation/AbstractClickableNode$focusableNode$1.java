package androidx.compose.foundation;

import androidx.collection.MutableLongObjectMap;
import androidx.compose.foundation.interaction.PressInteraction;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
final /* synthetic */ class AbstractClickableNode$focusableNode$1 extends FunctionReferenceImpl implements Function1<Boolean, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        p(((Boolean) obj).booleanValue());
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x005c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:21:0x005e A[LOOP:0: B:11:0x001e->B:21:0x005e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:28:0x0061 A[EDGE_INSN: B:28:0x0061->B:22:0x0061 BREAK  A[LOOP:0: B:11:0x001e->B:21:0x005e], SYNTHETIC] */
    public final void p(boolean z) {
        AbstractClickableNode abstractClickableNode = (AbstractClickableNode) this.receiver;
        MutableLongObjectMap mutableLongObjectMap = abstractClickableNode.E;
        if (z) {
            abstractClickableNode.r2();
            return;
        }
        if (abstractClickableNode.r != null) {
            Object[] objArr = mutableLongObjectMap.f3279c;
            long[] jArr = mutableLongObjectMap.f3277a;
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
                            if ((255 & j2) < 128) {
                                BuildersKt.c(abstractClickableNode.V1(), null, null, new AbstractClickableNode$onFocusChange$1$1(abstractClickableNode, (PressInteraction.Press) objArr[(i2 << 3) + i4], null), 3);
                            }
                            j2 >>= 8;
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
            PressInteraction.Press press = abstractClickableNode.G;
            if (press != null) {
                BuildersKt.c(abstractClickableNode.V1(), null, null, new AbstractClickableNode$onFocusChange$2$1(abstractClickableNode, press, null), 3);
            }
        }
        mutableLongObjectMap.c();
        abstractClickableNode.G = null;
        abstractClickableNode.s2();
    }
}
