package androidx.activity.compose;

import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.ActivityResultRegistry$register$3;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.compose.runtime.State;
import defpackage.md;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B1\b\u0000\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0018\u0010\b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00070\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/activity/compose/ManagedActivityResultLauncher;", "I", "O", "Landroidx/activity/result/ActivityResultLauncher;", "Landroidx/activity/compose/ActivityResultLauncherHolder;", "launcher", "Landroidx/compose/runtime/State;", "Landroidx/activity/result/contract/ActivityResultContract;", "currentContract", "<init>", "(Landroidx/activity/compose/ActivityResultLauncherHolder;Landroidx/compose/runtime/State;)V", "activity-compose"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ManagedActivityResultLauncher<I, O> extends ActivityResultLauncher<I> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ActivityResultLauncherHolder f711a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final State f712b;

    public ManagedActivityResultLauncher(ActivityResultLauncherHolder<I> activityResultLauncherHolder, State<? extends ActivityResultContract<I, O>> state) {
        this.f711a = activityResultLauncherHolder;
        this.f712b = state;
    }

    @Override // androidx.activity.result.ActivityResultLauncher
    public final void a(Object obj) {
        ActivityResultRegistry$register$3 activityResultRegistry$register$3 = this.f711a.f694a;
        if (activityResultRegistry$register$3 != null) {
            activityResultRegistry$register$3.a(obj);
        } else {
            md.k("Launcher has not been initialized");
        }
    }
}
