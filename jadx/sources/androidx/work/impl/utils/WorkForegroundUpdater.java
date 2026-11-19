package androidx.work.impl.utils;

import android.content.Context;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.work.ForegroundInfo;
import androidx.work.ForegroundUpdater;
import androidx.work.Logger;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.foreground.ForegroundProcessor;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.b41;
import defpackage.p3;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class WorkForegroundUpdater implements ForegroundUpdater {
    public static final /* synthetic */ int d = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TaskExecutor f20562a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ForegroundProcessor f20563b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WorkSpecDao f20564c;

    static {
        Logger.b("WMFgUpdater");
    }

    public WorkForegroundUpdater(WorkDatabase workDatabase, ForegroundProcessor foregroundProcessor, TaskExecutor taskExecutor) {
        this.f20563b = foregroundProcessor;
        this.f20562a = taskExecutor;
        this.f20564c = workDatabase.D();
    }

    @Override // androidx.work.ForegroundUpdater
    public final ListenableFuture a(Context context, UUID uuid, ForegroundInfo foregroundInfo) {
        SerialExecutorImpl serialExecutorImplC = this.f20562a.c();
        b41 b41Var = new b41(this, uuid, foregroundInfo, context, 1);
        serialExecutorImplC.getClass();
        return CallbackToFutureAdapter.a(new p3(serialExecutorImplC, b41Var, 15));
    }
}
