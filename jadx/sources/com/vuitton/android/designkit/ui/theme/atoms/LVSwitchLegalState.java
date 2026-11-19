package com.vuitton.android.designkit.ui.theme.atoms;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchLegalState;", "", "BLANK", "ACCEPTED", "DENIED", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LVSwitchLegalState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LVSwitchLegalState[] $VALUES;
    public static final LVSwitchLegalState ACCEPTED;
    public static final LVSwitchLegalState BLANK;
    public static final LVSwitchLegalState DENIED;

    static {
        LVSwitchLegalState lVSwitchLegalState = new LVSwitchLegalState("BLANK", 0);
        BLANK = lVSwitchLegalState;
        LVSwitchLegalState lVSwitchLegalState2 = new LVSwitchLegalState("ACCEPTED", 1);
        ACCEPTED = lVSwitchLegalState2;
        LVSwitchLegalState lVSwitchLegalState3 = new LVSwitchLegalState("DENIED", 2);
        DENIED = lVSwitchLegalState3;
        LVSwitchLegalState[] lVSwitchLegalStateArr = {lVSwitchLegalState, lVSwitchLegalState2, lVSwitchLegalState3};
        $VALUES = lVSwitchLegalStateArr;
        $ENTRIES = EnumEntriesKt.a(lVSwitchLegalStateArr);
    }

    public static LVSwitchLegalState valueOf(String str) {
        return (LVSwitchLegalState) Enum.valueOf(LVSwitchLegalState.class, str);
    }

    public static LVSwitchLegalState[] values() {
        return (LVSwitchLegalState[]) $VALUES.clone();
    }
}
