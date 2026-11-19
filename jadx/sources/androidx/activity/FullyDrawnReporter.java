package androidx.activity;

import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/activity/FullyDrawnReporter;", "", "Ljava/util/concurrent/Executor;", "executor", "Lkotlin/Function0;", "", "reportFullyDrawn", "<init>", "(Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function0;)V", ActionFloatingViewItem.f37018a}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FullyDrawnReporter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Executor f666a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function0 f667b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f668c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f669e;

    public FullyDrawnReporter(Executor executor, Function0<Unit> function0) {
        executor.getClass();
        function0.getClass();
        this.f666a = executor;
        this.f667b = function0;
        this.f668c = new Object();
        this.f669e = new ArrayList();
    }
}
