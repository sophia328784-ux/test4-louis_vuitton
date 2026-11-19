package kotlinx.coroutines;

import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.internal.ScopeCoroutine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u0001*\n\b\u0001\u0010\u0002 \u0000*\u0002H\u00012\b\u0012\u0004\u0012\u0002H\u00020\u00032\u00060\u0004j\u0002`\u0005B\u001d\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\t¢\u0006\u0004\b\n\u0010\u000bJ\b\u0010\f\u001a\u00020\rH\u0016J\r\u0010\u000e\u001a\u00020\u000fH\u0010¢\u0006\u0002\b\u0010R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lkotlinx/coroutines/TimeoutCoroutine;", "U", "T", "Lkotlinx/coroutines/internal/ScopeCoroutine;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "time", "", "uCont", "Lkotlin/coroutines/Continuation;", "<init>", "(JLkotlin/coroutines/Continuation;)V", "run", "", "nameString", "", "nameString$kotlinx_coroutines_core", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
final class TimeoutCoroutine<U, T extends U> extends ScopeCoroutine<T> implements Runnable {
    public final long time;

    public TimeoutCoroutine(long j2, Continuation<? super U> continuation) {
        super(continuation.getContext(), continuation);
        this.time = j2;
    }

    @Override // kotlinx.coroutines.JobSupport
    public String nameString$kotlinx_coroutines_core() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.nameString$kotlinx_coroutines_core());
        sb.append("(timeMillis=");
        return fc.k(sb, this.time, ')');
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0033  */
    @Override // java.lang.Runnable
    public void run() {
        String strI;
        Delay delayD = DelayKt.d(getContext());
        CoroutineName coroutineName = (CoroutineName) getContext().get(CoroutineName.f74650c);
        String str = coroutineName != null ? coroutineName.f74651b : null;
        long j2 = this.time;
        DelayWithTimeoutDiagnostics delayWithTimeoutDiagnostics = delayD instanceof DelayWithTimeoutDiagnostics ? (DelayWithTimeoutDiagnostics) delayD : null;
        if (delayWithTimeoutDiagnostics != null) {
            Duration.Companion companion = Duration.INSTANCE;
            DurationKt.h(j2, DurationUnit.MILLISECONDS);
            strI = delayWithTimeoutDiagnostics.j();
            if (strI == null) {
                strI = o60.i(j2, "Timed out waiting for ", " ms");
            }
        } else {
            strI = o60.i(j2, "Timed out waiting for ", " ms");
        }
        if (str != null) {
            StringBuilder sbR = pq0.r("Coroutine \"", str, "\" ");
            if (strI.length() > 0) {
                strI = Character.toLowerCase(strI.charAt(0)) + strI.substring(1);
            }
            sbR.append(strI);
            strI = sbR.toString();
        }
        cancelCoroutine(new TimeoutCancellationException(strI, this));
    }
}
