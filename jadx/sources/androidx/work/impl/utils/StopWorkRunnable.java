package androidx.work.impl.utils;

import androidx.work.Logger;
import androidx.work.impl.Processor;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.WorkerWrapper;
import java.util.Set;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bB!\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\n\u0010\fJ\b\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Landroidx/work/impl/utils/StopWorkRunnable;", "Ljava/lang/Runnable;", "processor", "Landroidx/work/impl/Processor;", "token", "Landroidx/work/impl/StartStopToken;", "stopInForeground", "", "reason", "", "<init>", "(Landroidx/work/impl/Processor;Landroidx/work/impl/StartStopToken;ZI)V", "(Landroidx/work/impl/Processor;Landroidx/work/impl/StartStopToken;Z)V", "run", "", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class StopWorkRunnable implements Runnable {
    private final Processor processor;
    private final int reason;
    private final boolean stopInForeground;
    private final StartStopToken token;

    public StopWorkRunnable(Processor processor, StartStopToken startStopToken, boolean z, int i2) {
        processor.getClass();
        startStopToken.getClass();
        this.processor = processor;
        this.token = startStopToken;
        this.stopInForeground = z;
        this.reason = i2;
    }

    @Override // java.lang.Runnable
    public void run() {
        WorkerWrapper workerWrapperC;
        boolean z = this.stopInForeground;
        Processor processor = this.processor;
        StartStopToken startStopToken = this.token;
        if (z) {
            int i2 = this.reason;
            processor.getClass();
            String str = startStopToken.f20320a.f20499a;
            synchronized (processor.f20317k) {
                workerWrapperC = processor.c(str);
            }
            Processor.e(str, workerWrapperC, i2);
        } else {
            int i3 = this.reason;
            processor.getClass();
            String str2 = startStopToken.f20320a.f20499a;
            synchronized (processor.f20317k) {
                try {
                    if (processor.f20313f.get(str2) != null) {
                        Logger loggerA = Logger.a();
                        int i4 = Processor.l;
                        loggerA.getClass();
                    } else {
                        Set set = (Set) processor.f20314h.get(str2);
                        if (set != null && set.contains(startStopToken)) {
                            Processor.e(str2, processor.c(str2), i3);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        Logger loggerA2 = Logger.a();
        Logger.b("StopWorkRunnable");
        String str3 = this.token.f20320a.f20499a;
        loggerA2.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StopWorkRunnable(Processor processor, StartStopToken startStopToken, boolean z) {
        this(processor, startStopToken, z, -512);
        processor.getClass();
        startStopToken.getClass();
    }
}
