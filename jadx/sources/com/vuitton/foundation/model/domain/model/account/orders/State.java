package com.vuitton.foundation.model.domain.model.account.orders;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/orders/State;", "", "PAST", "CURRENT", "FUTURE", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class State {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ State[] $VALUES;
    public static final State CURRENT;
    public static final State FUTURE;
    public static final State PAST;

    static {
        State state = new State("PAST", 0);
        PAST = state;
        State state2 = new State("CURRENT", 1);
        CURRENT = state2;
        State state3 = new State("FUTURE", 2);
        FUTURE = state3;
        State[] stateArr = {state, state2, state3};
        $VALUES = stateArr;
        $ENTRIES = EnumEntriesKt.a(stateArr);
    }

    public static State valueOf(String str) {
        return (State) Enum.valueOf(State.class, str);
    }

    public static State[] values() {
        return (State[]) $VALUES.clone();
    }
}
