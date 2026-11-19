package androidx.room;

import androidx.room.concurrent.CloseBarrier;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.room.TriggerBasedInvalidationTracker", f = "InvalidationTracker.kt", l = {412}, m = "notifyInvalidation")
final class TriggerBasedInvalidationTracker$notifyInvalidation$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TriggerBasedInvalidationTracker f19544b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public CloseBarrier f19545c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ TriggerBasedInvalidationTracker f19546e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f19547f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TriggerBasedInvalidationTracker$notifyInvalidation$1(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f19546e = triggerBasedInvalidationTracker;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f19547f |= Integer.MIN_VALUE;
        return TriggerBasedInvalidationTracker.b(this.f19546e, this);
    }
}
