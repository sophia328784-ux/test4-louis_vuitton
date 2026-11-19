package androidx.room;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.room.TriggerBasedInvalidationTracker", f = "InvalidationTracker.kt", l = {323, 328}, m = "startTrackingTable")
final class TriggerBasedInvalidationTracker$startTrackingTable$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TriggerBasedInvalidationTracker f19554b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PooledConnection f19555c;
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String[] f19556e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f19557f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f19558h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public /* synthetic */ Object f19559i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ TriggerBasedInvalidationTracker f19560j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f19561k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TriggerBasedInvalidationTracker$startTrackingTable$1(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f19560j = triggerBasedInvalidationTracker;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f19559i = obj;
        this.f19561k |= Integer.MIN_VALUE;
        return TriggerBasedInvalidationTracker.c(this.f19560j, null, 0, this);
    }
}
