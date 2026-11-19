package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
public final /* synthetic */ class LazyStaggeredGridState$scrollPosition$1 extends FunctionReferenceImpl implements Function2<Integer, Integer, int[]> {
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int iIntValue = ((Number) obj).intValue();
        int iIntValue2 = ((Number) obj2).intValue();
        LazyStaggeredGridState lazyStaggeredGridState = (LazyStaggeredGridState) this.receiver;
        LazyStaggeredGridLaneInfo lazyStaggeredGridLaneInfo = lazyStaggeredGridState.f5668e;
        int[] iArr = new int[iIntValue2];
        int iMin = 0;
        if (((LazyStaggeredGridMeasureResult) ((SnapshotMutableStateImpl) lazyStaggeredGridState.d).getF10755b()).f5639j.a(iIntValue)) {
            ArraysKt.s(iIntValue, 0, 6, iArr);
            return iArr;
        }
        lazyStaggeredGridLaneInfo.c(iIntValue + iIntValue2);
        int iF = lazyStaggeredGridLaneInfo.f(iIntValue);
        if (iF != -2 && iF != -1) {
            if (iF < 0) {
                InlineClassHelperKt.a("Expected positive lane number, got " + iF + " instead.");
            }
            iMin = Math.min(iF, iIntValue2);
        }
        int iD = iIntValue;
        for (int i2 = iMin - 1; -1 < i2; i2--) {
            iD = lazyStaggeredGridLaneInfo.d(iD, i2);
            iArr[i2] = iD;
            if (iD == -1) {
                ArraysKt.s(-1, i2, 2, iArr);
                break;
            }
        }
        iArr[iMin] = iIntValue;
        while (true) {
            iMin++;
            if (iMin >= iIntValue2) {
                return iArr;
            }
            iIntValue++;
            int length = lazyStaggeredGridLaneInfo.f5608a + lazyStaggeredGridLaneInfo.f5609b.length;
            while (true) {
                if (iIntValue >= length) {
                    iIntValue = lazyStaggeredGridLaneInfo.f5608a + lazyStaggeredGridLaneInfo.f5609b.length;
                    break;
                }
                if (lazyStaggeredGridLaneInfo.a(iIntValue, iMin)) {
                    break;
                }
                iIntValue++;
            }
            iArr[iMin] = iIntValue;
        }
    }
}
