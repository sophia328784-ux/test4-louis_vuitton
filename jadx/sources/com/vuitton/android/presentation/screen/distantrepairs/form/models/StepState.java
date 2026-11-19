package com.vuitton.android.presentation.screen.distantrepairs.form.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;", "", "DISABLED", "READ", "EDIT", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class StepState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ StepState[] $VALUES;
    public static final StepState DISABLED;
    public static final StepState EDIT;
    public static final StepState READ;

    static {
        StepState stepState = new StepState("DISABLED", 0);
        DISABLED = stepState;
        StepState stepState2 = new StepState("READ", 1);
        READ = stepState2;
        StepState stepState3 = new StepState("EDIT", 2);
        EDIT = stepState3;
        StepState[] stepStateArr = {stepState, stepState2, stepState3};
        $VALUES = stepStateArr;
        $ENTRIES = EnumEntriesKt.a(stepStateArr);
    }

    public static StepState valueOf(String str) {
        return (StepState) Enum.valueOf(StepState.class, str);
    }

    public static StepState[] values() {
        return (StepState[]) $VALUES.clone();
    }
}
