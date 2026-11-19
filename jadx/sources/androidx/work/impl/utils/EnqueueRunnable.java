package androidx.work.impl.utils;

import android.text.TextUtils;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.ExistingWorkPolicy;
import androidx.work.Logger;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;
import androidx.work.WorkRequest;
import androidx.work.impl.WorkContinuationImpl;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.Dependency;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.WorkName;
import androidx.work.impl.model.WorkNameDao;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkTagDao;
import defpackage.b5;
import defpackage.xn0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public abstract class EnqueueRunnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f20541a = 0;

    static {
        Logger.b("EnqueueRunnable");
    }

    /* JADX WARN: Code duplicated, block: B:94:0x0193  */
    public static boolean a(WorkContinuationImpl workContinuationImpl) {
        boolean zA;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        List<WorkContinuationImpl> list = workContinuationImpl.g;
        if (list != null) {
            zA = false;
            for (WorkContinuationImpl workContinuationImpl2 : list) {
                if (workContinuationImpl2.f20336h) {
                    Logger loggerA = Logger.a();
                    TextUtils.join(", ", workContinuationImpl2.f20334e);
                    loggerA.getClass();
                } else {
                    zA |= a(workContinuationImpl2);
                }
            }
        } else {
            zA = false;
        }
        HashSet hashSetC = WorkContinuationImpl.c(workContinuationImpl);
        WorkManagerImpl workManagerImpl = workContinuationImpl.f20331a;
        List list2 = workContinuationImpl.d;
        String[] strArr = (String[]) hashSetC.toArray(new String[0]);
        String str = workContinuationImpl.f20332b;
        ExistingWorkPolicy existingWorkPolicy = workContinuationImpl.f20333c;
        long jA = workManagerImpl.f20344c.d.a();
        WorkDatabase workDatabase = workManagerImpl.d;
        boolean z8 = strArr != null && strArr.length > 0;
        if (z8) {
            int length = strArr.length;
            int i2 = 0;
            z2 = false;
            z3 = false;
            z = true;
            while (true) {
                if (i2 < length) {
                    WorkSpec workSpecK = workDatabase.D().k(strArr[i2]);
                    if (workSpecK == null) {
                        Logger.a().getClass();
                    } else {
                        WorkInfo.State state = workSpecK.f20511b;
                        z &= state == WorkInfo.State.SUCCEEDED;
                        if (state == WorkInfo.State.FAILED) {
                            z3 = true;
                        } else if (state == WorkInfo.State.CANCELLED) {
                            z2 = true;
                        }
                        i2++;
                    }
                }
                z5 = zA;
                z7 = true;
                z6 = false;
                workContinuationImpl.f20336h = z7;
                return z5 | z6;
            }
        }
        z = true;
        z2 = false;
        z3 = false;
        boolean zIsEmpty = TextUtils.isEmpty(str);
        if (zIsEmpty || z8) {
            z4 = zIsEmpty;
            z5 = zA;
            z6 = false;
        } else {
            List<WorkSpec.IdAndState> listP = workDatabase.D().p(str);
            if (listP.isEmpty()) {
                z4 = zIsEmpty;
                z5 = zA;
            } else if (existingWorkPolicy == ExistingWorkPolicy.APPEND || existingWorkPolicy == ExistingWorkPolicy.APPEND_OR_REPLACE) {
                DependencyDao dependencyDaoY = workDatabase.y();
                ArrayList arrayList = new ArrayList();
                for (WorkSpec.IdAndState idAndState : listP) {
                    boolean z9 = zIsEmpty;
                    if (!dependencyDaoY.d(idAndState.f20519a)) {
                        WorkInfo.State state2 = idAndState.f20520b;
                        boolean z10 = (state2 == WorkInfo.State.SUCCEEDED) & z;
                        if (state2 == WorkInfo.State.FAILED) {
                            z3 = true;
                        } else if (state2 == WorkInfo.State.CANCELLED) {
                            z2 = true;
                        }
                        arrayList.add(idAndState.f20519a);
                        z = z10;
                    }
                    zIsEmpty = z9;
                    zA = zA;
                }
                z4 = zIsEmpty;
                z5 = zA;
                List list3 = arrayList;
                list3 = arrayList;
                if (existingWorkPolicy == ExistingWorkPolicy.APPEND_OR_REPLACE && (z2 || z3)) {
                    WorkSpecDao workSpecDaoD = workDatabase.D();
                    Iterator it = workSpecDaoD.p(str).iterator();
                    while (it.hasNext()) {
                        workSpecDaoD.a(((WorkSpec.IdAndState) it.next()).f20519a);
                    }
                    z2 = false;
                    z3 = false;
                    list3 = Collections.EMPTY_LIST;
                }
                strArr = (String[]) list3.toArray(strArr);
                z8 = strArr.length > 0;
            } else {
                if (existingWorkPolicy == ExistingWorkPolicy.KEEP) {
                    Iterator it2 = listP.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            WorkInfo.State state3 = ((WorkSpec.IdAndState) it2.next()).f20520b;
                            if (state3 == WorkInfo.State.ENQUEUED || state3 == WorkInfo.State.RUNNING) {
                                z5 = zA;
                                z7 = true;
                                z6 = false;
                                workContinuationImpl.f20336h = z7;
                                return z5 | z6;
                            }
                        }
                    }
                }
                workDatabase.v(new xn0(new b5(workDatabase, str, workManagerImpl, 7), 19));
                WorkSpecDao workSpecDaoD2 = workDatabase.D();
                Iterator it3 = listP.iterator();
                while (it3.hasNext()) {
                    workSpecDaoD2.a(((WorkSpec.IdAndState) it3.next()).f20519a);
                }
                z4 = zIsEmpty;
                z5 = zA;
                z6 = true;
            }
            z6 = false;
        }
        Iterator it4 = list2.iterator();
        while (it4.hasNext()) {
            WorkRequest workRequest = (WorkRequest) it4.next();
            WorkSpec workSpec = workRequest.f20282b;
            UUID uuid = workRequest.f20281a;
            if (!z8 || z) {
                workSpec.n = jA;
            } else if (z3) {
                workSpec.f20511b = WorkInfo.State.FAILED;
            } else if (z2) {
                workSpec.f20511b = WorkInfo.State.CANCELLED;
            } else {
                workSpec.f20511b = WorkInfo.State.BLOCKED;
            }
            if (workSpec.f20511b == WorkInfo.State.ENQUEUED) {
                z6 = true;
            }
            WorkSpecDao workSpecDaoD3 = workDatabase.D();
            workManagerImpl.f20346f.getClass();
            boolean z11 = z6;
            boolean zA2 = workSpec.f20513e.a("androidx.work.multiprocess.RemoteListenableDelegatingWorker.ARGUMENT_REMOTE_LISTENABLE_WORKER_NAME");
            Iterator it5 = it4;
            WorkManagerImpl workManagerImpl2 = workManagerImpl;
            boolean zA3 = workSpec.f20513e.a("androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_PACKAGE_NAME");
            boolean zA4 = workSpec.f20513e.a("androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_CLASS_NAME");
            if (!zA2 && zA3 && zA4) {
                String str2 = workSpec.f20512c;
                Data.Builder builder = new Data.Builder();
                Data data = workSpec.f20513e;
                data.getClass();
                builder.b(data.f20245a);
                builder.f20246a.put("androidx.work.multiprocess.RemoteListenableDelegatingWorker.ARGUMENT_REMOTE_LISTENABLE_WORKER_NAME", str2);
                Data dataA = builder.a();
                String str3 = workSpec.f20510a;
                WorkInfo.State state4 = workSpec.f20511b;
                String str4 = workSpec.d;
                Data data2 = workSpec.f20514f;
                long j2 = workSpec.g;
                long j3 = workSpec.f20515h;
                long j4 = workSpec.f20516i;
                Constraints constraints = workSpec.f20517j;
                int i3 = workSpec.f20518k;
                BackoffPolicy backoffPolicy = workSpec.l;
                long j5 = workSpec.m;
                long j6 = workSpec.n;
                long j7 = workSpec.o;
                long j8 = workSpec.p;
                boolean z12 = workSpec.q;
                OutOfQuotaPolicy outOfQuotaPolicy = workSpec.r;
                int i4 = workSpec.s;
                int i5 = workSpec.t;
                long j9 = workSpec.u;
                int i6 = workSpec.v;
                int i7 = workSpec.w;
                String str5 = workSpec.x;
                Boolean bool = workSpec.y;
                str3.getClass();
                state4.getClass();
                str4.getClass();
                data2.getClass();
                constraints.getClass();
                backoffPolicy.getClass();
                outOfQuotaPolicy.getClass();
                workSpec = new WorkSpec(str3, state4, "androidx.work.multiprocess.RemoteListenableDelegatingWorker", str4, dataA, data2, j2, j3, j4, constraints, i3, backoffPolicy, j5, j6, j7, j8, z12, outOfQuotaPolicy, i4, i5, j9, i6, i7, str5, bool);
            }
            workSpecDaoD3.e(workSpec);
            if (z8) {
                for (String str6 : strArr) {
                    String string = uuid.toString();
                    string.getClass();
                    workDatabase.y().a(new Dependency(string, str6));
                }
            }
            WorkTagDao workTagDaoE = workDatabase.E();
            String string2 = uuid.toString();
            string2.getClass();
            workTagDaoE.c(string2, workRequest.f20283c);
            if (!z4) {
                WorkNameDao workNameDaoB = workDatabase.B();
                String string3 = uuid.toString();
                string3.getClass();
                workNameDaoB.a(new WorkName(str, string3));
            }
            z6 = z11;
            it4 = it5;
            workManagerImpl = workManagerImpl2;
        }
        z7 = true;
        workContinuationImpl.f20336h = z7;
        return z5 | z6;
    }
}
