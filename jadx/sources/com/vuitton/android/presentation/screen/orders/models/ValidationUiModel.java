package com.vuitton.android.presentation.screen.orders.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/ValidationUiModel;", "", "VALIDATED", "PENDING", "CANCELLED", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ValidationUiModel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ValidationUiModel[] $VALUES;
    public static final ValidationUiModel CANCELLED;
    public static final ValidationUiModel PENDING;
    public static final ValidationUiModel VALIDATED;

    static {
        ValidationUiModel validationUiModel = new ValidationUiModel("VALIDATED", 0);
        VALIDATED = validationUiModel;
        ValidationUiModel validationUiModel2 = new ValidationUiModel("PENDING", 1);
        PENDING = validationUiModel2;
        ValidationUiModel validationUiModel3 = new ValidationUiModel("CANCELLED", 2);
        CANCELLED = validationUiModel3;
        ValidationUiModel[] validationUiModelArr = {validationUiModel, validationUiModel2, validationUiModel3};
        $VALUES = validationUiModelArr;
        $ENTRIES = EnumEntriesKt.a(validationUiModelArr);
    }

    public static ValidationUiModel valueOf(String str) {
        return (ValidationUiModel) Enum.valueOf(ValidationUiModel.class, str);
    }

    public static ValidationUiModel[] values() {
        return (ValidationUiModel[]) $VALUES.clone();
    }
}
