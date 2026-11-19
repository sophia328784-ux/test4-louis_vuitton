package androidx.compose.ui.spatial;

import android.os.Handler;
import androidx.compose.ui.Actual_androidKt;
import defpackage.r3;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÂ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/spatial/ExecuteDelayUsingPostAndRemove;", "Landroidx/compose/ui/spatial/ExecuteDelayed;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class ExecuteDelayUsingPostAndRemove implements ExecuteDelayed {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ExecuteDelayUsingPostAndRemove f10377b = new ExecuteDelayUsingPostAndRemove();

    @Override // androidx.compose.ui.spatial.ExecuteDelayed
    public final Object H(long j2, Function0 function0) {
        r3 r3Var = new r3(function0, 0);
        Actual_androidKt.f8581a.postDelayed(r3Var, j2);
        return r3Var;
    }

    @Override // androidx.compose.ui.spatial.ExecuteDelayed
    public final void j(Object obj) {
        Handler handler = Actual_androidKt.f8581a;
        if ((obj instanceof Runnable ? (Runnable) obj : null) == null) {
            return;
        }
        Actual_androidKt.f8581a.removeCallbacks((Runnable) obj);
    }
}
