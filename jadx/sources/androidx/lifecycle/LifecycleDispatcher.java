package androidx.lifecycle;

import android.app.Activity;
import android.os.Bundle;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bÀ\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/lifecycle/LifecycleDispatcher;", "", "DispatcherActivityCallback", "lifecycle-process"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class LifecycleDispatcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AtomicBoolean f13447a = new AtomicBoolean(false);

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\n"}, d2 = {"Landroidx/lifecycle/LifecycleDispatcher$DispatcherActivityCallback;", "Landroidx/lifecycle/EmptyActivityLifecycleCallbacks;", "<init>", "()V", "onActivityCreated", "", ActionFloatingViewItem.f37018a, "Landroid/app/Activity;", "savedInstanceState", "Landroid/os/Bundle;", "lifecycle-process"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class DispatcherActivityCallback extends EmptyActivityLifecycleCallbacks {
        @Override // androidx.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
            activity.getClass();
            ReportFragment.f13498b.getClass();
            ReportFragment.Companion.b(activity);
        }
    }
}
