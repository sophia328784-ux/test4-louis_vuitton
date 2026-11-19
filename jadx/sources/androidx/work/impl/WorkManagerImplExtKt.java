package androidx.work.impl;

import android.content.Context;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.work.Clock;
import androidx.work.Configuration;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.utils.SerialExecutorImpl;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;
import com.vuitton.android.R;
import defpackage.l71;
import java.util.List;
import kotlin.Metadata;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002* \u0002\u0010\u0011\"\u008c\u0001\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\u0004\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\u0006\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\n\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\f\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u000f0\u00002\u008c\u0001\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\u0004\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\u0006\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\n\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\f\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u000f0\u0000¨\u0006\u0012"}, d2 = {"Lkotlin/Function6;", "Landroid/content/Context;", "Lkotlin/ParameterName;", "name", MvelScriptManager.VAR_CONTEXT, "Landroidx/work/Configuration;", "configuration", "Landroidx/work/impl/utils/taskexecutor/TaskExecutor;", "workTaskExecutor", "Landroidx/work/impl/WorkDatabase;", "workDatabase", "Landroidx/work/impl/constraints/trackers/Trackers;", "trackers", "Landroidx/work/impl/Processor;", "processor", "", "Landroidx/work/impl/Scheduler;", "SchedulersCreator", "work-runtime_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class WorkManagerImplExtKt {
    public static final WorkManagerImpl a(Context context, Configuration configuration) {
        RoomDatabase.Builder builderA;
        context.getClass();
        configuration.getClass();
        WorkManagerTaskExecutor workManagerTaskExecutor = new WorkManagerTaskExecutor(configuration.f20207c);
        WorkDatabase.Companion companion = WorkDatabase.n;
        Context applicationContext = context.getApplicationContext();
        applicationContext.getClass();
        SerialExecutorImpl serialExecutorImpl = workManagerTaskExecutor.f20566a;
        serialExecutorImpl.getClass();
        Clock clock = configuration.d;
        boolean z = context.getResources().getBoolean(R.bool.workmanager_test_configuration);
        companion.getClass();
        clock.getClass();
        if (z) {
            builderA = new RoomDatabase.Builder(applicationContext, WorkDatabase.class, null);
            builderA.f19472j = true;
        } else {
            builderA = Room.a(applicationContext, WorkDatabase.class, "androidx.work.workdb");
            builderA.f19471i = new l71(applicationContext, 0);
        }
        builderA.g = serialExecutorImpl;
        builderA.f19468e.add(new CleanupCallback(clock));
        builderA.a(Migration_1_2.f20303c);
        builderA.a(new RescheduleMigration(applicationContext, 2, 3));
        builderA.a(Migration_3_4.f20304c);
        builderA.a(Migration_4_5.f20305c);
        builderA.a(new RescheduleMigration(applicationContext, 5, 6));
        builderA.a(Migration_6_7.f20306c);
        builderA.a(Migration_7_8.f20307c);
        builderA.a(Migration_8_9.f20308c);
        builderA.a(new WorkMigration9To10(applicationContext));
        builderA.a(new RescheduleMigration(applicationContext, 10, 11));
        builderA.a(Migration_11_12.f20299c);
        builderA.a(Migration_12_13.f20300c);
        builderA.a(Migration_15_16.f20301c);
        builderA.a(Migration_16_17.f20302c);
        builderA.a(new RescheduleMigration(applicationContext, 21, 22));
        builderA.q = false;
        builderA.r = true;
        builderA.s = true;
        WorkDatabase workDatabase = (WorkDatabase) builderA.b();
        Context applicationContext2 = context.getApplicationContext();
        applicationContext2.getClass();
        Trackers trackers = new Trackers(applicationContext2, workManagerTaskExecutor, null, null, null, null, 60, null);
        Processor processor = new Processor(context.getApplicationContext(), configuration, workManagerTaskExecutor, workDatabase);
        WorkManagerImplExtKt$WorkManagerImpl$1 workManagerImplExtKt$WorkManagerImpl$1 = WorkManagerImplExtKt$WorkManagerImpl$1.f20351b;
        workManagerImplExtKt$WorkManagerImpl$1.getClass();
        return new WorkManagerImpl(context.getApplicationContext(), configuration, workManagerTaskExecutor, workDatabase, (List) workManagerImplExtKt$WorkManagerImpl$1.l(context, configuration, workManagerTaskExecutor, workDatabase, trackers, processor), processor, trackers);
    }
}
