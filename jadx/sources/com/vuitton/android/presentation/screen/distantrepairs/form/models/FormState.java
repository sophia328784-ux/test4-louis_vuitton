package com.vuitton.android.presentation.screen.distantrepairs.form.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;", "", "MODIFY", "CONFIRM", "CONFIRMED", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FormState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ FormState[] $VALUES;
    public static final FormState CONFIRM;
    public static final FormState CONFIRMED;
    public static final FormState MODIFY;

    static {
        FormState formState = new FormState("MODIFY", 0);
        MODIFY = formState;
        FormState formState2 = new FormState("CONFIRM", 1);
        CONFIRM = formState2;
        FormState formState3 = new FormState("CONFIRMED", 2);
        CONFIRMED = formState3;
        FormState[] formStateArr = {formState, formState2, formState3};
        $VALUES = formStateArr;
        $ENTRIES = EnumEntriesKt.a(formStateArr);
    }

    public static FormState valueOf(String str) {
        return (FormState) Enum.valueOf(FormState.class, str);
    }

    public static FormState[] values() {
        return (FormState[]) $VALUES.clone();
    }
}
