package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.Logger;
import androidx.work.impl.WorkManagerImpl;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class RescheduleReceiver extends BroadcastReceiver {
    static {
        Logger.b("RescheduleReceiver");
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Logger loggerA = Logger.a();
        Objects.toString(intent);
        loggerA.getClass();
        try {
            WorkManagerImpl workManagerImplD = WorkManagerImpl.d(context);
            BroadcastReceiver.PendingResult pendingResultGoAsync = goAsync();
            workManagerImplD.getClass();
            synchronized (WorkManagerImpl.n) {
                try {
                    BroadcastReceiver.PendingResult pendingResult = workManagerImplD.f20349j;
                    if (pendingResult != null) {
                        pendingResult.finish();
                    }
                    workManagerImplD.f20349j = pendingResultGoAsync;
                    if (workManagerImplD.f20348i) {
                        pendingResultGoAsync.finish();
                        workManagerImplD.f20349j = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (IllegalStateException unused) {
            Logger.a().getClass();
        }
    }
}
