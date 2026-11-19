package androidx.work.impl.background.systemjob;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.work.Configuration;
import androidx.work.Logger;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;
import androidx.work.impl.Scheduler;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.Preference;
import androidx.work.impl.model.SystemIdInfo;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.utils.IdGenerator;
import defpackage.az;
import defpackage.cj;
import defpackage.tr;
import defpackage.xn0;
import io.jsonwebtoken.JwtParser;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes.dex */
public class SystemJobScheduler implements Scheduler {
    public static final /* synthetic */ int g = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f20411b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final JobScheduler f20412c;
    public final SystemJobInfoConverter d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final WorkDatabase f20413e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Configuration f20414f;

    static {
        Logger.b("SystemJobScheduler");
    }

    public SystemJobScheduler(Context context, WorkDatabase workDatabase, Configuration configuration) {
        this(context, workDatabase, configuration, JobSchedulerExtKt.b(context), new SystemJobInfoConverter(context, configuration.d, configuration.m));
    }

    public static void c(JobScheduler jobScheduler, int i2) {
        try {
            jobScheduler.cancel(i2);
        } catch (Throwable unused) {
            Logger loggerA = Logger.a();
            String.format(Locale.getDefault(), "Exception while trying to cancel job (%d)", Integer.valueOf(i2));
            loggerA.getClass();
        }
    }

    public static ArrayList e(Context context, JobScheduler jobScheduler) {
        List<JobInfo> listA = JobSchedulerExtKt.a(jobScheduler);
        if (listA == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(listA.size());
        ComponentName componentName = new ComponentName(context, (Class<?>) SystemJobService.class);
        for (JobInfo jobInfo : listA) {
            if (componentName.equals(jobInfo.getService())) {
                arrayList.add(jobInfo);
            }
        }
        return arrayList;
    }

    public static WorkGenerationalId f(JobInfo jobInfo) {
        PersistableBundle extras = jobInfo.getExtras();
        if (extras == null) {
            return null;
        }
        try {
            if (!extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return null;
            }
            return new WorkGenerationalId(extras.getString("EXTRA_WORK_SPEC_ID"), extras.getInt("EXTRA_WORK_SPEC_GENERATION", 0));
        } catch (NullPointerException unused) {
            return null;
        }
    }

    @Override // androidx.work.impl.Scheduler
    public final void a(String str) {
        ArrayList arrayList;
        Context context = this.f20411b;
        JobScheduler jobScheduler = this.f20412c;
        ArrayList<JobInfo> arrayListE = e(context, jobScheduler);
        if (arrayListE == null) {
            arrayList = null;
        } else {
            ArrayList arrayList2 = new ArrayList(2);
            for (JobInfo jobInfo : arrayListE) {
                WorkGenerationalId workGenerationalIdF = f(jobInfo);
                if (workGenerationalIdF != null && str.equals(workGenerationalIdF.f20499a)) {
                    arrayList2.add(Integer.valueOf(jobInfo.getId()));
                }
            }
            arrayList = arrayList2;
        }
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            c(jobScheduler, ((Integer) it.next()).intValue());
        }
        this.f20413e.A().e(str);
    }

