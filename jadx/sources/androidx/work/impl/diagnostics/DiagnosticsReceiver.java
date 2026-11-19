package androidx.work.impl.diagnostics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import androidx.work.impl.WorkContinuationImpl;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.workers.DiagnosticsWorker;
import java.util.List;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes.dex */
public class DiagnosticsReceiver extends BroadcastReceiver {
    static {
        Logger.b("DiagnosticsRcvr");
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        Logger.a().getClass();
        try {
            WorkManager.f20280a.getClass();
            context.getClass();
            WorkManagerImpl workManagerImplD = WorkManagerImpl.d(context);
            workManagerImplD.getClass();
            OneTimeWorkRequest.f20264e.getClass();
            List listO = CollectionsKt.O((OneTimeWorkRequest) new OneTimeWorkRequest.Builder((Class<? extends ListenableWorker>) DiagnosticsWorker.class).a());
            if (listO.isEmpty()) {
                throw new IllegalArgumentException("enqueue needs at least one WorkRequest.");
            }
            new WorkContinuationImpl(workManagerImplD, listO).a();
        } catch (IllegalStateException unused) {
            Logger.a().getClass();
        }
    }
}
