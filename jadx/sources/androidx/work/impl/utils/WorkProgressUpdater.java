package androidx.work.impl.utils;

import androidx.work.Logger;
import androidx.work.ProgressUpdater;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;

/* JADX INFO: loaded from: classes.dex */
public class WorkProgressUpdater implements ProgressUpdater {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TaskExecutor f20565a;

    static {
        Logger.b("WorkProgressUpdater");
    }

    public WorkProgressUpdater(WorkDatabase workDatabase, TaskExecutor taskExecutor) {
        this.f20565a = taskExecutor;
    }
}
