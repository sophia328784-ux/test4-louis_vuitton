package com.vuitton.foundation.model.domain.model.spotlight;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/spotlight/WorkInfoResultState;", "", "ENQUEUED", "RUNNING", "SUCCEEDED", "FAILED", "BLOCKED", "CANCELLED", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class WorkInfoResultState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ WorkInfoResultState[] $VALUES;
    public static final WorkInfoResultState BLOCKED;
    public static final WorkInfoResultState CANCELLED;
    public static final WorkInfoResultState ENQUEUED;
    public static final WorkInfoResultState FAILED;
    public static final WorkInfoResultState RUNNING;
    public static final WorkInfoResultState SUCCEEDED;

    static {
        WorkInfoResultState workInfoResultState = new WorkInfoResultState("ENQUEUED", 0);
        ENQUEUED = workInfoResultState;
        WorkInfoResultState workInfoResultState2 = new WorkInfoResultState("RUNNING", 1);
        RUNNING = workInfoResultState2;
        WorkInfoResultState workInfoResultState3 = new WorkInfoResultState("SUCCEEDED", 2);
        SUCCEEDED = workInfoResultState3;
        WorkInfoResultState workInfoResultState4 = new WorkInfoResultState("FAILED", 3);
        FAILED = workInfoResultState4;
        WorkInfoResultState workInfoResultState5 = new WorkInfoResultState("BLOCKED", 4);
        BLOCKED = workInfoResultState5;
        WorkInfoResultState workInfoResultState6 = new WorkInfoResultState("CANCELLED", 5);
        CANCELLED = workInfoResultState6;
        WorkInfoResultState[] workInfoResultStateArr = {workInfoResultState, workInfoResultState2, workInfoResultState3, workInfoResultState4, workInfoResultState5, workInfoResultState6};
        $VALUES = workInfoResultStateArr;
        $ENTRIES = EnumEntriesKt.a(workInfoResultStateArr);
    }

    public static WorkInfoResultState valueOf(String str) {
        return (WorkInfoResultState) Enum.valueOf(WorkInfoResultState.class, str);
    }

    public static WorkInfoResultState[] values() {
        return (WorkInfoResultState[]) $VALUES.clone();
    }
}
