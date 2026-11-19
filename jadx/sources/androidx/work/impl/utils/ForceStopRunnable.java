package androidx.work.impl.utils;

import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.ApplicationExitInfo;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteAccessPermException;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.database.sqlite.SQLiteConstraintException;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteDiskIOException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.database.sqlite.SQLiteTableLockedException;
import android.os.Build;
import android.text.TextUtils;
import androidx.core.os.UserManagerCompat;
import androidx.work.Configuration;
import androidx.work.Logger;
import androidx.work.WorkInfo;
import androidx.work.impl.Schedulers;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkDatabasePathHelper;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.background.systemjob.JobSchedulerExtKt;
import androidx.work.impl.background.systemjob.SystemJobScheduler;
import androidx.work.impl.model.Preference;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkProgressDao;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import defpackage.az;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes.dex */
public class ForceStopRunnable implements Runnable {
    static final String ACTION_FORCE_STOP_RESCHEDULE = "ACTION_FORCE_STOP_RESCHEDULE";
    private static final int ALARM_ID = -1;
    private static final long BACKOFF_DURATION_MS = 300;
    static final int MAX_ATTEMPTS = 3;
    private static final String TAG = Logger.b("ForceStopRunnable");
    private static final long TEN_YEARS = 315360000000L;
    private final Context mContext;
    private final PreferenceUtils mPreferenceUtils;
    private int mRetryCount = 0;
    private final WorkManagerImpl mWorkManager;

    public static class BroadcastReceiver extends android.content.BroadcastReceiver {
        static {
            Logger.b("ForceStopRunnable$Rcvr");
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (intent == null || !ForceStopRunnable.ACTION_FORCE_STOP_RESCHEDULE.equals(intent.getAction())) {
                return;
            }
            Logger.a().getClass();
            ForceStopRunnable.setAlarm(context);
        }
    }

    public ForceStopRunnable(Context context, WorkManagerImpl workManagerImpl) {
        this.mContext = context.getApplicationContext();
        this.mWorkManager = workManagerImpl;
        this.mPreferenceUtils = workManagerImpl.f20347h;
    }

