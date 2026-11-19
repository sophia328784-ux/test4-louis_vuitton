package androidx.work.impl;

import androidx.work.Clock;
import androidx.work.Configuration;
import androidx.work.Logger;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class Schedulers {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f20319a = 0;

    static {
        Logger.b("Schedulers");
    }

    public static void a(WorkSpecDao workSpecDao, Clock clock, List list) {
        if (list.size() > 0) {
            long jA = clock.a();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                workSpecDao.c(jA, ((WorkSpec) it.next()).f20510a);
            }
        }
    }

    public static void b(Configuration configuration, WorkDatabase workDatabase, List list) {
        if (list == null || list.size() == 0) {
            return;
        }
        WorkSpecDao workSpecDaoD = workDatabase.D();
        workDatabase.c();
        try {
            List listW = workSpecDaoD.w();
            a(workSpecDaoD, configuration.d, listW);
            List listR = workSpecDaoD.r(configuration.l);
            a(workSpecDaoD, configuration.d, listR);
            listR.addAll(listW);
            List listO = workSpecDaoD.o();
            workDatabase.w();
            workDatabase.h();
            if (listR.size() > 0) {
                WorkSpec[] workSpecArr = (WorkSpec[]) listR.toArray(new WorkSpec[listR.size()]);
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    Scheduler scheduler = (Scheduler) it.next();
                    if (scheduler.d()) {
                        scheduler.b(workSpecArr);
                    }
                }
            }
            if (listO.size() > 0) {
                WorkSpec[] workSpecArr2 = (WorkSpec[]) listO.toArray(new WorkSpec[listO.size()]);
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    Scheduler scheduler2 = (Scheduler) it2.next();
                    if (!scheduler2.d()) {
                        scheduler2.b(workSpecArr2);
                    }
                }
            }
        } catch (Throwable th) {
            workDatabase.h();
            throw th;
        }
    }
}
