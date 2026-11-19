package androidx.work.impl.constraints.controllers;

import androidx.work.impl.constraints.trackers.BatteryNotLowTracker;
import androidx.work.impl.model.WorkSpec;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/work/impl/constraints/controllers/BatteryNotLowController;", "Landroidx/work/impl/constraints/controllers/BaseConstraintController;", "", "Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;", "tracker", "<init>", "(Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;)V", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class BatteryNotLowController extends BaseConstraintController<Boolean> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f20456b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BatteryNotLowController(BatteryNotLowTracker batteryNotLowTracker) {
        super(batteryNotLowTracker);
        batteryNotLowTracker.getClass();
        this.f20456b = 5;
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public final boolean b(WorkSpec workSpec) {
        return workSpec.f20517j.f20229e;
    }

    @Override // androidx.work.impl.constraints.controllers.BaseConstraintController
    /* JADX INFO: renamed from: c, reason: from getter */
    public final int getF20456b() {
        return this.f20456b;
    }

    @Override // androidx.work.impl.constraints.controllers.BaseConstraintController
    public final boolean d(Object obj) {
        return !((Boolean) obj).booleanValue();
    }
}
