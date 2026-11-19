package androidx.work.impl.constraints;

import android.content.Context;
import android.net.ConnectivityManager;
import androidx.work.impl.constraints.controllers.BatteryChargingController;
import androidx.work.impl.constraints.controllers.BatteryNotLowController;
import androidx.work.impl.constraints.controllers.ConstraintController;
import androidx.work.impl.constraints.controllers.StorageNotLowController;
import androidx.work.impl.constraints.trackers.Trackers;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006B\u0011\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0005\u0010\t¨\u0006\n"}, d2 = {"Landroidx/work/impl/constraints/WorkConstraintsTracker;", "", "", "Landroidx/work/impl/constraints/controllers/ConstraintController;", "controllers", "<init>", "(Ljava/util/List;)V", "Landroidx/work/impl/constraints/trackers/Trackers;", "trackers", "(Landroidx/work/impl/constraints/trackers/Trackers;)V", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class WorkConstraintsTracker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f20435a;

    /* JADX WARN: Illegal instructions before constructor call */
    public WorkConstraintsTracker(Trackers trackers) {
        trackers.getClass();
        int i2 = WorkConstraintsTrackerKt.f20440a;
        ArrayList arrayListU = CollectionsKt.U(new BatteryChargingController(trackers.f20470b), new BatteryNotLowController(trackers.f20471c), new StorageNotLowController(trackers.d));
        Context context = trackers.f20469a;
        context.getClass();
        Object systemService = context.getSystemService("connectivity");
        systemService.getClass();
        arrayListU.add(new NetworkRequestConstraintController((ConnectivityManager) systemService, 0L, 2, null));
        this(arrayListU);
    }

    public WorkConstraintsTracker(List<? extends ConstraintController> list) {
        list.getClass();
        this.f20435a = list;
    }
}
