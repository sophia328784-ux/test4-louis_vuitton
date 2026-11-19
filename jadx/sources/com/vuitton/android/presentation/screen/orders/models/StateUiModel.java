package com.vuitton.android.presentation.screen.orders.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/StateUiModel;", "", "PAST", "CURRENT", "FUTURE", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class StateUiModel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ StateUiModel[] $VALUES;
    public static final StateUiModel CURRENT;
    public static final StateUiModel FUTURE;
    public static final StateUiModel PAST;

    static {
        StateUiModel stateUiModel = new StateUiModel("PAST", 0);
        PAST = stateUiModel;
        StateUiModel stateUiModel2 = new StateUiModel("CURRENT", 1);
        CURRENT = stateUiModel2;
        StateUiModel stateUiModel3 = new StateUiModel("FUTURE", 2);
        FUTURE = stateUiModel3;
        StateUiModel[] stateUiModelArr = {stateUiModel, stateUiModel2, stateUiModel3};
        $VALUES = stateUiModelArr;
        $ENTRIES = EnumEntriesKt.a(stateUiModelArr);
    }

    public static StateUiModel valueOf(String str) {
        return (StateUiModel) Enum.valueOf(StateUiModel.class, str);
    }

    public static StateUiModel[] values() {
        return (StateUiModel[]) $VALUES.clone();
    }
}
