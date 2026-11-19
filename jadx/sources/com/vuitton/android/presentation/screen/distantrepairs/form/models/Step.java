package com.vuitton.android.presentation.screen.distantrepairs.form.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/Step;", "", "ONE", "TWO", "THREE", "FOUR", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class Step {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Step[] $VALUES;
    public static final Step FOUR;
    public static final Step ONE;
    public static final Step THREE;
    public static final Step TWO;

    static {
        Step step = new Step("ONE", 0);
        ONE = step;
        Step step2 = new Step("TWO", 1);
        TWO = step2;
        Step step3 = new Step("THREE", 2);
        THREE = step3;
        Step step4 = new Step("FOUR", 3);
        FOUR = step4;
        Step[] stepArr = {step, step2, step3, step4};
        $VALUES = stepArr;
        $ENTRIES = EnumEntriesKt.a(stepArr);
    }

    public static Step valueOf(String str) {
        return (Step) Enum.valueOf(Step.class, str);
    }

    public static Step[] values() {
        return (Step[]) $VALUES.clone();
    }
}
