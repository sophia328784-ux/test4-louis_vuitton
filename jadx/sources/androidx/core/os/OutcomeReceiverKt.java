package androidx.core.os;

import android.os.OutcomeReceiver;
import kotlin.Metadata;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"core-ktx"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class OutcomeReceiverKt {
    public static final OutcomeReceiver a(CancellableContinuationImpl cancellableContinuationImpl) {
        return new ContinuationOutcomeReceiver(cancellableContinuationImpl);
    }
}
