package androidx.room;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.room.TriggerBasedInvalidationTracker", f = "InvalidationTracker.kt", l = {342}, m = "stopTrackingTable")
final class TriggerBasedInvalidationTracker$stopTrackingTable$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public PooledConnection f19562b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f19563c;
    public String[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f19564e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f19565f;
    public /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ TriggerBasedInvalidationTracker f19566h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f19567i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TriggerBasedInvalidationTracker$stopTrackingTable$1(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f19566h = triggerBasedInvalidationTracker;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.f19567i |= Integer.MIN_VALUE;
        return TriggerBasedInvalidationTracker.d(this.f19566h, null, 0, this);
    }
}
