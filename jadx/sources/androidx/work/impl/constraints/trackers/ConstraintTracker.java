package androidx.work.impl.constraints.trackers;

import android.content.Context;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import defpackage.r6;
import java.util.LinkedHashSet;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\b'\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002¨\u0006\u0003"}, d2 = {"Landroidx/work/impl/constraints/trackers/ConstraintTracker;", "T", "", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class ConstraintTracker<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TaskExecutor f20463a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f20464b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f20465c;
    public final LinkedHashSet d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f20466e;

    public ConstraintTracker(Context context, TaskExecutor taskExecutor) {
        context.getClass();
        taskExecutor.getClass();
        this.f20463a = taskExecutor;
        Context applicationContext = context.getApplicationContext();
        applicationContext.getClass();
        this.f20464b = applicationContext;
        this.f20465c = new Object();
        this.d = new LinkedHashSet();
    }

    public abstract Boolean a();

    public final void b(Boolean bool) {
        synchronized (this.f20465c) {
            Object obj = this.f20466e;
            if (obj == null || !obj.equals(bool)) {
                this.f20466e = bool;
                this.f20463a.a().execute(new r6(CollectionsKt.y0(this.d), this, 20));
            }
        }
    }
}
