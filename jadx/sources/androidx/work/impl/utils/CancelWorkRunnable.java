package androidx.work.impl.utils;

import androidx.work.Logger;
import androidx.work.WorkInfo;
import androidx.work.impl.Processor;
import androidx.work.impl.Scheduler;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.WorkerWrapper;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.WorkSpecDao;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"work-runtime_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class CancelWorkRunnable {
    public static final void a(WorkManagerImpl workManagerImpl, String str) {
        WorkerWrapper workerWrapperC;
        WorkDatabase workDatabase = workManagerImpl.d;
        workDatabase.getClass();
        WorkSpecDao workSpecDaoD = workDatabase.D();
        DependencyDao dependencyDaoY = workDatabase.y();
        ArrayList arrayListU = CollectionsKt.U(str);
        while (!arrayListU.isEmpty()) {
            String str2 = (String) CollectionsKt.c0(arrayListU);
            WorkInfo.State stateJ = workSpecDaoD.j(str2);
            if (stateJ != WorkInfo.State.SUCCEEDED && stateJ != WorkInfo.State.FAILED) {
                workSpecDaoD.l(str2);
            }
            arrayListU.addAll(dependencyDaoY.b(str2));
        }
        Processor processor = workManagerImpl.g;
        processor.getClass();
        synchronized (processor.f20317k) {
            Logger loggerA = Logger.a();
            int i2 = Processor.l;
            loggerA.getClass();
            processor.f20315i.add(str);
            workerWrapperC = processor.c(str);
        }
        Processor.e(str, workerWrapperC, 1);
        Iterator it = workManagerImpl.f20346f.iterator();
        while (it.hasNext()) {
            ((Scheduler) it.next()).a(str);
        }
    }
}