    public static Intent getIntent(Context context) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, (Class<?>) BroadcastReceiver.class));
        intent.setAction(ACTION_FORCE_STOP_RESCHEDULE);
        return intent;
    }

    private static PendingIntent getPendingIntent(Context context, int i2) {
        return PendingIntent.getBroadcast(context, -1, getIntent(context), i2);
    }

    public static void setAlarm(Context context) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent pendingIntent = getPendingIntent(context, Build.VERSION.SDK_INT >= 31 ? 167772160 : 134217728);
        long jCurrentTimeMillis = System.currentTimeMillis() + TEN_YEARS;
        if (alarmManager != null) {
            alarmManager.setExact(0, jCurrentTimeMillis, pendingIntent);
        }
    }

    public boolean cleanUp() {
        boolean z;
        Context context = this.mContext;
        WorkDatabase workDatabase = this.mWorkManager.d;
        int i2 = SystemJobScheduler.g;
        JobScheduler jobSchedulerB = JobSchedulerExtKt.b(context);
        ArrayList<JobInfo> arrayListE = SystemJobScheduler.e(context, jobSchedulerB);
        List listC = workDatabase.A().c();
        HashSet hashSet = new HashSet(arrayListE != null ? arrayListE.size() : 0);
        if (arrayListE != null && !arrayListE.isEmpty()) {
            for (JobInfo jobInfo : arrayListE) {
                WorkGenerationalId workGenerationalIdF = SystemJobScheduler.f(jobInfo);
                if (workGenerationalIdF != null) {
                    hashSet.add(workGenerationalIdF.f20499a);
                } else {
                    SystemJobScheduler.c(jobSchedulerB, jobInfo.getId());
                }
            }
        }
        Iterator it = listC.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            if (!hashSet.contains((String) it.next())) {
                Logger loggerA = Logger.a();
                int i3 = SystemJobScheduler.g;
                loggerA.getClass();
                z = true;
                break;
            }
        }
        if (z) {
            workDatabase.c();
            try {
                WorkSpecDao workSpecDaoD = workDatabase.D();
                Iterator it2 = listC.iterator();
                while (it2.hasNext()) {
                    workSpecDaoD.c(-1L, (String) it2.next());
                }
                workDatabase.w();
                workDatabase.h();
            } catch (Throwable th) {
                workDatabase.h();
                throw th;
            }
        }
        WorkDatabase workDatabase2 = this.mWorkManager.d;
        WorkSpecDao workSpecDaoD2 = workDatabase2.D();
        WorkProgressDao workProgressDaoC = workDatabase2.C();
        workDatabase2.c();
        try {
            List<WorkSpec> listU = workSpecDaoD2.u();
            boolean z2 = (listU == null || listU.isEmpty()) ? false : true;
            if (z2) {
                for (WorkSpec workSpec : listU) {
                    WorkInfo.State state = WorkInfo.State.ENQUEUED;
                    String str = workSpec.f20510a;
                    workSpecDaoD2.h(str, state);
                    workSpecDaoD2.v(-512, str);
                    workSpecDaoD2.c(-1L, str);
                }
            }
            workProgressDaoC.deleteAll();
            workDatabase2.w();
            workDatabase2.h();
            return z2 || z;
        } catch (Throwable th2) {
            workDatabase2.h();
            throw th2;
        }
    }

    public void forceStopRunnable() {
        boolean zCleanUp = cleanUp();
        if (shouldRescheduleWorkers()) {
            Logger.a().getClass();
            this.mWorkManager.g();
            PreferenceUtils preferenceUtils = this.mWorkManager.f20347h;
            preferenceUtils.getClass();
            preferenceUtils.f20551a.z().a(new Preference("reschedule_needed", false));
            return;
        }
        if (!isForceStopped()) {
            if (zCleanUp) {
                Logger.a().getClass();
                WorkManagerImpl workManagerImpl = this.mWorkManager;
                Schedulers.b(workManagerImpl.f20344c, workManagerImpl.d, workManagerImpl.f20346f);
                return;
            }
            return;
        }
        Logger.a().getClass();
        this.mWorkManager.g();
        PreferenceUtils preferenceUtils2 = this.mPreferenceUtils;
        long jA = this.mWorkManager.f20344c.d.a();
        preferenceUtils2.getClass();
        preferenceUtils2.f20551a.z().a(new Preference("last_force_stop_ms", Long.valueOf(jA)));
    }

    public boolean isForceStopped() {
        try {
            int i2 = Build.VERSION.SDK_INT;
            PendingIntent pendingIntent = getPendingIntent(this.mContext, i2 >= 31 ? 570425344 : PKIFailureInfo.duplicateCertReq);
            if (i2 >= 30) {
                if (pendingIntent != null) {
                    pendingIntent.cancel();
                }
                List<ApplicationExitInfo> historicalProcessExitReasons = ((ActivityManager) this.mContext.getSystemService(ActionFloatingViewItem.f37018a)).getHistoricalProcessExitReasons(null, 0, 0);
                if (historicalProcessExitReasons != null && !historicalProcessExitReasons.isEmpty()) {
                    Long lB = this.mPreferenceUtils.f20551a.z().b("last_force_stop_ms");
                    long jLongValue = lB != null ? lB.longValue() : 0L;
                    for (int i3 = 0; i3 < historicalProcessExitReasons.size(); i3++) {
                        ApplicationExitInfo applicationExitInfoL = az.l(historicalProcessExitReasons.get(i3));
                        if (applicationExitInfoL.getReason() == 10 && applicationExitInfoL.getTimestamp() >= jLongValue) {
                            return true;
                        }
                    }
                }
            } else if (pendingIntent == null) {
                setAlarm(this.mContext);
                return true;
            }
            return false;
        } catch (IllegalArgumentException | SecurityException unused) {
            Logger.a().getClass();
            return true;
        }
    }

    public boolean multiProcessChecks() {
        Configuration configuration = this.mWorkManager.f20344c;
        configuration.getClass();
        if (TextUtils.isEmpty(null)) {
            Logger.a().getClass();
            return true;
        }
        boolean zA = ProcessUtils.a(this.mContext, configuration);
        Logger.a().getClass();
        return zA;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (multiProcessChecks()) {
                while (true) {
                    try {
                        WorkDatabasePathHelper.a(this.mContext);
                        Logger.a().getClass();
                        try {
                            forceStopRunnable();
                            break;
                        } catch (SQLiteAccessPermException | SQLiteCantOpenDatabaseException | SQLiteConstraintException | SQLiteDatabaseCorruptException | SQLiteDatabaseLockedException | SQLiteDiskIOException | SQLiteFullException | SQLiteTableLockedException e2) {
                            int i2 = this.mRetryCount + 1;
                            this.mRetryCount = i2;
                            if (i2 >= 3) {
                                String str = UserManagerCompat.a(this.mContext) ? "The file system on the device is in a bad state. WorkManager cannot access the app's internal data store." : "WorkManager can't be accessed from direct boot, because credential encrypted storage isn't accessible.\nDon't access or initialise WorkManager from directAware components. See https://developer.android.com/training/articles/direct-boot";
                                Logger.a().getClass();
                                IllegalStateException illegalStateException = new IllegalStateException(str, e2);
                                this.mWorkManager.f20344c.getClass();
                                throw illegalStateException;
                            }
                            Logger.a().getClass();
                            sleep(((long) this.mRetryCount) * BACKOFF_DURATION_MS);
                        }
                    } catch (SQLiteException e3) {
                        Logger.a().getClass();
                        IllegalStateException illegalStateException2 = new IllegalStateException("Unexpected SQLite exception during migrations", e3);
                        this.mWorkManager.f20344c.getClass();
                        throw illegalStateException2;
                    }
                }
            }
            this.mWorkManager.f();
        } catch (Throwable th) {
            this.mWorkManager.f();
            throw th;
        }
    }

    public boolean shouldRescheduleWorkers() {
        Long lB = this.mWorkManager.f20347h.f20551a.z().b("reschedule_needed");
        return lB != null && lB.longValue() == 1;
    }

    public void sleep(long j2) {
        try {
            Thread.sleep(j2);
        } catch (InterruptedException unused) {
        }
    }
}
