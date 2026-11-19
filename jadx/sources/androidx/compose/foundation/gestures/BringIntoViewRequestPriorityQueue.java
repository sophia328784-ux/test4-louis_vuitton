package androidx.compose.foundation.gestures;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.runtime.collection.MutableVector;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CancellableContinuation;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;", "", "<init>", "()V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class BringIntoViewRequestPriorityQueue {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableVector f4423a = new MutableVector(new ContentInViewNode.Request[16], 0);

    public final void a(CancellationException cancellationException) {
        MutableVector mutableVector = this.f4423a;
        int i2 = mutableVector.d;
        CancellableContinuation[] cancellableContinuationArr = new CancellableContinuation[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            cancellableContinuationArr[i3] = ((ContentInViewNode.Request) mutableVector.f8165b[i3]).f4431b;
        }
        for (int i4 = 0; i4 < i2; i4++) {
            cancellableContinuationArr[i4].cancel(cancellationException);
        }
        if (mutableVector.d == 0) {
            return;
        }
        InlineClassHelperKt.c("uncancelled requests present");
    }

    public final void b() {
        MutableVector mutableVector = this.f4423a;
        IntRange intRangeJ = RangesKt.j(0, mutableVector.d);
        int i2 = intRangeJ.f71951b;
        int i3 = intRangeJ.f71952c;
        if (i2 <= i3) {
            while (true) {
                CancellableContinuation cancellableContinuation = ((ContentInViewNode.Request) mutableVector.f8165b[i2]).f4431b;
                Unit unit = Unit.f71739a;
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuation.resumeWith(unit);
                if (i2 == i3) {
                    break;
                } else {
                    i2++;
                }
            }
        }
        mutableVector.j();
    }
}
