package com.vuitton.foundation.model.domain.model.spotlight;

import com.batch.android.s.b;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/spotlight/WorkInfoResult;", "", "Ljava/util/UUID;", b.a.f24015b, "Lcom/vuitton/foundation/model/domain/model/spotlight/WorkInfoResultState;", "state", "<init>", "(Ljava/util/UUID;Lcom/vuitton/foundation/model/domain/model/spotlight/WorkInfoResultState;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class WorkInfoResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UUID f68237a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WorkInfoResultState f68238b;

    public WorkInfoResult(UUID uuid, WorkInfoResultState workInfoResultState) {
        uuid.getClass();
        workInfoResultState.getClass();
        this.f68237a = uuid;
        this.f68238b = workInfoResultState;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WorkInfoResult)) {
            return false;
        }
        WorkInfoResult workInfoResult = (WorkInfoResult) obj;
        return Intrinsics.c(this.f68237a, workInfoResult.f68237a) && this.f68238b == workInfoResult.f68238b;
    }

    public final int hashCode() {
        return this.f68238b.hashCode() + (this.f68237a.hashCode() * 31);
    }

    public final String toString() {
        return "WorkInfoResult(id=" + this.f68237a + ", state=" + this.f68238b + ")";
    }
}
