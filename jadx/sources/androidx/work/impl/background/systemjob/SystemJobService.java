package androidx.work.impl.background.systemjob;

import android.app.Application;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.os.Build;
import android.os.Looper;
import android.os.PersistableBundle;
import androidx.work.Logger;
import androidx.work.WorkerParameters;
import androidx.work.impl.ExecutionListener;
import androidx.work.impl.Processor;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.StartStopTokens;
import androidx.work.impl.WorkLauncherImpl;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.WorkGenerationalId;
import defpackage.az;
import defpackage.fc;
import defpackage.md;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class SystemJobService extends JobService implements ExecutionListener {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int f20415f = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public WorkManagerImpl f20416b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f20417c = new HashMap();
    public final StartStopTokens d = StartStopTokens.Companion.a(false);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public WorkLauncherImpl f20418e;

    public static class Api31Impl {
        public static int a(JobParameters jobParameters) {
            int stopReason = jobParameters.getStopReason();
            int i2 = SystemJobService.f20415f;
            switch (stopReason) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                    return stopReason;
                default:
                    return -512;
            }
        }
    }

    static {
        Logger.b("SystemJobService");
    }

    public static void a(String str) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            return;
        }
        md.k(fc.h("Cannot invoke ", str, " on a background thread"));
    }

    public static WorkGenerationalId b(JobParameters jobParameters) {
        try {
            PersistableBundle extras = jobParameters.getExtras();
            if (extras == null || !extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return null;
            }
            return new WorkGenerationalId(extras.getString("EXTRA_WORK_SPEC_ID"), extras.getInt("EXTRA_WORK_SPEC_GENERATION"));
        } catch (NullPointerException unused) {
            return null;
        }
    }

    @Override // androidx.work.impl.ExecutionListener
    public final void c(WorkGenerationalId workGenerationalId, boolean z) {
        a("onExecuted");
        Logger loggerA = Logger.a();
        String str = workGenerationalId.f20499a;
        loggerA.getClass();
        JobParameters jobParameters = (JobParameters) this.f20417c.remove(workGenerationalId);
        this.d.b(workGenerationalId);
        if (jobParameters != null) {
            jobFinished(jobParameters, z);
        }
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        try {
            WorkManagerImpl workManagerImplD = WorkManagerImpl.d(getApplicationContext());
            this.f20416b = workManagerImplD;
            Processor processor = workManagerImplD.g;
            this.f20418e = new WorkLauncherImpl(processor, workManagerImplD.f20345e);
            processor.b(this);
        } catch (IllegalStateException e2) {
            if (Application.class.equals(getApplication().getClass())) {
                Logger.a().getClass();
            } else {
                az.s("WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", e2);
            }
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        WorkManagerImpl workManagerImpl = this.f20416b;
        if (workManagerImpl != null) {
            Processor processor = workManagerImpl.g;
            synchronized (processor.f20317k) {
                processor.f20316j.remove(this);
            }
        }
    }

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        a("onStartJob");
        if (this.f20416b == null) {
            Logger.a().getClass();
            jobFinished(jobParameters, true);
            return false;
        }
        WorkGenerationalId workGenerationalIdB = b(jobParameters);
        if (workGenerationalIdB == null) {
            Logger.a().getClass();
            return false;
        }
        HashMap map = this.f20417c;
        if (map.containsKey(workGenerationalIdB)) {
            Logger loggerA = Logger.a();
            workGenerationalIdB.toString();
            loggerA.getClass();
            return false;
        }
        Logger loggerA2 = Logger.a();
        workGenerationalIdB.toString();
        loggerA2.getClass();
        map.put(workGenerationalIdB, jobParameters);
        WorkerParameters.RuntimeExtras runtimeExtras = new WorkerParameters.RuntimeExtras();
        if (jobParameters.getTriggeredContentUris() != null) {
            runtimeExtras.f20294b = Arrays.asList(jobParameters.getTriggeredContentUris());
        }
        if (jobParameters.getTriggeredContentAuthorities() != null) {
            runtimeExtras.f20293a = Arrays.asList(jobParameters.getTriggeredContentAuthorities());
        }
        jobParameters.getNetwork();
        this.f20418e.a(this.d.d(workGenerationalIdB), runtimeExtras);
        return true;
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        boolean zContains;
        a("onStopJob");
        if (this.f20416b == null) {
            Logger.a().getClass();
            return true;
        }
        WorkGenerationalId workGenerationalIdB = b(jobParameters);
        if (workGenerationalIdB == null) {
            Logger.a().getClass();
            return false;
        }
        Logger loggerA = Logger.a();
        workGenerationalIdB.toString();
        loggerA.getClass();
        this.f20417c.remove(workGenerationalIdB);
        StartStopToken startStopTokenB = this.d.b(workGenerationalIdB);
        if (startStopTokenB != null) {
            int iA = Build.VERSION.SDK_INT >= 31 ? Api31Impl.a(jobParameters) : -512;
            WorkLauncherImpl workLauncherImpl = this.f20418e;
            workLauncherImpl.getClass();
            workLauncherImpl.d(startStopTokenB, iA);
        }
        Processor processor = this.f20416b.g;
        String str = workGenerationalIdB.f20499a;
        synchronized (processor.f20317k) {
            zContains = processor.f20315i.contains(str);
        }
        return !zContains;
    }
}
