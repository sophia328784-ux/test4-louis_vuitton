package androidx.compose.foundation.lazy.layout;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/compose/foundation/lazy/layout/PriorityTask;", "", "", "priority", "Landroidx/compose/foundation/lazy/layout/PrefetchRequest;", "request", "<init>", "(ILandroidx/compose/foundation/lazy/layout/PrefetchRequest;)V", "Companion", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PriorityTask {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f5565c = new Companion(null);
    public static final int d = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5566a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PrefetchRequest f5567b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/lazy/layout/PriorityTask$Companion;", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public PriorityTask(int i2, PrefetchRequest prefetchRequest) {
        this.f5566a = i2;
        this.f5567b = prefetchRequest;
    }
}
