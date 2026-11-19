package androidx.work.impl.workers;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.SystemIdInfoDao;
import androidx.work.impl.model.WorkNameDao;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkTagDao;
import java.util.List;
import kotlin.Metadata;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/work/impl/workers/DiagnosticsWorker;", "Landroidx/work/Worker;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Landroidx/work/WorkerParameters;", "parameters", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DiagnosticsWorker extends Worker {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiagnosticsWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        context.getClass();
        workerParameters.getClass();
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.Result.Success c() {
        WorkManagerImpl workManagerImplD = WorkManagerImpl.d(this.f20256a);
        workManagerImplD.getClass();
        WorkDatabase workDatabase = workManagerImplD.d;
        workDatabase.getClass();
        WorkSpecDao workSpecDaoD = workDatabase.D();
        WorkNameDao workNameDaoB = workDatabase.B();
        WorkTagDao workTagDaoE = workDatabase.E();
        SystemIdInfoDao systemIdInfoDaoA = workDatabase.A();
        List listD = workSpecDaoD.d(workManagerImplD.f20344c.d.a() - 86400000);
        List listU = workSpecDaoD.u();
        List listO = workSpecDaoD.o();
        if (!listD.isEmpty()) {
            Logger loggerA = Logger.a();
            int i2 = DiagnosticsWorkerKt.f20570a;
            loggerA.getClass();
            Logger loggerA2 = Logger.a();
            DiagnosticsWorkerKt.a(workNameDaoB, workTagDaoE, systemIdInfoDaoA, listD);
            loggerA2.getClass();
        }
        if (!listU.isEmpty()) {
            Logger loggerA3 = Logger.a();
            int i3 = DiagnosticsWorkerKt.f20570a;
            loggerA3.getClass();
            Logger loggerA4 = Logger.a();
            DiagnosticsWorkerKt.a(workNameDaoB, workTagDaoE, systemIdInfoDaoA, listU);
            loggerA4.getClass();
        }
        if (!listO.isEmpty()) {
            Logger loggerA5 = Logger.a();
            int i4 = DiagnosticsWorkerKt.f20570a;
            loggerA5.getClass();
            Logger loggerA6 = Logger.a();
            DiagnosticsWorkerKt.a(workNameDaoB, workTagDaoE, systemIdInfoDaoA, listO);
            loggerA6.getClass();
        }
        return new ListenableWorker.Result.Success();
    }
}
