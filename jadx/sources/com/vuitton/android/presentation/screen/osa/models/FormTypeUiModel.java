package com.vuitton.android.presentation.screen.osa.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/models/FormTypeUiModel;", "", "GUEST_USER_EMAIL", "GUEST_USER_MAIN", "LOGGED_USER", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FormTypeUiModel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ FormTypeUiModel[] $VALUES;
    public static final FormTypeUiModel GUEST_USER_EMAIL;
    public static final FormTypeUiModel GUEST_USER_MAIN;
    public static final FormTypeUiModel LOGGED_USER;

    static {
        FormTypeUiModel formTypeUiModel = new FormTypeUiModel("GUEST_USER_EMAIL", 0);
        GUEST_USER_EMAIL = formTypeUiModel;
        FormTypeUiModel formTypeUiModel2 = new FormTypeUiModel("GUEST_USER_MAIN", 1);
        GUEST_USER_MAIN = formTypeUiModel2;
        FormTypeUiModel formTypeUiModel3 = new FormTypeUiModel("LOGGED_USER", 2);
        LOGGED_USER = formTypeUiModel3;
        FormTypeUiModel[] formTypeUiModelArr = {formTypeUiModel, formTypeUiModel2, formTypeUiModel3};
        $VALUES = formTypeUiModelArr;
        $ENTRIES = EnumEntriesKt.a(formTypeUiModelArr);
    }

    public static FormTypeUiModel valueOf(String str) {
        return (FormTypeUiModel) Enum.valueOf(FormTypeUiModel.class, str);
    }

    public static FormTypeUiModel[] values() {
        return (FormTypeUiModel[]) $VALUES.clone();
    }
}
