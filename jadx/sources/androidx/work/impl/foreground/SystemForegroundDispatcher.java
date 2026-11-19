package androidx.work.impl.foreground;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import androidx.work.ForegroundInfo;
import androidx.work.Logger;
import androidx.work.impl.ExecutionListener;
import androidx.work.impl.Processor;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.constraints.OnConstraintsStateChangedListener;
import androidx.work.impl.constraints.WorkConstraintsTracker;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.utils.StopWorkRunnable;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import defpackage.md;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes.dex */
public class SystemForegroundDispatcher implements OnConstraintsStateChangedListener, ExecutionListener {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ int f20472k = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WorkManagerImpl f20473b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TaskExecutor f20474c;
    public final Object d = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public WorkGenerationalId f20475e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LinkedHashMap f20476f;
    public final HashMap g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final HashMap f20477h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final WorkConstraintsTracker f20478i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public SystemForegroundService f20479j;

    public interface Callback {
    }

    static {
        Logger.b("SystemFgDispatcher");
    }

    public SystemForegroundDispatcher(Context context) {
        WorkManagerImpl workManagerImplD = WorkManagerImpl.d(context);
        this.f20473b = workManagerImplD;
        this.f20474c = workManagerImplD.f20345e;
        this.f20475e = null;
        this.f20476f = new LinkedHashMap();
        this.f20477h = new HashMap();
        this.g = new HashMap();
        this.f20478i = new WorkConstraintsTracker(workManagerImplD.f20350k);
        workManagerImplD.g.b(this);
    }

    public static Intent a(Context context, WorkGenerationalId workGenerationalId, ForegroundInfo foregroundInfo) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction("ACTION_START_FOREGROUND");
        intent.putExtra("KEY_WORKSPEC_ID", workGenerationalId.f20499a);
        intent.putExtra("KEY_GENERATION", workGenerationalId.f20500b);
        intent.putExtra("KEY_NOTIFICATION_ID", foregroundInfo.f20249a);
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", foregroundInfo.f20250b);
        intent.putExtra("KEY_NOTIFICATION", foregroundInfo.f20251c);
        return intent;
    }

    public final void b(Intent intent) {
        if (this.f20479j == null) {
            md.k("handleNotify was called on the destroyed dispatcher");
            return;
        }
        int i2 = 0;
        int intExtra = intent.getIntExtra("KEY_NOTIFICATION_ID", 0);
        int intExtra2 = intent.getIntExtra("KEY_FOREGROUND_SERVICE_TYPE", 0);
        WorkGenerationalId workGenerationalId = new WorkGenerationalId(intent.getStringExtra("KEY_WORKSPEC_ID"), intent.getIntExtra("KEY_GENERATION", 0));
        Notification notification = (Notification) intent.getParcelableExtra("KEY_NOTIFICATION");
        Logger.a().getClass();
        if (notification == null) {
            md.n("Notification passed in the intent was null.");
            return;
        }
        ForegroundInfo foregroundInfo = new ForegroundInfo(intExtra, notification, intExtra2);
        LinkedHashMap linkedHashMap = this.f20476f;
        linkedHashMap.put(workGenerationalId, foregroundInfo);
        ForegroundInfo foregroundInfo2 = (ForegroundInfo) linkedHashMap.get(this.f20475e);
        if (foregroundInfo2 == null) {
            this.f20475e = workGenerationalId;
        } else {
            this.f20479j.f20481e.notify(intExtra, notification);
            Iterator it = linkedHashMap.entrySet().iterator();
            while (it.hasNext()) {
                i2 |= ((ForegroundInfo) ((Map.Entry) it.next()).getValue()).f20250b;
            }
            foregroundInfo = new ForegroundInfo(foregroundInfo2.f20249a, foregroundInfo2.f20251c, i2);
        }
        SystemForegroundService systemForegroundService = this.f20479j;
        int i3 = foregroundInfo.f20250b;
        systemForegroundService.c(foregroundInfo.f20249a, foregroundInfo.f20251c, i3);
    }

    @Override // androidx.work.impl.ExecutionListener
    public final void c(WorkGenerationalId workGenerationalId, boolean z) {
        Map.Entry entry;
        synchronized (this.d) {
            try {
                Job job = ((WorkSpec) this.g.remove(workGenerationalId)) != null ? (Job) this.f20477h.remove(workGenerationalId) : null;
                if (job != null) {
                    job.cancel(null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        ForegroundInfo foregroundInfo = (ForegroundInfo) this.f20476f.remove(workGenerationalId);
        if (workGenerationalId.equals(this.f20475e)) {
            if (this.f20476f.size() > 0) {
                Iterator it = this.f20476f.entrySet().iterator();
                Object next = it.next();
                while (true) {
                    entry = (Map.Entry) next;
                    if (!it.hasNext()) {
                        break;
                    } else {
                        next = it.next();
                    }
                }
                this.f20475e = (WorkGenerationalId) entry.getKey();
                if (this.f20479j != null) {
                    ForegroundInfo foregroundInfo2 = (ForegroundInfo) entry.getValue();
                    this.f20479j.c(foregroundInfo2.f20249a, foregroundInfo2.f20251c, foregroundInfo2.f20250b);
                    this.f20479j.a(foregroundInfo2.f20249a);
                }
            } else {
                this.f20475e = null;
            }
        }
        SystemForegroundService systemForegroundService = this.f20479j;
        if (foregroundInfo == null || systemForegroundService == null) {
            return;
        }
        Logger loggerA = Logger.a();
        workGenerationalId.toString();
        loggerA.getClass();
        systemForegroundService.a(foregroundInfo.f20249a);
    }

    public final void d() {
        this.f20479j = null;
        synchronized (this.d) {
            try {
                Iterator it = this.f20477h.values().iterator();
                while (it.hasNext()) {
                    ((Job) it.next()).cancel(null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        Processor processor = this.f20473b.g;
        synchronized (processor.f20317k) {
            processor.f20316j.remove(this);
        }
    }

    @Override // androidx.work.impl.constraints.OnConstraintsStateChangedListener
    public final void e(WorkSpec workSpec, ConstraintsState constraintsState) {
        if (constraintsState instanceof ConstraintsState.ConstraintsNotMet) {
            Logger.a().getClass();
            WorkGenerationalId workGenerationalIdA = WorkSpecKt.a(workSpec);
            int i2 = ((ConstraintsState.ConstraintsNotMet) constraintsState).f20420a;
            WorkManagerImpl workManagerImpl = this.f20473b;
            workManagerImpl.f20345e.d(new StopWorkRunnable(workManagerImpl.g, new StartStopToken(workGenerationalIdA), true, i2));
        }
    }

    public final void f(int i2, int i3) {
        Logger.a().getClass();
        for (Map.Entry entry : this.f20476f.entrySet()) {
            if (((ForegroundInfo) entry.getValue()).f20250b == i3) {
                WorkGenerationalId workGenerationalId = (WorkGenerationalId) entry.getKey();
                WorkManagerImpl workManagerImpl = this.f20473b;
                workManagerImpl.f20345e.d(new StopWorkRunnable(workManagerImpl.g, new StartStopToken(workGenerationalId), true, -128));
            }
        }
        SystemForegroundService systemForegroundService = this.f20479j;
        if (systemForegroundService != null) {
            systemForegroundService.d(i2);
        }
    }
}