    @Override // androidx.work.impl.Scheduler
    public final void b(WorkSpec... workSpecArr) {
        int iIntValue;
        WorkDatabase workDatabase = this.f20413e;
        final IdGenerator idGenerator = new IdGenerator(workDatabase);
        for (WorkSpec workSpec : workSpecArr) {
            workDatabase.c();
            try {
                WorkSpec workSpecK = workDatabase.D().k(workSpec.f20510a);
                if (workSpecK != null && workSpecK.f20511b == WorkInfo.State.ENQUEUED) {
                    WorkGenerationalId workGenerationalIdA = WorkSpecKt.a(workSpec);
                    SystemIdInfo systemIdInfoB = workDatabase.A().b(workGenerationalIdA);
                    if (systemIdInfoB != null) {
                        iIntValue = systemIdInfoB.f20495c;
                    } else {
                        Configuration configuration = this.f20414f;
                        configuration.getClass();
                        final int i2 = configuration.f20212j;
                        WorkDatabase workDatabase2 = idGenerator.f20542a;
                        Callable callable = new Callable() { // from class: e20
                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                WorkDatabase workDatabase3 = idGenerator.f20542a;
                                Long lB = workDatabase3.z().b("next_job_scheduler_id");
                                int i3 = 0;
                                int iLongValue = lB != null ? (int) lB.longValue() : 0;
                                workDatabase3.z().a(new Preference("next_job_scheduler_id", Long.valueOf(iLongValue == Integer.MAX_VALUE ? 0 : iLongValue + 1)));
                                if (iLongValue < 0 || iLongValue > i2) {
                                    workDatabase3.z().a(new Preference("next_job_scheduler_id", (Long) 1L));
                                } else {
                                    i3 = iLongValue;
                                }
                                return Integer.valueOf(i3);
                            }
                        };
                        workDatabase2.getClass();
                        Object objV = workDatabase2.v(new xn0(callable, 18));
                        objV.getClass();
                        iIntValue = ((Number) objV).intValue();
                    }
                    if (systemIdInfoB == null) {
                        workDatabase.A().d(new SystemIdInfo(workGenerationalIdA.f20499a, workGenerationalIdA.f20500b, iIntValue));
                    }
                    g(workSpec, iIntValue);
                    workDatabase.w();
                } else {
                    Logger.a().getClass();
                    workDatabase.w();
                }
                workDatabase.h();
            } catch (Throwable th) {
                workDatabase.h();
                throw th;
            }
        }
    }

    @Override // androidx.work.impl.Scheduler
    public final boolean d() {
        return true;
    }

    public final void g(WorkSpec workSpec, int i2) {
        JobInfo jobInfoA = this.d.a(workSpec, i2);
        Logger.a().getClass();
        try {
            if (this.f20412c.schedule(jobInfoA) == 0) {
                Logger.a().getClass();
                if (workSpec.q && workSpec.r == OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST) {
                    workSpec.q = false;
                    Logger.a().getClass();
                    g(workSpec, i2);
                }
            }
        } catch (IllegalStateException e2) {
            int i3 = JobSchedulerExtKt.f20406a;
            Context context = this.f20411b;
            context.getClass();
            WorkDatabase workDatabase = this.f20413e;
            workDatabase.getClass();
            Configuration configuration = this.f20414f;
            configuration.getClass();
            int i4 = Build.VERSION.SDK_INT;
            int i5 = i4 >= 31 ? 150 : 100;
            int size = workDatabase.D().g().size();
            String strK = "<faulty JobScheduler failed to getPendingJobs>";
            if (i4 >= 34) {
                JobScheduler jobSchedulerB = JobSchedulerExtKt.b(context);
                List listA = JobSchedulerExtKt.a(jobSchedulerB);
                if (listA != null) {
                    ArrayList arrayListE = e(context, jobSchedulerB);
                    int size2 = arrayListE != null ? listA.size() - arrayListE.size() : 0;
                    String strD = size2 == 0 ? null : cj.d(size2, " of which are not owned by WorkManager");
                    Object systemService = context.getSystemService("jobscheduler");
                    systemService.getClass();
                    ArrayList arrayListE2 = e(context, (JobScheduler) systemService);
                    int size3 = arrayListE2 != null ? arrayListE2.size() : 0;
                    strK = CollectionsKt.K(ArraysKt.v(new String[]{listA.size() + " jobs in \"androidx.work.systemjobscheduler\" namespace", strD, size3 != 0 ? cj.d(size3, " from WorkManager in the default namespace") : null}), ",\n", null, null, null, 62);
                }
            } else {
                ArrayList arrayListE3 = e(context, JobSchedulerExtKt.b(context));
                if (arrayListE3 != null) {
                    strK = arrayListE3.size() + " jobs from WorkManager";
                }
            }
            StringBuilder sb = new StringBuilder("JobScheduler ");
            sb.append(i5);
            sb.append(" job limit exceeded.\nIn JobScheduler there are ");
            sb.append(strK);
            sb.append(".\nThere are ");
            sb.append(size);
            sb.append(" jobs tracked by WorkManager's database;\nthe Configuration limit is ");
            String strK2 = tr.k(sb, configuration.l, JwtParser.SEPARATOR_CHAR);
            Logger.a().getClass();
            az.s(strK2, e2);
        } catch (Throwable unused) {
            Logger loggerA = Logger.a();
            workSpec.toString();
            loggerA.getClass();
        }
    }

    public SystemJobScheduler(Context context, WorkDatabase workDatabase, Configuration configuration, JobScheduler jobScheduler, SystemJobInfoConverter systemJobInfoConverter) {
        this.f20411b = context;
        this.f20412c = jobScheduler;
        this.d = systemJobInfoConverter;
        this.f20413e = workDatabase;
        this.f20414f = configuration;
    }
}
