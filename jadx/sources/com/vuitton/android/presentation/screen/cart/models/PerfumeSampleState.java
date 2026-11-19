package com.vuitton.android.presentation.screen.cart.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;", "", "NORMAL", "SELECTED", "DISABLED", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PerfumeSampleState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PerfumeSampleState[] $VALUES;
    public static final PerfumeSampleState DISABLED;
    public static final PerfumeSampleState NORMAL;
    public static final PerfumeSampleState SELECTED;

    static {
        PerfumeSampleState perfumeSampleState = new PerfumeSampleState("NORMAL", 0);
        NORMAL = perfumeSampleState;
        PerfumeSampleState perfumeSampleState2 = new PerfumeSampleState("SELECTED", 1);
        SELECTED = perfumeSampleState2;
        PerfumeSampleState perfumeSampleState3 = new PerfumeSampleState("DISABLED", 2);
        DISABLED = perfumeSampleState3;
        PerfumeSampleState[] perfumeSampleStateArr = {perfumeSampleState, perfumeSampleState2, perfumeSampleState3};
        $VALUES = perfumeSampleStateArr;
        $ENTRIES = EnumEntriesKt.a(perfumeSampleStateArr);
    }

    public static PerfumeSampleState valueOf(String str) {
        return (PerfumeSampleState) Enum.valueOf(PerfumeSampleState.class, str);
    }

    public static PerfumeSampleState[] values() {
        return (PerfumeSampleState[]) $VALUES.clone();
    }
}
