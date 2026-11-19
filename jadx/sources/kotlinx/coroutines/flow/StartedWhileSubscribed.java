package kotlinx.coroutines.flow;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.b21;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlinx/coroutines/flow/StartedWhileSubscribed;", "Lkotlinx/coroutines/flow/SharingStarted;", "", "stopTimeout", "replayExpiration", "<init>", "(JJ)V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
final class StartedWhileSubscribed implements SharingStarted {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f74996b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f74997c;

    public StartedWhileSubscribed(long j2, long j3) {
        this.f74996b = j2;
        this.f74997c = j3;
        if (j2 < 0) {
            b21.n(o60.i(j2, "stopTimeout(", " ms) cannot be negative"));
            throw null;
        }
        if (j3 >= 0) {
            return;
        }
        b21.n(o60.i(j3, "replayExpiration(", " ms) cannot be negative"));
        throw null;
    }

    @Override // kotlinx.coroutines.flow.SharingStarted
    public final Flow a(StateFlow stateFlow) {
        return FlowKt.k(new FlowKt__LimitKt$dropWhile$$inlined$unsafeFlow$1(FlowKt.B(stateFlow, new StartedWhileSubscribed$command$1(this, null)), new StartedWhileSubscribed$command$2(2, null)));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof StartedWhileSubscribed)) {
            return false;
        }
        StartedWhileSubscribed startedWhileSubscribed = (StartedWhileSubscribed) obj;
        return this.f74996b == startedWhileSubscribed.f74996b && this.f74997c == startedWhileSubscribed.f74997c;
    }

    public final int hashCode() {
        return Long.hashCode(this.f74997c) + (Long.hashCode(this.f74996b) * 31);
    }

    public final String toString() {
        ListBuilder listBuilder = new ListBuilder(2);
        long j2 = this.f74996b;
        if (j2 > 0) {
            listBuilder.add("stopTimeout=" + j2 + NBSSpanMetricUnit.Millisecond);
        }
        long j3 = this.f74997c;
        if (j3 < Long.MAX_VALUE) {
            listBuilder.add("replayExpiration=" + j3 + NBSSpanMetricUnit.Millisecond);
        }
        return fc.l(new StringBuilder("SharingStarted.WhileSubscribed("), CollectionsKt.K(CollectionsKt.r(listBuilder), null, null, null, null, 63), ')');
    }
}
