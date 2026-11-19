package androidx.work.impl.constraints.trackers;

import android.content.Context;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001BU\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0006\u0012\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/work/impl/constraints/trackers/Trackers;", "", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Landroidx/work/impl/utils/taskexecutor/TaskExecutor;", "taskExecutor", "Landroidx/work/impl/constraints/trackers/ConstraintTracker;", "", "batteryChargingTracker", "Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;", "batteryNotLowTracker", "networkStateTracker", "storageNotLowTracker", "<init>", "(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/constraints/trackers/ConstraintTracker;Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;Landroidx/work/impl/constraints/trackers/ConstraintTracker;Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Trackers {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f20469a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConstraintTracker f20470b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BatteryNotLowTracker f20471c;
    public final ConstraintTracker d;

    public /* synthetic */ Trackers(Context context, TaskExecutor taskExecutor, ConstraintTracker constraintTracker, BatteryNotLowTracker batteryNotLowTracker, ConstraintTracker constraintTracker2, ConstraintTracker constraintTracker3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 4) != 0) {
            Context applicationContext = context.getApplicationContext();
            applicationContext.getClass();
            constraintTracker = new BatteryChargingTracker(applicationContext, taskExecutor);
        }
        ConstraintTracker constraintTracker4 = constraintTracker;
        if ((i2 & 8) != 0) {
            Context applicationContext2 = context.getApplicationContext();
            applicationContext2.getClass();
            batteryNotLowTracker = new BatteryNotLowTracker(applicationContext2, taskExecutor);
        }
        BatteryNotLowTracker batteryNotLowTracker2 = batteryNotLowTracker;
        ConstraintTracker constraintTracker5 = (i2 & 16) != 0 ? null : constraintTracker2;
        if ((i2 & 32) != 0) {
            Context applicationContext3 = context.getApplicationContext();
            applicationContext3.getClass();
            constraintTracker3 = new StorageNotLowTracker(applicationContext3, taskExecutor);
        }
        this(context, taskExecutor, constraintTracker4, batteryNotLowTracker2, constraintTracker5, constraintTracker3);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Trackers(Context context, TaskExecutor taskExecutor, ConstraintTracker<Boolean> constraintTracker) {
        this(context, taskExecutor, constraintTracker, null, null, null, 56, null);
        context.getClass();
        taskExecutor.getClass();
        constraintTracker.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Trackers(Context context, TaskExecutor taskExecutor, ConstraintTracker<Boolean> constraintTracker, BatteryNotLowTracker batteryNotLowTracker) {
        this(context, taskExecutor, constraintTracker, batteryNotLowTracker, null, null, 48, null);
        context.getClass();
        taskExecutor.getClass();
        constraintTracker.getClass();
        batteryNotLowTracker.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Trackers(Context context, TaskExecutor taskExecutor, ConstraintTracker<Boolean> constraintTracker, BatteryNotLowTracker batteryNotLowTracker, ConstraintTracker<Object> constraintTracker2) {
        this(context, taskExecutor, constraintTracker, batteryNotLowTracker, constraintTracker2, null, 32, null);
        context.getClass();
        taskExecutor.getClass();
        constraintTracker.getClass();
        batteryNotLowTracker.getClass();
    }

    public Trackers(Context context, TaskExecutor taskExecutor, ConstraintTracker<Boolean> constraintTracker, BatteryNotLowTracker batteryNotLowTracker, ConstraintTracker<Object> constraintTracker2, ConstraintTracker<Boolean> constraintTracker3) {
        context.getClass();
        taskExecutor.getClass();
        constraintTracker.getClass();
        batteryNotLowTracker.getClass();
        constraintTracker3.getClass();
        this.f20469a = context;
        this.f20470b = constraintTracker;
        this.f20471c = batteryNotLowTracker;
        this.d = constraintTracker3;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Trackers(Context context, TaskExecutor taskExecutor) {
        this(context, taskExecutor, null, null, null, null, 60, null);
        context.getClass();
        taskExecutor.getClass();
    }
}
