package androidx.compose.foundation.lazy.layout;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\ba\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/compose/foundation/lazy/layout/PriorityPrefetchScheduler;", "Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface PriorityPrefetchScheduler extends PrefetchScheduler {
    void scheduleHighPriorityPrefetch(PrefetchRequest prefetchRequest);

    void scheduleLowPriorityPrefetch(PrefetchRequest prefetchRequest);

    default void schedulePrefetch(PrefetchRequest prefetchRequest) {
        scheduleHighPriorityPrefetch(prefetchRequest);
    }
}
