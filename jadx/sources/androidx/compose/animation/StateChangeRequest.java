package androidx.compose.animation;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/animation/StateChangeRequest;", "", "NoRequest", "MatchFound", "VisibleContentAbsentDuringTransition", "NoMatchFound", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class StateChangeRequest {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ StateChangeRequest[] $VALUES;
    public static final StateChangeRequest MatchFound;
    public static final StateChangeRequest NoMatchFound;
    public static final StateChangeRequest NoRequest;
    public static final StateChangeRequest VisibleContentAbsentDuringTransition;

    static {
        StateChangeRequest stateChangeRequest = new StateChangeRequest("NoRequest", 0);
        NoRequest = stateChangeRequest;
        StateChangeRequest stateChangeRequest2 = new StateChangeRequest("MatchFound", 1);
        MatchFound = stateChangeRequest2;
        StateChangeRequest stateChangeRequest3 = new StateChangeRequest("VisibleContentAbsentDuringTransition", 2);
        VisibleContentAbsentDuringTransition = stateChangeRequest3;
        StateChangeRequest stateChangeRequest4 = new StateChangeRequest("NoMatchFound", 3);
        NoMatchFound = stateChangeRequest4;
        StateChangeRequest[] stateChangeRequestArr = {stateChangeRequest, stateChangeRequest2, stateChangeRequest3, stateChangeRequest4};
        $VALUES = stateChangeRequestArr;
        $ENTRIES = EnumEntriesKt.a(stateChangeRequestArr);
    }

    public static StateChangeRequest valueOf(String str) {
        return (StateChangeRequest) Enum.valueOf(StateChangeRequest.class, str);
    }

    public static StateChangeRequest[] values() {
        return (StateChangeRequest[]) $VALUES.clone();
    }
}
